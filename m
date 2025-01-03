Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0D5A00A0C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF43A10E8C5;
	Fri,  3 Jan 2025 13:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJooda/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19B410E8C9;
 Fri,  3 Jan 2025 13:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912375; x=1767448375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DDAZUYiAGkrSKBmMUpHajlPwtxyHDmBagIAcl/Q8Z78=;
 b=cJooda/ZF42JyHy57F0hwd6NjnR1eNc/n3PudJfU8ZZnPpJ7uhZx9NW+
 tfA8A7/I7h9sHJuS5VWyXBG/QfNhCe6j5M+s4cbNmKVVoFIsrK1KsuoJc
 FHB6M0Z531Sh3OUch1f9AU1476to+wcBbf2pvgtddhQOcvYqdc1nJ5j1o
 RPbUddRw1evuR2ZDFum4ARo+DUEIsB7QBbRupBP3orKtTAukzY0ciU15h
 NPd7gHxj9E69cTNyOP5pxQqeDzoeyuKHk/TbWXqQKOXOh1vn2gwZkfOJU
 iBHCoF2AY4XLPH4ljE3bwbgYXshJwhube/eflVjIDjOaDhFCcm/nYxCwp A==;
X-CSE-ConnectionGUID: QKU0z8CcRmmolC6G3bV/Xw==
X-CSE-MsgGUID: 6Sxe6yTXSQag3+96NYyb7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573802"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573802"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:52:55 -0800
X-CSE-ConnectionGUID: mFZgNvijTA6jJ7OIgvZloQ==
X-CSE-MsgGUID: wtLzXMUjQxKYMBQM5Q/tgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716694"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:52:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 02/16] drm/i915/mst: drop connector parameter from
 intel_dp_mst_bw_overhead()
Date: Fri,  3 Jan 2025 15:52:25 +0200
Message-Id: <e1379aca0748e392d8a232135b823deec783e829.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

intel_dp_mst_bw_overhead() doesn't need the connector. Remove the
parameter.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ca091ed291d5..f011d49a616a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -139,7 +139,6 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 }
 
 static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
-				    const struct intel_connector *connector,
 				    bool ssc, int dsc_slice_count, int bpp_x16)
 {
 	const struct drm_display_mode *adjusted_mode =
@@ -278,9 +277,9 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		link_bpp_x16 = fxp_q4_from_int(dsc ? bpp :
 					       intel_dp_output_bpp(crtc_state->output_format, bpp));
 
-		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
-		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							      true, dsc_slice_count, link_bpp_x16);
 
 		intel_dp_mst_compute_m_n(crtc_state, connector,
-- 
2.39.5

