Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91661533A0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB6D6F5FD;
	Wed,  5 Feb 2020 15:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 016C76F5FD;
 Wed,  5 Feb 2020 15:06:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE4DCA0087;
 Wed,  5 Feb 2020 15:06:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 05 Feb 2020 15:06:41 -0000
Message-ID: <158091520194.17318.7963260971297606585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_add_basic_selftests_for_rc6_=28rev5?=
 =?utf-8?q?=29?=
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

Series: drm/i915/selftests: add basic selftests for rc6 (rev5)
URL   : https://patchwork.freedesktop.org/series/69825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
342c89d084c1 drm/i915/selftests: add basic selftests for rc6
-:89: ERROR:CODE_INDENT: code indent should use tabs where possible
#89: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:239:
+^I       ^Iec2 - ec1,$

-:89: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#89: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:239:
+^I       ^Iec2 - ec1,$

-:90: ERROR:CODE_INDENT: code indent should use tabs where possible
#90: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:240:
+^I       ^Iyesno(enabled));$

-:90: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#90: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:240:
+^I       ^Iyesno(enabled));$

-:107: WARNING:TYPO_SPELLING: 'interferring' may be misspelled - perhaps 'interfering'?
#107: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:257:
+	if (!rc6->manual) /* No interferring PCU! */

total: 2 errors, 3 warnings, 0 checks, 199 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
