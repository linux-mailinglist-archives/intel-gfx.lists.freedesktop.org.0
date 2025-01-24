Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF674A1B895
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9526910E9B0;
	Fri, 24 Jan 2025 15:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbHvHccL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2748B10E9B0;
 Fri, 24 Jan 2025 15:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731556; x=1769267556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d49Mm9Gzixll8o0lQVw1MdxPRHF6AWsyT59u5/EeZJw=;
 b=gbHvHccLi54Yn8yL5BWIdRd2DbXXb+GkBsGJhA6pZIs+hqpU5QuXvW97
 uTcfPlgU0TXc+D54bdNmbZpuC1Zz1fLx225a/8ZKUZMKxKhZpLsaqi138
 nu+u4yLLt/nCs7iIaHSctdHWffb2tfFbw+e+Xf7jYL/OfJrcBEM6GhVgf
 0OmbGjM+Jo4UCJ4WZ5VBi2rLkGK6MFlVEP2mKWNWGmj1qeIcZQKGbq/nh
 zCmjiUWTrwvINYYv79Ufg9VyjSgR+y49d4dGoTnnYfW3N/n6u+b3EVKWg
 rt61Lw1vvjMtmbOT1hqhuE0Z0tHXjrXCeWnBNOOXaCWwtpkYEpwiNuQc6 w==;
X-CSE-ConnectionGUID: zgICtWsKT1aYnjhpHiDTvA==
X-CSE-MsgGUID: DwHcTRHmSZqiKgRhSroY1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177462"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177462"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:36 -0800
X-CSE-ConnectionGUID: qf3iTa1vS7K/3VsA3bI/zA==
X-CSE-MsgGUID: jBi8XzMWRS+OdMU3HskjhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221575"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 26/35] drm/i915/hdmi: Use VRR Timing generator for HDMI
Date: Fri, 24 Jan 2025 20:30:11 +0530
Message-ID: <20250124150020.2271747-27-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Add support for using VRR Timing generator for HDMI panels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3b51238022f4..fd1ef0538bf4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -64,6 +64,7 @@
 #include "intel_panel.h"
 #include "intel_pfit.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
@@ -2385,6 +2386,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		}
 	}
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
 					 conn_state);
 
-- 
2.45.2

