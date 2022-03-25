Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC6D4E78C5
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 17:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CC510E710;
	Fri, 25 Mar 2022 16:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434AF10E710
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 16:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648225008; x=1679761008;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D/u6LedU2LCwGXDhJWtUngY6APQLDOjC2GhjROPxdL8=;
 b=O0djd06HL9Lxcw3oglhpsYNIoUZ9KlLWw612UMofXKG+Vq+MnEGOBZNs
 ggCFynWbea9hRctIlWtCBVKcxVn/TeEA+Sb50XZgWJpAopuV7WGH4+m/4
 T5DhP2QxVgsCZxd2JtbCAS+XiX8b5VQjKQYCG+/M+ucHSNeOHgS1AM5bv
 nIzEMueAsY0kVOc6d1xq4PpljhesZSD7eseAMdMyrAJaaEdAJCMP9q30S
 ttZb5nF+ibUxSqltTUqJ5dEfHbnT+K2sJ14xFeGoCyCVCpociJFJh5QWY
 xdtCDmagRwV1D01UZAS3+IudapXcRL55mxzNSJN++R+RyLHh+iwIP9gt+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="283539666"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="283539666"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 09:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="516587812"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 25 Mar 2022 09:12:00 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 21:41:40 +0530
Message-Id: <20220325161140.11906-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The request to aqquire gem resources is failing for DSB in rare
scenario where it is busy and the register programming will be done
through mmio fallback path.

DSB has extra advantage of faster register programming which may
go away through mmio path. Adding wait for gem resource also may
not be right as anyways losing time.

To make the CI execution happy replaced drm_err() to drm_info()
for printing debug info during dsb buffer preparation.

v1: Initial version.
v2: Added print for mmio fallback at out label. [Nirmoy]
v3: Improved debug message. [Nirmoy]

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b34a67309976..c4affcb216fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -283,14 +283,12 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
 	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Gem object creation failed\n");
 		kfree(dsb);
 		goto out;
 	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
-		drm_err(&i915->drm, "Vma creation failed\n");
 		i915_gem_object_put(obj);
 		kfree(dsb);
 		goto out;
@@ -298,7 +296,6 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
-		drm_err(&i915->drm, "Command buffer creation failed\n");
 		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
 		kfree(dsb);
 		goto out;
@@ -311,6 +308,10 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 	dsb->ins_start_offset = 0;
 	crtc_state->dsb = dsb;
 out:
+	if (!crtc_state->dsb)
+		drm_info(&i915->drm,
+			 "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
+
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
-- 
2.29.0

