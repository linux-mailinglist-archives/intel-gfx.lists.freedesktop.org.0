Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256D24E5FA0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 08:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69D610E888;
	Thu, 24 Mar 2022 07:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC28610E888
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 07:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648107800; x=1679643800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8WhBIDZDqHbzOT3CQpM9aQeAh7WJWtdGd71cLnLB4kU=;
 b=ZJ8gNlrEYEFpHQ5inTx0YUOxulYyBgqoYS0bGt896tMkp6/apeNGMT6i
 R68Bhg3We0ACXC2YILqj0v4U1tAdz5J6KTaSX0Oc89SHNQCAe165FL4kN
 kgYjIlUn4VtS7b/vRY27EC3WVkBw5bp/SCvaajjcDD49UVSZmNJMg5W8P
 MckuVsml4LChtSgIHTabf93bqpDxjLLeykltCPnncy8Em6z/3HmkS1LtN
 2aNEk2Su4VNE5nvyJxwwtEAsC5y6ySilX9w5/Sz/z3amUToPPqmS7M6jA
 GGsoe2K3EPzkEbz1WR8KfaWBY27eeAgFHDoC5m9HZu0GNJr47EfwkmS5M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="321504528"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="321504528"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 00:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="561260913"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2022 00:43:18 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 13:13:00 +0530
Message-Id: <20220324074300.21294-1-animesh.manna@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The request to aqquire gem resources is failing for DSB in rare
scenario where it is busy and the register programming will be done
through mmio fallback path.

DSB has extra advantage of faster register programming which may
go away through mmio path. Adding wait for gem resource also may
not be right as anyways losing time.

To make the CI execution happy replaced drm_dbg_kms() to drm_info()
for printing debuf info during dsb buffer preparation.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b34a67309976..b68dd7bd5271 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -275,7 +275,7 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
 	if (!dsb) {
-		drm_err(&i915->drm, "DSB object creation failed\n");
+		drm_info(&i915->drm, "DSB object creation failed\n");
 		return;
 	}
 
@@ -283,14 +283,14 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
 	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Gem object creation failed\n");
+		drm_info(&i915->drm, "Gem object creation failed\n");
 		kfree(dsb);
 		goto out;
 	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
-		drm_err(&i915->drm, "Vma creation failed\n");
+		drm_info(&i915->drm, "Vma creation failed\n");
 		i915_gem_object_put(obj);
 		kfree(dsb);
 		goto out;
@@ -298,7 +298,7 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
-		drm_err(&i915->drm, "Command buffer creation failed\n");
+		drm_info(&i915->drm, "Command buffer creation failed\n");
 		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
 		kfree(dsb);
 		goto out;
-- 
2.29.0

