Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD7EA55116
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F81610E9F7;
	Thu,  6 Mar 2025 16:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy+LQGfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7767410E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278867; x=1772814867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDC4OypeoxmMV2t7sj/AikSfxMN0s2wKxiGrXASwI3I=;
 b=Xy+LQGfd/CpGPH4/NM4Nz+wL1uOxNIAJbtueB6nlnEgkUFYjZlPJc0Z6
 duELOrO/rWMt1NBCYYmFLsfQdxhZ2ACRsPbdqKL+SV26MNmVDypKzy2zw
 0+72qzqLS3czYRZlcpdWvqdSl1IGF7Sf791QYJEYxK7vViHq3CRnV+FvU
 yGa2IebXTWjq6uowNJurcrH1xtpJvzs3f7q6AAT8fzDtC+23j3H0BbbID
 A6nIZ1zGTOqTSlergOK1gmHlfe1rev4sn+TfAUN2EMQ85SflCWUseyL9J
 qWOu3umHxUhrBZKSoZ2x2LWSCPORMy2SJhTL/RKO2CNOVTfo/PH5Ecdos w==;
X-CSE-ConnectionGUID: GbOEB/iUQQmXMn7qit6Ypg==
X-CSE-MsgGUID: erJU5+pLRkKN2K1vTa0Xhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704269"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704269"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:27 -0800
X-CSE-ConnectionGUID: uecxSJz3QOuBEp/dDqpjAQ==
X-CSE-MsgGUID: c+eoFHgnShutDo77XQI2lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288774"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 01/18] drm/i915: Drop redundant shared_dpll=NULL assignments
Date: Thu,  6 Mar 2025 18:34:03 +0200
Message-ID: <20250306163420.3961-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 51c011de4a16..5c1c2cb83d51 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2997,7 +2997,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
 
 	ret = false;
 
@@ -3339,7 +3338,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
 
 	ret = false;
 	tmp = intel_de_read(display,
@@ -3906,8 +3904,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
-	pipe_config->shared_dpll = NULL;
-
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
 	if ((display->platform.geminilake || display->platform.broxton) &&
-- 
2.45.3

