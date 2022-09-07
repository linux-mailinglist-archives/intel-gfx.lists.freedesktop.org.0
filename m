Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9175B0012
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4BF10E4A0;
	Wed,  7 Sep 2022 09:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A537F10E4DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541914; x=1694077914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+2XLkszGUa0lv8wQrGJF6wesQDI/J957y011wm2IO3c=;
 b=oC+lRm/Ws8KSljlyOhFhGVEucSqZqYE4XkONglxAgdbH66ONU6TncRUp
 sPSrb+CU338/HdEBHVqzkjHogFtfVbi0PqcWh0HIujMu2dS+iLDORjslf
 iMjjud7Rw3PWqerM4NhVJEP9tUk2/wHAsCTgjbZHj5S7RV/yZnnBOw+nn
 6Gmlmg8SD7qFiQK/fXfHnyjweTC3QFgFfMlHnANSessmKPDHLu+aA6G4+
 V0iL+EBPMeQAxDI0zg5z/YKYFiGyFf/cPzdzbJzu6WYwLdMa1WaRGvp9Y
 IP1NAFBNSxrvygC2vrmwhOfkAt5r2j7hHP/ZZlDSbGOI5/pQQ65l0E3MM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="296822318"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="296822318"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="610255239"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 07 Sep 2022 02:11:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:57 +0300
Message-Id: <20220907091057.11572-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 17/17] drm/i915: Round TMDS clock to nearest
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

Use round-to-nearest behavour when calculating the TMDS clock.
Matches what we do for most other clock related things.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b7d26b9e985..407afd5888ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4504,7 +4504,8 @@ int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
 	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
-		dotclock = pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
+		dotclock = DIV_ROUND_CLOSEST(pipe_config->port_clock * 24,
+					     pipe_config->pipe_bpp);
 	else
 		dotclock = pipe_config->port_clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 09f85afeb2d4..7816b2a33fee 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1892,7 +1892,7 @@ int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
 	 *  1.5x for 12bpc
 	 *  1.25x for 10bpc
 	 */
-	return clock * bpc / 8;
+	return DIV_ROUND_CLOSEST(clock * bpc, 8);
 }
 
 static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bpc)
-- 
2.35.1

