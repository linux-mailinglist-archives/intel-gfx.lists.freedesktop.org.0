Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3033552323
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E83E10EE19;
	Mon, 20 Jun 2022 17:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 338CA10EE0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747606; x=1687283606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9qSodX/rnwk6GlOQwL+hgRu7pClt/ddOjIggB/19/rg=;
 b=oLDkM/y5QsagZbM74tU4GZr6Gi6elPgYpWl6F8LNN4+5E+EhknFbjd7n
 T0yRkaghI0zFKlY4kPau0FDKF3Pth+7o6P/IR/hdC6RK8FlL+HWye25Ui
 +twSzE8XOta934WK0g3XbWh2PtmNLyjaF7oZObM5pgFhAC1AVM6vkNDZ9
 EvEXS2z9h+OpnX9hWwlR/3qigbC8yt5lzDiIIczNAJ+PqoNLD4WDg/w9s
 TP1T3l+sHy5l4hoQC+gfNBYX7Ww181aKmYDtFsJUSA6IBrDvQdybQckgV
 hjEhqcVxUO0r9j/23ONYMIzYHTpB/5ZrZw6ZtwuBA02lugbKLDabgWUnP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="343943447"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="343943447"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="676629060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2022 10:52:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:01 +0300
Message-Id: <20220620175210.28788-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/17] drm/i915: Compute clocks earlier
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

Do the DPLL computation before fastset checks. This should
allow us to get rid of all that horrible fuzzy clock handling
for fastsets. Who knows how many bugs there are caused by our
state not actually matching what the hardware will generate.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e484c7492754..7b1fa24bff19 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2696,6 +2696,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	if (ret)
+		return ret;
+
 	ret = intel_crtc_compute_pipe_src(crtc_state);
 	if (ret)
 		return ret;
@@ -6884,10 +6888,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
 
-			ret = intel_dpll_crtc_compute_clock(state, crtc);
-			if (ret)
-				goto fail;
-
 			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
-- 
2.35.1

