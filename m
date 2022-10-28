Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F53610F86
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C47310E7F9;
	Fri, 28 Oct 2022 11:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9828F10E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955904; x=1698491904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4F6Ek38zxV4X3e6/VuuLmo11mfOyZKZgFkS1KVlzWsU=;
 b=EY382O1GnzpViWkwnYyOp1eTu+gp9clkGCiAlLMXwplSHvnutTFgF65m
 urZKrNnljdPRDIy3SA07j0RU9R3RsKfYxvc/jNazzql6IfuSoZHgLuMxe
 MLGyIDI2BgP6SQgluyFoealrNVqDXGjzS/u9uTxBQSwIScwK8wW+S8lQf
 Mx/jlLVzrsX7MpERwDIfMT7+1kl5t6oEQkCwNAQo9osNEguvRdqiyQ4TL
 8oIy4z0bHRVpBiHi3DpggKE0gMBrlotwk8P4oNx5595sTVGGAjSuc/HJq
 tIdyxz3+ILXXRpbixVZkWPb0+wSOKtrPSjH7gnHLayR5/BgH/eEn/tPiA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534674"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534674"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701541"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701541"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:23 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:52 +0530
Message-Id: <20221028111953.12552-8-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
References: <20221028111953.12552-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/dsc: Allow DSC only with YCbCr420
 format when forced from debugfs
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

If force_dsc_ycbcr420_en is set through debugfs allow DSC iff
output_format is INTEL_OUTPUT_FORMAT_YCBCR420.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b7b7b40ce7ff..4e7f0fc4a3cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1507,6 +1507,9 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
 		return -EINVAL;
 
+	if (intel_dp->force_dsc_ycbcr420_en && pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
+		return -EINVAL;
+
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
-- 
2.25.1

