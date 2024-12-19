Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 195029F87A2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1C110EDFB;
	Thu, 19 Dec 2024 22:15:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7iefmgB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC45310EDF8;
 Thu, 19 Dec 2024 22:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734646499; x=1766182499;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q1X45NsqZCRFvchRSrrYDQDCL2FDn/r+FQxMTX2aYbo=;
 b=f7iefmgBkDznA3W4o/0pmK7OBuz/ZKay8+5VHT6BwwQRZvyp1SvmJiQY
 ze8RKHw0ppTiV58F6oVfy4Tpa9ZD3DExCzp72idhc6yCi2w67fYcrlv3/
 Bg0iUExWCrmRHTfC2GJRHOsTLM31TZViCjYhKb3Ijmn9GW7kvRxOTZRRG
 t8G/PmsWTifUs27xJaj6HJhuNFg7+mqkncjMCLc2xd9etpzHBLHdQlT/d
 Sufy1eg/oFP/Okim2TMumuZVnHTVsEikJgBfB4soy0/ya+itgSx/xfk57
 Q+Itff0N/98vPM5CAxEIFtaWlUd6ScI2rURIO/hQQ3HfitT4AZs4VzsVm w==;
X-CSE-ConnectionGUID: nXjr4Zh0QHmofL+wkuZ2aw==
X-CSE-MsgGUID: fPDNhPJeRIKz+QYjR60VEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35217724"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35217724"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:59 -0800
X-CSE-ConnectionGUID: 0Oj/7LedQoO/+WJEuMvEhA==
X-CSE-MsgGUID: 3sUg+HEoScCtM1D/IA9g3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102944131"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.91])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:58 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/dmc_wl: Allow enable_dmc_wl=3 to mean "always
 locked"
Date: Thu, 19 Dec 2024 19:14:16 -0300
Message-ID: <20241219221429.109668-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219221429.109668-1-gustavo.sousa@intel.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

When debugging issues that might be related to the DMC wakelock code, it
might be useful to compare runs with the lock acquired while DC states
are enabled vs the regular case. If issues disappear with the former, it
might be a symptom of something wrong in our code. Support having this
"always locked" behavior with enable_dmc_wl=3.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 7 ++++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index f0f388f38fa7..c4f1ab43fc0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -130,7 +130,7 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 
 intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "
-	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register) "
+	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
 	"Default: -1");
 
 __maybe_unused
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 22e963da65c6..a277c5025f8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -57,6 +57,7 @@ enum {
 	ENABLE_DMC_WL_DISABLED,
 	ENABLE_DMC_WL_ENABLED,
 	ENABLE_DMC_WL_ANY_REGISTER,
+	ENABLE_DMC_WL_ALWAYS_LOCKED,
 	ENABLE_DMC_WL_MAX,
 };
 
@@ -312,6 +313,9 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 	case ENABLE_DMC_WL_ANY_REGISTER:
 		desc = "match any register";
 		break;
+	case ENABLE_DMC_WL_ALWAYS_LOCKED:
+		desc = "always locked";
+		break;
 	default:
 		desc = "unknown";
 		break;
@@ -332,7 +336,8 @@ void intel_dmc_wl_init(struct intel_display *display)
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
 	spin_lock_init(&wl->lock);
-	refcount_set(&wl->refcount, 0);
+	refcount_set(&wl->refcount,
+		     display->params.enable_dmc_wl == ENABLE_DMC_WL_ALWAYS_LOCKED ? 1 : 0);
 }
 
 /* Must only be called as part of enabling dynamic DC states. */
-- 
2.47.1

