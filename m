Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD335728978
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4D210E61F;
	Thu,  8 Jun 2023 20:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C5E10E614
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256266; x=1717792266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D2kg5CXICjvHjlwr9wTyvvkUT2LVZm/+FIMxuXpXZ9Q=;
 b=nP+x2kO1qQdayDTSFIpZuJp8ziNL5gPbZPkVY08Kyt3ilWacua1qJ89C
 o6GCjHimGKC/renHMDjn7iiBx/QZpxRguAtkPrKcmEPOdkCCYk8JUmQR+
 mpqpQPP3cj5eHFMXUQ/X0GbHikeEkifuQp61IjoCRmFnwVI4HUut65u3k
 lHAEEbrCk0HOjM9Huzkz3EbuzsXrm2vUEBNAj94/Pj0BPuMMfegeDkc2u
 GePiCHZdwaoz69cCXqB+q7PeLBnYVJnnp+CPq8NDm+mYbrNRd7piY8hJt
 PLxsYa2L/12CrW8R7YB8u2MTl/2iZidi4Sxx/3/PMADFtGLeu+WorkDs1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012629"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012629"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100645"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100645"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:46 +0300
Message-Id: <20230608203057.23759-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/13] drm/i915/dsi: Do display on sequence
 later on icl+
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

Doing the init OTP and display on DSI sequences back to back
doesn't really make any sense (a single sequence would suffice
then). Move the display on sequence to be done just before
backlight on, which is also what Windows does.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d55725a71ba8..d60cf4592bc7 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1139,7 +1139,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 	}
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
 	/* ensure all panel commands dispatched before enabling transcoder */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1240,6 +1239,8 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
+
 	/* step7: enable backlight */
 	intel_backlight_enable(crtc_state, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
-- 
2.39.3

