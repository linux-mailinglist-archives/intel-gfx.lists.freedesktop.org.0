Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0061EC0D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420E210E25B;
	Mon,  7 Nov 2022 07:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B9610E24B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806051; x=1699342051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CHElOKlvI9aJKKSj00UzoTQ69+47NqB4XfJxNBy+ix8=;
 b=fy8VY9gtCFj40gJMAgDOpUrFfoRMMWEqjSEaE7rQ+N2Hnw8D8gr3ipeI
 a13pmhtvxF8MHrwbyQooxLGJUbNeaD+551PnbSYg7dZVzshFlaX38Kjyu
 uqDZepPODuY4MKo1GjrMkLM6+pzd12I7u+YNy9m7QSlCn8X8YudwQyNGY
 3xWwgxz86/cGYKPivqFUX8ED8MJeAlJGf58s0fL7O0jWHDVZCLWdv5rT2
 MYOaTf4dzzPd3hpsTqPxujbGEL3NnbrgoiOLSgF9c8DTYfVWUpko+VoED
 +C35p+uT95Ul+ry+2AYMXgS1/ZRd4gXEBEsUE3JDhsBZbX6OMqcChSHg8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311479968"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311479968"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:27:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="880962051"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="880962051"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 06 Nov 2022 23:27:29 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:56:14 +0530
Message-Id: <20221107072615.1352929-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107072615.1352929-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
 <20221107072615.1352929-1-suraj.kandpal@intel.com>
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

