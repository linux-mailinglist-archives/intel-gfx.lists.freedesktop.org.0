Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7C69EF6D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DAF10E427;
	Wed, 22 Feb 2023 07:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB6110E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QTy58ZQupQNOkdmACE0164KX+rcA7yGdwNfDzHznY6k=;
 b=Hck0kw032rtxJohYKsJ35ynKcwVv6B9r5RnIGUPtnuyIlwxVXwMNAFle
 zhAI8KPVMsGngh6G17Qo4+ybYa05bMZyzXW62y4hHKZ6Q/nIoHz3MOjDa
 yZZs/6F3rYNUSpBbSfTDabHUhh0TM5/I6wxiBHUE/xVWBvo0og7dLBPxa
 +nemr1FT5aVlP04HjgN1z0zUdklGACRyUoaX14agln9rM5V+EufsaRfoz
 3Uk06S3OZJWW0K3vjiTZ+kqLor/bmHbQPMOfIUm7CcRlsNT5ZPCae5D+c
 43PCdW4+r0cT8iJfQR5xTaY9XyJLaPEduxUZbTokLl4S6nsl/E0Xojn4q g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544110"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544110"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811235"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811235"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:06 -0800
Message-Id: <20230222073507.788705-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/mtl: define MTL related ccs
 modifiers
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

From: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>

Add Tile4 type ccs modifiers with aux buffer needed for MTL

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 include/uapi/drm/drm_fourcc.h | 43 +++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index de703c6be969..cbe214adf1e4 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -657,6 +657,49 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
 
+/*
+ * Intel color control surfaces (CCS) for display ver 14 render compression.
+ *
+ * The main surface is tile4 and at plane index 0, the CCS is linear and
+ * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
+ * main surface. In other words, 4 bits in CCS map to a main surface cache
+ * line pair. The main surface pitch is required to be a multiple of four
+ * tile4 widths.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS fourcc_mod_code(INTEL, 13)
+
+/*
+ * Intel color control surfaces (CCS) for display ver 14 media compression
+ *
+ * The main surface is tile4 and at plane index 0, the CCS is linear and
+ * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
+ * main surface. In other words, 4 bits in CCS map to a main surface cache
+ * line pair. The main surface pitch is required to be a multiple of four
+ * tile4 widths. For semi-planar formats like NV12, CCS planes follow the
+ * Y and UV planes i.e., planes 0 and 1 are used for Y and UV surfaces,
+ * planes 2 and 3 for the respective CCS.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_MC_CCS fourcc_mod_code(INTEL, 14)
+
+/*
+ * Intel Color Control Surface with Clear Color (CCS) for display ver 14 render
+ * compression.
+ *
+ * The main surface is tile4 and is at plane index 0 whereas CCS is linear
+ * and at index 1. The clear color is stored at index 2, and the pitch should
+ * be ignored. The clear color structure is 256 bits. The first 128 bits
+ * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
+ * by 32 bits. The raw clear color is consumed by the 3d engine and generates
+ * the converted clear color of size 64 bits. The first 32 bits store the Lower
+ * Converted Clear Color value and the next 32 bits store the Higher Converted
+ * Clear Color value when applicable. The Converted Clear Color values are
+ * consumed by the DE. The last 64 bits are used to store Color Discard Enable
+ * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
+ * corresponds to an area of 4x1 tiles in the main surface. The main surface
+ * pitch is required to be a multiple of 4 tile widths.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.34.1

