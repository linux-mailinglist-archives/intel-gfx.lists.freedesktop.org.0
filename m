Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CACE76476E6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 21:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D628510E4D7;
	Thu,  8 Dec 2022 20:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA3C10E4D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 20:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670529690; x=1702065690;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=L4q/PGOqkKQFD3lPqBB/KgZIlYTG0sosfP/ZZKOg5q0=;
 b=jtsXmitX/cEK82fjHjD93rI4mTNbPXsxPdS3MGFvRc1CgC/Z10Q/l4zU
 vVGeffBtjeIqOB9bKEQM7Po3RQpYf3fZoPUQORantDBgGk2NeunmzPleu
 kBS98+AwmstXmEBSLDIR3+bwt7H+1IoK/ZvUlOoFncpKGOxadxBFrJ4kC
 1Ahg2xTy2QR1BJ4nKQwL4ME/kY8etxZH6BUX7TyTVJytIS3Tzb0SLj0CO
 X89ZgnUGuoB5xjC3zMd6li6BRXJHDoNhcWSd+ebTzzSb461/R/msX7TRx
 Feqyo1d//OWQtJYLD6pj3XvqPVTIlRlh9OkrxzbJN8oAxUSFiUFlS6oae w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317301798"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317301798"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597480174"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597480174"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:12 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:05:17 -0800
Message-Id: <20221208200521.2928378-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
References: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/6] drm/i915/gsc: Skip the version check when
 fetching the GSC FW
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

The current exectation from the FW side is that the driver will query
the GSC FW version after the FW is loaded, similarly to what the mei
driver does on DG2. However, we're discussing with the FW team if there
is a way to extract the version from the bin file before loading, so we
can keep the code the same as for older FWs.

Since the GSC FW version is not currently required for functionality and
is only needed for debug purposes, we can skip the FW version for now at
fetch time and add it later on when we've agreed on the approach.

v2: rebased on uc_fw version struct changes.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> #v1
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 29 +++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 1d6249d4b8ef..78ab60c07a2b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -655,6 +655,26 @@ static bool guc_check_version_range(struct intel_uc_fw *uc_fw)
 	return true;
 }
 
+static int check_fw_header(struct intel_gt *gt,
+			   const struct firmware *fw,
+			   struct intel_uc_fw *uc_fw)
+{
+	int err = 0;
+
+	/* GSC FW version is queried after the FW is loaded */
+	if (uc_fw->type == INTEL_UC_FW_TYPE_GSC)
+		return 0;
+
+	if (uc_fw->loaded_via_gsc)
+		err = check_gsc_manifest(fw, uc_fw);
+	else
+		err = check_ccs_header(gt, fw, uc_fw);
+	if (err)
+		return err;
+
+	return 0;
+}
+
 /**
  * intel_uc_fw_fetch - fetch uC firmware
  * @uc_fw: uC firmware
@@ -724,17 +744,14 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	if (err)
 		goto fail;
 
-	if (uc_fw->loaded_via_gsc)
-		err = check_gsc_manifest(fw, uc_fw);
-	else
-		err = check_ccs_header(gt, fw, uc_fw);
+	err = check_fw_header(gt, fw, uc_fw);
 	if (err)
 		goto fail;
 
 	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC && !guc_check_version_range(uc_fw))
 		goto fail;
 
-	if (uc_fw->file_wanted.ver.major) {
+	if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
 		/* Check the file's major version was as it claimed */
 		if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
 			drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
@@ -751,7 +768,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
-	if (old_ver) {
+	if (old_ver && uc_fw->file_selected.ver.major) {
 		/* Preserve the version that was really wanted */
 		memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
 
-- 
2.37.3

