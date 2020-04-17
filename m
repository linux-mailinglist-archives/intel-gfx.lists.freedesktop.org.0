Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336A1ADDB9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 14:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59DF6EBD9;
	Fri, 17 Apr 2020 12:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F95A6EBD8;
 Fri, 17 Apr 2020 12:59:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A056A432F;
 Fri, 17 Apr 2020 12:59:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 12:59:51 -0000
Message-ID: <158712839123.10466.15191339832679513868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417084930.644-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417084930.644-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/selftests=3A_Delay_?=
 =?utf-8?q?spinner_before_waiting_for_an_interrupt?=
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

Series: series starting with [1/5] drm/i915/selftests: Delay spinner before waiting for an interrupt
URL   : https://patchwork.freedesktop.org/series/76075/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be52c781157e drm/i915/selftests: Delay spinner before waiting for an interrupt
0766aab64e4d drm/i915/selftests: Move gpu energy measurement into its own little lib
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
83822ea52d10 drm/i915/selftests: Check power consumption at min/max frequencies
1608aacdcf9a drm/i915: Relinquish forcewake immediately after manual grouping
704dc9ea4ed2 drm/i915/gt: Always take fw around RPS frequency changes
-:7: WARNING:TYPO_SPELLING: 'occuring' may be misspelled - perhaps 'occurring'?
#7: 
simply not occuring [within a 20ms period]. The assumption was that with

total: 0 errors, 1 warnings, 0 checks, 56 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
