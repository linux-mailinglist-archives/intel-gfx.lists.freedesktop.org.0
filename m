Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F07A6DBDE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FC3D10E42D;
	Mon, 24 Mar 2025 13:44:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dv/bySHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8374C10E42D;
 Mon, 24 Mar 2025 13:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823885; x=1774359885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ttCaFfGJTG2Zy1yk4o2+VJGV+zdof9UtvNaTboXsMTs=;
 b=Dv/bySHz0fffbPVv0jbVzC8gnGHYGjTpY2MJ4xIcSgh2hIcq7f2p8qC6
 EARlrHFJ4ZN1rZROkYl/tijAUUnEDhBEgdeIw6NjVfGk0Z9PFiD+zuJMP
 PF87PUHmEpR6GPSI/rpMpBqvUdWOcqgCXV5wGqOudjirL+qKurbCwQWNN
 QuTGsUgRwQsKqhbSypiibKirpT1US6Coi0k+5yMBH25KhEz1NAsoaH9lP
 JlimTtjZpU7SM/J5MOA6D2FU4khu4vDy7dfObmYRl9RkS0IThtRYo4o6g
 0jlUNe7MEjRjEXgquFMJwCD8WZ/vrH7jX3GEo4ZXeMawADttnGcqXeA+b A==;
X-CSE-ConnectionGUID: n7JznBIbQEKWkFA+95xBqw==
X-CSE-MsgGUID: sVYE0IwCRyWvyCrvdgBL3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955707"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955707"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:45 -0700
X-CSE-ConnectionGUID: 4/Ia61YRQsuiSZBhLBBasg==
X-CSE-MsgGUID: dBVVUnGpQ9+CQbN96pW68Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040544"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/16] drm/i915/display: Move intel_psr_post_plane_update() at
 the later
Date: Mon, 24 Mar 2025 19:02:36 +0530
Message-ID: <20250324133248.4071909-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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

In intel_post_plane_update() there are things which might need to do
vblank waits, so enabling PSR as early as we do now is simply
counter-productive. Therefore move intel_psr_post_plane_update() at the
last of intel_post_plane_update().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 53675a92bbf5..b68b86923dca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1049,8 +1049,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_psr_post_plane_update(state, crtc);
-
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
@@ -1079,6 +1077,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
+
+	intel_psr_post_plane_update(state, crtc);
 }
 
 static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
-- 
2.45.2

