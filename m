Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E0756AA92
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 20:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479FA11AEC1;
	Thu,  7 Jul 2022 18:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3802311ADD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 18:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657218463; x=1688754463;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LkPoVPzMPvw5AxcZSt2YHyUwd3Kw4IaBbWHQMM8zigY=;
 b=i0L2cehdcB7iXS0+x/7OHR+FWMlwIA/EzCXhZLLPT+icKyRwCKdq8UEt
 Ho/fqfV3VYSuaY7mwTGxc+F246QFdG73/Rstv5oO3owpNwGJw/lmdAwNr
 IxDJV8WM0POf78P798Gf7F32+o5997S6HjwFgx8+uKcwKhr1et9618VsV
 VlApjLYoWzhrhJPfDdk4ToaqFuGxdDbPy+NDpXr/S0gFIybeJgDBWPAbZ
 c06Jtj3vhGZSeNrcQmRoiW10PVJMITDw2hN8E2841a7rxLZkxmR5hMeqs
 ensPc24izx7XphXdi1/IpEgSJzglOOSmSpzX4QzkuSWP2aTTSwmD5HSKx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="345782151"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="345782151"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:27:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="620902891"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:27:42 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  7 Jul 2022 11:27:38 -0700
Message-Id: <20220707182738.2845991-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/perf: Disable OA sseu config param for
 non-gen11 platforms
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
turned off and hence lose NOA configuration. Return ENODEV for non-gen11
platforms.

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

