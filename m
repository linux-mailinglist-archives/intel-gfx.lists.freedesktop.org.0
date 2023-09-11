Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDA979AB13
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 21:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C6A10E1BE;
	Mon, 11 Sep 2023 19:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F6210E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 19:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694461163; x=1725997163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZSUYZy1zCEWTbT4oL6zreiwLZFDx53BKNSbfoHShwks=;
 b=YhODV3CmxOUO3/zeRMcHSjbdgevzQCd/Sd/WGK91F7q2lSZLRvUYSTVL
 396aziUciiQMUpEdYe3yzYRatVLyuLBsNTURulGf4Wcq6qmYWZtKeHCTJ
 Sqcj+lVYnLLQJ2TzjFaTGZENdo/aQVTZxYhSEbTRfAQCK9p7mdSR9DjE0
 fGUzGVdlCPGM9Tx2OIgHDUuaoLECrFiKhF070+V5DHWGcSs9aH8f/Ikn2
 hxEcigs3/1avTqeoZbXmJlmiT2G05+pLRZfHI/NG8BZsDrCpEKNISwoQG
 dgSUdfhGMpvsggk8otNBe4wRtNBcpaE/2CbRfpOW/rFgDkUyNOQTTlFhM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="368441671"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="368441671"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 12:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="778505857"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="778505857"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 11 Sep 2023 12:39:20 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 01:07:43 +0530
Message-Id: <20230911193742.836063-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230908045538.806063-1-suraj.kandpal@intel.com>
References: <20230908045538.806063-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Fix pic_width readout
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

pic_width when written into the PPS register is divided by the no.
of vdsc instances first but the actual variable that we compare it
to does not change i.e vdsc_cfg->pic_width hence when reading the
register back for pic_width it needs to be multiplied by
num_vdsc_instances rather than being divided.

Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config function")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 5c00f7ccad7f..6757dbae9ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -879,7 +879,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	/* PPS 2 */
 	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 2);
 
-	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK, pps_temp) / num_vdsc_instances;
+	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK, pps_temp) * num_vdsc_instances;
 	vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PPS2_PIC_HEIGHT_MASK, pps_temp);
 
 	/* PPS 3 */
-- 
2.25.1

