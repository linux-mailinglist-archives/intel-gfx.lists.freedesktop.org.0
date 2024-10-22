Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E569AB9CA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 01:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB4210E07E;
	Tue, 22 Oct 2024 23:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8whX1h0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4788A10E07E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 23:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729638077; x=1761174077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JJOTOhuVZfohob5v9UbApVdNrJgIeV4zlbsdMtbFAs4=;
 b=V8whX1h0a+vwUnPtPap0BNbfNqxUG38358VCjQvaOo+V6XAF0TvvuxD8
 14cdzS6++2dcshXagVZiUXbz8WnoJptobMU19T9z/Hd6kTko/OaTV1x60
 HjpDOWU0L5Z68PhSFE5oStYMWFKK4IhWYkuhviRaPbYztJw7WyEzvg7qd
 FFuSEe2CLvxn752Xjoaa3z86VEgfEnJiOcONtcfBGGGjvEral293fazQl
 k4ib/Rqe/q29GkNz7KTdAjiMqYHHOk3MqKe5JKfXc2ek+FwE2OCFAQO78
 klXUANMZJ5J6Blk40U6uyOUwvLsFTvj6tTICZ8uo5Hb8a9T0ep4CI/vOI g==;
X-CSE-ConnectionGUID: btq3Gf9rSHOHGVOWvnOcUg==
X-CSE-MsgGUID: QpLA3tdeRxCCnCr3H2KneA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29306562"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29306562"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 16:01:03 -0700
X-CSE-ConnectionGUID: FcMs2vjqTM6Q0jC6thkU0A==
X-CSE-MsgGUID: BvrCq1usTU+1tHbf/75Ehw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79930946"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 16:01:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [CI] drm/i915/gsc: test new GSC 102.1.15.1926 for MTL
Date: Tue, 22 Oct 2024 16:00:50 -0700
Message-ID: <20241022230050.4176990-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
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

This patch is for testing only. If the testing is ok, the current
mtl_gsc_1.bin binary will be replaced with this one.

Note that the GSC FW macros use the compatibility version, so we can't
use them to produce the path of a binary based on the release version.
Since this is a ci-only patch to test a specific FW release, instead
of updating the macros we can just hardcode the path.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ec33ad942115..cb2b26341d98 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -140,7 +140,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * backward-compatible one, so we use only the former in the file name.
  */
 #define INTEL_GSC_FIRMWARE_DEFS(fw_def, gsc_def) \
-	fw_def(METEORLAKE,   0, gsc_def(mtl, 1, 0))
+	fw_def(METEORLAKE,   0, gsc_def(mtl, 1, 0 , "i915/mtl_gsc_102.1.15.1926.bin"))
 
 /*
  * Set of macros for producing a list of filenames from the above table.
@@ -177,8 +177,8 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 #define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
 	__MAKE_UC_FW_PATH_MMP(prefix_, "huc", major_, minor_, patch_)
 
-#define MAKE_GSC_FW_PATH(prefix_, major_, minor_) \
-	__MAKE_UC_FW_PATH_MAJOR(prefix_, "gsc", major_)
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_, path_) \
+	path_
 
 /*
  * All blobs need to be declared via MODULE_FIRMWARE().
@@ -240,9 +240,8 @@ struct __packed uc_fw_blob {
 #define HUC_FW_BLOB_GSC(prefix_) \
 	UC_FW_BLOB_NEW(0, 0, 0, true, MAKE_HUC_FW_PATH_GSC(prefix_))
 
-#define GSC_FW_BLOB(prefix_, major_, minor_) \
-	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
-		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))
+#define GSC_FW_BLOB(prefix_, major_, minor_, path_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, path_)
 
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
-- 
2.43.0

