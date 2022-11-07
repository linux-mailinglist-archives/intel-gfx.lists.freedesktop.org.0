Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6561EC44
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8C310E24C;
	Mon,  7 Nov 2022 07:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C9E110E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806838; x=1699342838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CHElOKlvI9aJKKSj00UzoTQ69+47NqB4XfJxNBy+ix8=;
 b=I8Bxit6PFDMsoFu7G0cbuRMB1hAtOfuarD8v19BGAB4B33xjAM5C7AQg
 okNcZNNTx6YDUsn/m6Jw6S7XBA2LUGSDlM27KTkV7fHRt1ySHVLwjs5jO
 aRAlrUKJ5TQOoD2xYyChdAz0O7eskmol+/PYOSX9ZKcQGbbg4IL5qzZ7K
 TzuuGByyITUeSMhLJCMCCkEZV0XDmgnHO6V8AlPCPN9LuG8X80faC758p
 kMgHYp8idVJy2xLM2IlVyt0ubq1LHj2RgGU4MO1SegpTIA1WWJ2+rfZkK
 HZjD2OsvMTJUND5amR1HzS+XxXklt6kP3W3zUOb7bjsRxMhL689J3aLFP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311482346"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311482346"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:40:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965051654"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965051654"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 06 Nov 2022 23:40:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 13:09:22 +0530
Message-Id: <20221107073923.1353049-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107073923.1353049-1-suraj.kandpal@intel.com>
References: <20221107073923.1353049-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 7/8] drm/i915/dsc: Allow DSC only with
 YCbCr420 format when forced from debugfs
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

From: Swati Sharma <swati2.sharma@intel.com>

If force_dsc_ycbcr420_en is set through debugfs allow DSC iff
output_format is INTEL_OUTPUT_FORMAT_YCBCR420.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b7b7b40ce7ff..4d2314c10d2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1507,6 +1507,10 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
 		return -EINVAL;
 
+	if (intel_dp->force_dsc_ycbcr420_en &&
+	    pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
+		return -EINVAL;
+
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
-- 
2.25.1

