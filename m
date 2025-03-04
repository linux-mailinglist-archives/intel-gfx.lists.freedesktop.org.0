Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F1EA4DA64
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AD610E566;
	Tue,  4 Mar 2025 10:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9HJzM7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B70410E566;
 Tue,  4 Mar 2025 10:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084078; x=1772620078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWTwNPdzukwAIIWTxoOD4haf2tXKH9mkuVRN9WiMtoA=;
 b=l9HJzM7ZVlGkagJAhBEJ7GYh54Y9as/FpHmJBzGuplzOvO/xYeCaYqXw
 C4PCH0bZBv+nOE4fzhedACbBltK4lD417URwQLMY9tp6detKKATblTvlR
 qm4Nn+t4EK8El6cL5pYqhIBXl0wJAcw+51BcGhpwdF1ZJMjjS20SBGMcq
 pq0LLv0TJxD6aL2/XSIiDMQkJBWYrZ1jSl+G3Yma79V+MXCQLWDY29gCC
 lc5DBXSg4eZCL7+90tXYXH2SApGX1BKESoXNdFDc0DUz+xm4RLvk+st2N
 +7yvsUclbLU513VaeN88NUjAHdVzVfFz6fsO/19JrqSoGrhYiR+z2aafn g==;
X-CSE-ConnectionGUID: HFKIhLszTVSj6NgjPjr5tQ==
X-CSE-MsgGUID: VugQSvdtRBGMSs/8VwX7+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52632791"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52632791"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:58 -0800
X-CSE-ConnectionGUID: aGbuXPlrS3ucU53PU8+Uhg==
X-CSE-MsgGUID: dDhggBasQCG31K/UwCugdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321695"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/display: remove dupe intel_update_watermarks()
 declaration
Date: Tue,  4 Mar 2025 12:27:33 +0200
Message-Id: <67eeebff3ec9459f7854fbc56cfd7f2aa8c1fdc6.1741084010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
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

intel_wm.h already has intel_update_watermarks() declaration. Remove the
dupe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 65245ef04347..3b54a62c290a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -521,8 +521,6 @@ void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
 			     bool visible);
 void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 
-void intel_update_watermarks(struct drm_i915_private *i915);
-
 bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc);
 
-- 
2.39.5

