Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E51015C5DB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 17:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6F06E342;
	Thu, 13 Feb 2020 16:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB1376E33F;
 Thu, 13 Feb 2020 16:11:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6FFAA0118;
 Thu, 13 Feb 2020 16:11:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 16:11:17 -0000
Message-ID: <158161027794.17962.14522115903733206976@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213140150.3639027-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213140150.3639027-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Exercise_timeslice_rewinding_=28rev2?=
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

Series: drm/i915/selftests: Exercise timeslice rewinding (rev2)
URL   : https://patchwork.freedesktop.org/series/73198/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9c851daea682 drm/i915/selftests: Exercise timeslice rewinding
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")'
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:116: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#116: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:940:
+		enum { X=1, Y, Z };
 		        ^

-:198: ERROR:SPACING: space prohibited after that open parenthesis '('
#198: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1022:
+		GEM_BUG_ON( i915_request_is_active(rq[A2]));

-:233: WARNING:MEMORY_BARRIER: memory barrier without comment
#233: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1057:
+		wmb();

total: 3 errors, 2 warnings, 0 checks, 234 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
