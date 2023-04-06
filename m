Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A83AC6DA029
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 20:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C9E10ECB3;
	Thu,  6 Apr 2023 18:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3557310EC81;
 Thu,  6 Apr 2023 18:46:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 194A5A0078;
 Thu,  6 Apr 2023 18:46:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 06 Apr 2023 18:46:12 -0000
Message-ID: <168080677209.9536.3267777404731841485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230406174419.471256-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230406174419.471256-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Add_MTL_PXP_Support_=28rev7=29?=
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

Series: drm/i915/pxp: Add MTL PXP Support (rev7)
URL   : https://patchwork.freedesktop.org/series/112647/
State : warning

== Summary ==

Error: dim checkpatch failed
495f3b5c4d82 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup
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
a30073078612 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:109: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#109: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 153 lines checked
ac85c33a6337 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
04a1ebb47e9c drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
-:106: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#106: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c:43:
+	GEM_BUG_ON(exec_res->pkt_vma->size < (2 * PXP43_MAX_HECI_INOUT_SIZE));

total: 0 errors, 1 warnings, 0 checks, 324 lines checked
d3cbd5ec964c drm/i915/pxp: Add ARB session creation and cleanup
c7ac1fff4798 drm/i915/uapi/pxp: Fix UAPI spec comments and add GET_PARAM for PXP
c96e3afaa85b drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
6fcb7aeab404 drm/i915/pxp: Enable PXP with MTL-GSC-CS


