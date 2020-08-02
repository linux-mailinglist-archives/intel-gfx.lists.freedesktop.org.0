Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C54D235A01
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 20:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6677A89E50;
	Sun,  2 Aug 2020 18:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C2A89E50;
 Sun,  2 Aug 2020 18:47:23 +0000 (UTC)
Received: from nazgul.tnic (unknown [78.130.214.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6060E1EC027B;
 Sun,  2 Aug 2020 20:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1596394040;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=6tNJPljLjNx2x9QEIVJnns37NMBlLLp4EAbpTzGkx/k=;
 b=km2ppJ9W1lKPkeogNByCZRPPB90pQ77y1xFpzqsz5v2Gw4jUrJuG2BUGC6FlwifBWKp5xA
 i/pwFuidiFCe1IAhyK7PX67NxCd1gqUPGlQREtpW/WPoHky93LT53Q3Zqf5RRY0CErhAu0
 8YCnO7sm9NOsIwnrSCtwGhnf6GzAdAw=
Date: Sun, 2 Aug 2020 20:46:48 +0200
From: Borislav Petkov <bp@alien8.de>
To: Saheed Bolarinwa <refactormyself@gmail.com>
Message-ID: <20200802184648.GA23190@nazgul.tnic>
References: <20200801112446.149549-1-refactormyself@gmail.com>
 <20200801125657.GA25391@nazgul.tnic>
 <b720aa44-895a-203b-e220-ecdb3acd9278@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b720aa44-895a-203b-e220-ecdb3acd9278@gmail.com>
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, trix@redhat.com,
 linux-fpga@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-rdma@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Joerg Roedel <joro@8bytes.org>, linux-atm-general@lists.sourceforge.net,
 helgaas@kernel.org, linux-pci@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Wolfgang Grandegger <wg@grandegger.com>, intel-gfx@lists.freedesktop.org,
 linux-gpio@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 skhan@linuxfoundation.org, bjorn@helgaas.com,
 Kalle Valo <kvalo@codeaurora.org>, linux-edac@vger.kernel.org,
 linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 dmaengine@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Aug 02, 2020 at 07:28:00PM +0200, Saheed Bolarinwa wrote:
> Because the value ~0 has a meaning to some drivers and only

No, ~0 means that the PCI read failed. For *every* PCI device I know.

Here's me reading from 0xf0 offset of my hostbridge:

# setpci -s 00:00.0 0xf0.l
01000000

That device doesn't have extended config space, so the last valid byte
is 0xff. Let's read beyond that:

# setpci -s 00:00.0 0x100.l
ffffffff

> Again, only the drivers can determine if ~0 is a valid value. This
> information is not available inside pci_config_read*().

Of course it is.

*every* change you've done in 6/17 - this is the only patch I have
received - checks for == ~0. So that check can just as well be moved
inside pci_config_read_*().

Here's how one could do it:

#define PCI_OP_READ(size, type, len) \
int noinline pci_bus_read_config_##size \
	(struct pci_bus *bus, unsigned int devfn, int pos, type *value)	\
{									\
	int res;							\
	unsigned long flags;						\
	u32 data = 0;							\
	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
	pci_lock_config(flags);						\
	res = bus->ops->read(bus, devfn, pos, len, &data);		\

	/* Check we actually read something which is not all 1s.*/
	if (data == ~0)
		return PCIBIOS_READ_FAILED;

	*value = (type)data;						\
	pci_unlock_config(flags);					\
	return res;							\
}

Also, I'd prefer a function to *not* return void but return either
an error or success. In the success case, the @value argument can be
consumed by the caller and otherwise not.

In any case, that change is a step in the wrong direction and I don't
like it, sorry.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
