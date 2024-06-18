Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2AE90C316
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AF210E231;
	Tue, 18 Jun 2024 05:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9ShT20d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FBC10E231
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fIZAZcw9P72RYJHaZXIKQWsqs6l2ETQSkP1vqzi6NAY=;
 b=C9ShT20dUiyE/RJxUBPfVN8R49eJg5RYARKJcqOcogTB9fufPadNmMf2
 t6F3Wob6BiDGbA9I7UAkHbyHJXfeWWv3gpAEiSVoCD6R+ClacAnqzE9OC
 JO1qrV2ZYgEqEsbz1hE2ZWdmMdEk45swV2XYoxATMmjlbJYoWi+uMtKV/
 sDsdgPVXvVzY2BbUBDSBHxVM4uCpQi8e2qQLiSDX0Pfgu68qDkizq34Vw
 mXK4g9eyywYbxOD/SzO7WyILIotAC9lUi+ciHL+eYXQDVnwEmN6umpJAr
 c5O8G3oZKeiOguQizLq3mKHnOs15jRyscsfRcpnvXbdt37oJsGH2nYipr g==;
X-CSE-ConnectionGUID: 0IwOZaADQoaD8IqgDTi10Q==
X-CSE-MsgGUID: RUUR6JIxTjy9NN7ByMBONA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077712"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077712"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:55 -0700
X-CSE-ConnectionGUID: 7nKmdltJRAapGrE5beq6Kg==
X-CSE-MsgGUID: QupTAB0HSS6Qo1sLAlfA0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365149"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/9] drm/i915/psr: Disable PSR2 SU Region ET if enable_psr
 module parameter is set
Date: Tue, 18 Jun 2024 08:30:22 +0300
Message-Id: <20240618053026.3268759-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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
if panel supports it despite enable_psr module parameter value. This patch
makes it possible for user to limit used PSR mode and prevent SU Region
Early Transport by setting enable_psr as 2. With default (-1) PSR2 SU
Region Early Transport is allowed.

v2: fix/improve commit desciption

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cfce0fe05d92..800cfeabc139 100644
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
@@ -683,7 +693,8 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 
 	return panel_replay ?
 		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
+		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
+		psr2_su_region_et_global_enabled(intel_dp);
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
-- 
2.34.1

