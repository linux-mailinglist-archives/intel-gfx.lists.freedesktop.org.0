Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B883BC0890
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7CF10E587;
	Tue,  7 Oct 2025 07:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZxH8tXN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE6B10E587
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823868; x=1791359868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CqJcBNafGfBiY4jqdIhM/5mEogLTsXXyX0dd/AIRQFs=;
 b=mZxH8tXNIkWUBj7oZQzIF3ccht/nYqyPyLd6Qt95+mPxvM7+j9ZFb2Uw
 ihlsCTWmxScbBGowjH2uRGFDYbCIy6CT10/6zHAGEb5iKIy01aJYQK7O1
 MsPpy1AA8h4Ii9ofbn6p+W1qDoMMthsJ0bPROyqt03agGlCGAPrYLWLJN
 Wbz/RYgElYjmcG73yGAaRE6b0Lm6cxceibGVl+bRzpPyTCC6VWCpvGdbr
 FuRTaPHY2J0RUMIfxvJMket5qYPfxYHZdlvrXAEn6ipINwxwObjZpCdGn
 QfTysqFZLDV4cnDBYBUljbat4ajF14VNKbEXX9ZiXtGSX9zFj5JUmZe7N A==;
X-CSE-ConnectionGUID: PrmDA+neS+yRAbJVnwszkg==
X-CSE-MsgGUID: XTn3ph9uRyaLIrE+kXDc2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104884"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104884"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:48 -0700
X-CSE-ConnectionGUID: 0ViXQdjaS5C9DjW7HbDhLg==
X-CSE-MsgGUID: LwJ4GUwHSn6BT6IjmDTZ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017656"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:46 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/7] drm/i915/wm: clarify watermark ops with comments
Date: Tue,  7 Oct 2025 10:56:35 +0300
Message-ID: <20251007075729.468669-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

Some of the ops in struct intel_wm_funcs are used only for legacy
watermark management, while others are only for SKL+ or both.  Clarify
that in the struct definition.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..7144b61fb1ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -78,7 +78,7 @@ struct intel_display_funcs {
 
 /* functions used for watermark calcs for display. */
 struct intel_wm_funcs {
-	/* update_wm is for legacy wm management */
+	/* these are only for legacy wm management */
 	void (*update_wm)(struct intel_display *display);
 	int (*compute_watermarks)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
@@ -88,8 +88,12 @@ struct intel_wm_funcs {
 					 struct intel_crtc *crtc);
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
+
+	/* these are for SKL+ wm management */
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct intel_display *display);
+
+	/* this is used by both legacy and SKL+ */
 	void (*sanitize)(struct intel_display *display);
 };
 
-- 
2.51.0

