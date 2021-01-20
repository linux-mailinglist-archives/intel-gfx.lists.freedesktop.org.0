Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65B32FD95F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 20:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA416E424;
	Wed, 20 Jan 2021 19:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F33496E420;
 Wed, 20 Jan 2021 19:22:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD2FBA8836;
 Wed, 20 Jan 2021 19:22:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 Jan 2021 19:22:19 -0000
Message-ID: <161117053987.8788.12610827931691993731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210120122205.2808-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/gt=3A_Do_not_susp?=
 =?utf-8?q?end_bonded_requests_if_one_hangs?=
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

Series: series starting with [01/10] drm/i915/gt: Do not suspend bonded requests if one hangs
URL   : https://patchwork.freedesktop.org/series/86088/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ed0915405628 drm/i915/gt: Do not suspend bonded requests if one hangs
89f5522aeb8f drm/i915/gt: Skip over completed active execlists, again
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")'
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")'
#11: 
References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")

total: 2 errors, 1 warnings, 0 checks, 72 lines checked
7e2e3df4ad78 drm/i915: Strip out internal priorities
ab6bc4b70663 drm/i915: Remove I915_USER_PRIORITY_SHIFT
d02f5b7f8431 drm/i915: Replace engine->schedule() with a known request operation
af4debc42274 drm/i915: Teach the i915_dependency to use a double-lock
a440718dfe78 drm/i915: Restructure priority inheritance
d1f21b1a4125 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:434: WARNING:LINE_SPACING: Missing a blank line after declarations
#434: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:378:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 702 lines checked
242ea7da8ef4 drm/i915/selftests: Exercise priority inheritance around an engine loop
9bf36381a2f6 drm/i915: Improve DFS for priority inheritance


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
