Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4FE7FB9A6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2685410E4E2;
	Tue, 28 Nov 2023 11:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65FF310E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172198; x=1732708198;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=NJFF1OTfvKSyhpaN/7RONdYOjNn1Xk1QVGdLaxLyWa4=;
 b=nZGVUArcP9kD9uOOGh31VAozdrvoMxSdhyizyjFpXDprauAjEEFRVLWj
 iDRfFyaRRuhWN10xTP43mDa56AX9D2m6aD2zFSXCleBIIWGP3gR+iUVBr
 kvGeysHYcINlXaLeAfnUo1hZBWn5bwcO2t4MBPl0e3/ms82MJjXDaVaKk
 yTbpPw2tFhgulzk0AhZ/dy7VZqLNQ/JLRVZs3cRKy+MUlG2MYY3Jz/taX
 WAJXha6HczJaUpYnZsArqKBq5bnN5KXqJnEZR+Uh5/bGnXDdL/F8Gv1QR
 WpVBZ9FWOqsHvhaY7J/i73LHiUd7Csmp9w1W0rUu4GexMTy81nL8/w9iC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411338"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411338"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:49:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907139"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907139"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:49:56 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Tue, 28 Nov 2023 12:49:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231128-selftest_wait_for_active_idle_event-v1-1-e365cb8b2d87@intel.com>
X-B4-Tracking: v=1; b=H4sIAMbTZWUC/x3NQQqDMBBA0avIrBswKVjpVUoJMZnUARtlZogF8
 e5Nu3yb/w8QZEKBe3cAYyWhtTTYSwdxDuWFhlIzuN5drXWjEVyyoqjfA6nPK/sQlSp6Sgt6rFj
 UDFO8uTEmO4QeWmljzPT5Xx7P5ikImolDifOvnfhtlDY4zy+6HKedjwAAAA==
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1285;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=NJFF1OTfvKSyhpaN/7RONdYOjNn1Xk1QVGdLaxLyWa4=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlZdPjFpzy1XwWxaNu/zIM/9psvXh63dHK+82IrBUw
 kK9GOQqJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZWXT4wAKCRAjYrKT3hD916RrC/
 kBRH18crI8nvp+fk7nPxTEUMCiRL5cIt99afHV5MiBDlaIS7DD4ib48XMnFyE7a+QEAkT+bxs7Z0ll
 LgMRr2rN42eMFfgeCXxT/0znwEPBG25NpaqVpqNOoFeVUp4RVuA6ezMtA0swOEZbmkFfI5XGIDQn0Q
 kRKPJqVfBfvkVYoXnXi1VkRkK8p6GBueZQjS1MrHcfgipAwuPjLG74Obq4YwH9U4fYd8jgbRINgq6M
 9KdA26Ky6b0BV+soBOtk2GWXjXbwsjWgwIFLDbSt2P33hjWRV4OHWadAjk4lWq0OouGrkniCmgrR5T
 LCDMtNsSr63th5oEZ+m/KG/QL8/Flfj6j3Rh4JxOWP2566IFHSjQg2GrFnt/d2/w50bs2kTKpxCVrA
 lJRMrxdkOkg5NFVF1BvmQ8GtxDyjoCC+T8pr1rBuNJMjaDudyYrk4YF8OBrCxvIdGqQwG7IkWFvAuE
 d70KAWLovcneZKAiVTJ/7dfWY8BM2l1+mhFbn3G+1F+zs=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: wait for active idle event
 in i915_active_unlock_wait
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After i915_active_unlock_wait i915_active can be still non-idle due
to barrier async handling in signal_irq_work. As a result one can observe
following errors:
bcs0: heartbeat pulse did not flush idle tasks
*ERROR* pulse active pulse_active [i915]:pulse_retire [i915]
*ERROR* pulse    count: 0
*ERROR* pulse    preallocated barriers? no

To prevent it let's wait explicitly for idleness.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_active.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index b61fe850e92493..c7dd12624f3485 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -342,6 +342,9 @@ void i915_active_unlock_wait(struct i915_active *ref)
 		rcu_read_unlock();
 
 		i915_active_release(ref);
+
+		___wait_var_event(ref, i915_active_is_idle(ref),
+				  TASK_INTERRUPTIBLE, 0, 0, schedule());
 	}
 
 	/* And wait for the retire callback */

---
base-commit: f5e7a8caf6f5520ceb37c0e2e0d359a110c7cf98
change-id: 20231128-selftest_wait_for_active_idle_event-6bc728cd16a0

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

