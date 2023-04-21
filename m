Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB846EA0E9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 03:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C17B10ED77;
	Fri, 21 Apr 2023 01:15:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBC310E308;
 Fri, 21 Apr 2023 01:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682039732; x=1713575732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v8UC3bQQmHuqI8phR9CadS+Q+EyKkJ6qor3dbZuvZnk=;
 b=MSzKs+4j4UUrHfcW6Wvk+KggXbNwpcXV6QEG5JjCsANkKgYUmGCA5BXf
 HaHNqRhYQ6xRS4FYcbxH56Inw+vE9xU1QVIh+dzpJJu/loiT98l+yrbVV
 JHLDzyIfLqexd7ZUKgx9KkVD2nNIp7QjN3XUPZ76k+Wb04+NQeZ+gx+BX
 FObI33bJdK0FGRcflxgqJvdva9iUawDLvbnn7cd1YW186ZJe2e5qhMmAe
 OudWwq1dDC+msm0sdb72JTgASSW/302qfIvGJlq1/hkFQECLbwU+PoGZt
 XizJot1tMpZIg8RfjycFf6BRznuKf+cbZNcD7wwwjKCh9un+hJGjoU0cZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="343380938"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="343380938"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 18:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="692114486"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="692114486"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2023 18:15:31 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 20 Apr 2023 18:15:22 -0700
Message-Id: <20230421011525.3282664-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
References: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/uc: Track patch level versions on
 reduced version firmware files
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When reduced version firmware files were added (matching major
component being the only strict requirement), the minor version was
still tracked and a notification reported if it was older. However,
the patch version should really be tracked as well for the same
reasons. The KMD can work without the change but if the effort has
been taken to release a new firmware with the change then there must
be a valid reason for doing so - important bug fix, security fix, etc.
And in that case it would be good to alert the user if they are
missing out on that new fix.

v2: Use correct patch version number and drop redunant debug print
(review by Daniele / CI results).

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 30 +++++++++++++++---------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index a82a53dbbc86d..c9cd9bb47577f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -80,14 +80,14 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
 	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 6, 5)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 5)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 5)) \
+	fw_def(DG2,          0, guc_maj(dg2,  70, 5, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 5, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 5)) \
+	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 5, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5)) \
+	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
@@ -141,7 +141,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	__stringify(patch_) ".bin"
 
 /* Minor for internal driver use, not part of file name */
-#define MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_) \
+#define MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_) \
 	__MAKE_UC_FW_PATH_MAJOR(prefix_, "guc", major_)
 
 #define MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
@@ -197,9 +197,9 @@ struct __packed uc_fw_blob {
 	{ UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
 	  .legacy = true }
 
-#define GUC_FW_BLOB(prefix_, major_, minor_) \
-	UC_FW_BLOB_NEW(major_, minor_, 0, false, \
-		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))
 
 #define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
 	UC_FW_BLOB_OLD(major_, minor_, patch_, \
@@ -296,6 +296,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 		uc_fw->file_wanted.path = blob->path;
 		uc_fw->file_wanted.ver.major = blob->major;
 		uc_fw->file_wanted.ver.minor = blob->minor;
+		uc_fw->file_wanted.ver.patch = blob->patch;
 		uc_fw->loaded_via_gsc = blob->loaded_via_gsc;
 		found = true;
 		break;
@@ -790,6 +791,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		} else {
 			if (uc_fw->file_selected.ver.minor < uc_fw->file_wanted.ver.minor)
 				old_ver = true;
+			else if ((uc_fw->file_selected.ver.minor == uc_fw->file_wanted.ver.minor) &&
+				 (uc_fw->file_selected.ver.patch < uc_fw->file_wanted.ver.patch))
+				old_ver = true;
 		}
 	}
 
@@ -797,12 +801,16 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		/* Preserve the version that was really wanted */
 		memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
 
-		gt_notice(gt, "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
+		gt_notice(gt, "%s firmware %s (%d.%d.%d) is recommended, but only %s (%d.%d.%d) was found\n",
 			  intel_uc_fw_type_repr(uc_fw->type),
 			  uc_fw->file_wanted.path,
-			  uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor,
+			  uc_fw->file_wanted.ver.major,
+			  uc_fw->file_wanted.ver.minor,
+			  uc_fw->file_wanted.ver.patch,
 			  uc_fw->file_selected.path,
-			  uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor);
+			  uc_fw->file_selected.ver.major,
+			  uc_fw->file_selected.ver.minor,
+			  uc_fw->file_selected.ver.patch);
 		gt_info(gt, "Consider updating your linux-firmware pkg or downloading from %s\n",
 			INTEL_UC_FIRMWARE_URL);
 	}
-- 
2.39.1

