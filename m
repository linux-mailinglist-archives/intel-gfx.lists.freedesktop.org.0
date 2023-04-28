Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D215F6F0F69
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 02:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5912310E211;
	Fri, 28 Apr 2023 00:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B84210E211;
 Fri, 28 Apr 2023 00:18:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02E8CA00E6;
 Fri, 28 Apr 2023 00:18:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Fri, 28 Apr 2023 00:18:14 -0000
Message-ID: <168264109498.32440.18414314624788559608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Add_MTL_PXP_Support_=28rev9=29?=
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

Series: drm/i915/pxp: Add MTL PXP Support (rev9)
URL   : https://patchwork.freedesktop.org/series/112647/
State : warning

== Summary ==

Error: dim checkpatch failed
e93c6f73e145 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:99: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#99: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 173 lines checked
c4038c750253 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:109: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#109: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 153 lines checked
89dc3a6ba479 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
35ffeec3fe80 drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
-:109: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#109: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c:43:
+	GEM_BUG_ON(exec_res->pkt_vma->size < (2 * PXP43_MAX_HECI_INOUT_SIZE));

total: 0 errors, 1 warnings, 0 checks, 326 lines checked
8f8dbe8a8d33 drm/i915/pxp: Add ARB session creation and cleanup
7ba97b08f8de drm/i915/uapi/pxp: Add a GET_PARAM for PXP
-:24: WARNING:TYPO_SPELLING: 'similiar' may be misspelled - perhaps 'similar'?
#24: 
similiar checks.
^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
0a11a1c36145 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
0d4594ea1808 drm/i915/pxp: Enable PXP with MTL-GSC-CS


