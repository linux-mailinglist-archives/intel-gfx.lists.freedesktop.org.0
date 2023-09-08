Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F09798162
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 06:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C37B10E863;
	Fri,  8 Sep 2023 04:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDC410E863
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 04:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694149032; x=1725685032;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Zy9/zgfZ3C1OXzgtse2uKhHhder/2VxTfObJR7t4mQ=;
 b=ki18dPeiUIGLZ2B77WJqT39zWoz9i1h9FZaJ2HtnBYNZTlWAfPusaKSu
 fzG6n8W6Xrd6q30II23tiNMuTdvpP3MkeyohYox4tX0t9SnP/YzRptwLK
 ITFaUouStnx9u3FJXKaL7D4GF5Bow+yyZEBvSNsWN3ROxUIxwo1KblHC+
 mo0Qe5dZxJAZ4Swtz0YgWoy+hd/Zn2Vfb1V6l2ZrrmR8NWGC31t//IeMx
 UG73RqqSqZsMzAGCMNUPwlz1I6mOktWz2RJa+ZxeXVJAyRwEANYWLJXxk
 QLtCzh/IIot7Hbky9NXoLMgnNYajkUjnBp1SBlUHcEf1cAzCrmspa10DF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="374942789"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="374942789"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 21:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="745473654"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="745473654"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 07 Sep 2023 21:57:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 10:25:38 +0530
Message-Id: <20230908045538.806063-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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
index b24601d0b2c5..2d4279df9521 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -883,7 +883,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	/* PPS_2 */
 	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
 
-	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp) / num_vdsc_instances;
+	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp) * num_vdsc_instances;
 	vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PIC_HEIGHT_MASK, pps_temp);
 
 	/* PPS_3 */
-- 
2.25.1

