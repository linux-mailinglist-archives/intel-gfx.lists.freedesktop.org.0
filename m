Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114E2CF1C88
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 05:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B0710E39E;
	Mon,  5 Jan 2026 04:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAF3e6uj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E3A10E27C;
 Mon,  5 Jan 2026 04:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767585766; x=1799121766;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F1xCzcO0Fb4KKhPebm+S7lJRzpthe4YaTxN/uxlIhw0=;
 b=cAF3e6ujAkHLAeovb+k1K3nnO8gE/BD9AAsZk+EA7e9CZItv6BW2nJd3
 w/qzvc38oxoTbvfKNbK4b/frjzFavIjYHA5h441c/j8b7/iS5CFayi4sZ
 Mmy2dTuTosQDPHqgXK4erueTTRWeIfiKr4wOCqVA9dLPnCveDwz39zhHD
 ZhMk4EQXg0YaCw77/kF6QTluRhTFqpjLip5GM74NUUHne486Fnhp65YH8
 VbLcviNyr6+Dl15HWUVXIDX3RiuRc77rh06PeQ8SX9cZSllr6SWFv9jOe
 9C2RArd6vNorQReZBU2uZ42bKoB2mHwA7rtEVBKN5DkYjzP5vpxhLzSa0 Q==;
X-CSE-ConnectionGUID: Hh9eo9VuTk+f7KeknOGPxQ==
X-CSE-MsgGUID: QCbUw3TQQUCe18VLcJUUTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="68856274"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="68856274"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 20:02:45 -0800
X-CSE-ConnectionGUID: sXk6jf7yRKy6IZpSvlhPJg==
X-CSE-MsgGUID: Xd/7IJSKRq6ac72QHIIl1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="202060696"
Received: from lstrano-desk.jf.intel.com ([10.54.39.91])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 20:02:42 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, carlos.santa@intel.com,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 22/22] drm/i915/display: Use atomic helper to set plane
 fence deadlines
Date: Sun,  4 Jan 2026 20:02:37 -0800
Message-Id: <20260105040237.1307873-23-matthew.brost@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105040237.1307873-1-matthew.brost@intel.com>
References: <20260105040237.1307873-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

i915 has its own atomic commit path and does not always funnel through
drm_atomic_helper_wait_for_fences(). Reuse the atomic helper deadline
logic by calling drm_atomic_helper_set_fence_deadline() at the start of
intel_atomic_commit().

This sets an advisory deadline on incoming plane fences based on the
next vblank for single-CRTC commits, matching the behavior of the atomic
helper wait path.

Cc: <intel-gfx@lists.freedesktop.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 81b3a6692ca2..d12ff6cd17b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7751,6 +7751,8 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
 
+	drm_atomic_helper_set_fence_deadline(dev, _state);
+
 	if (nonblock && state->modeset) {
 		queue_work(display->wq.modeset, &state->base.commit_work);
 	} else if (nonblock) {
-- 
2.34.1

