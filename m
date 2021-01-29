Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D065E308C64
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0E06EBA6;
	Fri, 29 Jan 2021 18:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FE56EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:29:58 +0000 (UTC)
IronPort-SDR: OqeCILNHU6dOkrT6GTRmayMCUDLfANLshugliLlFVuAZr/VuabSJYfx7/dz9irDTwxBjdVy3gO
 X0cr0JKqmolA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131275"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131275"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:58 -0800
IronPort-SDR: 2y81AsOgM+m5ZQbHOA8D5Y0TrXAmFPPw+dVZqPJB0tPVh0ejG3PobFyhKeoRVjKplVXP+Hopt7
 IH2lBYqHe0gQ==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952923"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:57 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:40 -0800
Message-Id: <20210129182945.217078-4-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/adl_s: Re-use TGL GuC/HuC firmware
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

ADL-S, like RKL, uses the same internal device ID for the GuC and HuC as
TGL did, making them all firmware-compatible.  Let's re-use TGL's
firmware for ADL-S.

Bspec: 50668
Cc: John Harrison <John.C.Harrison@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 67b06fde1225..984fa79e0fa7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -44,9 +44,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * List of required GuC and HuC binaries per-platform.
  * Must be ordered based on platform + revid, from newer to older.
  *
- * Note that RKL uses the same firmware as TGL.
+ * Note that RKL and ADL-S have the same GuC/HuC device ID's and use the same
+ * firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
+	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
 	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
 	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
 	fw_def(JASPERLAKE,  0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
