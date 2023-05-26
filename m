Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A95712AC8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1287510E81E;
	Fri, 26 May 2023 16:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70E710E81E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119120; x=1716655120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=92Cb7NJkqezgr39BLrF/2N7IitaOrxSEepSGCSe0V30=;
 b=bC4RKcvS9C+nbgCNPgBzLuKpCwFLqHxWamDnEmviClQ3Axjm/BA2iT85
 9ius2D64FkVEdX8pubtX9Aw7VTj9yfyqk41TfV/sUS/brxeXR0gvQcbcx
 YlmjpFBPyoqNkzy6dU58Zqzyazjy0N2kyTVIur/NPaonGS7BiDQ2RAA0U
 TmTFWf/Wqq/OFmavbR8mdxQc/946nP3wqngJTITlpugISt8Yt6GZnOi26
 ZTli9J20zj4//SsCLevNWpmHSwgqGAPBqYseP835Nlw8kTxvaYmSIfgu8
 HiaTfsV24A21lUlRTG4yBNGlvcFceddOoSLyNdwO5WbyhSbFCNw8DLKru A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087548"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087548"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056560"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056560"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:00 +0300
Message-Id: <6c529e8721d56b0148a3a84fb2d396d4485e09a2.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/irq: drop unused but set
 variable tmp
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 3b2a287d2041..31dd7c9c76b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -873,7 +873,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	enum pipe pipe = INVALID_PIPE;
 	enum transcoder dsi_trans;
 	enum port port;
-	u32 val, tmp;
+	u32 val;
 
 	/*
 	 * Incase of dual link, TE comes from DSI_1
@@ -920,7 +920,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 
 	/* clear TE in dsi IIR */
 	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
-	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
+	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
 }
 
 static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
-- 
2.39.2

