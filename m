Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 774015694B6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 23:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF7F10E161;
	Wed,  6 Jul 2022 21:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0303510E161
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 21:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657144330; x=1688680330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vUJhnjRFXV+HBbV9ZJ5jmaA0R5UtWV+fx4TjmE3i+yA=;
 b=DycxMQ2kYpJpvy7iYWAm18mDBZT8kEeMuPQCorTb3SvZo3ptffNsrIa/
 4xgtclgajwehxgQ1RKL3lguJPMT1BKfNGNnNU/SmzfuPd6zZjSZjJREIN
 NMTguMsvyHgje+rC3nqqLk/dQ1riIJiRmb14kMFoc4MqQkG3WPsECziPf
 fQQcDMjGhU6uo1IXZMdMfnH7nw6splROdQ0vv5aaXsmpYXRdxqgM6pdPL
 QFIhyz9tuup+1YljsLbu95o+RY0/K5PkAx8yUBcRNbOL85C+qIz3o+BX2
 /3d7iIh9momx/XSw3izVGrbKXPZguhxy+wUwgwZOVsjoXLgnIUpkOb08U A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="264292555"
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="264292555"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 14:52:09 -0700
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="650856876"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 14:52:09 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jul 2022 14:52:05 -0700
Message-Id: <20220706215205.2830951-1-umesh.nerlige.ramappa@intel.com>
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1577ab6754db..512c163fdbeb 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3706,6 +3706,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
 			struct drm_i915_gem_context_param_sseu user_sseu;
 
+			if (GRAPHICS_VER(perf->i915) != 11) {
+				DRM_DEBUG("Global SSEU config not supported on gen%d\n",
+					  GRAPHICS_VER(perf->i915));
+				return -ENODEV;
+			}
+
 			if (copy_from_user(&user_sseu,
 					   u64_to_user_ptr(value),
 					   sizeof(user_sseu))) {
-- 
2.35.3

