Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29601610D8D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C9A10E7BD;
	Fri, 28 Oct 2022 09:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87F310E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950239; x=1698486239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SoQ9y0/h0H0sBWyV2oEXqypbKJ/gC2dHUXtRaDBY+mU=;
 b=izMVy5KRKhenqXaheZ8xufS+m3cuBoNeUssa8lXOuMq3s8hDv1Jo7Gpb
 Rz6QwS3DLTa5nPSFbNMK2bEmDlhXwK5UKulScQRCKxflrcN0dhQV1miGb
 yLx2j5hmsf5AEP103k1SRzNsKu8xAcsPree3lGRzNs3EGVhvrroLvTO66
 LhqS2HWY676AOx3gnq9zpkQqsQ97lwA5b/+apnV0EydfpsHGC3MAHg2Vs
 jmM8UWouRj8kELxZoeaWW9CvOWftkcQh6jnpyQz4dnFGHJssUBNUD8dBu
 1uRha8SSZnwiKoVvuzcVZknZ9S6YXub0p5QQy+SD3G94h9fkncfraE6z6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335094678"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335094678"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758026604"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="758026604"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:14:08 +0530
Message-Id: <20221028094411.3673476-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/9] drm/i915/dp: Avoid DSC with
 output_format YCBC420
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

Currently, DSC with YCBCR420 is not supported.
Return -EINVAL when trying with DSC with output_format as YCBCR420.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b9ef59882a90..4ffb470bcadc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1491,6 +1491,10 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	/* Currently DSC with YCBCR420 format is not supported */
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return -EINVAL;
+
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
-- 
2.25.1

