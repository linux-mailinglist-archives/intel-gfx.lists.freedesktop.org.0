Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 961513E3C1D
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Aug 2021 19:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5ACF89ABA;
	Sun,  8 Aug 2021 17:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FB9489AA6;
 Sun,  8 Aug 2021 17:59:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 054DEA0099;
 Sun,  8 Aug 2021 17:59:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 08 Aug 2021 17:59:13 -0000
Message-ID: <162844555301.11231.15266200440189144255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210808180757.81440-1-matthew.brost@intel.com>
In-Reply-To: <20210808180757.81440-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_some_CI_failures_for_GuC_submission?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Clean up some CI failures for GuC submission
URL   : https://patchwork.freedesktop.org/series/93487/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d416adfba5b9 drm/i915/guc: Fix several issues related to resets / request cancelation
-:84: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#84: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:733:
+		msleep(1);

total: 0 errors, 1 warnings, 0 checks, 98 lines checked
4b762ba775a1 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
21bec627a015 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:76: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#76: 
new file mode 100644

-:136: ERROR:SPACING: space required before the open parenthesis '('
#136: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:56:
+		switch(i) {

total: 1 errors, 1 warnings, 0 checks, 211 lines checked


