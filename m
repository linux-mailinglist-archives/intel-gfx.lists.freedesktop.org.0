Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1FB55231D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F2F10EDE3;
	Mon, 20 Jun 2022 17:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6495110EDE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747586; x=1687283586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=987yc1SauKHTAGMI1RXeAW8QoOVhehKso72awLpQds4=;
 b=N2NIllAFwfYw6kykTc41JHOL/LZxf3yY8d9i5oz7nYZCgRztoOmebj+w
 3/UnsfJ84NMvYd9XwzaIFH5QGZD/Rqri1DiweJxpdZAbsd0VAyZVbyPlf
 4DaM5YBHalRRm/+Bw18kShyd6Vu08OBNbBYY6NjBX/1IegP4mtge1kkID
 1vxKYPWo3uTXlV5f7j1lDIJCAuNs3k50a2f6E5KNpzhkdgu07JGhHoQXD
 O2eN2I2MDA4XjaqHkFgZZ4XgwhSJMlijZ8whRsYArD0ufdcmQQcpEEgKb
 0zIQGzqxo6dlU/zOIbjMWOfntQyxgfDMGrGvm9zsNdl3wwe8Mp8VggI7P w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="341633597"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="341633597"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:53:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="614466740"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 20 Jun 2022 10:53:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:53:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:10 +0300
Message-Id: <20220620175210.28788-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/17] drm/i915: Round TMDS clock to nearest
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
index 5ec954b293a2..c8a4e9e5f19b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4494,7 +4494,8 @@ int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
 	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
-		dotclock = pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
+		dotclock = DIV_ROUND_CLOSEST(pipe_config->port_clock * 24,
+					     pipe_config->pipe_bpp);
 	else
 		dotclock = pipe_config->port_clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1ae09431f53a..0b04b3800cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1891,7 +1891,7 @@ int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
 	 *  1.5x for 12bpc
 	 *  1.25x for 10bpc
 	 */
-	return clock * bpc / 8;
+	return DIV_ROUND_CLOSEST(clock * bpc, 8);
 }
 
 static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bpc)
-- 
2.35.1

