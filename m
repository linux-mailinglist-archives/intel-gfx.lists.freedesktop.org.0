Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277F244C81
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 18:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8726EB8F;
	Fri, 14 Aug 2020 16:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DDAE6EB8E;
 Fri, 14 Aug 2020 16:15:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F10AA66C9;
 Fri, 14 Aug 2020 16:15:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Aug 2020 16:15:20 -0000
Message-ID: <159742172038.3439.13743958094760698114@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200814155735.29138-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Widen_CSB_poi?=
 =?utf-8?q?nter_to_u64_for_the_parsers?=
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

Series: series starting with [1/3] drm/i915/gt: Widen CSB pointer to u64 for the parsers
URL   : https://patchwork.freedesktop.org/series/80627/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1c6a740de44a drm/i915/gt: Widen CSB pointer to u64 for the parsers
f1c36ee09bda drm/i915/gt: Wait for CSB entries on Tigerlake
-:24: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")'
#24: 
References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

-:50: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#50: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2509:
+		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))

total: 2 errors, 0 warnings, 0 checks, 33 lines checked
0e3d8f6ca520 drm/i915/gt: Apply the CSB w/a for all
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")'
#12: 
References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

-:93: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#93: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2548:
+		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))

total: 2 errors, 0 warnings, 0 checks, 114 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
