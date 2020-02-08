Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593B41567BA
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 21:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7366E415;
	Sat,  8 Feb 2020 20:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EFE56E40C;
 Sat,  8 Feb 2020 20:46:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46B60A0096;
 Sat,  8 Feb 2020 20:46:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 08 Feb 2020 20:46:00 -0000
Message-ID: <158119476026.30229.5741497493840954545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208203653.3128038-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200208203653.3128038-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Exercise_timeslice_rewinding?=
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

Series: drm/i915/selftests: Exercise timeslice rewinding
URL   : https://patchwork.freedesktop.org/series/73198/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e481f7a005f9 drm/i915/selftests: Exercise timeslice rewinding
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")'
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:188: WARNING:MEMORY_BARRIER: memory barrier without comment
#188: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:928:
+		wmb();

-:218: WARNING:MEMORY_BARRIER: memory barrier without comment
#218: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:958:
+		wmb();

total: 1 errors, 3 warnings, 0 checks, 220 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
