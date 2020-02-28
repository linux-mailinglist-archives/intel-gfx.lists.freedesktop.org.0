Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 196981730A7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 06:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B176EDEA;
	Fri, 28 Feb 2020 05:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53BC56EDEA;
 Fri, 28 Feb 2020 05:54:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4599BA0071;
 Fri, 28 Feb 2020 05:54:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 28 Feb 2020 05:54:08 -0000
Message-ID: <158286924825.7477.1906509344470765663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Re-org_uC_debugfs_files_and_move_them_under_GT?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Re-org uC debugfs files and move them under GT
URL   : https://patchwork.freedesktop.org/series/74051/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
342d7bf407c2 drm/i915/guc: drop stage_pool debugfs
dfe41cbafaee drm/i915/uc: mark structure passed to checker functions as const
4d8f194b0199 drm/i915/huc: make "support huc" reflect HW capabilities
930ae359ffad drm/i915/debugfs: move uC printers and update debugfs file names
a4b27a2cdac1 drm/i915/uc: Move uC debugfs to its own folder under GT
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:410: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'files__' - possible side-effects?
#410: FILE: drivers/gpu/drm/i915/gt/uc/debugfs_uc.h:33:
+#define debugfs_uc_register_files(files__, root__, data__) \
+do { \
+	int i__ = 0; \
+	for (i__ = 0; i__ < ARRAY_SIZE(files__); i__++) { \
+		debugfs_create_file(files__[i__].name, \
+				    0444, root__, data__, \
+				    files__[i__].fops); \
+	} \
+} while (0)

total: 0 errors, 1 warnings, 1 checks, 528 lines checked
2919c449e528 drm/i915/uc: do not free err log on uc_fini

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
