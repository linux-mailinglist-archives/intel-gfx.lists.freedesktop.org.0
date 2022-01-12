Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A162448C2BF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33BC113E90;
	Wed, 12 Jan 2022 11:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E261113E8A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985405; x=1673521405;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FZ8pX+prSCazOJYb/5A3S+vwO6qNWW/0nnQbzT41uEo=;
 b=JN3KCvaB8puFDX66WC3JnzaRpWAF7/ZYUdc2but55eydjYmnmjZRskwQ
 D6Pb3Mx1wCRCl6WUc5I3+iViOKMNoXIHgI7hKf18g3QX6NAoC1aCJIVmH
 Wan8fixN2xgdg1e48UG6SizvQo2tOVb2/F4JuSVSjNRDzKjFfh5AOZm2Y
 wyf/2QQH512kuMBzTBfgQwTjt/4cluX3PDguxJdYGvnF28oJklyKIkdU+
 zuZIlSZVTgkfZ3Ml2wb2gcDb76ETQT00mTnNaaADnQ9FE/xHQUisA1CYs
 70j8qEnDeXsRKe03CDbOh9bzEiybLhx8qJ9G/1uEqyzoA5Omwk2q7mTAo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243910749"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243910749"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623400765"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:03:13 +0200
Message-Id: <20220112110319.1172110-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 1/7] drm/i915/mst: fix
 intel_dp_mst_hpd_irq() indentation
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove extra indentation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 942a755a0c48..e789ecbc69f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3618,12 +3618,12 @@ static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
 static void
 intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
 {
-		drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
+	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
 
-		if (esi[1] & DP_CP_IRQ) {
-			intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
-			*handled = true;
-		}
+	if (esi[1] & DP_CP_IRQ) {
+		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
+		*handled = true;
+	}
 }
 
 /**
-- 
2.30.2

