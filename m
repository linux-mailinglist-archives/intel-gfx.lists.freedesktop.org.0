Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C2B6ED9C3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 03:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBB610E200;
	Tue, 25 Apr 2023 01:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B3E110E200;
 Tue, 25 Apr 2023 01:21:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84D71AADD7;
 Tue, 25 Apr 2023 01:21:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 25 Apr 2023 01:21:40 -0000
Message-ID: <168238570052.24067.5792962469169408616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_uc_firmare_management_=28rev4=29?=
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

Series: Improvements to uc firmare management (rev4)
URL   : https://patchwork.freedesktop.org/series/116517/
State : warning

== Summary ==

Error: dim checkpatch failed
767fe16369d4 drm/i915/guc: Decode another GuC load failure case
95f43703948d drm/i915/guc: Print status register when waiting for GuC to load
739f30be54fc drm/i915/uc: Track patch level versions on reduced version firmware files
-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

total: 0 errors, 0 warnings, 3 checks, 73 lines checked
e4b70f34344b drm/i915/uc: Enhancements to firmware table validation
1f175721171c drm/i915/uc: Reject duplicate entries in firmware table
4d4fd1a1efe2 drm/i915/uc: Make unexpected firmware versions an error in debug builds


