Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A504355E7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 00:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58A56EA09;
	Wed, 20 Oct 2021 22:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34BC6EA09
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 22:33:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292356858"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="292356858"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 15:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="463381217"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 20 Oct 2021 15:33:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Oct 2021 01:33:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <manasi.d.navare@intel.com>
Date: Thu, 21 Oct 2021 01:33:37 +0300
Message-Id: <20211020223339.669-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Do vrr push before sampling the
 freame counter
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

Do the vrr push before we sample the frame counter to
know when the commit has been latched. Doing these in the
wrong order could lead us to complete the flip before it
has actually happened.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 254e67141a77..0f8b48b6911c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -542,6 +542,9 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
 
+	/* Send VRR Push to terminate Vblank */
+	intel_vrr_send_push(new_crtc_state);
+
 	/*
 	 * Incase of mipi dsi command mode, we need to set frame update
 	 * request for every commit.
@@ -568,9 +571,6 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	local_irq_enable();
 
-	/* Send VRR Push to terminate Vblank */
-	intel_vrr_send_push(new_crtc_state);
-
 	if (intel_vgpu_active(dev_priv))
 		return;
 
-- 
2.32.0

