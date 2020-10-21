Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A32294D9F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8975A6EB8F;
	Wed, 21 Oct 2020 13:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D79B6EB22
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:41 +0000 (UTC)
IronPort-SDR: z47lDi3J2nPn3VykgOIvSZu6RdP5m+DKHaXzI75c1hyApPbgTeSjjJlJTZJ7fuHDVW9s3hmJhv
 OzP6WwW1hvNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317799"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317799"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:40 -0700
IronPort-SDR: AZQnXDSm28AYDkVmfyT92vd/n72KZG2IJhLqPQpw1QaV4LvPxn/RueIaamUkghb9jUvP9H3ka0
 oOIjiEHIhW3A==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372578"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:40 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:10 -0700
Message-Id: <20201021133213.328994-16-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/18] drm/i915/adl_s: Re-use TGL GuC/HuC
 firmware
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
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 037bcaf3c8b5..f1ddd01e49d3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -48,9 +48,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * between 33.0 and 35.2 are only related to new additions to support new Gen12
  * features.
  *
- * Note that RKL uses the same firmware as TGL.
+ * Note that RKL and ADL-S have the same GuC/HuC device ID's and use the same
+ * firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
+	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 5, 0)) \
 	fw_def(ROCKETLAKE,  0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 5, 0)) \
 	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 5, 0)) \
 	fw_def(JASPERLAKE,  0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
