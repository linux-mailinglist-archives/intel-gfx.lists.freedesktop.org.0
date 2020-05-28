Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660BB1E572C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF036E3AE;
	Thu, 28 May 2020 06:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6056E3AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 06:02:34 +0000 (UTC)
IronPort-SDR: QhC+F3d2/NT9VI9IDcIjKd99FiHnC7e7lTjzUUCWorBs0F+6BRvb6mGK/TE4wnxFuuY8XucEAZ
 4snCJSzkxJHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 23:02:34 -0700
IronPort-SDR: i4ZRdvRlLFiRmSWiQJ0tK7Hw7bvJkKFhiNInTGCT8DUd7Fs6Hqd19hkzb8CKdZciqJa0UNMZaP
 /P8NPOl5JQsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291884006"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 23:02:32 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 11:09:28 +0530
Message-Id: <20200528053931.29282-3-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915: Add support for async flips in
 I915
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the Async Address Update Enable bit in plane ctl
when async flip is requested.

v2: -Move the Async flip enablement to individual patch (Paulo)

v3: -Rebased.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48cc1fc9bc5a..eb1c360431ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4766,6 +4766,9 @@ u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 			plane_ctl |= PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
+	if (crtc_state->uapi.async_flip)
+		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+
 	plane_ctl |= skl_plane_ctl_format(fb->format->format);
 	plane_ctl |= skl_plane_ctl_tiling(fb->modifier);
 	plane_ctl |= skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e9d50fe0f375..f01258bb6154 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6871,6 +6871,7 @@ enum {
 #define   PLANE_CTL_TILED_X			(1 << 10)
 #define   PLANE_CTL_TILED_Y			(4 << 10)
 #define   PLANE_CTL_TILED_YF			(5 << 10)
+#define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
 #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
 #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
 #define   PLANE_CTL_ALPHA_MASK			(0x3 << 4) /* Pre-GLK */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
