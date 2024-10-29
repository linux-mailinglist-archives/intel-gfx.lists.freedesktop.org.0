Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393B69B5551
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B9610E71D;
	Tue, 29 Oct 2024 21:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iem+VYPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A35210E71C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238765; x=1761774765;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GASBpKvDZ6Sbz7dTrzPz8pCUNvHnqQhTyO/Nb0OJEtI=;
 b=Iem+VYPfLtmh1TyevNRqEA5P1RcVHNiVy4o1kZC7vz/306WpnZ8TZl2h
 TmiR6FydziN+vAa5NDFk3T2/aiXKWnm/H6cmSmEoJ2oj72o5KirxrLxPh
 I0wDwC9/KUNB5eQbQgdwFjGzKVkklfpjk10vf3sMf+V6i2RvKw0RnKKAY
 /U+3ySZ3hhLvgDkiZj8VABMwfrmwiYJpco8POZ8Jw0tiTSN9mQ8maeqMC
 gqSlUZtd+oZpkN3jYR0c0V+C9wZsnk8K3AjfWpDGcWVwCXvXabcJixb6o
 mboEuy4WQhlWR54xja8xjAbMnxHPez6hHG9Cc8ZhygBM1Kry5nP/vYO9l A==;
X-CSE-ConnectionGUID: bmYSkmODRw6NrOtBQirpqg==
X-CSE-MsgGUID: Hm4LrZ81TQGHatjRi6hIow==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275191"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275191"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:45 -0700
X-CSE-ConnectionGUID: KtZzH1aoT4izFxDGk+sRfg==
X-CSE-MsgGUID: Rn/hR5p7TjCQNB7tmANqQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200258"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/11] drm/i915/cdclk: Drop pointles max_t() usage in
 intel_vdsc_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:15 +0200
Message-ID: <20241029215217.3697-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

min_cdclk==0 when intel_vdsc_min_cdclk() calls max_t() on it.
Drop the redundant max_t().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 989607c0b35d..d376f7bccf21 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2810,7 +2810,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_display *display = to_intel_display(crtc);
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
-	int min_cdclk = 0;
+	int min_cdclk;
 
 	if (!crtc_state->dsc.compression_enable)
 		return 0;
@@ -2822,8 +2822,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * If there 2 VDSC engines, then pixel clock can't be higher than
 	 * VDSC clock(cdclk) * 2 and so on.
 	 */
-	min_cdclk = max_t(int, min_cdclk,
-			  DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances));
+	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
 
 	if (crtc_state->joiner_pipes) {
 		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
-- 
2.45.2

