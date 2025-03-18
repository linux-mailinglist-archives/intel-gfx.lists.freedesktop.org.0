Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3534A66C72
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4F410E1F9;
	Tue, 18 Mar 2025 07:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvutW4sx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E13D10E1F9;
 Tue, 18 Mar 2025 07:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284061; x=1773820061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTrBq0rmVsGk9LwWbSeVbEPwVwTPlUS/aQDJWPq0ILA=;
 b=mvutW4sxxt7EO39mzZdADrpe5N04tXehI4h5w/3uDcx0Nhhv8GUwQKky
 NssZwy8BNPJkDxoARRp5TxdGg2QEv7/JTDHIXLIZxAOsmAq6QEREcUxGi
 I294lqQwQczOMS7JKVSvuuRE3JoL+4LA3ON9Qut8+r26qljuY9w/dTrTI
 YIezgr6R04WxNi2eTH5IUuf266wXgErbGT5GzaljVH/dEh+grb2P2upFb
 B/MYDRvZuqOJkUdrvegbKvfqwc5ppptn9SSgM9yH2n1P3zPjS+MIj9QK3
 HqGDUIeorw2OIsZYJjRFqezBZOiTlfq0b2HgIQ+qIkHBVpkxN47iWOPBH g==;
X-CSE-ConnectionGUID: ONJO+SGXT8SZyezsMIXpBQ==
X-CSE-MsgGUID: LHsAfzI6QcGzeb8gmZw2KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173766"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173766"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:40 -0700
X-CSE-ConnectionGUID: ieJrCOxJRKKbhVxR1dvLEw==
X-CSE-MsgGUID: 3+Tj9bwyTra4pV6M951o+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681547"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/16] drm/i915/hdmi: Use VRR Timing generator for HDMI for
 fixed_rr
Date: Tue, 18 Mar 2025 13:05:27 +0530
Message-ID: <20250318073540.2773890-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

Currently VRR is not supported with HDMI, but we can still leverage
the VRR Timing Generator to achieve a fixed refresh rate.
Call intel_vrr_compute_config() for HDMI which will handle the vrr
timings to have fixed refresh rate with VRR Timing Generator.

v2: Improve commit message. (Ville).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v1)
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 33b8d5229db0..f9fa17e1f584 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -64,6 +64,7 @@
 #include "intel_panel.h"
 #include "intel_pfit.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
@@ -2384,6 +2385,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		}
 	}
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
 					 conn_state);
 
-- 
2.45.2

