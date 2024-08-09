Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3927F94CF76
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 13:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABABE10E8CD;
	Fri,  9 Aug 2024 11:44:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4HxfFU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002D510E8CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 11:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723203845; x=1754739845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x+hUGpyUN0R/ZK8VB4rbYOr+y1kd1CfodkeVGPgiZvs=;
 b=e4HxfFU8aoNo00i0tc9UgFZw7VbI4/R4EHeJWSMZCcPOhEgxRraoaJeQ
 Ln+wYiyJhLYfZKXjg4Ud1XrpwG37xE+oZToMRMr6pe5QTOPxOMKdwln8s
 2J5blaxNIUCnMWjFYLYPFOVgwFDNZ97r/C2+ugtzFHqTh+ZbY9DhJNgLM
 na97aKzFqWva4fORerORmz/isFyo1dbeAwnoal+mN1JPZFYrDauEiIUtz
 UlAoYrkVBTOvuDds99PK0gduv0ZvzOvLmARV3GOSB4iBgzePzRqMVv4PY
 i3EWGtLKsDnU3RENrO2eAWRespg/o8friY0rXqt5+7dDL+jOQkt70TLze A==;
X-CSE-ConnectionGUID: YeilpdmzTWK2wzZcqsZxag==
X-CSE-MsgGUID: GoP6IHZMRPSVlLZPysrIdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="38879765"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="38879765"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:44:04 -0700
X-CSE-ConnectionGUID: v4z6bw30S5ahTV6NjQtVZw==
X-CSE-MsgGUID: vb6s2DLjRTSKN129c3n9nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="61662887"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 09 Aug 2024 04:44:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
Date: Fri,  9 Aug 2024 17:11:28 +0530
Message-ID: <20240809114127.3940699-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240809054424.3938842-1-suraj.kandpal@intel.com>
References: <20240809054424.3938842-1-suraj.kandpal@intel.com>
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
ends up giving timed out errors. We only increment the cp_irq_count
of the primary connector's hdcp structure but here in case of
multidisplay setup we end up checking the secondary connector's hdcp
structure, which will not have its cp_irq_count incremented. This leads
to a timed out at CP_IRQ error even though a CP_IRQ was raised. Extract
it from the correct intel_hdcp structure.

--v2
-Explain why it was the wrong hdcp structure [Jani]

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

