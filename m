Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A07C1642362
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB58D10E136;
	Mon,  5 Dec 2022 07:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F3E10E0F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224011; x=1701760011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PlxvnZdzhkPAFWgHlltB8FNhYfZdL3KJFRezjRiU52A=;
 b=IEVlGibGOUvGs7oOX0eCBCgKp/I8W6P+fnOfsqRD9CFhA/BOaCmbudEN
 rqgd60KABHQSHMYoRBdDNg4SaMuzE2VJ4UAIRO3ekYOJCodlOCkEs/jZr
 OSlvaiIhBqU6TfXPGgRk1eFGtxZ/XvUJPlZa7msKLzBCB4CoouiF58giy
 oCfHHhadIzD0Jx+zaHGdZYYFzYi+Lynv7F59CoQ45HfmzZWmzRjT5SpC0
 ro6jUodprI6T/b/xl1EHS2yloMPVPguLZAPgPui3qKK8bUOpqoULk9qJs
 olWKNTGgIs4pzkCf4ixzoE2uMbIC0zC4T7Z56ByRz5LsFizG/8rkLziFQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423644"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423644"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489236"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489236"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:06:48 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:36 +0530
Message-Id: <20221205070543.2510309-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221205070543.2510309-1-suraj.kandpal@intel.com>
References: <20221205070543.2510309-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/gsc: Skip the version check when
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

The current exectation from the FW side is that the driver will query
the GSC FW version after the FW is loaded, similarly to what the mei
driver does on DG2. However, we're discussing with the FW team if there
is a way to extract the version from the bin file before loading, so we
can keep the code the same as for older FWs.

Since the GSC FW version is not currently required for functionality and
is only needed for debug purposes, we can skip the FW version for now at
fetch time and add it later on when we've agreed on the approach.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 ++++++++++++++++++------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index fad26bad1426..c4d75b7fb1dc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -651,6 +651,26 @@ static bool guc_check_version_range(struct intel_uc_fw *uc_fw)
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
@@ -720,17 +740,13 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
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
-		goto fail;
-
-	if (uc_fw->file_wanted.ver.major) {
+			goto fail;
+	if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
 		/* Check the file's major version was as it claimed */
 		if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
 			drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
@@ -747,7 +763,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
-	if (old_ver) {
+	if (old_ver && uc_fw->file_selected.ver.major) {
 		/* Preserve the version that was really wanted */
 		memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
 
-- 
2.25.1

