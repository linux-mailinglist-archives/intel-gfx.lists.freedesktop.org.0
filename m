Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2046EA9E8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA7610EE17;
	Fri, 21 Apr 2023 12:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3957210EE16
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078627; x=1713614627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bM9baCrNNl4d6Ck0vR4GBUNkq1Uz2jby67LPDaHKLHY=;
 b=e6HZ1/FhFxo4STFkyjW3f5tHrrBB+7VPFqUjAHkjZqFS+YhavjOMEKQQ
 SGU/KfiuNQ5KbG+8Kj2RheCrdqUnwuI0a62uToEVhOmKASBNM6kw2abwV
 hrNOtSoJLwMJiNIVgeFhwF0n8D+PGVCmevN5hIuFrTke5uf6ugc/ZGv29
 kKcuenRsafxyAd+0d5aS4Bs4YRcHow6lAQstdAL5HQlwK1Izi3LTthgnE
 Ex2kD42M/JfL5X/Sojk8VGasNsYBagLOXfACUu+5fOtcg6XDe7D7qOm+O
 +p1PdDp6s2Q6CAJto2zb9lUl1zGZpgas/ecbe/Xauqy8SJgac8LEgtPcw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900160"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900160"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725475"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725475"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:06 +0300
Message-Id: <20230421120307.24793-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/psr: Allow PSR with sprite
 enabled on hsw/bdw
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

Can't see why we'd want the sprite blocking PSR entry.
Mask it out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_psr.c     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d6..0ff50f995bf4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3133,6 +3133,10 @@ static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(dev_priv) >= 12)
 		val |= PIPE_MISC_PIXEL_ROUNDING_TRUNC;
 
+	/* allow PSR with sprite enabled */
+	if (IS_BROADWELL(dev_priv))
+		val |= PIPE_MISC_PSR_MASK_SPRITE_ENABLE;
+
 	intel_de_write(dev_priv, PIPE_MISC(crtc->pipe), val);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 072a431ec257..0dd321f48c81 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1408,6 +1408,10 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (IS_DISPLAY_VER(dev_priv, 9, 10))
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
+	/* allow PSR with sprite enabled */
+	if (IS_HASWELL(dev_priv))
+		mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
+
 	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
 
 	psr_irq_control(intel_dp);
-- 
2.39.2

