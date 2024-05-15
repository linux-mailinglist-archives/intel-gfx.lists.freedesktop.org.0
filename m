Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EBA8C6604
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A88210E838;
	Wed, 15 May 2024 11:57:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSigN/un";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F142310E7FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774245; x=1747310245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7abdvhOES0Cqwm31ZgUXRJnLED/vQaj8+5xDnPIHJYg=;
 b=aSigN/unnzZugVlTu+2TxMBqSYg3625CUz6kuIAKB6iR+01LE59Dg/Gg
 7oYbTZwh3qk9N5dpDYKA/X9PrqfrC8Jwvqf+GiTWAoryBVn6l1VLOwoRl
 f1ucwSaW/dJ1x6/RLdPcMjUlf/M2CGRWoF8kK7kuy0IR1U4WR5W74Hztu
 HAqtTbBUQ3YVTrfjITjGMvKQy7TBapDUG3bMutq9LFBo8Kgi3+IkVlLMC
 lmhunahP9S46HOBAymKnohmrx00KtqJn1rw0aLCP9ls7xUdA7kX/XrTWr
 t19sS/i+RhbMBQm1Z5TSyHgtqEp9oHIqb1lIGZ21lR7agC+S/ZHFJGIbv Q==;
X-CSE-ConnectionGUID: NO3HyBRYRbqdijgOdfeQwQ==
X-CSE-MsgGUID: 12SCT8TSS0OBNRpMXY606w==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11948028"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11948028"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:25 -0700
X-CSE-ConnectionGUID: vEN+a6RQR46EUuY7ThvKAg==
X-CSE-MsgGUID: IVnFVVT2RG2hU5mpZytHjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="54237624"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 6/8] drm/i915: pass dev_priv explicitly to CUR_FBC_CTL
Date: Wed, 15 May 2024 14:56:46 +0300
Message-Id: <f5e76f916ccf02aaf6016ffd476e9544817ac179.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the CUR_FBC_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 3 ++-
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 6 +++---
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 8553f6164760..c780ce146131 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -646,7 +646,8 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 	    plane->cursor.size != fbc_ctl ||
 	    plane->cursor.cntl != cntl) {
 		if (HAS_CUR_FBC(dev_priv))
-			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
+			intel_de_write_fw(dev_priv,
+					  CUR_FBC_CTL(dev_priv, pipe),
 					  fbc_ctl);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, pipe), cntl);
 		intel_de_write_fw(dev_priv, CURPOS(dev_priv, pipe), pos);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 7c3a76f5151d..40b01205e247 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -71,7 +71,7 @@
 #define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
 #define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
-#define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
+#define CUR_FBC_CTL(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
 #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
 #define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 5ea1fbc2e981..b485976976db 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -154,9 +154,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(CURBASE(dev_priv, PIPE_A));
 	MMIO_D(CURBASE(dev_priv, PIPE_B));
 	MMIO_D(CURBASE(dev_priv, PIPE_C));
-	MMIO_D(CUR_FBC_CTL(PIPE_A));
-	MMIO_D(CUR_FBC_CTL(PIPE_B));
-	MMIO_D(CUR_FBC_CTL(PIPE_C));
+	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_A));
+	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_B));
+	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_C));
 	MMIO_D(_MMIO(0x700ac));
 	MMIO_D(_MMIO(0x710ac));
 	MMIO_D(_MMIO(0x720ac));
-- 
2.39.2

