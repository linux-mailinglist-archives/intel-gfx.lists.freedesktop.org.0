Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D30C61ED39
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:44:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B804A10E248;
	Mon,  7 Nov 2022 08:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE5F10E232
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810652; x=1699346652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CHElOKlvI9aJKKSj00UzoTQ69+47NqB4XfJxNBy+ix8=;
 b=Zz+QNhcPOncHU8YmIEKRK5K8Wt/Wsg9x/usED/wBojaTiiimLZdIMajq
 SwweAhafi15of/dAtUT8mSKRHGBpRkh445OVe2RhaASVTX3TBfV/oQl5Z
 uUEu+xv6tpa/lUx+2x1VNeqal3vs3wuvq+sAFhL1U7eoXaV8G1/JTzoNr
 Yrxb20UPrBO0OJ3cST2N+xCycZx9lhnf9/P+quSezYl8EGdvrsxGyE4e0
 ylTZv3BiKtcMKD04DsDwEPHBDa2ZF9U23/cmSekj4KXe4aLiWlCZOxfUu
 wmi8MguCRjbJBE7rSXGz260B68exGWUNIVb0Yh+w5fQzLkS4cka6f0MPe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311495192"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311495192"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:44:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="778406285"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="778406285"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2022 00:44:10 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:12:57 +0530
Message-Id: <20221107084258.1353210-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084258.1353210-1-suraj.kandpal@intel.com>
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
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

