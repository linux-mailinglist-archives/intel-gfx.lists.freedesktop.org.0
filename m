Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4389EB28D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 15:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAED010E8E4;
	Tue, 10 Dec 2024 14:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WA0YqQet";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D2B10E8E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733839385; x=1765375385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tKaslLnuoq5ReJW4/bhRukChbLoxrOa27R0aThkQM+0=;
 b=WA0YqQetDCux0btRSUKrvwtYmvvG8Lws8fFyTvUN8o6GOf0FydX3CXZC
 RUpkgX0CXDLcdYz1yJ9fno8st178MuwtuV2On7+inNgvF9tTYQ+jyMYaZ
 +ZWLhAqSSmN0fKd5D/wqeiR6FhncN/b+UNlxRQn69iGTsHOkCEtrqW+Me
 ZBUD20oFpjrU1U0l200UaWUM48dgNFGeLilVj6maUqVlAAsGSklS9CMTa
 FRz/qiChqpZMvNj5BY0AtqQtG/jD+xk915micuPHkkSnl6bLZ1pnuaadP
 1Se0qyfmpx6/g/Zgo9c/qoQm7YQF6hQHiiBLNWF9SYjj69x+jeSKDVpbg Q==;
X-CSE-ConnectionGUID: Y3TuYomQQQevWeEoSlfEfA==
X-CSE-MsgGUID: gQUMk2VORn6sApp1hRwqSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34320063"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="34320063"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 06:02:50 -0800
X-CSE-ConnectionGUID: nDGNHKyzTs6HfFKV6Lu5Cg==
X-CSE-MsgGUID: qHB9nY+oR9uIDb7XRO3oPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="96234595"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2024 06:02:48 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Swati Sharma <swati2.sharma@intel.com>
Subject: [PATCH 1/1] drm/i915/dsc: Expose dsc sink max slice count via debugfs
Date: Tue, 10 Dec 2024 19:35:43 +0530
Message-Id: <20241210140543.2117692-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241210140543.2117692-1-swati2.sharma@intel.com>
References: <20241210140543.2117692-1-swati2.sharma@intel.com>
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

Expose dsc sink max slice count via i915_dsc_fec_support debugfs.
This debugfs entry is required in cases, where sink doesn't support
minimum of 8 slices in case of ultrajoiner and minimum of 4 slices
in case of big joiner.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3387
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3eb7565cd83c..4823d27cafb5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1013,6 +1013,12 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 								      DP_DSC_YCbCr444)));
 		seq_printf(m, "DSC_Sink_BPP_Precision: %d\n",
 			   drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd));
+		if (intel_dp_is_edp(intel_dp))
+			seq_printf(m, "DSC_Sink_Max_Slice_Count: %d\n",
+				   drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), true));
+		else
+			seq_printf(m, "DSC_Sink_Max_Slice_Count: %d\n",
+				   drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), false));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
 			   str_yes_no(intel_dp->force_dsc_en));
 		if (!intel_dp_is_edp(intel_dp))
-- 
2.25.1

