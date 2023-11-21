Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 928DE7F256F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3D910E121;
	Tue, 21 Nov 2023 05:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7464010E246
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545414; x=1732081414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LDb5g7R1lqhS8Xwgn0fbWKkRQYfx8J3nK9xrNYFnidU=;
 b=nBQ0ATUDWPdU4k9SwaBmqqluNsKeTNDVeSD0HXuMOAUIhmtXDvVj7RkN
 zNWnN2zXBZV+KJw/dOjItdLG5qfyrp09w3WC1CsktV8GVy90Qhq5wHBZ/
 /LogZJonsnEw8BbSvAOldmhpwkUvSLwbgCZqu1KiUaHKihmegZhDkegBU
 93kqHX2IXhEkT1oyBjZeFkoLg+tg/gn70p5FZYHf6pNQJ7HsLQMF1dFbS
 kAjNttI0Mefy5A3aJNJxkHcDUA+EEZGVYpCrplYPa1tc8tg7mbSGMHzPl
 qwmImiJQ1XGCfYti+RWgR+DZydMqH3icGtjEqKGmZrbz1qg0VRHqyVYzM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611801"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611801"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002123"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:15 +0200
Message-ID: <20231121054324.9988-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915: Call
 intel_pre_plane_updates() also for pipes getting enabled
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

We used to call intel_pre_plane_updates() for any pipe going through
a modeset whether the pipe was previously enabled or not. This in
fact needed to apply all the necessary clock gating workarounds/etc.
Restore the correct behaviour.

Fixes: 39919997322f ("drm/i915: Disable all planes before modesetting any pipes")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 69933020c379..a93f6d175c36 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6719,10 +6719,11 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
+		intel_pre_plane_update(state, crtc);
+
 		if (!old_crtc_state->hw.active)
 			continue;
 
-		intel_pre_plane_update(state, crtc);
 		intel_crtc_disable_planes(state, crtc);
 	}
 
-- 
2.41.0

