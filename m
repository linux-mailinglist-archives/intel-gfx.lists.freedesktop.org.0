Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231112D66FD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 20:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E8D6EB45;
	Thu, 10 Dec 2020 19:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59636EB40;
 Thu, 10 Dec 2020 19:42:44 +0000 (UTC)
Message-Id: <20201210194044.876342330@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607629363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=55TI7XJ63kr4B6KmttDRntIShtWEHQxTpDKUCCh7MMo=;
 b=DfHk2d4rsQCFRfxdAyxTdTyPSpwg7z0Sncg8I+9KfdVXncJCTb3XmwedEonMAdLY68Ijgw
 OqDECUKDGXVJ2e3I3uLB0GGar87pY3Yal2dFSEkuxLqu7+aFvat4rMB4RZqE4KrUhBk+R3
 gBmBzJxqdxsXIuyqJJAGw8Y30tyckVylqCLBgGNvi3gs7yKm4ZK17JvWGG44C/46sWyxXQ
 Ej9ZSopIvaJHIfeR+E9sAafcWAL7WpVPwj+5hDUZlquKEkpvZ61FA9B4DGvqfEnbmzwFaO
 eXj8bg+XHOWux9C1y9WQO9G2xEkTNlYuLikm/MUzYuUvhCxBqpZY2adGCKTIQA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607629363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=55TI7XJ63kr4B6KmttDRntIShtWEHQxTpDKUCCh7MMo=;
 b=eULJnI7rz5dW6ohKtM1f3ZResXMDuJkA8Ky9aCIj2PXNOKCWiuy+1w37KELJ76tMak6jIr
 Gp7eoIGkDj0U4pDA==
Date: Thu, 10 Dec 2020 20:25:59 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 23/30] net/mlx5: Use effective interrupt affinity
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
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh@kernel.org>,
 linux-s390@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-gfx@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Juergen Gross <jgross@suse.com>, Will Deacon <will@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Jon Mason <jdmason@kudzu.us>,
 linux-gpio@vger.kernel.org, Stefano Stabellini <sstabellini@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, David Airlie <airlied@linux.ie>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 linux-ntb@googlegroups.com, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using the interrupt affinity mask for checking locality is not really
working well on architectures which support effective affinity masks.

The affinity mask is either the system wide default or set by user space,
but the architecture can or even must reduce the mask to the effective set,
which means that checking the affinity mask itself does not really tell
about the actual target CPUs.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Saeed Mahameed <saeedm@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
---
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -1998,7 +1998,7 @@ static int mlx5e_open_channel(struct mlx
 	c->num_tc   = params->num_tc;
 	c->xdp      = !!params->xdp_prog;
 	c->stats    = &priv->channel_stats[ix].ch;
-	c->aff_mask = irq_get_affinity_mask(irq);
+	c->aff_mask = irq_get_effective_affinity_mask(irq);
 	c->lag_port = mlx5e_enumerate_lag_port(priv->mdev, ix);
 
 	netif_napi_add(netdev, &c->napi, mlx5e_napi_poll, 64);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
