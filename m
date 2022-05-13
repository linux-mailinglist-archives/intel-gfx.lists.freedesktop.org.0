Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B494252642E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 16:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC34210E05B;
	Fri, 13 May 2022 14:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D9410E59F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 14:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652452117; x=1683988117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XTGuSxFwx3/9qMoienub3ypNh3Kqd3tGi9vgeZSrWoE=;
 b=YRhElbRN7E6UL2IPIo29sdRbQDl4LXEYcwVdzZt6wWvuOccbPGS/kGNZ
 8akMuqEJSiI0F2P+uLR6DlG3uZjet747+Mnblvql6h/Vpsk2MH5xMmqDJ
 qiP8DHPTZyxPqNOmFbyTEVVpiXKmUo7PnTUQaetWmUYJzhzg8fqdXt40o
 HohHcJFFuMjIpTWs+6tDXXv5JaBQJbf1bDJBr01dmke4d3ZW6OTV5HZRF
 4dF2k8DfvRrIWRhQFS+3ej5fVRD3Uew8d6YgBk8RUhOCGyAlMPBaAGHI5
 qsbRwRNRkLbBR6jM0Uig9Y0Wal0gP07g4kYFd0kpuK1Wl4dhC5Ls7cikb A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="270450181"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270450181"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="543277389"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 17:28:10 +0300
Message-Id: <20220513142811.779331-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513142811.779331-1-jouni.hogander@intel.com>
References: <20220513142811.779331-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/psr: Use full update In case of
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
v5: pipeA -> "pipe %c", pipe_name(crtc-pipe)

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..fecdaaeac39e 100644
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
@@ -1770,6 +1771,19 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		clip_area_update(&pipe_clip, &damaged_area);
 	}
 
+	/*
+	 * TODO: For now we are just using full update in case
+	 * selective fetch area calculation fails. To optimize this we
+	 * should identify cases where this happens and fix the area
+	 * calculation for those.
+	 */
+	if (pipe_clip.y1 == -1) {
+		drm_info_once(&dev_priv->drm,
+			      "Selective fetch area calculation failed in pipe %c\n",
+			      pipe_name(crtc->pipe));
+		full_update = true;
+	}
+
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-- 
2.25.1

