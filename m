Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCBA6E2E33
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Apr 2023 03:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629D810EEE5;
	Sat, 15 Apr 2023 01:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E21110E21C;
 Sat, 15 Apr 2023 01:28:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CD1CA0BCB;
 Sat, 15 Apr 2023 01:28:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 15 Apr 2023 01:28:09 -0000
Message-ID: <168152208934.19227.6634417714206105970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230415005706.4135485-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230415005706.4135485-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_uc_firmare_management?=
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

Series: Improvements to uc firmare management
URL   : https://patchwork.freedesktop.org/series/116517/
State : warning

== Summary ==

Error: dim checkpatch failed
e2f47c7391c0 drm/i915/guc: Decode another GuC load failure case
a317c98847de drm/i915/guc: Print status register when waiting for GuC to load
b7ccc12b47a8 drm/i915/uc: Track patch level versions on reduced version firmware files
-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:200:
+#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_NEW(major_, minor_, patch_, false, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_, patch_))

total: 0 errors, 0 warnings, 3 checks, 90 lines checked
aebc3a2f1989 drm/i915/uc: Split firmware table validation to a separate function
6ef9c0062ed6 drm/i915/uc: Reject doplicate entries in firmware table


