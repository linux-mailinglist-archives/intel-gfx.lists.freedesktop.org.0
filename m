Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF7F784080
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636EF10E348;
	Tue, 22 Aug 2023 12:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B5310E346
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706443; x=1724242443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oXYx9sVSxUuQQ0cM2hjY1po81iWugswWX/8wlc333ns=;
 b=MBnmA1wR7eJVJpEWBRVkRGLg9gttsnN0yIa0YHcvxaqq3wKPgG3qPRxF
 j0iWK7YLswIVNQG4pJrkQbyrj0kfzFumtIMBykdoLFwJ1h54ZcJTvPtxY
 lhS59gRWsdR3ZVVU3Bj9AF6YO33769NpkPE+kLCzpJeJVni9EFPTBkmyy
 adZOPk7T9E09Do4PGH+ZuxHhIRqgFpYQDXgWRvrY9RsEiYkA9Fd7QSO2k
 ldqHXJfXrdBtUEEEeGEEbxDdGM6iJk54wV+svyDS4yLcXTA2VfVgATctb
 Ke0QVAHDsNjM87sD5i07xgGwSU7zFSD27Hbr6lJMxC7lR6e1/zGq3/WCZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230339"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230339"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:14:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335313"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335313"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:14:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:33 +0530
Message-Id: <20230822121033.597447-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/dsc: Allow DSC only with
 fractional bpp when forced from debugfs
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swati Sharma <swati2.sharma@intel.com>

If force_dsc_fractional_bpp_en is set through debugfs allow DSC iff
compressed bpp is fractional. Continue if we computed compressed bpp is
computed as integer.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 011bcfe2ecc5..9098febf0c07 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1905,6 +1905,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	for (compressed_bppx16 = dsc_max_bpp;
 	     compressed_bppx16 >= dsc_min_bpp;
 	     compressed_bppx16 -= bppx16_step) {
+		if (intel_dp->force_dsc_fractional_bpp_en &&
+		    !dsc_fractional_compressed_bpp(compressed_bppx16))
+			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
@@ -1912,6 +1915,11 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp = compressed_bppx16;
+
+			if (intel_dp->force_dsc_fractional_bpp_en &&
+			    dsc_fractional_compressed_bpp(compressed_bppx16))
+				drm_dbg_kms(&i915->drm, "Forcing DSC fractional bpp\n");
+
 			return 0;
 		}
 	}
-- 
2.40.1

