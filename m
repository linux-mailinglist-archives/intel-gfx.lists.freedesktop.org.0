Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B06226C5B5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A63B6EA91;
	Wed, 16 Sep 2020 17:17:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF306EA83
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
IronPort-SDR: ocLE4mP+de57bka98X4A+zCwC3O3k8Q0zpq4T58sQzz0aHRekbaKfme0CKaj94o/KT+fOhwxPP
 KdDtksifkXeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534279"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534279"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:55 -0700
IronPort-SDR: nlUMKHFejOoo8R9U+opkCogz7P5BSZxghcYSwxg/nUnlNjs5M4aCRWm+6SwrGliDRo3uB7Nn16
 8gWjUu5fThDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259458"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:55 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:50 -0700
Message-Id: <20200916171653.2021483-10-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/guc: Update firmware to v49.0.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Note that the GuC major version jumped from 35 to 40. This is because
the v40 firmware included a significant re-write of the API. The 'new
GuC API' patch series is required to make use of command submission
with this new GuC firmware. Versions 36 through 39 are reserved for
updates to the v35 code base.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 1928ce94faf8..ee4ac3922277 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -44,23 +44,19 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * List of required GuC and HuC binaries per-platform.
  * Must be ordered based on platform + revid, from newer to older.
  *
- * TGL 35.2 is interface-compatible with 33.0 for previous Gens. The deltas
- * between 33.0 and 35.2 are only related to new additions to support new Gen12
- * features.
- *
  * Note that RKL uses the same firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
-	fw_def(ROCKETLAKE,  0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 5, 0)) \
-	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 5, 0)) \
-	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0), huc_def(icl,  9, 0, 0)) \
-	fw_def(COMETLAKE,   5, guc_def(cml, 33, 0, 0), huc_def(cml,  4, 0, 0)) \
-	fw_def(COFFEELAKE,  0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,  0, guc_def(glk, 33, 0, 0), huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,    0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,     0, guc_def(bxt, 33, 0, 0), huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,     0, guc_def(skl, 33, 0, 0), huc_def(skl,  2, 0, 0))
+	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
+	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
+	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,     0, guc_def(icl, 49, 0, 1), huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,   5, guc_def(cml, 49, 0, 1), huc_def(cml,  4, 0, 0)) \
+	fw_def(COFFEELAKE,  0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,  0, guc_def(glk, 49, 0, 1), huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,    0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,     0, guc_def(bxt, 49, 0, 1), huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,     0, guc_def(skl, 49, 0, 1), huc_def(skl,  2, 0, 0))
 
 #define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
 	"i915/" \
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
