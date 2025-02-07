Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149BCA2D0D8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F13610E329;
	Fri,  7 Feb 2025 22:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YG+ERrVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4077210EBB5;
 Fri,  7 Feb 2025 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738967528; x=1770503528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CiYDqRbDpZj0WVl/5dvtRuCDXypfjRvSK/E/TE+p6vo=;
 b=YG+ERrVsstT3g2SEzI+hnJH/GSyDuspafwoXx/O74t0fuaD4oMHt2Zkq
 IiQBIwOphEao55ZSKGj5SXp9Z8SUCf7ZNUhaLm+iXgTka+crqzVnw/xUV
 jIdsBaMimcbI4lHkr3SeubYJl3x1Z67Kb/7qLRtjfDOBm9ae1+12I0Mrx
 veTT9HDbScdFTR6CyVtL6e2WYAuEvbILFuvtWdiQtvoHzvnOFqykHZFBp
 9AEYDmc5+QJnoFOSkjkiGw3epHmwNy7aSr5fxA4QWzFzpa3IMC5MAIrbp
 Gv4koYysb+qmcEboMt+Y51eilmdPxcGPwV5obUN3K7qeXTbB1Jq/3JAY5 A==;
X-CSE-ConnectionGUID: h8kIQTHJRPO17Q9sysiklA==
X-CSE-MsgGUID: /37M87x2Reihf/tfzKDMmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39313391"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39313391"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:32:08 -0800
X-CSE-ConnectionGUID: cyVI0OpZQ9y7fOmtnvaoZQ==
X-CSE-MsgGUID: wrhzstmfQpqDjyLLAs6gXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111857421"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 14:32:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Feb 2025 00:32:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 2/8] drm/i915/vrr: Don't send push for legacy cursor updates
Date: Sat,  8 Feb 2025 00:31:53 +0200
Message-ID: <20250207223159.14132-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't really want legacy cursor updates to trigger
VRR pushes because these can happen willy nilly and we
generally want more precise control over the pushes.
The fastpath in intel_legacy_cursor_update() doesn't
send pushes, but if we punt to the full commit path
(with the flip completion short circuited) we are currently
sending pushes. Skip those as well so that they don't
interfere with the push handling from normal commits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index e69b28779ac5..8fa3e64d4d52 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -714,7 +714,8 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * which would cause the next frame to terminate already at vmin
 	 * vblank start instead of vmax vblank start.
 	 */
-	intel_vrr_send_push(NULL, new_crtc_state);
+	if (!state->base.legacy_cursor_update)
+		intel_vrr_send_push(NULL, new_crtc_state);
 
 	local_irq_enable();
 
-- 
2.45.3

