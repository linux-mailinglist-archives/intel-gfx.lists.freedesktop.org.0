Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A2219F5F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B976EA50;
	Thu,  9 Jul 2020 11:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58B406EA4D;
 Thu,  9 Jul 2020 11:53:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52BF5A47EE;
 Thu,  9 Jul 2020 11:53:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jul 2020 11:53:55 -0000
Message-ID: <159429563533.31093.4115550080548833149@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709114119.28122-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200709114119.28122-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Add_a_couple_of_?=
 =?utf-8?q?missing_i915=5Factive=5Ffini=28=29?=
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

Series: series starting with [1/6] drm/i915: Add a couple of missing i915_active_fini()
URL   : https://patchwork.freedesktop.org/series/79297/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b4522cf919dd drm/i915: Add a couple of missing i915_active_fini()
368626fcdf2a drm/i915: Skip taking acquire mutex for no ref->active callback
747b770c0842 drm/i915: Export a preallocate variant of i915_active_acquire()
4934a21dfe00 drm/i915: Keep the most recently used active-fence upon discard
584e2a308747 drm/i915: Make the stale cached active node available for any timeline
-:10: WARNING:TYPO_SPELLING: 'compatability' may be misspelled - perhaps 'compatibility'?
#10: 
on 32b, so for compatability we just fallback to keeping the cached node

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
401b721f69ea drm/i915: Provide a fastpath for waiting on vma bindings

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
