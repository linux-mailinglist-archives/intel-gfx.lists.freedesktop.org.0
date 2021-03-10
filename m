Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DEA334B57
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998F96EA81;
	Wed, 10 Mar 2021 22:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B0D6EA7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:52 +0000 (UTC)
IronPort-SDR: iJUpt8Asz6UFVxQs6iRjnXZiaBSIy7qK3CYELer1Xa9Chn7wklwfyHJ3ptbKxLEHYiCE2vtyJQ
 DkrspRGP1Ykw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592077"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:51 -0800
IronPort-SDR: +CEQj9Wzq2W24vTmazA+6m8L1DWtumqsnK5MD8tXKVQoa/BaxNtoUqa6Dy2pW8oMYeo8NzxvNc
 lOoOqZ15dYGA==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852241"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:51 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:25 +0200
Message-Id: <20210310221736.2963264-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/23] drm/i915/intel_fb: Unexport
 intel_fb_check_stride()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After the previous patch we can unexport intel_fb_check_stride(), which
isn't needed by intel_display.c.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f0efff22c145..c06c0875612d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -824,7 +824,7 @@ void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
 	}
 }
 
-int intel_plane_check_stride(const struct intel_plane_state *plane_state)
+static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 59f8715e0bda..042946f452f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,8 +28,6 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 
-int intel_plane_check_stride(const struct intel_plane_state *plane_state);
-
 unsigned int intel_tile_size(const struct drm_i915_private *dev_priv);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
