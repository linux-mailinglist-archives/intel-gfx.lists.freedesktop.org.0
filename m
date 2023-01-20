Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7010675E2E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 20:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABDF10EAF6;
	Fri, 20 Jan 2023 19:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC05B10EAF6;
 Fri, 20 Jan 2023 19:37:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5995AADDC;
 Fri, 20 Jan 2023 19:37:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 20 Jan 2023 19:37:10 -0000
Message-ID: <167424343093.22910.9479799933877772328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230120164050.1765-1-michal.wajdeczko@intel.com>
In-Reply-To: <20230120164050.1765-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_oriented_print_macros?=
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

Series: GuC oriented print macros
URL   : https://patchwork.freedesktop.org/series/113162/
State : warning

== Summary ==

Error: dim checkpatch failed
b54a9b032bdb drm/i915/guc: Add GuC oriented print macros
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:17: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#17: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
abf8a7a2bd04 drm/i915/guc: Update GuC messages in intel_guc.c
ef22893e1a38 drm/i915/guc: Update GuC messages in intel_guc_ads.c
5bc4c51849e5 drm/i915/guc: Update GuC messages in intel_guc_ct.c
817341aa24e6 drm/i915/guc: Update GuC messages in intel_guc_fw.c
0211cb927751 drm/i915/guc: Update GuC messages in intel_guc_log.c
0643c8385f5b drm/i915/guc: Update GuC messages in intel_guc_submission.c
972bd4630444 drm/i915/guc: Update GT/GuC messages in intel_uc.c


