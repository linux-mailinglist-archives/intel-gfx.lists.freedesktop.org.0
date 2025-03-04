Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64BDA4D674
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C86210E52F;
	Tue,  4 Mar 2025 08:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbfAd/1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E45C10E52F;
 Tue,  4 Mar 2025 08:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077134; x=1772613134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTrBq0rmVsGk9LwWbSeVbEPwVwTPlUS/aQDJWPq0ILA=;
 b=VbfAd/1O16ph2zST++73AGr4nzpAe+r+96ig9DqX5MGnDLvtdGBuklpQ
 Ic9WLWIDy32vIkSWXb5nRUFFifi3etYGLF+chaXhNSh1pB52oOA3duaHk
 AJKiCmtCwBwUmsXq5JfPwM2q8VgCjGVHvWcdBiH3YbvhIrebjAAJyNUxW
 NOwleA1yWJawpdjNi5NtFBp2GOiO/t4UYqWFcS56B2mTlQ+tPlxaUEKMp
 r0Y50UlXigkH3Vp89vUBxHWwvbQCxAnnfVbcfFMdxnuBOFIyPJqoWMdSI
 azxdmpJQxFdw+hb1ySWim/8imrq+WDbVvFXViqOwsZ1wJ67d30xRRfTsQ A==;
X-CSE-ConnectionGUID: kSdpYbNsRti8Q7ZjcxikxQ==
X-CSE-MsgGUID: 7c1Sk1yJQhOmhrdQfCHTVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910174"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910174"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:13 -0800
X-CSE-ConnectionGUID: JC80cfZjTKWkF6sTt/97oA==
X-CSE-MsgGUID: 7Q2+o6AJQGyaCoxsbNvlTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492206"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:11 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/22] drm/i915/hdmi: Use VRR Timing generator for HDMI for
 fixed_rr
Date: Tue,  4 Mar 2025 13:49:35 +0530
Message-ID: <20250304081948.3177034-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

