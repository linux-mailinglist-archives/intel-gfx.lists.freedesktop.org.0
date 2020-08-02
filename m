Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C62C235A64
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 22:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B082389F89;
	Sun,  2 Aug 2020 20:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5D589F6B;
 Sun,  2 Aug 2020 20:18:41 +0000 (UTC)
Received: from nazgul.tnic (unknown [78.130.214.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4D2291EC02A8;
 Sun,  2 Aug 2020 22:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1596399520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=z0K+vlWV9j7wfXLQcUnvdJhwiVrF38RAZueHzdmaci0=;
 b=IpVr02DQwE3yYwTGqHzkePquczoIuB3CSh4JRazV28rb0yxVyTjgJHeFSYXLscJQCgocj+
 YjGRmfK2vuZ4xdnOu8V6Bj4srNoX1QpTQVYAD0HdeQama4rhKTHzaxEhs3BC4FYYx+fxXN
 dZeZiogCz7IvNzoJKsyyZMEOy76rM2w=
Date: Sun, 2 Aug 2020 22:18:06 +0200
From: Borislav Petkov <bp@alien8.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20200802201806.GA24437@nazgul.tnic>
References: <20200802184648.GA23190@nazgul.tnic>
 <20200802191406.GA248232@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200802191406.GA248232@bjorn-Precision-5520>
Subject: Re: [Intel-gfx] [RFC PATCH 00/17] Drop uses of pci_read_config_*()
 return value
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org,
 linux-fpga@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-rdma@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Joerg Roedel <joro@8bytes.org>, linux-atm-general@lists.sourceforge.net,
 trix@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Wolfgang Grandegger <wg@grandegger.com>, intel-gfx@lists.freedesktop.org,
 linux-gpio@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 skhan@linuxfoundation.org, bjorn@helgaas.com,
 Kalle Valo <kvalo@codeaurora.org>, linux-edac@vger.kernel.org,
 linux-hwmon@vger.kernel.org, Saheed Bolarinwa <refactormyself@gmail.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, dmaengine@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Aug 02, 2020 at 02:14:06PM -0500, Bjorn Helgaas wrote:
> Wait, I'm not convinced yet.  I know that if a PCI read fails, you
> normally get ~0 data because the host bridge fabricates it to complete
> the CPU load.
> 
> But what guarantees that a PCI config register cannot contain ~0?

Well, I don't think you can differentiate that case, right?

I guess this is where the driver knowledge comes into play: if the read
returns ~0, the pci_read_config* should probably return in that case
something like:

	PCIBIOS_READ_MAYBE_FAILED

to denote it is all 1s and then the caller should be able to determine,
based on any of domain:bus:slot.func and whatever else the driver knows
about its hardware, whether the 1s are a valid value or an error.
Hopefully.

Or something better of which I cannot think of right now...

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
