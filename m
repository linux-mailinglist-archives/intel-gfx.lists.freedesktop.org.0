Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F86BA3AAA9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9509010E775;
	Tue, 18 Feb 2025 21:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Il8kknf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9073010E770
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913582; x=1771449582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r3IzcVRoCKDhB20zG9nz4GVtfL19imbr+tx5KGDINiQ=;
 b=Il8kknf7hP8EIxMtZp1vJGfgNBfYKFyge7EaZj8UUUExDKKghS4/cEen
 AYCTkbxcFFl/RGv9qdyBqyfVOO6SHYdnYs2uWJ4YdsBE+1byY9VwwMapN
 HzlyCEqMHiz5vx4TagCJsaDJcvui+0Yfm556T1lb20DRT8eE6/SUOcLxM
 Yx+lIHIpyjZ3jfcWEsHxBa72YI9ZvFMD3VS7plwlg024nlHloueHvT8US
 aWxzaYrk+db6+lkxPF3S/Zyux+efEgYm4HsVTjov75CVvbwH438tAP6Hv
 1guuu+AnTs5YHNCHudI3EG46Mose3tHGZSMW72om1O0bclq/CbbtVH5Pf A==;
X-CSE-ConnectionGUID: NQUKPIxBQX2exW1jkLXInA==
X-CSE-MsgGUID: bTgswV68QU+VkEmAUFKUxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862265"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862265"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:35 -0800
X-CSE-ConnectionGUID: UBBNQqGSRjqFh8IlRFc/yw==
X-CSE-MsgGUID: LAyT7A52T0G3v+5IuGEFVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693357"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/19] drm/i915: Drop redundant shared_dpll=NULL assignments
Date: Tue, 18 Feb 2025 23:18:56 +0200
Message-ID: <20250218211913.27867-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

The crtc state is expected to be fully cleared before readout,
so there is no need to clear the shared_dpll pointers by hand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cb9c6ad3aa11..8ee8c1df075a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3121,7 +3121,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
 
 	ret = false;
 
@@ -3503,7 +3502,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
 
 	ret = false;
 	tmp = intel_de_read(dev_priv,
@@ -4080,8 +4078,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
-	pipe_config->shared_dpll = NULL;
-
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-- 
2.45.3

