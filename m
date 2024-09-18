Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715C797BFD1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1367110E619;
	Wed, 18 Sep 2024 17:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2VNXr2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A90F10E60D;
 Wed, 18 Sep 2024 17:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681686; x=1758217686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F3oa4S2g6yjhfhRUPei7PO75q5U53H/jA0vlfKj7Qk0=;
 b=j2VNXr2wMnWLNeqMS8YqHJ6LsblKscYGOFewbzjpF1lddfnwwcqDtLub
 kahzjW2N2mE2eF969T+15mspWmVGtxvzkypxarI9c8AdUhiPLDsKR0o2c
 pZOEKrOKtjLVekL8WXYUTqN0Wg1BgWmjnSmk+GMtz/uyMwrb/1Wgg2T0k
 +J1pZA4+cU30QPDvhP1W1lNp4tnhUcVVdea+fPq/PsZjkJZs8D4U379pv
 a9vs5iHviyRqGY2yBr6mYhyJYQqcTcAg4r0iWk6pehKSMikcwuODMG164
 l8uAR3Psfa1pukBr7sNf7WnGb4Tvyp5elEU87e4dRzQ684TdjgprAups9 A==;
X-CSE-ConnectionGUID: Hb+uX3rXTkOqEH4rDCDJgg==
X-CSE-MsgGUID: OejaOygPQmibDv0ib2BY2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25095115"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25095115"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:06 -0700
X-CSE-ConnectionGUID: Emfh8VTEQDiWUQ69p8SYvg==
X-CSE-MsgGUID: EgqGybJ5QLmvvX9UQqOJkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74447332"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 2/9] drm/i915/pps: add bxt_ prefix to pps_reset
Date: Wed, 18 Sep 2024 20:47:42 +0300
Message-Id: <7d4552f555936be44fae27ca101007746fcff8c2.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The pps_reset member of struct intel_pps is only relevant on
BXT/GLK. Prefix it with bxt_.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c           | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d6616408df86..3e694c1204db 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1557,7 +1557,7 @@ struct intel_pps {
 	 * Set if the sequencer may be reset due to a power transition,
 	 * requiring a reinitialization. Only relevant on BXT+.
 	 */
-	bool pps_reset;
+	bool bxt_pps_reset;
 	struct edp_power_seq pps_delays;
 	struct edp_power_seq bios_pps_delays;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b7c73842ea16..2d8d911988ab 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -262,10 +262,10 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(display->drm, !intel_dp_is_edp(intel_dp));
 
-	if (!intel_dp->pps.pps_reset)
+	if (!intel_dp->pps.bxt_pps_reset)
 		return pps_idx;
 
-	intel_dp->pps.pps_reset = false;
+	intel_dp->pps.bxt_pps_reset = false;
 
 	/*
 	 * Only the HW needs to be reprogrammed, the SW state is fixed and
@@ -479,7 +479,7 @@ void intel_pps_reset_all(struct intel_display *display)
 			continue;
 
 		if (DISPLAY_VER(display) >= 9)
-			intel_dp->pps.pps_reset = true;
+			intel_dp->pps.bxt_pps_reset = true;
 		else
 			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
 	}
-- 
2.39.2

