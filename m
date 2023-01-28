Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E61067FAC3
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Jan 2023 21:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BC910E070;
	Sat, 28 Jan 2023 20:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D24010E070;
 Sat, 28 Jan 2023 20:21:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01F36A9932;
 Sat, 28 Jan 2023 20:21:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Sat, 28 Jan 2023 20:21:49 -0000
Message-ID: <167493730996.4074.6574622945402287299@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230128195907.1837-1-michal.wajdeczko@intel.com>
In-Reply-To: <20230128195907.1837-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_oriented_print_macros_=28rev3=29?=
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

Series: GuC oriented print macros (rev3)
URL   : https://patchwork.freedesktop.org/series/113162/
State : warning

== Summary ==

Error: dim checkpatch failed
c827d4f72242 drm/i915/guc: Add GuC oriented print macros
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
f14a0e9e7bcc drm/i915/guc: Update GuC messages in intel_guc.c
b096e58511b3 drm/i915/guc: Update GuC messages in intel_guc_ads.c
a095260d350b drm/i915/guc: Update GuC messages in intel_guc_ct.c
d3a70383ebb7 drm/i915/guc: Update GuC messages in intel_guc_fw.c
9b3452e744ec drm/i915/guc: Update GuC messages in intel_guc_log.c
340994622ff2 drm/i915/guc: Update GuC messages in intel_guc_submission.c
f36c42df7b89 drm/i915/guc: Update GT/GuC messages in intel_uc.c


