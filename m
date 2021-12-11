Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 481BA47150A
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 18:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE75110E6AC;
	Sat, 11 Dec 2021 17:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1357910E330;
 Sat, 11 Dec 2021 17:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639244475; x=1670780475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QL7FferO/vmcvzY+uqMKOIStr97w9GvFQG07TpucjoU=;
 b=mknKjHNb52b3NtUtFGzhWmEl8n3LXoeZv4bo1+Ccpa5UZYhP9WgcjsfI
 TcQAwLtJNQeNKpmPYnD9N3xqJ/vY12ZEqsncoOhCFIK9sL/rZSHRRnsBA
 oRKg0tbGlcqywDbr08GwO/ybMx4WhkiJ/s/bbRc2t0UktVS5f9U+nJDe5
 eGx7ECnFh5M5WaTpQT7s/pAfYogKreYFT4eHOOHh7EoD/4S4JTFCn9Tbt
 yrpgMB3ZJckoO1RKT+7BM12rSmrHCsfhq65XbTEA/ZdeoGbKlAwCn2K5r
 E66KE36L15SNr80haUtIzIdRNjyW98GYzxLTZwcw18K8BmuKwAUplYHhg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="238493213"
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="238493213"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2021 09:41:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="602548117"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2021 09:41:13 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Sat, 11 Dec 2021 09:35:44 -0800
Message-Id: <20211211173545.23536-7-matthew.brost@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211211173545.23536-1-matthew.brost@intel.com>
References: <20211211173545.23536-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Kick G2H tasklet if no credits
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's be paranoid and kick the G2H tasklet, which dequeues messages, if
G2H credits are exhausted.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 741be9abab68..aa6dd6415202 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -591,12 +591,19 @@ static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
 
 static int has_room_nb(struct intel_guc_ct *ct, u32 h2g_dw, u32 g2h_dw)
 {
+	bool h2g = h2g_has_room(ct, h2g_dw);
+	bool g2h = g2h_has_room(ct, g2h_dw);
+
 	lockdep_assert_held(&ct->ctbs.send.lock);
 
-	if (unlikely(!h2g_has_room(ct, h2g_dw) || !g2h_has_room(ct, g2h_dw))) {
+	if (unlikely(!h2g || !g2h)) {
 		if (ct->stall_time == KTIME_MAX)
 			ct->stall_time = ktime_get();
 
+		/* Be paranoid and kick G2H tasklet to free credits */
+		if (!g2h)
+			tasklet_hi_schedule(&ct->receive_tasklet);
+
 		if (unlikely(ct_deadlocked(ct)))
 			return -EPIPE;
 		else
-- 
2.33.1

