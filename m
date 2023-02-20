Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108369C98F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544C210E682;
	Mon, 20 Feb 2023 11:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA1B10E69D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891737; x=1708427737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wEbartQJG6EnSdiZ/loVA5GFj+SqQ6KNgaCHJPRwpHk=;
 b=iDauVNVUkmEOwyOhLSxt5XAjl7MfeYnKY3xs+cwdPbJmC+iG5/wrNdWk
 MYqyBKTeZXc0BziA8IbdLhnEGd6SG4+g571mNk43pNWPML1n/+xLvlOhH
 kaKNPEUD+PCG4GGCsU2PI64Et/DoOj+ujoZBE8izb17JvkiUmCDEG5/Ue
 yUMJETof8yL77ptdrmGXtZUVYCtFm3wgLHvSfpJ5StQXC6k7UEolEgPPF
 o8AooYhEb8tg1c00pp+1QxN8MNr2tvwohdfGFO+ZihTZnQIiSIiF/MLxk
 AawPoQyLlwVMc8niF9eyOCbeJHjT9Q5YDI9r/cU3U7LLi4EbtRs+vXfVT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061796"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061796"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013125"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013125"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:29 +0530
Message-Id: <20230220111232.3383820-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/14] drm/i915/dp: Avoid DSC with output_format
 YCBCR420
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
index 311ffb7cc3b3..58e7e0b1c49d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1631,6 +1631,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

