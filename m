Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB988117E4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC7D10E7D0;
	Wed, 13 Dec 2023 15:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D2410E7C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702482307; x=1734018307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zCQSechQB99rVKuIsRw9eHaBjXMFLlQrER5cZ8/n3j0=;
 b=JMpEe3ZpBsFewgsqj3fJi9seerCajSb6Goz9thGt4SGtZXoNW3FwTdw3
 60itMZXXAISy7ZqB8tHtaO3wgAW/eexkWF4NOyYJqlczIjLpqXKdRU1iD
 lZylE+gHxs1q/suCoL0t4stjsG0yhQ9zLZYYvHQsrSGkwS2C3/ru8hJDG
 n3ZhZDtjWNOpix5agXdqgNMoiJfX+5I6Vb4acwL6NccgSDJbJvsfw72sL
 qR828X8T3Wb3Zz0w6dxGPE+ZNzjlDJm8r3AGETaGq7c0eBkOII/B0/Sw3
 tIDDoF37CeFCeo/FsAPeOmQxvRCjldtpiT/0sEvI/0IbRSKDQzzGyXEex Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2064990"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="2064990"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:45:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767255551"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767255551"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 07:45:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 17:45:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Don't use memcpy() when assignment will do
Date: Wed, 13 Dec 2023 17:44:56 +0200
Message-ID: <20231213154456.20141-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
References: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
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

Replace pointless memcpy()s of structures. A normal assignment
will do just fine, thank you.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 3 +--
 drivers/gpu/drm/i915/display/intel_display.c      | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 605f3b7ef4e0..ab7d5e6105ab 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -355,8 +355,7 @@ void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 {
 	intel_plane_clear_hw_state(plane_state);
 
-	memcpy(&plane_state->hw, &from_plane_state->hw,
-	       sizeof(plane_state->hw));
+	plane_state->hw = from_plane_state->hw;
 
 	if (plane_state->hw.fb)
 		drm_framebuffer_get(plane_state->hw.fb);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3abae05ab04c..27ef77fb4324 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4480,7 +4480,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
 
 	intel_crtc_free_hw_state(slave_crtc_state);
-	memcpy(slave_crtc_state, saved_state, sizeof(*slave_crtc_state));
+	*slave_crtc_state = *saved_state;
 	kfree(saved_state);
 
 	/* Re-init hw state */
@@ -4540,7 +4540,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		saved_state->wm = crtc_state->wm;
 
-	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
+	*crtc_state = *saved_state;
 	kfree(saved_state);
 
 	intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
-- 
2.41.0

