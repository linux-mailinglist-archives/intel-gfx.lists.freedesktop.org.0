Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UESTLW7fzGm0XAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:03:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3C1377390
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE83810ECF3;
	Wed,  1 Apr 2026 09:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mX054GJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A36910ECBB;
 Wed,  1 Apr 2026 09:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775034220; x=1806570220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cknct9sS9mi/9dDXgsbsYzgp08i9B887QBMgWVi36eE=;
 b=mX054GJMkfsna298bVOWk6OCr3bYXDS1p2mPMsIM3zCghFGcnzdlaKs8
 FMkUY8BWKsU6z+43NzUaZ+hf4oESyWYfdo2N4DcLyqiITmFYOzXxG7SrS
 x6ray69IgSRdXnuG/3v59i8CExjtzkyzUXMOfHVnDc6mabgE8CpJUEn9K
 UTrnQp9k96rXHoR7koXchyLXYte06Petz6wqqPPWA7JbGce3QIyMVnn0d
 viCZpbNifecJoW2xprXYYO6pocWEH4QtmqVOkHRqB/TOMY+FvTHHd3wKe
 MiznaIsiIIlL2TbniZcSI+SSoz8ltt0o6X3ghskCZjC0OHRuF7JeGQKhj A==;
X-CSE-ConnectionGUID: 15u9uC7pRZW01wW6SK3vqw==
X-CSE-MsgGUID: PQx0n85uR2yCekcs/teIMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75238100"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75238100"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:03:40 -0700
X-CSE-ConnectionGUID: QM0H/I7AQeWYxRCmBc4dOQ==
X-CSE-MsgGUID: ai2IBnunQM+RvslqtgBX7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="228232891"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa004.fm.intel.com with ESMTP; 01 Apr 2026 02:03:32 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 pranay.samala@intel.com
Subject: [PATCH 2/3] drm/i915: Fix color blob reference handling in
 intel_plane_state
Date: Wed,  1 Apr 2026 14:08:40 +0530
Message-Id: <20260401083841.4081587-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
References: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4F3C1377390
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Take proper references for hw color blobs (degamma_lut, gamma_lut,
ctm, lut_3d) in intel_plane_duplicate_state() and drop them in
intel_plane_destroy_state().

v2:
- handle blobs in hw state clear/copy

Fixes: 3b7476e786c2 ("drm/i915/color: Add framework to program PRE/POST CSC LUT")
Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
Fixes: 65db7a1f9cf7 ("drm/i915/color: Add 3D LUT to color pipeline")
Reviewed-by: Pranay Samala <pranay.samala@intel.com> #v1
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 82f445c83158..23988121065d 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -144,6 +144,15 @@ intel_plane_duplicate_state(struct drm_plane *plane)
 	if (intel_state->hw.fb)
 		drm_framebuffer_get(intel_state->hw.fb);
 
+	if (intel_state->hw.degamma_lut)
+		drm_property_blob_get(intel_state->hw.degamma_lut);
+	if (intel_state->hw.gamma_lut)
+		drm_property_blob_get(intel_state->hw.gamma_lut);
+	if (intel_state->hw.ctm)
+		drm_property_blob_get(intel_state->hw.ctm);
+	if (intel_state->hw.lut_3d)
+		drm_property_blob_get(intel_state->hw.lut_3d);
+
 	return &intel_state->uapi;
 }
 
@@ -167,6 +176,16 @@ intel_plane_destroy_state(struct drm_plane *plane,
 	__drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
 	if (plane_state->hw.fb)
 		drm_framebuffer_put(plane_state->hw.fb);
+
+	if (plane_state->hw.degamma_lut)
+		drm_property_blob_put(plane_state->hw.degamma_lut);
+	if (plane_state->hw.gamma_lut)
+		drm_property_blob_put(plane_state->hw.gamma_lut);
+	if (plane_state->hw.ctm)
+		drm_property_blob_put(plane_state->hw.ctm);
+	if (plane_state->hw.lut_3d)
+		drm_property_blob_put(plane_state->hw.lut_3d);
+
 	kfree(plane_state);
 }
 
@@ -317,6 +336,14 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
 {
 	if (plane_state->hw.fb)
 		drm_framebuffer_put(plane_state->hw.fb);
+	if (plane_state->hw.degamma_lut)
+		drm_property_blob_put(plane_state->hw.degamma_lut);
+	if (plane_state->hw.gamma_lut)
+		drm_property_blob_put(plane_state->hw.gamma_lut);
+	if (plane_state->hw.ctm)
+		drm_property_blob_put(plane_state->hw.ctm);
+	if (plane_state->hw.lut_3d)
+		drm_property_blob_put(plane_state->hw.lut_3d);
 
 	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
 }
@@ -434,6 +461,15 @@ void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 
 	if (plane_state->hw.fb)
 		drm_framebuffer_get(plane_state->hw.fb);
+
+	if (plane_state->hw.degamma_lut)
+		drm_property_blob_get(plane_state->hw.degamma_lut);
+	if (plane_state->hw.gamma_lut)
+		drm_property_blob_get(plane_state->hw.gamma_lut);
+	if (plane_state->hw.ctm)
+		drm_property_blob_get(plane_state->hw.ctm);
+	if (plane_state->hw.lut_3d)
+		drm_property_blob_get(plane_state->hw.lut_3d);
 }
 
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
-- 
2.25.1

