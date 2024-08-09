Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B0D94C9CA
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 07:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA8610E00F;
	Fri,  9 Aug 2024 05:46:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFlrUeri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D3410E00F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 05:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723182411; x=1754718411;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jYN2/2J7BB2fVR+NP379y9ft+znMP1geqT1ptH+DaLo=;
 b=kFlrUeriuTCzZMJOaJMJGeYIkRj/zvxDMNtaBScALaeV+5serCYeYfei
 36W2rCIJSWXPyLC2VwFPUg9TZtvxyXNON0MkjrBo20ik8tj9hL7kkT2rK
 RFzPA4Pj54hEcFgZq99MfYxswtWv2FO+U3H4knpkPEzELr9uyxsCrEYxJ
 ax9K4bXYkm3w8zfP/K2n0xgwwai9LNvPM7PuA/CQJPMBhxhIZg3xjilVt
 m+eiqyble/+9dp+0v14efv2DQSi6phKUSBZALazMpogzzrox2U4kZ4kUD
 +gyBPLkMjcSEk1JzOEbz6odVBZ816LDKxaQG4PdVBfJvdKDhyiwJFL2tf Q==;
X-CSE-ConnectionGUID: pZKdJqAORY+j3fjf/dSeHg==
X-CSE-MsgGUID: W+2tVIDHRHuAliatvFh3Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="25213072"
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="25213072"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 22:46:51 -0700
X-CSE-ConnectionGUID: ZMJthTv2TOiiEr8Ff1BwyQ==
X-CSE-MsgGUID: IovFqKAASmKnoNF8PFXQPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="57376151"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 08 Aug 2024 22:46:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
Date: Fri,  9 Aug 2024 11:14:24 +0530
Message-ID: <20240809054424.3938842-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

We are checking cp_irq_count from the wrong hdcp structure which
ends up giving timed out errors. Extract it from the correct
intel_hdcp structure.

Fixes: 8c9e4f68b861 ("drm/i915/hdcp: Use per-device debugs")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index ec357d2670f1..3425b3643143 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -39,7 +39,9 @@ static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
 static void intel_dp_hdcp_wait_for_cp_irq(struct intel_connector *connector,
 					  int timeout)
 {
-	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	long ret;
 
 #define C (hdcp->cp_irq_count_cached != atomic_read(&hdcp->cp_irq_count))
-- 
2.43.2

