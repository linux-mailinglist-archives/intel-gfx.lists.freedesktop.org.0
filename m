Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F489102E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92CE10E894;
	Fri, 29 Mar 2024 01:13:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ggb0RPva";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70ACE10E894
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674787; x=1743210787;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AR7Q7/+aC9KfPEQeeeaa1wSySlVFW5dD6UZDwjd/ltY=;
 b=ggb0RPvaGpvPqzE8XUKKtolrLbik9kRSmST8nSzpvH4TJlfzgXV8DuRZ
 oZ+vyqIyamiqKO4DCdsezKEyZYJtQDxB20p2n+3aLxiqahB2HHQhojyIE
 r4j2bQR7QJzWtKmwO22/NIUfHpvOAaeuOyGtcVnGepwy8YSgeAW+kqQre
 Jf4IDKsrNPPuO0R4h0ilj8TZmXVa6+NvI978X6d3KFG/etFTlrqsfHSoX
 lqMc3fMSdlrXnIPvFyN+5RFYXHRpP4uq1hZYXBAE7pHOhptyLeOBn24k+
 WpbhZUgSTROH6zdQsz3itk9Q/Uj3i8sAhd3AI0dpPCi49OucByBWtUB8w A==;
X-CSE-ConnectionGUID: dMadFMF+RHGMcCRPs1XRTg==
X-CSE-MsgGUID: MJ7PL5XlRu6iYCDxZTg98w==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756282"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786767"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786767"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/22] drm/i915: Disable live M/N updates when using bigjoiner
Date: Fri, 29 Mar 2024 03:12:35 +0200
Message-ID: <20240329011254.24160-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f755fd974da2..bc9d6efc99ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2719,7 +2719,11 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
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

