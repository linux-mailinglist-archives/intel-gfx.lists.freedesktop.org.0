Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A59A56C19A
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jul 2022 00:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A7610EEC6;
	Fri,  8 Jul 2022 22:42:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FD110EEC6;
 Fri,  8 Jul 2022 22:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657320143; x=1688856143;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=akQdRJEfKDC05LKJruYVz5knlaOrw4ZnWe0gXmRiWh8=;
 b=NXQUhjrRAQoct92qwVdSEVWwix996hiT1+XmxGNpOSlJ3MMVE13G9oQ5
 tkso0KiJiznfyJQ4haGYjI0q4a6H0+9BCIYo0i5tddRAeFbkAiOWbAnn9
 j0E2pluP1nU3c4ANd0TRa64+94GV/1aACNvnjSrkF4soqxpYnRXSc71dW
 B519LKn0OsMreT0WxyHzogpff65uNq6MbxcZdG3Z+v8jZ8DTsPFeidAar
 TwTKlGyfwCgJPg1V1sYGuB4sPXCrfT4HBYTS2qtfxB77LucCwg8jPjF66
 LKFHhUKK3jRJGWI74er3w2z5p2NGPg18LtRX8VjO/dw/KFalHLVkcBVmV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="285122059"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="285122059"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 15:42:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="921151144"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 15:42:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 15:41:58 -0700
Message-Id: <20220708224158.929327-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: skip scrub_ctbs selftest if reset
 is disabled
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The test needs GT reset to trigger the scrubbing logic, so we can only
run it when reset is enabled.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
index 1df71d0796ae..5bd804f29b32 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
@@ -54,6 +54,9 @@ static int intel_guc_scrub_ctbs(void *arg)
 	struct intel_engine_cs *engine;
 	struct intel_context *ce;
 
+	if (!intel_has_gpu_reset(gt))
+		return 0;
+
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	engine = intel_selftest_find_any_engine(gt);
 
-- 
2.25.1

