Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D06F4E01
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 02:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF5D10E17A;
	Wed,  3 May 2023 00:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1B7C10E139;
 Wed,  3 May 2023 00:06:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5430AAADE4;
 Wed,  3 May 2023 00:06:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 03 May 2023 00:06:49 -0000
Message-ID: <168307240931.9279.9191768139668094508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230502234007.1762014-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230502234007.1762014-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_uc_firmare_management_=28rev5=29?=
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

Series: Improvements to uc firmare management (rev5)
URL   : https://patchwork.freedesktop.org/series/116517/
State : warning

== Summary ==

Error: dim checkpatch failed
ac121650f88b drm/i915/guc: Decode another GuC load failure case
dfb69d74ee3f drm/i915/guc: Print status register when waiting for GuC to load
7c31ad126307 drm/i915/uc: Track patch level versions on reduced version firmware files
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
d7ac412aab55 drm/i915/uc: Enhancements to firmware table validation
f7f70436f73b drm/i915/uc: Reject duplicate entries in firmware table
533b68d27af4 drm/i915/uc: Make unexpected firmware versions an error in debug builds


