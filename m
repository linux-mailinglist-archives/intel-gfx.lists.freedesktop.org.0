Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93516CF0FB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 19:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DF810EBC7;
	Wed, 29 Mar 2023 17:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC4610EBC7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 17:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680110678; x=1711646678;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGdUji46jKniKRmmjfjWSL5Aj21Q1qiyZGLrBLg0+LA=;
 b=GbwnzCBZUHHU59rfs7txH5jketqmNBodG+G6O7xl2uOTSf4HHxnTneVc
 fGp6aCwa4NlXAz/FYqigXOX1qab/9/hkp7T35CWT8iayLzm5f/xAuBnEl
 w/EilhZcy77IFpVyiNXG1lFXfn3JPPyhZvdusEQYM3YzHynqmSjKyMyXM
 3u7HlU6JCzh3tlbdtIc/D95pBCRvYHZVp8iLlLWlj53o+QE6COSyjOL/n
 iVHV1wMDQs5nM0hfdiU1QOq5pHac+AC+KYlaqKPUVMDMYxL2dAbgY2p13
 zcQtbLhl93p53Kc6YQ69D6Ugg+3QF3+wen2oKJVg7vy2AA2CkZcY/sWBg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427221144"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427221144"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="773652615"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="773652615"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 29 Mar 2023 10:24:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 20:24:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 20:24:33 +0300
Message-Id: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix fast wake AUX sync len
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fast wake should use 8 SYNC pulses for the preamble
and 10-16 SYNC pulses for the precharge. Recuce our
fast wake SYNC count to match the maximum value.
We also use the maximum precharge length for normal
AUX transactions.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index eb07dc5d8709..ad0aac707219 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -164,7 +164,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	      DP_AUX_CH_CTL_TIME_OUT_MAX |
 	      DP_AUX_CH_CTL_RECEIVE_ERROR |
 	      (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
-	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(32) |
+	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(24) |
 	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(32);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-- 
2.39.2

