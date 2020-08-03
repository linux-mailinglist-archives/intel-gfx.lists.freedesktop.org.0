Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B3423A728
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 15:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7966E283;
	Mon,  3 Aug 2020 13:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2929E6E20F;
 Mon,  3 Aug 2020 06:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=S81Y7/E/1KRByHOMFTAO1WQMOll7HWoP+pv/fCo/3sI=; b=Imiqwh2wh6gfO95HVgGWdIpJ7R
 qFqJDaURIpsOiDpUCq2k3ILdHp9/G64PbhflfbfwXUHR3YCqdMM2JIr5p2HV5QlEFNjYcibq1cAwB
 k5jcDFqNUiYh1ErghhsIpsN5baKyFw50AsjkOnyh0RkcQvG4I/FuQV4i+K4smxUlt0gQ8ZINX4zk1
 zqYZrKBpxdTsr3nucjd2JPKqfEkufPqh/aFaSwGu2mFtFylC2a36pyZdPfsQXEbP1+7In5Kkj2kTD
 iIuAdnnH0jCfMh5vNRvgFzTjztCURqfBsmyFjwViAe1IQB++yIvaVvpqhNNNwV/B+lmZFzbHjUNTv
 QTu3Qcmg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k2UOb-0005Zd-6v; Mon, 03 Aug 2020 06:56:29 +0000
Date: Mon, 3 Aug 2020 07:56:29 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20200803065629.GA19534@infradead.org>
References: <20200802184648.GA23190@nazgul.tnic>
 <20200802191406.GA248232@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200802191406.GA248232@bjorn-Precision-5520>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 03 Aug 2020 13:04:28 +0000
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
 linux-gpio@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 skhan@linuxfoundation.org, bjorn@helgaas.com,
 Kalle Valo <kvalo@codeaurora.org>, linux-edac@vger.kernel.org,
 linux-hwmon@vger.kernel.org, Saheed Bolarinwa <refactormyself@gmail.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, dmaengine@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Aug 02, 2020 at 02:14:06PM -0500, Bjorn Helgaas wrote:
> But what guarantees that a PCI config register cannot contain ~0?
> If there's something about that in the spec I'd love to know where it
> is because it would simplify a lot of things.

There isn't.  An we even have cases like the NVMe controller memory
buffer and persistent memory region, which are BARs that store
abritrary values for later retreival, so it can't.  (now those
features have a major issue with error detection, but that is another
issue)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
