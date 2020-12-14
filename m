Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C813C2DB19A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 17:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A6689906;
	Tue, 15 Dec 2020 16:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2736E176;
 Mon, 14 Dec 2020 20:58:39 +0000 (UTC)
Message-ID: <8035075adf8738792f4fa39032eeeb997bc1e653.camel@kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607979519;
 bh=cldqRzZxWGs3Mp0GWam6BN3UIEF7254f3nfHMyN7cv4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Gtxqgx/zUgAV/HC4HUDaTWWErUYbIXoTgkKUYMD/ELlewv6ngbmFefFbLOnnQE37B
 fwW9w8lNXB0jkS0zaOY6KiQuNNvzR6i/TAi+fgG1AW/EykMErJidLU/39fKuq2JQ6H
 cYZqxR/cWcdcz2hfp8VGfziH+pOYPr8oSmVaMVsoIT/cKvofZxClMOcYe7qD5WQeeL
 NIffLKExOZStE6EtkCW8G8ODK2nn1z9f76JCt7Kq0Z4tPHOOMdZSDtSFcABv2Uu75T
 yhfntlEnCdaAYrYdYHk5OeIYZ35zyWy0f9d7SzNO3zktL7NiFTX5VRmoH1k+TTpoKc
 hhNH7an3hKyYw==
From: Saeed Mahameed <saeed@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Date: Mon, 14 Dec 2020 12:58:36 -0800
In-Reply-To: <20201210194044.876342330@linutronix.de>
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.876342330@linutronix.de>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 15 Dec 2020 16:37:12 +0000
Subject: Re: [Intel-gfx] [patch 23/30] net/mlx5: Use effective interrupt
 affinity
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Will Deacon <will@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Rob Herring <robh@kernel.org>, linux-s390@vger.kernel.org,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-gfx@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Juergen Gross <jgross@suse.com>, Heiko Carstens <hca@linux.ibm.com>,
 Jon Mason <jdmason@kudzu.us>, linux-gpio@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, David Airlie <airlied@linux.ie>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 linux-ntb@googlegroups.com, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-12-10 at 20:25 +0100, Thomas Gleixner wrote:
> Using the interrupt affinity mask for checking locality is not really
> working well on architectures which support effective affinity masks.
> 
> The affinity mask is either the system wide default or set by user
> space,
> but the architecture can or even must reduce the mask to the
> effective set,
> which means that checking the affinity mask itself does not really
> tell
> about the actual target CPUs.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Saeed Mahameed <saeedm@nvidia.com>
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: linux-rdma@vger.kernel.org
> 

Acked-by: Saeed Mahameed <saeedm@nvidia.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
