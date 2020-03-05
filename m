Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579CC17B09B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 22:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8566EC1D;
	Thu,  5 Mar 2020 21:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45F416E3B0;
 Thu,  5 Mar 2020 21:26:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DEE8A0094;
 Thu,  5 Mar 2020 21:26:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Mar 2020 21:26:00 -0000
Message-ID: <158344356022.17235.9128224302428917975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305115322.2738977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200305115322.2738977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Add_mechani?=
 =?utf-8?q?sm_to_submit_a_context_WA_on_ring_submission?=
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

Series: series starting with [CI,1/2] drm/i915: Add mechanism to submit a context WA on ring submission
URL   : https://patchwork.freedesktop.org/series/74331/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e0fd0fe40b02 drm/i915: Add mechanism to submit a context WA on ring submission
-:262: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#262: 
new file mode 100644

-:373: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#373: FILE: drivers/gpu/drm/i915/gt/selftest_ring_submission.c:107:
+				pr_err("pass[%d] wa_bb emitted for the kernel context\n",
+						pass);

-:384: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#384: FILE: drivers/gpu/drm/i915/gt/selftest_ring_submission.c:118:
+				pr_err("pass[%d] wa_bb *NOT* emitted after the kernel context\n",
+						pass);

-:395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#395: FILE: drivers/gpu/drm/i915/gt/selftest_ring_submission.c:129:
+				pr_err("pass[%d] wa_bb *NOT* emitted for the user context switch\n",
+						pass);

total: 0 errors, 1 warnings, 3 checks, 501 lines checked
0a707ecdc621 drm/i915/gen7: Clear all EU/L3 residual contexts
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 585 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
