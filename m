Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A49AD896C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B10F10E98A;
	Fri, 13 Jun 2025 10:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOrOWj8I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160A510E984;
 Fri, 13 Jun 2025 10:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810204; x=1781346204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rksVA4nsv9sxAe8WRmIyRB1qFaIDAJk163M5Pw0FQIA=;
 b=kOrOWj8IdY6UVLbTH21iiL3Yeh7ixKJ68hPiV2o3cmi3Cu/cCogPmCZP
 /iNISU66u4vBGWsZIoyXGh3xGj/nnUnbvSNRKb0bgP55VRbHN3KTV1pFu
 iWgoCW/gvPwMPU1ceQZV/wE2lJSEA5fgothW0rmUMo3yU90ZnVBZ6wDan
 g5/nbub27rUNnUSeFhpyoIA036/HC5APxKgV2RqluCHH5E/u9wlv017hV
 QoeyAL3CrT8omPj/ua4Xrlw2AMYcIf02t8Lxe5Gw/QbM933XrfTWvuJBq
 ONGqXnpQcQ8UDefqgvpeOTlsEF0MjoVZgEpf5Xo9b2pzeAB+mMOFf1X1s w==;
X-CSE-ConnectionGUID: stJjxtGCTR6bKJFNK7HklA==
X-CSE-MsgGUID: MM390lB6TV2Stt7h2QKexw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673640"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673640"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:24 -0700
X-CSE-ConnectionGUID: 6Fb2qaqcQfy33IojHFVcXw==
X-CSE-MsgGUID: WJjgxJ2VTs+bvbrgbkUu5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758950"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:22 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v6 4/9] drm/i915/xe3lpd: Update bandwidth parameters for
 display version 30.02
Date: Fri, 13 Jun 2025 15:52:51 +0530
Message-Id: <20250613102256.3508267-5-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
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

-v2: Resolve conflict to apply patch.

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

