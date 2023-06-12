Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A4972D012
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 22:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB4210E0E1;
	Mon, 12 Jun 2023 20:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5083110E0C4;
 Mon, 12 Jun 2023 20:03:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49A92AADF0;
 Mon, 12 Jun 2023 20:03:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Mon, 12 Jun 2023 20:03:38 -0000
Message-ID: <168660021827.26645.116370791757285444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_GSC_FW_support_for_MTL_=28rev4=29?=
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

Series: drm/i915: GSC FW support for MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/117396/
State : warning

== Summary ==

Error: dim checkpatch failed
57f9c0764e65 drm/i915/gsc: fixes and updates for GSC memory allocation
fa4495ba0bfe drm/i915/mtl/gsc: extract release and security versions from the gsc binary
7bab89e51ae3 drm/i915/mtl/gsc: query the GSC FW for its compatibility version
bcde6622118d drm/i915/mtl/gsc: Add a gsc_info debugfs
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:194: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#194: 
new file mode 100644

-:322: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#322: FILE: drivers/gpu/drm/i915/i915_reg.h:961:
+#define HECI_FWSTS(base, x) _MMIO((base) + _PICK(x, -(base), \
+						    HECI_FWSTS1, \
+						    HECI_FWSTS2, \
+						    HECI_FWSTS3, \
+						    HECI_FWSTS4, \
+						    HECI_FWSTS5, \
+						    HECI_FWSTS6))

total: 0 errors, 1 warnings, 1 checks, 253 lines checked


