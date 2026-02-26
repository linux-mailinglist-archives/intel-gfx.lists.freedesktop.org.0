Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN9hDaEboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64061A4017
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C00110E8BE;
	Thu, 26 Feb 2026 10:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjK5TL+V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC7610E8B6;
 Thu, 26 Feb 2026 10:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100509; x=1803636509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AYdWN3anU3OvBshVvzaI7fmEl7sMO0wLHZJsvmT9UQo=;
 b=PjK5TL+VHiAqmZK98oNKIJm3g1KLc9UwnX2sOxfxmEc0c07S+QHuGtDn
 7gBOlwdgGNhhjBlemcO3zBy1VbL19AB2eOiFAFT7Wftdj7V7T3bAM4itl
 w6LNDIFXXdxbOxgAGQODYoVVWMmn41xcfoFwfcjzbCXmcZZkI3xRmcOUk
 OZcqCZcuXhRDoSeTg2aerBObwC18IfxFakfr+ZafGuFyrFizK+6ahJfan
 CCW6lINCqe52TBosk++5nCDvG6OVBfNQIDNOHNTar+pFdPvwYEWfV36/d
 RV+XG/9GvQoG6AU7fzmUPvHZPk7kYEbs2zuwSylgTzkbJf74ZTkkclgEZ Q==;
X-CSE-ConnectionGUID: Ue/+mOruQLOPziSIQ8HKKA==
X-CSE-MsgGUID: QtPecdl6QOWNDbSLH+CNcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73029820"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73029820"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:29 -0800
X-CSE-ConnectionGUID: WG7AL5PKSgS7sN8QSbbxvA==
X-CSE-MsgGUID: cEYy+CGDTmqst8ycuD9qaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214518240"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:28 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/19] drm/i915/overlay: Abstract buffer (un)pinning
Date: Thu, 26 Feb 2026 12:07:30 +0200
Message-ID: <20260226100738.29997-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: D64061A4017
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make the buffer (un)pinning a bit more abstract so that
the display side of the code doesn't need to know about i915
specific things (i915_ggtt_offset() and i915_vma_unpin()).

In preparation for the full parent vs. display driver split
we'll also pass in the drm_device to these functions, although
not strictly needed yet.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 24 ++++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 1edc0ae09c68..428d8a1d301f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -780,7 +780,9 @@ static u32 overlay_cmd_reg(struct drm_intel_overlay_put_image *params)
 	return cmd;
 }
 
-static struct i915_vma *intel_overlay_pin_fb(struct drm_gem_object *obj)
+static struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
+					    struct drm_gem_object *obj,
+					    u32 *offset)
 {
 	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
 	struct i915_gem_ww_ctx ww;
@@ -804,9 +806,17 @@ static struct i915_vma *intel_overlay_pin_fb(struct drm_gem_object *obj)
 	if (ret)
 		return ERR_PTR(ret);
 
+	*offset = i915_ggtt_offset(vma);
+
 	return vma;
 }
 
+static void i915_overlay_unpin_fb(struct drm_device *drm,
+				  struct i915_vma *vma)
+{
+	i915_vma_unpin(vma);
+}
+
 static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      struct drm_gem_object *obj,
 				      struct drm_intel_overlay_put_image *params)
@@ -818,7 +828,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	bool scale_changed = false;
 	struct i915_vma *vma;
 	int ret, tmp_width;
-	u32 tmp;
+	u32 tmp, offset;
 
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
@@ -829,7 +839,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 	atomic_inc(&display->restore.pending_fb_pin);
 
-	vma = intel_overlay_pin_fb(obj);
+	vma = i915_overlay_pin_fb(display->drm, obj, &offset);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_pin_section;
@@ -868,7 +878,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	swidth = params->src_width;
 	swidthsw = calc_swidthsw(display, params->offset_Y, tmp_width);
 	sheight = params->src_height;
-	iowrite32(i915_ggtt_offset(vma) + params->offset_Y, &regs->OBUF_0Y);
+	iowrite32(offset + params->offset_Y, &regs->OBUF_0Y);
 	ostride = params->stride_Y;
 
 	if (params->flags & I915_OVERLAY_YUV_PLANAR) {
@@ -885,9 +895,9 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      params->src_width / uv_hscale);
 		swidthsw |= max(tmp_U, tmp_V) << 16;
 
-		iowrite32(i915_ggtt_offset(vma) + params->offset_U,
+		iowrite32(offset + params->offset_U,
 			  &regs->OBUF_0U);
-		iowrite32(i915_ggtt_offset(vma) + params->offset_V,
+		iowrite32(offset + params->offset_V,
 			  &regs->OBUF_0V);
 
 		ostride |= params->stride_UV << 16;
@@ -916,7 +926,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	return 0;
 
 out_unpin:
-	i915_vma_unpin(vma);
+	i915_overlay_unpin_fb(display->drm, vma);
 out_pin_section:
 	atomic_dec(&display->restore.pending_fb_pin);
 
-- 
2.52.0

