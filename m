Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLwyHNFrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2251E31FC5D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DCCC10E764;
	Wed, 25 Mar 2026 04:59:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMWDFL3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EE2D10E777;
 Wed, 25 Mar 2026 04:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414798; x=1805950798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c1c+aQiQog9UYzj2lT0ZER8fdnGM6Cb6q4v0d3JAaGQ=;
 b=fMWDFL3NZzgBTbaUflmQ0MuNsxGCJx913ltj4zMssbBWePhP1DAyZ2sx
 l1wqw3jlQ7Skh3HL0c0tDKNdk2xmJiQAQnLxjr2z3DQ+YUx0Kwwp/H0oj
 ExdlLMjAU60WxWnSaOYfbOk8TsuHeNSZn/0Y3rJsWyG7X2DSfhWkPCUbN
 uLrZU4RnD663k1ronvgJumpAiKKu6nvaSr7XRz+oZmDYZWo+ORUK2ExPl
 GSmhOVix2JclCL5Ceew0z0NZGtq7/ay8rBwQPNc1Xt7HNcFG6EH1/pA7R
 VhMgFEmvl08CrbPzpSPyprGV9/Gre2jUcZWNSwF7M/2m5HWkPMxTiWdXY g==;
X-CSE-ConnectionGUID: inErAbMHQgWVPvePztD9nQ==
X-CSE-MsgGUID: wEeNImHLTLGwfnG3ypzKdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922316"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922316"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:54 -0700
X-CSE-ConnectionGUID: nldBhsdYSF2m05AmHPWrOg==
X-CSE-MsgGUID: bA1R+iLQTiyjk9jpqFlXBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580534"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 11/26] drm/i915/writeback: Define function for prepare and
 cleanup hooks
Date: Wed, 25 Mar 2026 10:29:01 +0530
Message-Id: <20260325045916.984243-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 2251E31FC5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define function for prepare and cleanup hooks which help map
and unmap drm framebuffer since we need these address to do
register writes in WD_SURF and WD_STRIDE register.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 02c61dfcacba..1de336f3d2c9 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/slab.h>
+#include <linux/err.h>
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_writeback.h>
 #include <drm/drm_modeset_helper_vtables.h>
@@ -11,6 +12,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_gem_framebuffer_helper.h>
 
 #include "intel_atomic.h"
 #include "intel_connector.h"
@@ -18,6 +20,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_fb_pin.h"
 #include "intel_writeback.h"
 #include "intel_writeback_reg.h"
 
@@ -92,6 +95,64 @@ static int intel_writeback_get_modes(struct drm_connector *connector)
 	return drm_add_modes_noedid(connector, 3840, 2160);
 }
 
+static int intel_writeback_prepare_job(struct drm_connector *connector,
+				       struct drm_writeback_job *job)
+{
+	struct i915_vma *vma;
+	struct intel_writeback_job *wb_job;
+	unsigned long out_flags = 0;
+	const struct i915_gtt_view view = {
+		.type = I915_GTT_VIEW_NORMAL,
+	};
+	int ret;
+
+	if (!job->fb)
+		return 0;
+
+	if (job->fb->modifier != DRM_FORMAT_MOD_LINEAR)
+		return -EINVAL;
+
+	wb_job = kzalloc(sizeof(*wb_job), GFP_KERNEL);
+	if (!wb_job)
+		return -ENOMEM;
+
+	vma = intel_fb_pin_to_ggtt(job->fb, &view, 4 * 1024, 0, 0, true, &out_flags);
+	if (IS_ERR(vma)) {
+		drm_err(job->fb->dev, "Failed to map framebuffer: %d\n", ret);
+		ret = PTR_ERR(vma);
+		goto err;
+	}
+
+	wb_job->fb = job->fb;
+	wb_job->vma = vma;
+	drm_framebuffer_get(wb_job->fb);
+	job->priv = wb_job;
+
+	return 0;
+
+err:
+	kfree(wb_job);
+	return ret;
+}
+
+static void intel_writeback_cleanup_job(struct drm_connector *connector,
+					struct drm_writeback_job *job)
+{
+	struct intel_writeback_job *wb_job = job->priv;
+	struct i915_vma *vma;
+	unsigned long out_flags = 0;
+
+	if (!job->fb)
+		return;
+
+	vma = wb_job->vma;
+	wb_job->vma = NULL;
+	intel_fb_unpin_vma(vma, out_flags);
+	drm_framebuffer_put(wb_job->fb);
+	kfree(wb_job);
+	job->priv = NULL;
+}
+
 static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -105,6 +166,8 @@ const struct drm_connector_funcs conn_funcs = {
 static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.get_modes = intel_writeback_get_modes,
 	.mode_valid = intel_writeback_mode_valid,
+	.prepare_writeback_job = intel_writeback_prepare_job,
+	.cleanup_writeback_job = intel_writeback_cleanup_job,
 };
 
 static void
-- 
2.34.1

