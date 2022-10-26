Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4302060DEB0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A684610E4B2;
	Wed, 26 Oct 2022 10:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9C310E26A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779106; x=1698315106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gm81K3zHMYhRuY91zbvRhsMMAkuy90BAvGBGbHXSJ1w=;
 b=FBO1jP1IuZv9KEpbFj8yihZ3ceJ+svOTPCZYpvB0Yym5UkqTJQLFryJb
 DaCg1ZcrVoox+3dh2utFMdTvAdsmqe6iAG9X83cLf2BkDNG0C371niclL
 05pvhqQ9nBLkwAHXCNgXtieCyhWeUrNgorQb8x9KKjhxuS1RHtt2wc+uD
 b9cN7vyyIZzz93dvJehpMjRK+mkQKVqJADtr3dKeeBCXeXlSH82jeVHsL
 ERYOGGU3RwKJy2/mfAKky4jok3QlmIIwXNRwBvC0s+TMZEfI/JMx9hdCv
 auMsNImNVwpm6qZ4l1XW2eVX0SxI32Gn3fDb7RWvW77ucoSQ/2QRud2W1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222261"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222261"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305878"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305878"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:29 +0300
Message-Id: <20221026101134.20865-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/sdvo: Grab mode_config.mutex
 during LVDS init to avoid WARNs
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drm_mode_probed_add() is unhappy about being called w/o
mode_config.mutex. Grab it during LVDS fixed mode setup
to silence the WARNs.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuff")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index ccf81d616cb4..1eaaa7ec580e 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2899,8 +2899,12 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	intel_panel_add_vbt_sdvo_fixed_mode(intel_connector);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+		mutex_lock(&i915->drm.mode_config.mutex);
+
 		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
 		intel_panel_add_edid_fixed_modes(intel_connector, false);
+
+		mutex_unlock(&i915->drm.mode_config.mutex);
 	}
 
 	intel_panel_init(intel_connector);
-- 
2.37.4

