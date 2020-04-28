Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E916B1BC486
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 18:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BBD6E849;
	Tue, 28 Apr 2020 16:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 284786E844;
 Tue, 28 Apr 2020 16:08:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20D5FA00FD;
 Tue, 28 Apr 2020 16:08:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Apr 2020 16:08:57 -0000
Message-ID: <158809013710.17774.18323042443449240326@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428103344.27796-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428103344.27796-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915/gt=3A_Always_e?=
 =?utf-8?q?nable_busy-stats_for_execlists?=
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

Series: series starting with [CI,1/6] drm/i915/gt: Always enable busy-stats for execlists
URL   : https://patchwork.freedesktop.org/series/76590/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
99b775e3f056 drm/i915/gt: Always enable busy-stats for execlists
aeea69f32471 drm/i915/gt: Move rps.enabled/active to flags
-:114: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 68)
#114: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:1228:
+	if (rps->max_freq <= rps->min_freq)
+		/* leave disabled, no room for dynamic reclocking */;

total: 0 errors, 1 warnings, 0 checks, 296 lines checked
0b989e258a6a drm/i915/gt: Track use of RPS interrupts in flags
3cd03bd68327 drm/i915/gt: Switch to manual evaluation of RPS
0d4ab5dc1f58 drm/i915/gt: Apply the aggressive downclocking to parking
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")'
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

total: 1 errors, 1 warnings, 0 checks, 31 lines checked
3fe945d951de drm/i915/gt: Restore aggressive post-boost downclocking
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2a8862d2f3da ("drm/i915: Reduce the RPS shock")'
#12: 
References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")

total: 1 errors, 0 warnings, 0 checks, 34 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
