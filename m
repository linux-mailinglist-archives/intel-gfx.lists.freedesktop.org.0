Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD828D60D8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D3910E466;
	Fri, 31 May 2024 11:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEeDo7r6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD7910E466
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155670; x=1748691670;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Mcu0aNutRIwUePyMVHzD+JYblyvoK2KQEVuccAzm3Mo=;
 b=WEeDo7r6V9/nNWT1/6lSdJvNwNEZ9N8L9XM+zYZ0Lb5WxOJEu8WmNenx
 BZ4zzEW8flPwZU77+z0Xm1THMP8iYdqCL4C6HdDct5m/fVdqOgvaWKOLZ
 bsx3YkfGMbvqfEp/DnJ4l8Ay7QzeDI+9lMlSJZB4GfpN9c1tGSKnz2z5C
 8ktFZtJ2iS9Pcq5BL+L889H9KZ4cjH8CzvOWzTVeudXfxpgtDoGBIX8IP
 r7pHrq9TCKlvIosftSXBqKPdWA8aPcJFKKumYeXFvkyXqy9+oNi39u2BU
 8lwgU7YQt2n1ganXklE12iF5kS0sxK2VMM0m2Wz5eKx8XHYl6VTYHuvXP A==;
X-CSE-ConnectionGUID: I9H+6RR3Qyyv5dH5jqvVLQ==
X-CSE-MsgGUID: pk6sDzPVTMeJr4zrvVvwcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863906"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863906"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:41:10 -0700
X-CSE-ConnectionGUID: 4qKnehQUSJOBJrRjKP+CEg==
X-CSE-MsgGUID: oEmoI3DkTV26yIyUx05ZNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36132734"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:41:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:41:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dsb: Move DSB ID definition to the header
Date: Fri, 31 May 2024 14:40:59 +0300
Message-ID: <20240531114101.19994-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're going to need to make the DSB ID visible outside the DSB
code, so that we eg. can use multiple DSB engines in parallel.
to that end move the definition to intel_dsb.h.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 --------
 drivers/gpu/drm/i915/display/intel_dsb.h | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0e2bd9a2f9da..f3bfa5b1672c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -19,14 +19,6 @@
 
 #define CACHELINE_BYTES 64
 
-enum intel_dsb_id {
-	INTEL_DSB_0,
-	INTEL_DSB_1,
-	INTEL_DSB_2,
-
-	I915_MAX_DSBS,
-};
-
 struct intel_dsb {
 	enum intel_dsb_id id;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 16d80f434356..5d7561ea65fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -14,6 +14,14 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dsb;
 
+enum intel_dsb_id {
+	INTEL_DSB_0,
+	INTEL_DSB_1,
+	INTEL_DSB_2,
+
+	I915_MAX_DSBS,
+};
+
 struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
-- 
2.44.1

