Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446BE9E3DC8
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D014810E2AD;
	Wed,  4 Dec 2024 15:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph52gUE5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B1210E1AF;
 Wed,  4 Dec 2024 15:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324868; x=1764860868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lwbRLL/fjrUy9Lhps+Cchzjcz8tCLrh7jJ9xqaT5Zk0=;
 b=Ph52gUE5kT4yt5m3A0JboBV84l73+WtnkNbpyUzOj1aqLBCAfy5j9jg1
 AOX1zomSFDZNKkr7OY9f4rGyZKHIX4ATSHy3+7sMrT+Vv7eZPu811WZkY
 6z8FpsEJkE55AYEbBRHhJkxAMZWGCIWJsEimeDjOZvd02Q/16ePiLeJdX
 pp3B8RoB9IlBO3bnXZTtVRB/kdzGubp26x+HYBYaA374s6fuiK91Lvx7k
 yqyBPxU87UfFZB6neTSw3Xu2gjmNFXvPAvr3oIe/NKMwdwASk3bLn0Ydr
 z8JM+h8H/XPH5px2edaBVdl/kT2Aoh7j54YOkyf2fxgb06an96UfEVL49 w==;
X-CSE-ConnectionGUID: WrkI73dgS62XMXOzhK2MzA==
X-CSE-MsgGUID: oWAqUCK5So2yW6ZYfVcZjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33745719"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33745719"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:48 -0800
X-CSE-ConnectionGUID: tHLoE31ZSval+d1zchqvHA==
X-CSE-MsgGUID: +tG4sFOdTpKJtaD7WenkRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117038274"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 4/5] drm/i915/display: add intel_encoder_is_hdmi()
Date: Wed,  4 Dec 2024 17:07:20 +0200
Message-Id: <4292505b249268d824834d545b73aa0ad2d33984.1733324735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
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

Similar to intel_encoder_is_dp() and friends.

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 167aa8ec4948..0ae026a850c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1959,6 +1959,19 @@ static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
 	}
 }
 
+static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
+{
+	switch (encoder->type) {
+	case INTEL_OUTPUT_HDMI:
+		return true;
+	case INTEL_OUTPUT_DDI:
+		/* See if the HDMI encoder is valid. */
+		return i915_mmio_reg_valid(enc_to_intel_hdmi(encoder)->hdmi_reg);
+	default:
+		return false;
+	}
+}
+
 static inline struct intel_lspcon *
 enc_to_intel_lspcon(struct intel_encoder *encoder)
 {
-- 
2.39.5

