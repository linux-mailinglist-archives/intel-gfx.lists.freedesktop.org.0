Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF96D995968
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 23:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8106610E5F8;
	Tue,  8 Oct 2024 21:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TcZ2S7jI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04FD10E5F7;
 Tue,  8 Oct 2024 21:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728423838; x=1759959838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BNxweyXFCd4VT7VVEYC/qeuCnKfesyIqGLIFGfr8QhQ=;
 b=TcZ2S7jI3PBesRSfXMjp4kCPd9rRUstWz+/6VHmgyhOflGa9IFTcPScu
 uiUNfU1vBsX9ddSONZhynTs/qqVvaHXW2HTFe/wCH8x50Y/BgFVL1TAQQ
 j6y15y4ba758JR/N3cJjiKTd7CQa2Ycs1JaoJkbkzHSQX/+0gTm17vDGz
 qINrkU9cxRHDgkgJQL0fRqhE+wS3HtAgW1aBj04+gCyAjxhWKOePqJCYL
 DYyhCjHtWV0qAKX5otsLF3DkDafe7mMZcOwke85INVtvi3iR1WSEEEY0r
 z/MFCdY4jabD8uRZSt6xMY8uUOmEAMSdbBh7wqACKZdN50pnqhTBPfvwl g==;
X-CSE-ConnectionGUID: A93GQuG6RFKsut4mkoUnVw==
X-CSE-MsgGUID: k1UYGFocQp218zKWFhgXtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27831639"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27831639"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 14:43:58 -0700
X-CSE-ConnectionGUID: fllS1pgWRmOkID2b/qRQyw==
X-CSE-MsgGUID: sql6s53IQRGk0gthl2CK6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76113122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 14:43:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 00:43:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/gt: s/gen3/gen2/
Date: Wed,  9 Oct 2024 00:43:47 +0300
Message-ID: <20241008214349.23331-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
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

Now that we use the gen3 codepaths also for gen2
rename everything to gen2_ to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c        | 8 ++++----
 drivers/gpu/drm/i915/gt/gen2_engine_cs.h        | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 54077cab8e16..4904d0f4162c 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -169,7 +169,7 @@ static u32 *__gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs,
 	return cs;
 }
 
-u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+u32 *gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 {
 	return __gen2_emit_breadcrumb(rq, cs, 16, 8);
 }
@@ -248,7 +248,7 @@ int i830_emit_bb_start(struct i915_request *rq,
 	return 0;
 }
 
-int gen3_emit_bb_start(struct i915_request *rq,
+int gen2_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 len,
 		       unsigned int dispatch_flags)
 {
@@ -290,14 +290,14 @@ int gen4_emit_bb_start(struct i915_request *rq,
 	return 0;
 }
 
-void gen3_irq_enable(struct intel_engine_cs *engine)
+void gen2_irq_enable(struct intel_engine_cs *engine)
 {
 	engine->i915->irq_mask &= ~engine->irq_enable_mask;
 	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
 	intel_uncore_posting_read_fw(engine->uncore, GEN2_IMR);
 }
 
-void gen3_irq_disable(struct intel_engine_cs *engine)
+void gen2_irq_disable(struct intel_engine_cs *engine)
 {
 	engine->i915->irq_mask |= engine->irq_enable_mask;
 	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
index 2f707620b3d4..7b37560fc356 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
@@ -15,21 +15,21 @@ int gen2_emit_flush(struct i915_request *rq, u32 mode);
 int gen4_emit_flush_rcs(struct i915_request *rq, u32 mode);
 int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode);
 
-u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs);
+u32 *gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs);
 u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs);
 
 int i830_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 len,
 		       unsigned int dispatch_flags);
-int gen3_emit_bb_start(struct i915_request *rq,
+int gen2_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 len,
 		       unsigned int dispatch_flags);
 int gen4_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 length,
 		       unsigned int dispatch_flags);
 
-void gen3_irq_enable(struct intel_engine_cs *engine);
-void gen3_irq_disable(struct intel_engine_cs *engine);
+void gen2_irq_enable(struct intel_engine_cs *engine);
+void gen2_irq_disable(struct intel_engine_cs *engine);
 void gen5_irq_enable(struct intel_engine_cs *engine);
 void gen5_irq_disable(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 694cb79d5452..3ec8bc01058b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1091,8 +1091,8 @@ static void setup_irq(struct intel_engine_cs *engine)
 		engine->irq_enable = gen5_irq_enable;
 		engine->irq_disable = gen5_irq_disable;
 	} else {
-		engine->irq_enable = gen3_irq_enable;
-		engine->irq_disable = gen3_irq_disable;
+		engine->irq_enable = gen2_irq_enable;
+		engine->irq_disable = gen2_irq_disable;
 	}
 }
 
@@ -1143,7 +1143,7 @@ static void setup_common(struct intel_engine_cs *engine)
 	 * equivalent to our next initial bread so we can elide
 	 * engine->emit_init_breadcrumb().
 	 */
-	engine->emit_fini_breadcrumb = gen3_emit_breadcrumb;
+	engine->emit_fini_breadcrumb = gen2_emit_breadcrumb;
 	if (GRAPHICS_VER(i915) == 5)
 		engine->emit_fini_breadcrumb = gen5_emit_breadcrumb;
 
@@ -1156,7 +1156,7 @@ static void setup_common(struct intel_engine_cs *engine)
 	else if (IS_I830(i915) || IS_I845G(i915))
 		engine->emit_bb_start = i830_emit_bb_start;
 	else
-		engine->emit_bb_start = gen3_emit_bb_start;
+		engine->emit_bb_start = gen2_emit_bb_start;
 }
 
 static void setup_rcs(struct intel_engine_cs *engine)
-- 
2.45.2

