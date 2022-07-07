Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF28956AAFF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 20:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0478911A3DB;
	Thu,  7 Jul 2022 18:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A0012A736
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 18:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657219773; x=1688755773;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oFPnAmgJ0W0ikRN2BM4Ur3pBHh4tEj7T5YZMFlwm5xI=;
 b=IvQcj+PppAdYzvK5u0ecLNa6c+Fs90mtEJfuiAZ1WKp2nPaPFRYehcXR
 dYbRjUwyuJ8WVTsaLp5lwHXaG4cjBZU6HeUawby3rkvx4sELhlNAAtvq8
 umqjodewQDPbM3SpNxrY1q1nlkvvPmPetSb6Mqw1nlUl9o1J6PDTElPeR
 K6N0ewHDd+2ICfksChI1N1IU8T7yXsbe36jOQEmgo1bLZK5YPNaYOuGjv
 wfscwGVoOP2/snuqTHtYkfHNK/ZR64Xk2L+1efqg0G5NFGIkqnR6n5uVb
 eQJQi6GpE37Bf6uElaOXX7cKKkjtiYNNnkcWG/Sdeng7zhSL6beR2wJX3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="272894536"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="272894536"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:49:32 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="920702279"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:49:32 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  7 Jul 2022 11:49:26 -0700
Message-Id: <20220707184926.2846328-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/perf: Disable OA sseu config param for
 gfx12.5+
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

The global sseu config is applicable only to gen11 platforms where
concurrent media, render and OA use cases may cause some subslices to be
turned off and hence lose NOA configuration. Ideally we want to return
ENODEV for non-gen11 platforms, however, this has shipped with gfx12, so
disable only for gfx12.5+.

v2: gfx12 is already shipped with this, disable for gfx12.5+ (Lionel)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1577ab6754db..0ba98f73f217 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3706,6 +3706,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
 			struct drm_i915_gem_context_param_sseu user_sseu;
 
+			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
+				DRM_DEBUG("SSEU config not supported on gfx %x\n",
+					  GRAPHICS_VER_FULL(perf->i915));
+				return -ENODEV;
+			}
+
 			if (copy_from_user(&user_sseu,
 					   u64_to_user_ptr(value),
 					   sizeof(user_sseu))) {
-- 
2.35.3

