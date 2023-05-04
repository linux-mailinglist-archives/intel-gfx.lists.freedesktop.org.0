Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B00E6F798C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 01:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C5610E542;
	Thu,  4 May 2023 23:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C32110E542;
 Thu,  4 May 2023 23:03:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3356BAADE3;
 Thu,  4 May 2023 23:03:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Thu, 04 May 2023 23:03:12 -0000
Message-ID: <168324139217.11433.17750036748218746367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230504202252.1104212-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230504202252.1104212-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_MTL_GuC_firmware?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Update MTL GuC firmware
URL   : https://patchwork.freedesktop.org/series/117346/
State : warning

== Summary ==

Error: dim checkpatch failed
ef083bce246a drm/i915/uc: Track patch level versions on reduced version firmware files
-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

total: 0 errors, 0 warnings, 3 checks, 73 lines checked
cd35ce61f9f5 drm/i915/mtl: Update GuC firmware version for MTL to 70.6.6


