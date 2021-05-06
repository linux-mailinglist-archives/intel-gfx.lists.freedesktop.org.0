Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36983375AD9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8B46EDC7;
	Thu,  6 May 2021 18:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7876ECE4;
 Thu,  6 May 2021 18:57:12 +0000 (UTC)
IronPort-SDR: XPAjdNYZTEAPi+pefceHV5zMizI/XKQgvi3nEzxodbzDw3jGjtEUfTKueznM7AucE0yXAu8XQa
 YuvU7H3nAQ9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196531000"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196531000"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:11 -0700
IronPort-SDR: f6l5GwenJGkxYyQfXxMy441nxkrKQjGsflkKfjAiSBFQHhPqO3cxMhBKz5UykjOOG+/QJuZ74B
 IUv4qfUwbYow==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583447"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:09 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:43 -0700
Message-Id: <20210506191451.77768-30-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 29/97] drm/i915/guc: Update firmware to
 v60.1.2
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 25 ++++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index df647c9a8d56..81f5fad84906 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -48,19 +48,18 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
-	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(JASPERLAKE,  0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,     0, guc_def(icl, 49, 0, 1), huc_def(icl,  9, 0, 0)) \
-	fw_def(COMETLAKE,   5, guc_def(cml, 49, 0, 1), huc_def(cml,  4, 0, 0)) \
-	fw_def(COMETLAKE,   0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(COFFEELAKE,  0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,  0, guc_def(glk, 49, 0, 1), huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,    0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,     0, guc_def(bxt, 49, 0, 1), huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,     0, guc_def(skl, 49, 0, 1), huc_def(skl,  2, 0, 0))
+	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 60, 1, 2), huc_def(tgl,  7, 5, 0)) \
+	fw_def(ROCKETLAKE,  0, guc_def(tgl, 60, 1, 2), huc_def(tgl,  7, 5, 0)) \
+	fw_def(TIGERLAKE,   0, guc_def(tgl, 60, 1, 2), huc_def(tgl,  7, 5, 0)) \
+	fw_def(JASPERLAKE,  0, guc_def(ehl, 60, 1, 2), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 60, 1, 2), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,     0, guc_def(icl, 60, 1, 2), huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,   5, guc_def(cml, 60, 1, 2), huc_def(cml,  4, 0, 0)) \
+	fw_def(COFFEELAKE,  0, guc_def(kbl, 60, 1, 2), huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,  0, guc_def(glk, 60, 1, 2), huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,    0, guc_def(kbl, 60, 1, 2), huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,     0, guc_def(bxt, 60, 1, 2), huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,     0, guc_def(skl, 60, 1, 2), huc_def(skl,  2, 0, 0))
 
 #define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
 	"i915/" \
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
