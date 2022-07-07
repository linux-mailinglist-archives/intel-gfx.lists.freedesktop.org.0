Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3050356ABD4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 21:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3409E10F226;
	Thu,  7 Jul 2022 19:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AADA210F380
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 19:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657221998; x=1688757998;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1ABfbu+Bm3RcEkuXTk+x09fAm6678d4v9+v2B0dxR6c=;
 b=LG6SPbwPx/v2HNknoQG/faPrTHJyT5aMCS5IW3szaNwzzyWF9+VnkKKG
 rsN+PaLwTYtjp9p8FeZXeqMpoub1Dne10ilJACyIsvQOBGrDuZQmfSHJW
 al1uVoEgvPU0AyjYTOXsUZ7pZWpEaqhWGmhUGZYlMqfBJGxwmkl/VBa4b
 OI2K/13GRLD9shPn7Ud8xA+r4TDTsRJ/THhM5dynpaTrIkj0f5gnZZcaZ
 0Tv6LkqI4cLYpA0TdI5YbmI2nyW1Nj5NRdQ0VXLnRE25cfOOOmJoZ2ZHG
 8ggk6nXdMkmV0Xzs3ilE+6SgwVcJ1mR04iIdMKy67ycec3GC3jkEl4PPt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309667055"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="309667055"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:26:38 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="620922144"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:26:37 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  7 Jul 2022 12:26:29 -0700
Message-Id: <20220707192629.2853467-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220707192629.2853467-1-umesh.nerlige.ramappa@intel.com>
References: <20220707192629.2853467-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] i915/perf: Disable OA sseu config param for
 gfx12.50+
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
disable only for gfx12.50+.

v2: gfx12 is already shipped with this, disable for gfx12.50+ (Lionel)

v3: (Matt)
- Update commit message and replace "12.5" with "12.50"
- Replace DRM_DEBUG() with driver specific drm_dbg()

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b3beb89884e0..2c7763bf59a8 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3731,6 +3731,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
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

