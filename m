Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AB9C96FD9
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BABE10E3A8;
	Mon,  1 Dec 2025 11:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhHSTRUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E6B10E3A7;
 Mon,  1 Dec 2025 11:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764588783; x=1796124783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lEU2xhoqbnbiwiDn1YnFbOf+FnpdUTznPM+OTUhIYYY=;
 b=XhHSTRUrDlAN5le8caD+rYvEQHnkuqC9Mr4OjlNhAEbnDc8P1zJXr/ho
 riyME2ofB8VsTwPsrzZUd9mDN9dXEIP4ZCaSQg6W5TlW+/dY+7pRGAf08
 eCWnVuWaLmWDWomXoH9IHrtYLOO4LF4YNfsBdbz2bHD/9EIJANRSzncHk
 KtsXQ1flG/xSaQzdhgpTe0zneMy2wT2rf8cBNyYB5vv98dpFdKmLIwwEE
 +ikeqY7ND8JhTTm1MBfr6nRoFgNVrFEZeY3NwpYQhsOGp9oFl8KU4K93i
 1ndXLudJNKWmJhmMha84TpFPKEECDptGHA6ZmPwnlXjY21iepq+ofpyBt A==;
X-CSE-ConnectionGUID: xQyIluzyRlKP4XdBqSXzfg==
X-CSE-MsgGUID: jHJSdds7QgCZOzVGrnVZrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66558461"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66558461"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:03 -0800
X-CSE-ConnectionGUID: hO3jE75kTDu3Fzassq1Eaw==
X-CSE-MsgGUID: e/NKmxB5Qyaqn6cRIOjuqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198251893"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Date: Mon,  1 Dec 2025 13:32:46 +0200
Message-ID: <20251201113248.617347-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201113248.617347-1-jouni.hogander@intel.com>
References: <20251201113248.617347-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently plane id bit is set in crtc_state->async_flip_planes only when
async flip toggle workaround is needed. We want to utilize
crtc_state->async_flip_planes further in Selective Fetch calculation.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index a7fec5ba6ac0..c7df72239e64 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -599,8 +599,7 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
 		new_crtc_state->do_async_flip = true;
 		new_crtc_state->async_flip_planes |= BIT(plane->id);
-	} else if (plane->need_async_flip_toggle_wa &&
-		   new_crtc_state->uapi.async_flip) {
+	} else if (new_crtc_state->uapi.async_flip) {
 		/*
 		 * On platforms with double buffered async flip bit we
 		 * set the bit already one frame early during the sync
@@ -608,6 +607,13 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 		 * hardware will therefore be ready to perform a real
 		 * async flip during the next commit, without having
 		 * to wait yet another frame for the bit to latch.
+		 *
+		 * async_flip_planes bitmask is also used by selective
+		 * fetch calculation to continue full frame updates as
+		 * long as there may be pending async flip on any
+		 * plane which is part of selective
+		 * update. I.e. old_crtc_state->async_flip_planes &
+		 * BIT(<plane in su area>->id).
 		 */
 		new_crtc_state->async_flip_planes |= BIT(plane->id);
 	}
-- 
2.43.0

