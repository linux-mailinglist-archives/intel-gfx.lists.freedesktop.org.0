Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8560D6A39FB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BFE10E1A6;
	Mon, 27 Feb 2023 04:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF85E10E167
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470775; x=1709006775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YcJS0t/LvBbaxEODJQf8n4EZxz9sdo4+2rMqdRw+6Ao=;
 b=PxxaaRZ+zC2icuijJGB8WMgJzc59OE+0t/qY73ryjXdsbGir6Re4C59O
 TVuylfQRjdFuaV/OgRXTGBP5B5MGo92vuauwfU9HJqII5Adxcb2dFj2EM
 nSvzXtUXGQE1BA7QSgKoYKSvjiMLu4PFlF/XrZg7Ekyu/O9kiSC3qp6br
 91SA8XBM96MyV0167b4yjVo+1x3P1EitVLWqMZhXuG4StpLCxXG9wo+G2
 vnscvbU/p1JVC+z82AhY1X6zaAubw/QjMYTe8Q61n4hZob1m27WKMCNZ7
 F6SlS5PpSs/8MqwD5yZlppUbwxRC1xXbFKsrvWo54ANHZj+6jlaQzN1Cq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251401"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251401"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783147026"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783147026"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:21 +0530
Message-Id: <20230227040324.130811-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 10/13] drm/i915/dp: Avoid DSC with
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
index 38ca6f676cb2..2b4b6849397a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1640,6 +1640,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

