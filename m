Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E791334B4F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666CC6EA76;
	Wed, 10 Mar 2021 22:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86AB89E98
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:45 +0000 (UTC)
IronPort-SDR: QgKMFyC11kLE2faYhISumpJpa/yx/RTGOBV8dU+8TEt4ipuctiIpvg0LTgaQz+t+BE9T/3nTzH
 PSo0IFi7299A==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592061"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592061"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:45 -0800
IronPort-SDR: x1VU/9Si+ymw4zF/v1guEJWO54IuveBzQv/gEapUv7NUZslcHeRlJPMxQn5IPkcZYNTFNMnGnZ
 qRfwYrEe0/Yg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852198"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:44 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:19 +0200
Message-Id: <20210310221736.2963264-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/23] drm/i915: Remove duplicate
 intel_surf_alignment() declaration
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

Remove the duplicate function declaration from the header file.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 216047233a6d..32ef99c09efc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -636,8 +636,6 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state);
-unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
-				  int color_plane);
 u32 intel_plane_adjust_aligned_offset(int *x, int *y,
 				      const struct intel_plane_state *state,
 				      int color_plane,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
