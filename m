Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E1B76FC1C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 10:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A44110E6BD;
	Fri,  4 Aug 2023 08:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F4910E6BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 08:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691138366; x=1722674366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8S0Rp+syF5Jw1orPvyUzHjqduoUxBXwVb1QDiQRubJ4=;
 b=ZLtKIj23KRm5B46UfweX8ZhaSU9VBqX2T2ROQaMUW6D97QJyB5Hetyko
 ngNmC2k3EbSn1tRk/SBbEoX9Ki8svR+wSa0/6bGjL29SAxlgWQCLgytX2
 +pg90LtBqZxwY7fMWOjRtX4u5NN51nXgiRv+b6fzSYU4M3Jpe7SZqDROE
 /uzMMm6c3tr0GmsmO6g7Suc0SeCrwYYNAgD/9s+LVkx8XK4pZa5x02gQd
 WMc97JxRLOOuXdXXNb8r2oDu07qAy90iqG/T0hnG2R5/wFdN0rpV8j9jt
 X60EPAcbSlErm6BQh/cvjLsXitnWHdmPWZ6iKgwDU6DxSvpenPe4XUA47 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="373752956"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="373752956"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:39:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="706915530"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="706915530"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2023 01:39:06 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 14:07:37 +0530
Message-Id: <20230804083737.3844575-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230804082852.3842668-1-suraj.kandpal@intel.com>
References: <20230804082852.3842668-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On checking DSC1.1 Errata and DSC 1.2 spec the current formula
we were using was incorrect to calculate first_line_bpg_offset.
The new fixed formula is derived from C model.

--v2
-Use clamp function in linux/minmax.h [Ankit]

--v3
-remove linux/minmax.h header

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9d76c2756784..e4c395b4dc46 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -80,13 +80,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
 	int qp_bpc_modifier = (bpc - 8) * 2;
+	int uncompressed_bpg_rate;
+	int first_line_bpg_offset;
 	u32 res, buf_i, bpp_i;
 
 	if (vdsc_cfg->slice_height >= 8)
-		vdsc_cfg->first_line_bpg_offset =
-			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
+		first_line_bpg_offset =
+			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
 	else
-		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+		first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+
+	uncompressed_bpg_rate = (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2)) * 3;
+	vdsc_cfg->first_line_bpg_offset = clamp(first_line_bpg_offset, 0,
+						uncompressed_bpg_rate - 3 * bpp);
 
 	/*
 	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
-- 
2.25.1

