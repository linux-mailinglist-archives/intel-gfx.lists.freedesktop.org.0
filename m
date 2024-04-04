Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D73899077
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57440113571;
	Thu,  4 Apr 2024 21:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0ErZnm4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78DD11356B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266498; x=1743802498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=06xw9sd4291wnGmKdt+InDVaSkk9GiTKwHlCPkz0GNo=;
 b=g0ErZnm4Yy3pFES2CrslZrEXcl+JRFgz+3Agf1OhCkQsO+Z5yFUyS55W
 NBF1dvjDF/hlEKzlFvCRAK1Dq96GyyhBkVFoj8HpAs+FckDnaBUQIEoA9
 O7k3eY6hi7O3mxQ3veR4be9PTBJpDtj+94ek0bcpiX7k6uYqv9o+wD732
 IAxIRGS3keeOD07UBtaoR9v+OsPKYqwKmcmsCHjuWNZdHW2M+SsrAEvC1
 v6cQtVeyRdUlRv5Mo9KOYacKsj9LbOQIAxKVjVM5RLjdn9V/JYh06rV83
 3uFLVtxLEMK2gY4/o4WAgkT6EijhnchCi9DeZDdoBGEDMREKuBDD875qH A==;
X-CSE-ConnectionGUID: RsyIfLKQQrKje/nkLsuHIA==
X-CSE-MsgGUID: UbrHLIkcTLaQQawddVTH5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710797"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710797"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790609"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790609"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 04/17] drm/i915: Disable live M/N updates when using
 bigjoiner
Date: Fri,  5 Apr 2024 00:34:28 +0300
Message-ID: <20240404213441.17637-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

All joined pipes share the same transcoder/timing generator.
Currently we just do the commits per-pipe, which doesn't really
work if we need to change the timings at the same time. For
now just disable live M/N updates when bigjoiner is needed.

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8b67cd62f188..4552005caae2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2752,7 +2752,11 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (has_seamless_m_n(connector))
+	/*
+	 * FIXME all joined pipes share the same transcoder.
+	 * Need to account for that when updating M/N live.
+	 */
+	if (has_seamless_m_n(connector) && !pipe_config->bigjoiner_pipes)
 		pipe_config->update_m_n = true;
 
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
-- 
2.43.2

