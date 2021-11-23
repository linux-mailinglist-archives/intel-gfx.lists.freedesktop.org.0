Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 921C745ACA4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 20:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1997E6E3DB;
	Tue, 23 Nov 2021 19:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C43B6E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 19:37:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235062410"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="235062410"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 11:37:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="591333669"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Nov 2021 11:37:16 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 01:06:49 +0530
Message-Id: <20211123193649.3153258-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123193649.3153258-1-uma.shankar@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/xelpd: Add Pipe Color Lut caps to
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
Cc: =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
extended range. It has 511 entries for gamma with additional 2 entries
for extended range.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f01cba4ec283..40d21a8c50ff 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -938,7 +938,7 @@ static const struct intel_device_info adl_s_info = {
 
 #define XE_LPD_FEATURES \
 	.abox_mask = GENMASK(1, 0),						\
-	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
+	.color = { .degamma_lut_size = 128, .gamma_lut_size = 513 },		\
 	.dbuf.size = 4096,							\
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
-- 
2.25.1

