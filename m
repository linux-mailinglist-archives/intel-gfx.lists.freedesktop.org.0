Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3B75261E2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 14:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A4210FA8C;
	Fri, 13 May 2022 12:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A042710FA8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 12:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652445048; x=1683981048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7I4DJdtYeu8aH6dbwYLb7aumsX4nkkEa3e8YSW0h4jk=;
 b=UgXlDAvHg4Q4IZJ5p7WgAj7L0zA5zak63+BCwjrI181yhLXlpiDNOiAa
 4tKIQe+pZn5qcyG50GeaWaL8YcurfKw0HQUAqFngLPjXEAzQzHM5rgn//
 abaTvRgEy9SAf0MnAcwJPzfkbvgLfQ1fNQT5gFBnIFm+lNaS6DOHH+64D
 3JhxhTkxNDm9ioMBixVZrUaoB8UAHDhSZ9FBj9+KnoQf66UspDhppsPZh
 XPQSqw6qyApjKxf0Z8sMZfYMxlvdOsE/mrzPHMeemN0vZETOT00y7YnCx
 YHgu5Fpz+SCV+uXlb3OmLCGK8T5Eisc+PnjspYsYS6fKbxJZd1EeCdMun w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="333328353"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="333328353"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595200717"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 15:30:26 +0300
Message-Id: <20220513123027.655313-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513123027.655313-1-jouni.hogander@intel.com>
References: <20220513123027.655313-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/psr: Use full update In case of
 area calculation fails
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

Currently we have some corner cases where area calculation fails.  For
these sel fetch area calculation ends up having update area as y1 = 0,
y2 = 4. Instead of these values safer option is full update.

One of such for example is big fb with offset. We don't have usable
offset in psr2_sel_fetch_update. Currently it's open what is the
proper way to fix this corner case. Use full update for now.

v2: Commit message modified
v3: Print out debug info once when area calculation fails
v4: Use drm_info_once

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..1f031ebc1456 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1685,6 +1685,7 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
 	struct intel_plane_state *new_plane_state, *old_plane_state;
@@ -1770,6 +1771,17 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		clip_area_update(&pipe_clip, &damaged_area);
 	}
 
+	/*
+	 * TODO: For now we are just using full update in case
+	 * selective fetch area calculation fails. To optimize this we
+	 * should identify cases where this happens and fix the area
+	 * calculation for those.
+	 */
+	if (pipe_clip.y1 == -1) {
+		drm_info_once(&dev_priv->drm, "Selective fetch area calculation failed in pipeA");
+		full_update = true;
+	}
+
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-- 
2.25.1

