Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8366CF3BD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 21:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7352B10EBCD;
	Wed, 29 Mar 2023 19:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 393CC10E1AB;
 Wed, 29 Mar 2023 19:52:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3555BAADE3;
 Wed, 29 Mar 2023 19:52:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 29 Mar 2023 19:52:11 -0000
Message-ID: <168011953121.23903.16317976965114954819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329165658.2686549-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230329165658.2686549-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_MTL_GSC_SW_Proxy?=
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

Series: drm/i915: Add support for MTL GSC SW Proxy
URL   : https://patchwork.freedesktop.org/series/115806/
State : warning

== Summary ==

Error: dim checkpatch failed
cd5858341f03 drm/i915/mtl: Define GSC Proxy component interface
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
9b6e1a1d6cf0 mei: gsc_proxy: add gsc proxy driver
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 238 lines checked
2429872a6959 drm/i915/gsc: add initial support for GSC proxy
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:50: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#50: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:1:
+#include "intel_gsc_proxy.h"

-:52: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:3:
+// SPDX-License-Identifier: MIT

-:99: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#99: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:50:
+struct intel_gsc_proxy_header
+{

-:129: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:80:
+struct gsc_proxy_msg
+{

-:189: WARNING:MEMORY_BARRIER: memory barrier without comment
#189: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:140:
+	wmb();

-:232: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#232: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:183:
+
+}

total: 2 errors, 4 warnings, 1 checks, 525 lines checked
c90211076ba2 drm/i915/gsc: add support for GSC proxy interrupt


