Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE24AA5945F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668D510E438;
	Mon, 10 Mar 2025 12:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdGO90AI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8E010E436;
 Mon, 10 Mar 2025 12:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609712; x=1773145712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTrBq0rmVsGk9LwWbSeVbEPwVwTPlUS/aQDJWPq0ILA=;
 b=kdGO90AIMfNQPDTqaDzSeuqVSwAzGHrWzuAs3NurLe9oSlU31l9Z124Z
 K07w5KLN7T959Oc6iBJo9O33NuyXerJVzRcmwR9AG7CoZD2pxJI+KW1N4
 1ggvU1B52Dowc2xpTvsfXlOpydsWfcyn9coNNUUk1Bh+iU2BkjO2zgESM
 2bkJUFhoTJorRv7aZkpqei4trZTMDE9j37BoreCVbpCDEthUoXLJFmdSI
 2W8SvUaB4oM1L6wZmOhX9d0x9zo7FAqoL+GhDsn5ry0ggyvUwkPQZIH8R
 DqY71LvoJTwRDIrXKoy9giVwjhXMh5fqD7Apul90YzfZNoBaYVKIeOfoT g==;
X-CSE-ConnectionGUID: ZKrGPysVQgGzp6JLSup2ew==
X-CSE-MsgGUID: xTqqX2+9S5SKTiqj8N8H6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057290"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057290"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:31 -0700
X-CSE-ConnectionGUID: t68zfW2lQ/Cqud607l5TdQ==
X-CSE-MsgGUID: ezXx9sllR+iBVKEQFyml4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180537"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/21] drm/i915/hdmi: Use VRR Timing generator for HDMI for
 fixed_rr
Date: Mon, 10 Mar 2025 17:46:03 +0530
Message-ID: <20250310121615.1077079-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

