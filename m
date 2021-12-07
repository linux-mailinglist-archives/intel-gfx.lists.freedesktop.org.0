Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B79E46B374
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 08:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F9D8B84C;
	Tue,  7 Dec 2021 07:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C3E8B84C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 07:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261579660"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261579660"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 23:11:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="679331767"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2021 23:11:42 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 12:41:35 +0530
Message-Id: <20211207071135.3660332-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207071135.3660332-1-uma.shankar@intel.com>
References: <20211207071135.3660332-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 3/3] drm/i915/xelpd: Add Pipe Color Lut caps to
 platform config
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

XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
extended range. It has 511 entries for gamma with additional 2 entries
for extended range.

v2: Updated lut size for 10bit gamma, added lut_tests (Ville)

v3: Dropped the gamma lut tests fields (Ville)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 0ba516838b02..6aaa7c644c9b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -938,7 +938,10 @@ static const struct intel_device_info adl_s_info = {
 
 #define XE_LPD_FEATURES \
 	.abox_mask = GENMASK(1, 0),						\
-	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
+	.color = { .degamma_lut_size = 128, .gamma_lut_size = 1024,		\
+		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
+					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
+	},									\
 	.dbuf.size = 4096,							\
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
-- 
2.25.1

