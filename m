Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E226D16C10
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 06:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D7610E12E;
	Tue, 13 Jan 2026 05:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DG1qGcBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C50710E12E;
 Tue, 13 Jan 2026 05:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768283754; x=1799819754;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EokGaqPJN17Fi5B7x3u/uExAUAmPJ18Y1nJnCSf7rqc=;
 b=DG1qGcBRNhfooC3jsV1gzWELx+9OYZM/oj143ZoI/NVAsQPoipluLawn
 WyJxyNwXm6zqeH5OA+4eKKWsYQL6Y1EgWy6wXZgl6AFDytWiha0y4/8f9
 snwz08hk5omRbXy2ChnCwAjBNABcMc4X6bPKIL7VjOQPLIFfUZmFKv49+
 7qFwqsUZ63uQwkZ/0OXKgSheRRklau1JWriHGqIaTFpu6By9mw9TEYJC1
 4pxAUtrxaz64zhl+/Pn+IYKSbExRnfNL5umsJ8TYiASSJ/9y0CTSEKisD
 fxfQglKgXOUv0OLr8DwIeRh7nsMx+mr0sbO8tKuu1dGgmUmWQl0+cIFuW g==;
X-CSE-ConnectionGUID: IunTvPAuRPyl2uYGxKVqaA==
X-CSE-MsgGUID: NKB9cwkdQgaQdYZ39cGN6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="81016558"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="81016558"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 21:55:54 -0800
X-CSE-ConnectionGUID: kUCEB+h0RS2+v8FJetYXqg==
X-CSE-MsgGUID: sb5jQF36RfW/DXLZeQQ98A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204379575"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa008.jf.intel.com with ESMTP; 12 Jan 2026 21:55:52 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2] drm/i915/display: Disable casf with joiner
Date: Tue, 13 Jan 2026 11:19:25 +0530
Message-Id: <20260113054925.633053-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Currently pipe scaling is not supported with the
joiner. As casf requires pipe scaling, fail the
atomic commit whenever joiner comes into picture.

v2: Replace dmesg_WARN with drm_dbg_kms. [Jani]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 95339b496f24..63c2c94a243b 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -116,6 +116,12 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 		return 0;
 	}
 
+	/* CASF with joiner not yet supported in hardware */
+	if (crtc_state->joiner_pipes) {
+		drm_dbg_kms(display->drm, "CASF not supported with joiner\n");
+		return -EINVAL;
+	}
+
 	crtc_state->hw.casf_params.casf_enable = true;
 
 	/*
-- 
2.25.1

