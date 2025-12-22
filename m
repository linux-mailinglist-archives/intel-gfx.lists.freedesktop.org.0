Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E1CD5FD4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B42B10E65F;
	Mon, 22 Dec 2025 12:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0Rre4Rr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58EFE10E65F;
 Mon, 22 Dec 2025 12:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766406863; x=1797942863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B/Ak6+Z1vPW6zab9J4O2W13YC5xQgwxOE47wsi10ItU=;
 b=K0Rre4Rr6S7luEb4Omq64E/b7uR5v56aDlQZkiTR92Ygh7hH0QBbMIlA
 8FxmXb5FPRYnkcE/6ee6+ve1stjYxNawUtNvcopa1Sjuf1k6ChHYsFwLE
 fUE3g8Q1mHHo/DpUqmsSZPJnTUAkOeQ+D0SK4M1lF9LKUm3RlY8XnFOfK
 4DL+/woiwCn005XPNy4xDFRJEon+5+W2A3N7SgSGrFJwvfw5eREKtxmCr
 mROmcZzYaTwPwpfxgSAU79AKgvd8Ripn0hn+DksUPvrxDLVraD70nMQRo
 Msh0eWIkWqo1Qr1giUlFMSLuqBQe8zOPKI6VOOYxyf85jnPfb2t9cILoa w==;
X-CSE-ConnectionGUID: jIzU3IRBS/q1RPBXovRa9g==
X-CSE-MsgGUID: 9OZetzioSo+NhddWkJwUjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72121841"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="72121841"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:23 -0800
X-CSE-ConnectionGUID: XaoeI50ZRteghLJFo8H84g==
X-CSE-MsgGUID: M39IcvDsQXS1aTBb3QgYYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203984554"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 3/4] drm/xe/compat: convert uncore macro to static inlines
Date: Mon, 22 Dec 2025 14:34:02 +0200
Message-ID: <7ddee71952315e70e4a7df23638100b664e293bd.1766406794.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766406794.git.jani.nikula@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Use static inline instead of macro for
intel_uncore_arm_unclaimed_mmio_detection() to avoid the need for
__maybe_unused annotations.

v2: Rebase, intel_uncore_arm_unclaimed_mmio_detection()

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c          | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5947cc9b94c..32de0bab0982 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7381,7 +7381,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 0d60a0bf2e4b..c05d4c4292d3 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -152,6 +152,10 @@ static inline void intel_uncore_write_notrace(struct intel_uncore *uncore,
 	xe_mmio_write32(__compat_uncore_to_mmio(uncore), reg, val);
 }
 
-#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
+static inline bool
+intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore)
+{
+	return false;
+}
 
 #endif /* __INTEL_UNCORE_H__ */
-- 
2.47.3

