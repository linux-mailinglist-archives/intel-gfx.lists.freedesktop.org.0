Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1AE7727B8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 16:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23A810E297;
	Mon,  7 Aug 2023 14:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E8910E297
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 14:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691418569; x=1722954569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dyyu+xHqucddswJSyrU2JtJoHGGRXE0JWCZYkqC6BsU=;
 b=hQJ7vbnd4llyodX63Q3HEQcwlu/3qZW0AkSs566gZ93vHEfUs9ubUNO5
 aysTbtHIBfUUlDHLrTn7FvDU2Ltr1yWj7IJB+hoDFQ/+mqiWle6Bw6JS1
 zAxdvd5vVZzZUaJiSRHYh9fZzquBpuWLkDM9R/4gEbmfDNBTz9U5Cdji0
 0FzZ9c6WJTlEwUqdVEV0jnBS7AvbnfIyJhIK0d9RgRr1FWWO4Q79SUaqW
 8jzbyH10dMO/7+zvqk/XzjoBgh6wUVPc3AgsprlC8vyWdC1C/4d5uUj/O
 6ArnH7Xckwm4fiCnux6UoKLBXW9tYcfJgu+tY0U5PG17dcGVrzo6kdqEf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="456939120"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="456939120"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 07:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="796341295"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="796341295"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 07 Aug 2023 07:29:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Aug 2023 19:57:54 +0530
Message-Id: <20230807142754.3891787-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI
panels even though we already use calculations from CModel for
first_line_bpg_offset.
The reason being some DSI monitors may have not have added the
change in errata for the calculation of first_line_bpg_offset.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index f7ebc146f96d..2376d5000d78 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1585,6 +1585,11 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
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

