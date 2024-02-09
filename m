Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF084FC00
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 19:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C9610F9FD;
	Fri,  9 Feb 2024 18:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5qh6cYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC82810F9F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 18:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707503896; x=1739039896;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pi/aGWGrbJ+YDPyoR456oddessMoP6hGLjLRke1sXpY=;
 b=l5qh6cYe5s4LSEfmaP8o9pH+RodNn26oHvRgt0bRkYs+R9s7Mzg579od
 XPPjUOucoq5if3TAgEH6S6i5L3l6BWnvcG17xDxX8Mbj9uhqgoyJFIv8E
 JPG6ffT1r0H4RzWbiZsdHOBYXJ9c9/0x+dK9IppkY8UyyGwQWcMDBv+5K
 QFh/GfAy7n/lSFOALEO5/f4MKOVvBEeYU51rZ0Y45KOoj21ov65/mMOLh
 kD+jZ99lAEvozlxmR9EDF5oeFr4qSKbz/AH4wR3ei+NC0jyCykCr5SDm2
 c7eBDd8cZEYfHBRJl/lemNOPOOYtgurlNCxeE/LYvaHXbaRhE8ghNAXzX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="23956483"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="23956483"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 10:38:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825204123"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825204123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 10:38:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 20:38:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915: Fix PLL state check for gmch platforms
Date: Fri,  9 Feb 2024 20:38:05 +0200
Message-ID: <20240209183809.16887-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
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

GMCH DPLL state check was mistakenly removed in
commit 87fc875a2b85 ("drm/i915/dg2: Skip shared DPLL handling").
Bring it back.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7db0655d8c9e..f20728b7f67b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5215,9 +5215,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	if (dev_priv->display.dpll.mgr) {
+	if (dev_priv->display.dpll.mgr)
 		PIPE_CONF_CHECK_P(shared_dpll);
 
+	/* FIXME convert everything over the dpll_mgr */
+	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv)) {
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
 		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
-- 
2.43.0

