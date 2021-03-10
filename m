Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60035334B49
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF4F89E3F;
	Wed, 10 Mar 2021 22:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AE489E08
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:41 +0000 (UTC)
IronPort-SDR: vQ88dHu1WFBDgtxdhbRQdYM+xo9rhy/46KBBLVwS157VjVmwaVcQg/JftcDpj1JFCPcs048ymo
 3S7aRke7O10w==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592050"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592050"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:40 -0800
IronPort-SDR: VhgJM1DwBbmuvcXNS6PgztbIo4e+s+xgnLwzcj/7cL9/9GhKj3uQa2Tcu0bWOBg4WPXZk5n6G2
 jvWztBUPtwZw==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852162"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:14 +0200
Message-Id: <20210310221736.2963264-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/23] drm/i915: Fix rotation setup during plane
 HW readout
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

The HW plane state is cleared and inited after we store the rotation to
it, so store it instead to the uapi state to match what we do with all
other plane state until intel_plane_copy_uapi_to_hw_state() is called.

Rotation for initial FBs is not supported atm, but let's still fix the
plane state setup here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5bfc06c46e28..12b54e032bc1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2468,11 +2468,11 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	return;
 
 valid_fb:
-	intel_state->hw.rotation = plane_config->rotation;
+	plane_state->rotation = plane_config->rotation;
 	intel_fill_fb_ggtt_view(&intel_state->view, fb,
-				intel_state->hw.rotation);
+				plane_state->rotation);
 	intel_state->color_plane[0].stride =
-		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
+		intel_fb_pitch(fb, 0, plane_state->rotation);
 
 	__i915_vma_pin(vma);
 	intel_state->vma = i915_vma_get(vma);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
