Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33577B914
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 14:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DFD10E1E5;
	Mon, 14 Aug 2023 12:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2764010E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 12:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692017668; x=1723553668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X94uWkImNyA0jSzH0PJOv03HUZC219163g1f4T+dUaM=;
 b=ehh3VukQCpLpegnZnIal6mZBlEljLai1jRBtcW4J268wPXIp+TjvJJhq
 8c2CxVm9GIzU+9XSOBUrkhR1UmgzwiUryYzcFY5bLruftLJahhitaT8Z/
 e2J3NQM/a5RmsCL8O1eP6g1AHVdmtlRtf9kng4/a5Ha4GnzFfLyL5GJAC
 +jpPl2RLzFPbQ2zFaXhF2A7lOaifnguJ6kBIluB6/D6vvba+L1ADotRHq
 aAvRuE9IcYY14UvoFj8CPikEJApvpNSmxkQINp6MtZsc7J289z82l0WNz
 hzSIcDiDVgUWLvJM9BKBGpAoOL2uLIHwj8gh+n8bQ/KUfIS/unTzW6KTY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="375736943"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="375736943"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="727011594"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="727011594"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 14 Aug 2023 05:54:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 18:22:42 +0530
Message-Id: <20230814125241.234238-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230807142754.3891787-1-suraj.kandpal@intel.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
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
Cc: william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI
panels even though we already use calculations from CModel for
first_line_bpg_offset.
The reason being some DSI monitors may have not have added the
change in errata for the calculation of first_line_bpg_offset.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9102
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Tested-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad6488e9c2b2..4646e00187c1 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1586,6 +1586,11 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	/* From Table E-2 in DSC 1.1*/
+	if (vdsc_cfg->dsc_version_minor == 1 &&
+	    vdsc_cfg->bits_per_pixel == 128)
+		vdsc_cfg->first_line_bpg_offset = 12;
+
 	/* DSI specific sanity checks on the common code */
 	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
 	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
-- 
2.25.1

