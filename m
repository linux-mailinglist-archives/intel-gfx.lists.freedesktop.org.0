Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2CFCA2980
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 08:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183A510E87B;
	Thu,  4 Dec 2025 07:07:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFjl2/EH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F5110E879;
 Thu,  4 Dec 2025 07:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764832060; x=1796368060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T2h07HTjKl6EvW6B5pNCCe2nv1Ms4paOnmXFcDhc48U=;
 b=DFjl2/EHs3OMIjY11/3QhvoNEqvmpiyEgMEVosEGl6dWhY4R6HteYSkM
 EYHHrfdZ5tngd7KCL/48cjUTcaYQAYggY194dELTEvV/+V9aLiPNQmROa
 DxKVjBHQb4rNv0Y852dJGEHeqOywul2eWP0y3wLni6ZOlvJsZXGcw5uFd
 w7/puDlxOZcTG4kjsfcSlY6ocLudboKN5F1P9L0FTloiuIUL7wIveiJuT
 qXM/J3V/jpnkYg27T8lW0CAr1LnsqkfdbR3XZCNmHn6Mxwu4c7gsN2sn5
 22Uv6MkSnydAZ7w4p0iN2/KGK1WvzI/N5GWDFtl3PedsvTqvMBvhhvTSk Q==;
X-CSE-ConnectionGUID: BosnoHMjTN+sGYfa9qkHeQ==
X-CSE-MsgGUID: Zu79Hi6STTmhrru8d3DKCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70457100"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="70457100"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:40 -0800
X-CSE-ConnectionGUID: bGv6G+J2TOyW9S+xGnLBhg==
X-CSE-MsgGUID: crNmtPFFREWtnTILij9iPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199323777"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Date: Thu,  4 Dec 2025 09:07:16 +0200
Message-ID: <20251204070718.1090778-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204070718.1090778-1-jouni.hogander@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
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

v2:
  - rework if-else if to if-if
  - added comment updated

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 7b7619d59251..ccc8d6af5d72 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -600,11 +600,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	    ilk_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
 		new_crtc_state->disable_cxsr = true;
 
-	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
+	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
 		new_crtc_state->do_async_flip = true;
-		new_crtc_state->async_flip_planes |= BIT(plane->id);
-	} else if (plane->need_async_flip_toggle_wa &&
-		   new_crtc_state->uapi.async_flip) {
+
+	if (new_crtc_state->uapi.async_flip) {
 		/*
 		 * On platforms with double buffered async flip bit we
 		 * set the bit already one frame early during the sync
@@ -612,6 +611,9 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 		 * hardware will therefore be ready to perform a real
 		 * async flip during the next commit, without having
 		 * to wait yet another frame for the bit to latch.
+		 *
+		 * async_flip_planes bitmask is also used by selective
+		 * fetch calculation to choose full frame update.
 		 */
 		new_crtc_state->async_flip_planes |= BIT(plane->id);
 	}
-- 
2.43.0

