Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED5156090
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 22:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA286FDAF;
	Fri,  7 Feb 2020 21:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66E4D6FDAD;
 Fri,  7 Feb 2020 21:12:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6303FA0118;
 Fri,  7 Feb 2020 21:12:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 21:12:56 -0000
Message-ID: <158110997640.8755.13735123426244247235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207205010.2857970-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207205010.2857970-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/execlists=3A_Always_force_a_context_reload_when_re?=
 =?utf-8?q?winding_RING=5FTAIL?=
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

Series: drm/i915/execlists: Always force a context reload when rewinding RING_TAIL
URL   : https://patchwork.freedesktop.org/series/73175/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6e0bc47b73d9 drm/i915/execlists: Always force a context reload when rewinding RING_TAIL
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
<0>[ 1283.366080]   <idle>-0       0d.s2 1280851190us : __execlists_submission_tasklet: 0000:00:02.0 rcs0: expired last=130:4698, prio=3, hint=3

-:35: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 82c69bf58650 ("drm/i915/gt: Detect if we miss WaIdleLiteRestore")'
#35: 
Referenecs: 82c69bf58650 ("drm/i915/gt: Detect if we miss WaIdleLiteRestore")

total: 1 errors, 1 warnings, 0 checks, 66 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
