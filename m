Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C88497BE2D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B621C10E0DC;
	Wed, 18 Sep 2024 14:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOqDAsqr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10D410E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670694; x=1758206694;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F6aJbG+4yF9ET4Vdko9P3JMxR+VJNFpVm2rXQ93sAVI=;
 b=AOqDAsqrTZlNNZCOXlLFXIXAUwY6ASP1DEbCBGdH50Qb2MyzYDjQcu95
 3+tC3t0fxI7WrPKRslltDlg9s/Zfgt2R0fOn6/SA5tU0ky2OpIidDOT2c
 F+zgSnjm1h5p4T8xm1eTEaL1MgqFD6UdInFoNNMWvQQ41/uHFjtowYhDN
 IY1YV8hGQuJCrw9T39TAIRH30fArnXY52LZnm2y9R4TA6YwDF975JW/AA
 YMx6xPOGgSeixGDmoxQOA5YvW87HYZWXoK5Jv3dTvTLemr2cC01XHjUpB
 id1QA69rPbY6foTdDUkTaHZslgq3gL6Ktdz8WMLtrZ+F2GTSW4UGOl3l2 g==;
X-CSE-ConnectionGUID: gXNgQrbhQnOEKp8SerwSqg==
X-CSE-MsgGUID: sSK7PryfQtyH18tOHptYuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963598"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963598"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:44:54 -0700
X-CSE-ConnectionGUID: /zxY0g4CStWDHIYBRdV9tQ==
X-CSE-MsgGUID: /4egjhyhT1mCA0sQGXkmUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711330"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:44:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
Date: Wed, 18 Sep 2024 17:44:40 +0300
Message-ID: <20240918144445.5716-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec asks us to disable some compression trick on JSL. While the
bspec description is pretty vague it looks like this is some extra
trick for 10bpc+ CCS which presumably the ICL derived display engine
doesn't support.

Note that we aren't currently exposing 10bpc CCS scanout support,
but once that gets added this presumably becomes an issue.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 57a3c83d3655..67c47c8b75fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -432,6 +432,7 @@
 #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
 
 #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
+#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
 #define   RC_OP_FLUSH_ENABLE			(1 << 0)
 #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
 #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e539a656cfc3..6972525fe6be 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2299,6 +2299,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
+	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
+		/*
+		 * "Disable Repacking for Compression (masked R/W access)
+		 *  before rendering compressed surfaces for display."
+		 */
+		wa_masked_en(wal, CACHE_MODE_0_GEN7,
+			     DISABLE_REPACKING_FOR_COMPRESSION);
+	}
+
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.44.2

