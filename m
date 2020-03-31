Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C3319A22F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 01:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247E36E89F;
	Tue, 31 Mar 2020 23:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53E8A6E373;
 Tue, 31 Mar 2020 23:01:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DBDFA66C9;
 Tue, 31 Mar 2020 23:01:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 23:01:34 -0000
Message-ID: <158569569429.5564.11334528634840512953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331162150.3635-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331162150.3635-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Ignore_readonly_failures_when_updating_relo?=
 =?utf-8?q?cs?=
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

Series: drm/i915/gem: Ignore readonly failures when updating relocs
URL   : https://patchwork.freedesktop.org/series/75331/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6b39b83d1e26 drm/i915/gem: Ignore readonly failures when updating relocs
-:7: WARNING:TYPO_SPELLING: 'commited' may be misspelled - perhaps 'committed'?
#7: 
already commited to modifying the execobjects, or have indeed done so

-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: fddcd00a49e9 ("drm/i915: Force the slow path after a user-write error")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fddcd00a49e9 ("drm/i915: Force the slow path after a user-write error")'
#13: 
References: fddcd00a49e9 ("drm/i915: Force the slow path after a user-write error")

-:32: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1544:
+					   &urelocs[r-stack].presumed_offset);
 					             ^

total: 1 errors, 2 warnings, 1 checks, 12 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
