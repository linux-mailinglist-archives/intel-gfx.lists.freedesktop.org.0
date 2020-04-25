Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 279F71B88DB
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 21:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6006E48E;
	Sat, 25 Apr 2020 19:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A4ED6E48D;
 Sat, 25 Apr 2020 19:21:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 585C3A363D;
 Sat, 25 Apr 2020 19:21:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 25 Apr 2020 19:21:14 -0000
Message-ID: <158784247435.28453.12452474686544750758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200425175751.30358-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/gt=3A_Always_enable?=
 =?utf-8?q?_busy-stats_for_execlists_=28rev2=29?=
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

Series: series starting with [1/6] drm/i915/gt: Always enable busy-stats for execlists (rev2)
URL   : https://patchwork.freedesktop.org/series/76486/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bd5217caba42 drm/i915/gt: Always enable busy-stats for execlists
580c6e4c2a06 drm/i915/gt: Move rps.enabled/active to flags
40d0b5f06de0 drm/i915/gt: Track use of RPS interrupts in flags
45476008bc61 drm/i915/gt: Switch to manual evaluation of RPS
50df497d84b8 drm/i915/gt: Apply the aggressive downclocking to parking
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")'
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

total: 1 errors, 1 warnings, 0 checks, 31 lines checked
5720afa836ee drm/i915/gt: Restore aggressive post-boost downclocking
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2a8862d2f3da ("drm/i915: Reduce the RPS shock")'
#12: 
References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")

total: 1 errors, 0 warnings, 0 checks, 34 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
