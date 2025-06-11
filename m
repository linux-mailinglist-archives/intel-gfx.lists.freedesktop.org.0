Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FDCAD5776
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6E710E66C;
	Wed, 11 Jun 2025 13:44:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AeA2Q1+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEF310E670;
 Wed, 11 Jun 2025 13:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649482; x=1781185482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NsjPgyaXmP0/LQgHNlWrjFivunpJY8xaZceuErNZovg=;
 b=AeA2Q1+57ePWLyWUiyk1Xnh/vjWF2tK/aQ18gXLS2HLjgiadki3beVV5
 Qmv+9pQEHBh9a60y6jv/ERgvIxaqcHf+QDRLrTX16JIAx6PFp+R4XyPSA
 DX5xUAtm4WJnfDND+8omCGF+7FXfyuKZNo/AQIO+Q0FOqk0UvM5C1yknV
 UkyzX9Q65tiK9y64zEaNdq6hZDVMPXkxEOxom4+k+m8jWDgm911vk0DOF
 q6vHQSK+GMopuoTx9tce9yyd9k3trAIAdLaJXKLbtFJzwnkpNIi2V7rOp
 Pg/3jdmCQYyfZjnpVIrNWHlsz8unYihGA4IfUWDeHry5ZhxORM2QpHqXz w==;
X-CSE-ConnectionGUID: fn1E9TTgQcabQ/0P89LmYQ==
X-CSE-MsgGUID: o9PeC/fkSnqZecVZRBvyeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505815"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505815"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:42 -0700
X-CSE-ConnectionGUID: 13TD3IWkT+i9MsYV3Fb4pw==
X-CSE-MsgGUID: eqy4JHFzThOOBSj+Cxy4rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360322"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:40 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v4 4/9] drm/i915/xe3lpd: Update bandwidth parameters for
 display version 30.02
Date: Wed, 11 Jun 2025 19:14:26 +0530
Message-Id: <20250611134431.2761487-5-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Atwood <matthew.s.atwood@intel.com>

Bandwidth parameters for WCL have been updated with respect to
previous display releases. Encode them into xe3lpd_3002_sa_info and use
that new struct.

-v2: Resolve conflict on applying patch.

Bspec: 68859
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6c2ab2e0dc91..a515241d80db 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -420,6 +420,13 @@ static const struct intel_sa_info xe3lpd_sa_info = {
 	.derating = 10,
 };
 
+static const struct intel_sa_info xe3lpd_3002_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 22, /* GB/s */
+	.displayrtids = 256,
+	.derating = 10,
+};
+
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_sa_info *sa)
@@ -771,7 +778,9 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VER(display) >= 30)
+	if (DISPLAY_VERx100(display) >= 3002)
+		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
+	else if (DISPLAY_VER(display) >= 30)
 		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
 	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx &&
 		 dram_info->type == INTEL_DRAM_GDDR_ECC)
-- 
2.34.1

