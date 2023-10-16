Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603A67C9EB1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 07:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9307D10E118;
	Mon, 16 Oct 2023 05:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A95E10E116
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 05:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697434007; x=1728970007;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ggXYrEEqmPZbKvL1rE+39KFGR2rdLiG4vx/WqUeTiT0=;
 b=QRod5wcn1Z88SI0CU2nVpRXAikc0HniGzPU1QgtUhXx1qjz6IZdcTnEN
 5BlzySKSEhBtcSYKV8YNwn4G1ODBAXuJXly2fEHxDq4NmCf/NHwXY3FPh
 F5oetwpWlYt9BJn2uLAi94Eag6eze5OP2RTCJTEZGoSOM6rb6wHQOkL65
 3PzaimuMWFI9rmRlFMAJxoO1Tn5y9pt/yup33FlOoGve2GCaX23G1+D7o
 n9QQxJujnDKPr5PG/aLXTVmHBUs0az/uSTtXaH8dxluCM6v0eR71gTlFH
 gQMZM+XmDQ0bdguQ+4jYt7uV3ZHofibwwEJyK/ZdtRv8RHrKVxkH3LfXI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="382673620"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="382673620"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759262707"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="759262707"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 10:50:38 +0530
Message-Id: <20231016052038.1905913-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
References: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/vdsc: Remove old comment about DSC
 444 support
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

DSC with YCbCr420 is now supported, so remove the comment mentioning
support for only 444 format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 708c6d4da0a2..a6f15a51e82c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -123,7 +123,6 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 							vdsc_cfg->slice_height - 1);
 	}
 
-	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
 		vdsc_cfg->initial_offset = 2048;
 	else if (bpp >= 10)
-- 
2.40.1

