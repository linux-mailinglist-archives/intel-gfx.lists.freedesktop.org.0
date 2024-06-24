Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834F915158
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845D810E47E;
	Mon, 24 Jun 2024 15:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VBW6pwW7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6078310E47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241544; x=1750777544;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NbksNlwqLXsM2H+6IUfznJ9kjwU51C9SYh9pnonMJEw=;
 b=VBW6pwW7Abf65i/ZBRyMZ59K+9hIgSoZ2PKuJnwTTjtDPtoq9O2bHISu
 GYEy/EZHCWEhNQo+lJEwQK9leVxQNys/Zmlxfw1n1cWgrAexi3x5/Ckg9
 rOLsTN74k1MGyoGo/IV0j4t+ipUrFPnEI1x3YEYqwhxnIT+mSN4pvmVJL
 oupC6fas9fpqPSi5ZqUjioP6tJfaCt4Pd4J1ykvm1weEVALEMQmZChqTc
 CmahcmX3fRmzweBsLeFjij3PC0kU+8ogbWk1WQKUqOjta1SSgKE7Icgwf
 Kjq7aZFid5vAr5PkeDb9xVQCr8Qhb3Z8BHCssP+jj+oUd6q44obrRkimd w==;
X-CSE-ConnectionGUID: ydXJ938nR76+5UadbCtBbQ==
X-CSE-MsgGUID: ErYL1kI+TeWYyNeFAc3BvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117846"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117846"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:44 -0700
X-CSE-ConnectionGUID: hOSvjx7SRg+p7UtJ8F72dA==
X-CSE-MsgGUID: EXAGIrKDQ4usCL8M1plAFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298503"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915: Disable compression tricks on JSL
Date: Mon, 24 Jun 2024 18:05:34 +0300
Message-ID: <20240624150538.24102-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
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
index e42b3a5d4e63..af53c40e6c21 100644
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
index 09a287c1aedd..a424b442493f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2286,6 +2286,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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

