Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A73DF903BA8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A50A10E61C;
	Tue, 11 Jun 2024 12:13:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ljYTGkyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E5F10E60E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108010; x=1749644010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fm94q1a5ef3JVRS+iJrt5qvRdvjrR2Sp0zhXXm6KRxk=;
 b=ljYTGkyrx33D8ddqin4+uX+QlfHd2X341dzgFAvhDGfL7QNDyT1GHtIf
 YYy2doCo3fpAUEZvM1R8G9Hoga+K1EmdrUb0xvxxAVquPQVccnh6RlIRU
 XFOtcpku4JBdl6ow1DiCOHjh6lVjnbOjj0myHJ4IzQSgl6P7hhXZ/aGn+
 05GlUlqjkEGEFlMNcrfJPfQc1hRsEhZidktuEO/sCBjJZCTNUTZz0bPP6
 WvlMUs4yO7WuWrizxWjxYA6AB+eGaG1pw0G2m8P6cERlZVBQXfbEe9b9g
 8yn7Laok5D/7h6lglRxfmOMd+ythq06ncGZbaUeq122fCoi/TqnAxE0kr A==;
X-CSE-ConnectionGUID: TfGuXKLjTRGbLmpZ+fpgqw==
X-CSE-MsgGUID: +Q5q+lgQSgeOXkt5W3WuCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296870"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296870"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:30 -0700
X-CSE-ConnectionGUID: DqRE/J5YT/Coxxp1BWVJnQ==
X-CSE-MsgGUID: IJaC6QGAQIO52+BMNB1qvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118791"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 16/18] drm/i915/psr: Disable PSR2 SU Region Early Transport
 if psr_enable is set
Date: Tue, 11 Jun 2024 15:12:41 +0300
Message-Id: <20240611121243.3366990-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Currently PSR2 SU Region Early Transport is enabled by default on Lunarlake
if panel supports it despite psr_enable value. Prevent SU Region Early
Transport if psr_enable is set to than -1 which is the default.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ad13324b4781..50f838f6aa8a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -235,6 +235,16 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (i915->display.params.enable_psr != -1)
+		return false;
+
+	return true;
+}
+
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -697,7 +707,8 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 
 	return panel_replay ?
 		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
+		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
+		psr2_su_region_et_global_enabled(intel_dp);
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
-- 
2.34.1

