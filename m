Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA609733328
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265B710E640;
	Fri, 16 Jun 2023 14:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87DCA10E640
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686924513; x=1718460513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O4RNjPoxVCbLWXonyrmAbVTmVmjokKhF/KLBgQdSixw=;
 b=UPWeR7by47OYVCn8I768TCwMqHYUu3yD7kRRawDT5GcB0qI8w2E3lSYP
 FY7u3gLj+9OWJc/6LFdjwbMVpBO8v935sMN5/wW8TBz6J3X1jAnnzPJ4y
 wCRmSzAATVbwdoHDFYelSlPiZebWG0LxacqDixarmJT2sU5odBMT7O9KM
 xuIStg9qQwrGA4b1upJQ87SKOzqwBYr7/9dITnhyeZ2u9n5uJewqcaHGl
 uoFahQTEwrYd0wHvCpWxgAhedbuEwcbHSaY0TM66FlC/c3qij2s6ABWCW
 nI5tiO4dgV58RHh0FT43IZL/ECA64Fqv1SHFkrIlW+T0uZLSb2hoEhuUQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343957842"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="343957842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 07:08:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712883050"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="712883050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2023 07:08:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Jun 2023 17:08:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:08:16 +0300
Message-Id: <20230616140820.11726-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915: Assert that device info
 bitmasks have enough bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Sprinkle in some BUILD_BUG_ON()s to make sure some of
the bitmasks used in the device info have enough bits.

Do we have a better place for this sort of stuff?

v2: Relocate to the new place

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f5305447494f..75ebe4c960a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -854,6 +854,10 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
 	enum pipe pipe;
 
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->pipe_mask) < I915_MAX_PIPES);
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
+
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
 		for_each_pipe(i915, pipe)
-- 
2.39.3

