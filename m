Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4F1904013
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 17:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6E010E0A2;
	Tue, 11 Jun 2024 15:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUDosBhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED9610E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718120024; x=1749656024;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bc+jtD9mMl4S+GO9O1IpGmHgeNuP8ikUIibmuo5HEWE=;
 b=PUDosBhbsXxTlXANhpDqJg2pxik/4AyAqv/S/1H1cWMUbWvGXrdV4UWI
 bp9acJ/xfB/0l91G6eAr/WghWroDHGQuSoMl6nygrgggrSGXGG59tA2e3
 8Au4UQwG5ZAC/+kM8BsLtjvZqXERyZONOqBT+wTkCBvYJvISlfEaTzuhM
 GMmKHp9Z9SR6z5ze5h2C21KorM+hbIY97SDzV/2agIHHH3FKsu+POyvRu
 /UGNT9OyBJ2+7sv4oh0L2X0VUNJB1KYj2nOj8yieVisnGZkjEBHOIJkKp
 o2sLQBTL8ZD2kL5+0d3zzEN1mPJ5DnYWT9CV04J+CtqDSCEVyScO97C+I A==;
X-CSE-ConnectionGUID: KqKCNojgR7ipkh5vyB+pHA==
X-CSE-MsgGUID: oK1qY/tQQs+x46VT8n20pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="17761313"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="17761313"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 08:33:44 -0700
X-CSE-ConnectionGUID: JnSSH17HQvqL0hWI2Y0yqg==
X-CSE-MsgGUID: 7dXbMKf4T5GqnFHCqMc83A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44416218"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 08:33:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp_mst: Fix DSC input BPP computation
Date: Tue, 11 Jun 2024 18:33:51 +0300
Message-ID: <20240611153351.3013235-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

The branch or sink device decompressing a stream may have a limitation
on the input/uncompressed BPP, which is lower than the base line BPP
(determined by the sink's EDID). In some cases a stream with an input
BPP higher than this limit will be converted automatically by the device
decompressing the stream, by truncating the BPP, however in some cases
- seen at least in Dell dock's DP->HDMI converters - the decompression
will fail.

Fix the above by limiting the input BPP correctly. This is done already
correctly for SST outputs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 00fdcbc28e9b7..15c20bedea091 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -349,6 +349,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	if (max_bpp > sink_max_bpp)
 		max_bpp = sink_max_bpp;
 
+	crtc_state->pipe_bpp = max_bpp;
+
 	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
 								  crtc_state,
 								  max_bpp / 3);
-- 
2.43.3

