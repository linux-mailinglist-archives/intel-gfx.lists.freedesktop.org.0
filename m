Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F17C153FF0B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 14:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD4A10EB37;
	Tue,  7 Jun 2022 12:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC97710EB2E;
 Tue,  7 Jun 2022 12:40:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1C76AADD2;
 Tue,  7 Jun 2022 12:40:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Jun 2022 12:40:29 -0000
Message-ID: <165460562988.8645.14011383022566184342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220607094207.536699-1-jani.nikula@intel.com>
In-Reply-To: <20220607094207.536699-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/tasklet=3A_sep?=
 =?utf-8?q?arate_local_hacks_around_struct_tasklet=5Fstruct?=
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

Series: series starting with [CI,1/3] drm/i915/tasklet: separate local hacks around struct tasklet_struct
URL   : https://patchwork.freedesktop.org/series/104812/
State : warning

== Summary ==

Error: dim checkpatch failed
87f22c2bf223 drm/i915/tasklet: separate local hacks around struct tasklet_struct
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
48d6a2eae0f4 drm/i915/drv: drop intel_bios.h include
b6a9c1c8e8bd drm/i915/utils: throw out unused stuff


