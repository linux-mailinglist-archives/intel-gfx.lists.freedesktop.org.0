Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AB12D66D2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 20:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BFF6EB20;
	Thu, 10 Dec 2020 19:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EED6EB1C;
 Thu, 10 Dec 2020 19:42:21 +0000 (UTC)
Message-Id: <20201210194042.967177918@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607629339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=gYsowh6i1mqGXNg6FrEIlf+Px9WkTuZjYPGZA4AoQf4=;
 b=gQRR2ovC6G1wG0/hHfvHA26mBklNiMZtkvMBYZWjgQshlf7o+cIXoD11qJjLT48W0LHgJA
 5Zvfg1News0uQs48erbM5kmDtHengxfmuqG2DKGnaIJ04vg1FJ7jnVpZXG8cNwMy19OeFP
 iPFhPWqfd87RfMeVK3ZgF11+LhI8jQI6rRQAPId6pBGrjdbz5+dRwipziIghpyTp0+nYcu
 /rMQolvJykCdajiQdhpg5/73/PAnO6jEv3XXq/Rv9w9yxTGzkAvSFeWdlWRlX1S05CmH1R
 pxA14gUUPV2LrG7qMC56g75TqBVjQeX4kqlFmRI413CglTnFsrbWRi0PstpOew==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607629339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=gYsowh6i1mqGXNg6FrEIlf+Px9WkTuZjYPGZA4AoQf4=;
 b=rxr0RqK5G71Mdyjh0pmNkfya7BLBal4i+pBNw5B4iIspa3uaIBOFXW7QFkpv0Ae/Yof/mz
 NtSLBAk6jBeGNuDQ==
Date: Thu, 10 Dec 2020 20:25:40 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 04/30] genirq: Provide
 irq_get_effective_affinity()
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
 Saeed Mahameed <saeedm@nvidia.com>, netdev@vger.kernel.org,
 Will Deacon <will@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-s390@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Juergen Gross <jgross@suse.com>, Rob Herring <robh@kernel.org>,
 David Airlie <airlied@linux.ie>, linux-gpio@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, linux-parisc@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 intel-gfx@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Provide an accessor to the effective interrupt affinity mask. Going to be
used to replace open coded fiddling with the irq descriptor.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/irq.h |    7 +++++++
 1 file changed, 7 insertions(+)

--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -907,6 +907,13 @@ struct cpumask *irq_data_get_effective_a
 }
 #endif
 
+static inline struct cpumask *irq_get_effective_affinity_mask(unsigned int irq)
+{
+	struct irq_data *d = irq_get_irq_data(irq);
+
+	return d ? irq_data_get_effective_affinity_mask(d) : NULL;
+}
+
 unsigned int arch_dynirq_lower_bound(unsigned int from);
 
 int __irq_alloc_descs(int irq, unsigned int from, unsigned int cnt, int node,

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
