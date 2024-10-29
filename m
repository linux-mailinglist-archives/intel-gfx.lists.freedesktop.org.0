Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F48E9B554F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20DA10E718;
	Tue, 29 Oct 2024 21:52:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MaSWsctH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A8F10E70B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238763; x=1761774763;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3j1eBNEjRYkM/J4rO2o1oVGFpL79ZreYG3zHKSDoVSg=;
 b=MaSWsctHZ1gmVV6zC4NgvvrOYm1XyYPI0kgJ+TMYqD3t9t5ZlUQIXIP9
 TPim06UcLW57jEhuiealYo2v2M27NbtTnGzdTL67/mvNKY7GGq8j0XEc+
 3w02aBNXh8BwftO4qIdAXhlk+HpVumG375ehOQ94YC2pkHeMehU/fMY7Y
 oM/woH48Oraiyl47WuWQLFY0n6tu9D1xc48txZeY/+nHPO/Oo0TBrFK4V
 55UwUhRkZNmJHwCc08aJgph/Tp1ldmK8YqjjjuC4Ao3QtzP8o5MUc20YL
 khwwkwc1m536/5M9GnQXrCChTdkTAxfBkPLe+znOW02/h7Ckg8SwSNOvL A==;
X-CSE-ConnectionGUID: YcJCvVsQRxG5u1CkXZwvnQ==
X-CSE-MsgGUID: j7oY4F3eRSqLZjcyuPFFrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275181"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275181"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:43 -0700
X-CSE-ConnectionGUID: XQjEU38IROigQehys2vO0A==
X-CSE-MsgGUID: dUOfEhcSRiu6vSOgPLyZBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200252"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/11] drm/i915/cdclk: Suck the compression_enable check into
 intel_vdsc_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:14 +0200
Message-ID: <20241029215217.3697-9-ville.syrjala@linux.intel.com>
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

Declutter intel_crtc_compute_min_cdclk() by moving the
crtc_state->dsc.compression_enable check into
intel_vdsc_min_cdclk().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e10378744607..989607c0b35d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2812,6 +2812,9 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 	int min_cdclk = 0;
 
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+
 	/*
 	 * When we decide to use only one VDSC engine, since
 	 * each VDSC operates with 1 ppc throughput, pixel clock
@@ -2860,9 +2863,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	min_cdclk = max(intel_audio_min_cdclk(crtc_state), min_cdclk);
 	min_cdclk = max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
-
-	if (crtc_state->dsc.compression_enable)
-		min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
 	return min_cdclk;
 }
-- 
2.45.2

