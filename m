Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95676678F9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 16:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2265010E8FA;
	Thu, 12 Jan 2023 15:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE1610E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 15:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673536910; x=1705072910;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b4Hw3YVwYprw7Fnppy3gXmqY88LXdWvxh7FxaoIEfD0=;
 b=bZEFz/SfcGYLx2AzGftuug/QzxFptjo24PY4S1I718nDw8SahImyuQ3p
 9/HdAymx4lHjP2ubdDDaTogApScwl5CKk3lSIekQYSNrn/geVOfRigVp8
 4BulxPYBjK1QxyloH6cGM7zgq/OB25ZkwfXfIBhGLfguwvm7AlIn3ZkRH
 j7g8TNfSi8L35gqCB1BZTdkT3mDhRY7lpRnjUHEXBqjI3n7feCV4qIQue
 U6DQsqpEBpzEu+o1Q9O3TjRpDc/yDH6KSd/fOTWAHTQjnc0/z011Uwvf0
 vjVffbzsAEYBnGVOAWojErDACvG29tp11B+EWBsCjPLCyBb4Xmny+rKI3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="409965664"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="409965664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 07:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="688356212"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="688356212"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 12 Jan 2023 07:21:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jan 2023 17:21:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:21:45 +0200
Message-Id: <20230112152145.1117-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reject < 1x1 pixel plane source size
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
Cc: Drew Davenport <ddavenport@chromium.org>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't have proper sub-pixel coordinate support (some platforms
simply can't do it, for others we've not implemented it). This
can cause us to treat a < 1 pixel source width/height as zero
which is not valid for the hardware, and can also cause a div
by zero in some cases.

Refuse < 1x1 plane source size to avoid these problems.

Cc: stable@vger.kernel.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reported-by: Drew Davenport <ddavenport@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
The other option would be to clamp the source size to >=1x1 pixels,
but dunno if that has any real benefits.

 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..c6e43d684458 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -921,6 +921,21 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	 */
 	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, clip);
 
+	/*
+	 * Avoid zero source size when we later
+	 * discard the fractional coords.
+	 *
+	 * FIXME add proper sub-pixel coordinate handling
+	 * for platforms/planes that support it.
+	 */
+	if (plane_state->uapi.visible &&
+	    (drm_rect_width(src) < 0x10000 || drm_rect_height(src) < 0x10000)) {
+		drm_dbg_kms(&i915->drm, "Plane source must be at least 1x1 pixels\n");
+		drm_rect_debug_print("src: ", src, true);
+		drm_rect_debug_print("dst: ", dst, false);
+		return -EINVAL;
+	}
+
 	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
 
 	if (!can_position && plane_state->uapi.visible &&
-- 
2.38.2

