Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB81A9F4789
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5191E10E8A0;
	Tue, 17 Dec 2024 09:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mzZGSfwp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13ED10E8A0;
 Tue, 17 Dec 2024 09:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427811; x=1765963811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4j/bQap/w17qBvDq2wR7suH9e31TUekB24w0HJpGJdg=;
 b=mzZGSfwpYS5BN0ebiB6rubwoNm8JubF7/VwLbaVImpzpH4P3v72vfhka
 RFeiz7ul1KBn7knaP74oVzNyZPexB3MjnGhFPPJMmibWLa7ccjFjPGH5C
 4qs6aGtIlEPcXOSLxjUTqK75TQCrZWOmYqkQtRsnjH+cd9nyBkCFdsQCl
 M05VTkwgL5EnKQm5IsNCxFfg0XJ4hRVIXBpJf43NzW3y8/CKHcI8/9YvH
 Hk93pTM0uybpbLGcjPn3MzdHBZgs+rfmtv+jSYdfrq6BZ2kyra7hcfrGJ
 MFr81QG0oW/9PPMIhWdvycYkn6TtFX12V5mOZGkSuua+y9HI5oT1rrOcJ g==;
X-CSE-ConnectionGUID: aettSUHpRPGr4uHrJEIPwA==
X-CSE-MsgGUID: zICd1GKSRj++ogWehtFF0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976186"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976186"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:11 -0800
X-CSE-ConnectionGUID: kA8mfBtnTuOwYU18vcDYzA==
X-CSE-MsgGUID: UQu60bvVTJWznvDnMezOfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052477"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 12/14] drm/i915/dp: Make dsc helpers accept const crtc_state
 pointers
Date: Tue, 17 Dec 2024 15:02:42 +0530
Message-ID: <20241217093244.3938132-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Modify the dsc helpers to get max/min compressed bpp to accept
`const struct intel_crtc_state *` pointers instead of
`struct intel_crtc_state *`.

These helpers are not supposed to modify `crtc_state`.
Accepting const pointers will allow these helpers to be called from
functions that have const pointer to crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3760dcff50d3..f694895d223e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1975,7 +1975,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    struct intel_crtc_state *pipe_config,
+					    const struct intel_crtc_state *pipe_config,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -2000,7 +2000,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	return 0;
 }
 
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -2018,7 +2018,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 }
 
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 07e8e6cba94d..ca49f0a05da5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -144,9 +144,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config);
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-- 
2.45.2

