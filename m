Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D178FE04
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F89310E7C1;
	Fri,  1 Sep 2023 13:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E2E10E7C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573504; x=1725109504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EqWuEEULv5A5eZyrqtRmBBfd1Nf1XkBvAxy6gEAR9uE=;
 b=Ne1BXxO5rnHrn6RlSjdSOBRzMFShTLpgWZMUgU3aT11PKV9yj6u3f6rb
 33iqGYN03zQ+hc8+DopyH/yqJiv0qyg5ngTb3ECxGtz/RNYraavvWOsT+
 uxO/873uXWZKxrEqGvobS6DDZh0boMZzQ8egD5T20Wb0NEENPfYGBbS/6
 qASbuZ7Tsiv6yYbSQ3JfrH/i92/FJ8+W/ESrn1ilP980NMOEbJbN6FFlb
 ydl4VZTxfhS5xumplf2nPQn91ASMO/2AMwRYz5w1D8nLo7PQOl0uGv3KE
 09leKJw/VzQI7CYwiwecvuJmjPdBQcbFONPY8TUIWrEW78dLlmYJZIMxL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240615"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240615"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994902"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:05:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:05:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:34 +0300
Message-ID: <20230901130440.2085-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Optimize out redundant M/N
 updates
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

Don't perform a seamless M/N update if the values aren't actually
changing. This avoids doing extra shenanigans during vblank evasion
needlessly.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6196ef76390b..c20eaf0e7a91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5525,7 +5525,9 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state))
+	if (intel_crtc_needs_modeset(new_crtc_state) ||
+	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
+				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
 	if (!intel_crtc_needs_modeset(new_crtc_state))
-- 
2.41.0

