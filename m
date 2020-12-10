Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDA02D670C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 20:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFCA6EB2C;
	Thu, 10 Dec 2020 19:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F436EB26;
 Thu, 10 Dec 2020 19:42:51 +0000 (UTC)
Message-Id: <20201210194045.360198201@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607629369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ZlPg9sxtWavWNstOnduWAE0LJ88d0safrspZWU+Bxkw=;
 b=K1DERQLLdTNr2zHRckKSlzdGpOu3K2YNmRf/Fd+Me9xL7e1+z/WEZj2/ktZthj5jq1hRc5
 H3K05V2lxe1VMwzID4A3YLY85G8CYSpDrmB064IUNRFZIZdMGhdgfMMXJmC2dwy27hx5dv
 +8AXgD/DGykOcBz1Xa8j76SRM06+jkTJXOvxx9wVIyXxp695f6gHDGbeeV9JlTl+CV+qJz
 iigE2xdn6yZ1PRpeA5+aMqV0fQZ1NATjbH3H6LTr2G8vwxub7OglAIb7biMKHi/AyccluD
 JT3nn4CWSg161dQ9jAMQEsqATs9zRWVAVD7sNovXx4fL9L9H47Prx2LPtWUjvw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607629369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ZlPg9sxtWavWNstOnduWAE0LJ88d0safrspZWU+Bxkw=;
 b=5OkxueAP7qHY2hZdC3q6dEaDkreK0XDmJgigYgkjGtvPF1gC/y/J1hb+Pc7lUaZciQOAo7
 alJrfrmEbNVTr+Cw==
Date: Thu, 10 Dec 2020 20:26:04 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 28/30] xen/events: Reduce irq_info::spurious_cnt
 storage size
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
 Jakub Kicinski <kuba@kernel.org>, Will Deacon <will@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-s390@vger.kernel.org,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Dave Jiang <dave.jiang@intel.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 xen-devel@lists.xenproject.org, Heiko Carstens <hca@linux.ibm.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 linux-gpio@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Lee Jones <lee.jones@linaro.org>, linux-parisc@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 intel-gfx@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To prepare for interrupt spreading reduce the storage size of
irq_info::spurious_cnt to u8 so the required flag for the spreading logic
will not increase the storage size.

Protect the usage site against overruns.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -95,7 +95,7 @@ struct irq_info {
 	struct list_head list;
 	struct list_head eoi_list;
 	short refcnt;
-	short spurious_cnt;
+	u8 spurious_cnt;
 	enum xen_irq_type type; /* type */
 	unsigned irq;
 	evtchn_port_t evtchn;   /* event channel */
@@ -528,8 +528,10 @@ static void xen_irq_lateeoi_locked(struc
 		return;
 
 	if (spurious) {
-		if ((1 << info->spurious_cnt) < (HZ << 2))
-			info->spurious_cnt++;
+		if ((1 << info->spurious_cnt) < (HZ << 2)) {
+			if (info->spurious_cnt != 0xFF)
+				info->spurious_cnt++;
+		}
 		if (info->spurious_cnt > 1) {
 			delay = 1 << (info->spurious_cnt - 2);
 			if (delay > HZ)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
