Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CC22B5580
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 01:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674B06E0AB;
	Tue, 17 Nov 2020 00:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5AF96E0AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 00:05:16 +0000 (UTC)
IronPort-SDR: Zlm/xj3OQtZ1uab7Zd+5hHj0ADpQshTHezu0L0CB8m/e3dy6WqvKSfXZrTEGpfYBE031ZJgL/f
 QcA70BvkAXJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170938949"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="170938949"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:05:09 -0800
IronPort-SDR: L/qgnClaPDOFC1NTqEl0Uj8EsRzZXv98B+7t1ylBNA+uiKEdV+DBlmWL6fVJGJYLLG2WZJgtJx
 q6sKOMFVAGpg==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="310555891"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:05:07 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: stable@vger.kernel.org
Date: Mon, 16 Nov 2020 16:03:26 -0800
Message-Id: <20201117000326.3138-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH stable-5.4] drm/i915: Correctly set SFC
 capability for video engines
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Commit 5ce6861d36ed5207aff9e5eead4c7cc38a986586 upstream.

This backport targets stable version 5.4, since the original patch fails
to apply there, due to a variable having moved from one struct to another.
The only change required for the patch to apply to 5.4 is to use the
correct structure:

 -	(engine->gt->info.vdbox_sfc_access &
++	(RUNTIME_INFO(i915)->vdbox_sfc_access &

Original commit message below.

SFC capability of video engines is not set correctly because i915
is testing for incorrect bits.

Fixes: c5d3e39caa45 ("drm/i915: Engine discovery query")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.3+
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Link: https://patchwork.freedesktop.org/patch/msgid/20201106011842.36203-1-daniele.ceraolospurio@intel.com
(cherry picked from commit ad18fa0f5f052046cad96fee762b5c64f42dd86a)
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4ce8626b140e..8073758d1036 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -354,7 +354,8 @@ static void __setup_engine_capabilities(struct intel_engine_cs *engine)
 		 * instances.
 		 */
 		if ((INTEL_GEN(i915) >= 11 &&
-		     RUNTIME_INFO(i915)->vdbox_sfc_access & engine->mask) ||
+		     (RUNTIME_INFO(i915)->vdbox_sfc_access &
+		      BIT(engine->instance))) ||
 		    (INTEL_GEN(i915) >= 9 && engine->instance == 0))
 			engine->uabi_capabilities |=
 				I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
