Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEEB56ABDA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 21:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F69211241B;
	Thu,  7 Jul 2022 19:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B449311241B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 19:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657222223; x=1688758223;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lTA8wahiMrkdNldmhYpmQ3qCtq/qBgJNHOhdCuE4WLo=;
 b=c9Qvl2R0dZXC624803499+Jug599eOIr61IGFDbqLXshUGSuqI1o3PKR
 2aBdkasHoTpu0kb4XlfKQNOe9KGnWhStMyKlZZ/xK3pPXz6XA8BFJQvCi
 NLe2NBqw50i2H06VVmHsE/+c4X8JyfwTYuIVZryqnvZ2eFR5RjZMeeUJy
 Ia9GMqLPKsAmAMZlUEO5rjV/Vr9WP8gdq3VQnUAnclP+DESMRrwv7AOOi
 c9GUwNIAKpArW5hr62XETcWdvSt98lsBHizPsKqYljaqYyw2bEYTQ5jwv
 i4G/m1yOC701nkcYK52r5qhpp+DFryYiv6DvTpp6WX4RJvG5gaQodBzTx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="263887866"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="263887866"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:30:03 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="696625042"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:30:03 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  7 Jul 2022 12:30:02 -0700
Message-Id: <20220707193002.2859653-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
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
 drivers/gpu/drm/i915/i915_perf.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b3beb89884e0..f3c23fe9ad9c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3731,6 +3731,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
 			struct drm_i915_gem_context_param_sseu user_sseu;
 
+			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
+				drm_dbg(&perf->i915->drm,
+					"SSEU config not supported on gfx %x\n",
+					GRAPHICS_VER_FULL(perf->i915));
+				return -ENODEV;
+			}
+
 			if (copy_from_user(&user_sseu,
 					   u64_to_user_ptr(value),
 					   sizeof(user_sseu))) {
-- 
2.35.3

