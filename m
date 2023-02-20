Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D469CAFB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C684D10E684;
	Mon, 20 Feb 2023 12:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F8B10E684
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896022; x=1708432022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xy+eEeFJO+18aiz68jcEbfWCWYeZGHCMgEFyYSRxJHM=;
 b=EkOYqpSBREwD/04tnZD8i1+PypeRSKUJ6iZU3KEQk3mB9tguMg1gu2eH
 HClZ30ZxvOxLW5nkUQbdhGpve+Js7UjeRF0WDxK9CNhtDeLc6xbOf54nL
 wUFsFrxz3t9W1nfAAtTM/uRzdrNj9ytAcLIW/HF2xIa1GTCGKdS96GisD
 FFyOLgJkPhJgk3OdgabqYdKBKD/Arl3MD+uRze7JiIYMPPp4yUXemtyQP
 JGQae+PSKIJwW2UXvehA2tej6oxbgzIVm39qGIDXGjvAVZYvN+h3twhTe
 2HuSeuQerZrAaW+N/A+qjoAq21NAwARqJd3gmv8Tv+Gf4x36FT12h7+Yl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073463"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:27:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142111"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142111"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:27:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:58 +0530
Message-Id: <20230220122401.3495507-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 11/14] drm/i915/dp: Avoid DSC with
 output_format YCBCR420
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
index a2baec2f7b03..74293f23dd67 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1643,6 +1643,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	/* Currently DSC with YCBCR420 format is not supported */
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return -EINVAL;
+
 	if (compute_pipe_bpp)
 		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
 						    conn_state->max_requested_bpc);
-- 
2.25.1

