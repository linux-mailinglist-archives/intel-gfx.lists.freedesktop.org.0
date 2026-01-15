Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFE1D24467
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 12:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA72510E743;
	Thu, 15 Jan 2026 11:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3v9j/iW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93DD610E745;
 Thu, 15 Jan 2026 11:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768477578; x=1800013578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CzkOKlf70EzrYjVBTtadueC8wxcM73S1dr5HpZcmlC8=;
 b=R3v9j/iWHlumjkuah1hOuocc3IP5E0c242gbXvku2o72IU3dPIQGS/Mx
 6sSX3nDDpQT4AefbgH84hGQqpT63fMaAynhn/0b+QA3CViMLjbtEpYg42
 AKh+pg/bXGUD3+90gsjEuqe6JHfmZO+kyYTkU30PV0TVvrC4YYjdl3qpV
 8b68h458l/ku+FbZuuuU/7AQT8DRFhy2d+FdbDwbLBTuk4yngS9cJuA/P
 7IbCHiINDXVnpPVXqvlHLcsQYFCvoNbFl1ouCcTtk0SIzMHeJQ1HCGlH3
 o7qdURA3Rdc06BHWHvG5l/yrgrTVSI56Oyx7PqeuFSGt1hLeNug+9ljMA Q==;
X-CSE-ConnectionGUID: ORHPBNXHRk2xT+2exZs3zw==
X-CSE-MsgGUID: tfj15jm5Sk+GMe7ZWAjpOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="68988299"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="68988299"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 03:46:18 -0800
X-CSE-ConnectionGUID: yN5i4VkxQQyvQHpih8nzWQ==
X-CSE-MsgGUID: +AGSS0OSRVaxwW/85loALQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="209797867"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa004.fm.intel.com with ESMTP; 15 Jan 2026 03:46:17 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v3] drm/i915/casf: Disable CASF with joiner
Date: Thu, 15 Jan 2026 17:09:48 +0530
Message-Id: <20260115113948.641822-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260113054925.633053-1-nemesa.garg@intel.com>
References: <20260113054925.633053-1-nemesa.garg@intel.com>
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

Disable CASF with joiner as it is not yet
supported in hardware.

v2: Replace dmesg_WARN with drm_dbg_kms. [Jani]
v3: Modify commit message. [Suraj]

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

