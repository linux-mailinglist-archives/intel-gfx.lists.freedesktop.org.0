Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C802D47D500
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 17:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BA310E124;
	Wed, 22 Dec 2021 16:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082FD10E124
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 16:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640189862; x=1671725862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vcKJEYNaeuQFcbqOi3XUHwiS2K28XTiZ+MoVOP9mDaE=;
 b=b27FmntBkpPqgwys+k57pbPmnNKdRqtN0J6z33U2o7/2f3Ivx08pF0CF
 VZAljyfCNARxlzYNW0PEHzOjJb101o3c8HipGBGQOgFuUOBXjkVbH+XQf
 uAzt4H1qWX983wQSygM+uR6whSOBBZjWpmHdqj7mu4RRrCL6kBh/Dzux8
 E7nYGbZuduBVSUhchVzEnfaUrPPUXV76ZjT/AMu0VWXo+2GVkBTDv6402
 ELz/+iB/sNOhkjBoWwLdmjm8Le0QCoX/uWEHnm3kpbKBPjpM3lC7DSci1
 epvvP2HW1PmE8XGZ0UkVp8h2GUuxurHfqyWBu8TQ/v5Akj0lfAO/A+JR5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="304022258"
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="304022258"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 08:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="508524390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 22 Dec 2021 08:17:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 18:17:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Dec 2021 18:17:38 +0200
Message-Id: <20211222161738.12478-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-7-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/hdmi: Ignore DP++ TMDS clock
 limit for native HDMI ports
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

Lots of machines these days seem to have a crappy type1 DP dual
mode adaptor chip slapped onto the motherboard. Based on the
DP dual mode spec we currently limit those to 165MHz max TMDS
clock.

Windows OTOH ignores DP dual mode adaptors when the VBT
indicates that the port is not actually DP++, so we can
perhaps assume that the vendors did intend that the 165MHz
clock limit doesn't apply here. Though it would be much
nicer if they actually declared an explicit limit through
VBT, but that doesn't seem to be happening either.

So in order to match Windows behaviour let's ignore the
DP dual mode adaptor's TMDS clock limit for ports that
don't look like DP++ in VBT.

Unfortunately many older VBTs misdelcare their DP++ ports
as just HDMI (eg. ILK Dell Latitude E5410) or DP (eg. SNB
Lenovo ThinkPad X220). So we can't really do this universally
without risking black screens. I suppose a sensible cutoff
is HSW+ since that's when 4k became a thing and one might
assume that the machines have been tested to work with higher
TMDS clock rates.

v2: s/IS_BROADWELL/IS_HASWELL/

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3b5b9e7b05b7..3156dc3591d8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2359,6 +2359,14 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
 		    drm_dp_get_dual_mode_type_name(type),
 		    hdmi->dp_dual_mode.max_tmds_clock);
+
+	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
+	if ((DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) &&
+	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
+		hdmi->dp_dual_mode.max_tmds_clock = 0;
+	}
 }
 
 static bool
-- 
2.32.0

