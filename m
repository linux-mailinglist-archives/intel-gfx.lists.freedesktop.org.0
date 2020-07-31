Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED20234907
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 18:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D883F6EB15;
	Fri, 31 Jul 2020 16:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC0196EB14;
 Fri, 31 Jul 2020 16:15:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B68F3A00CC;
 Fri, 31 Jul 2020 16:15:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jul 2020 16:15:56 -0000
Message-ID: <159621215671.10473.13153215863101352239@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200731154834.8378-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200731154834.8378-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Remove_requ?=
 =?utf-8?q?irement_for_holding_i915=5Frequest=2Elock_for_breadcrumbs?=
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

Series: series starting with [CI,1/4] drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
URL   : https://patchwork.freedesktop.org/series/80150/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8bec68a2d4fc drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
1c838e1ab0e5 drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs
56cf2c2ab202 drm/i915/gt: Only transfer the virtual context to the new engine if active
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

-:28: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")'
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

total: 1 errors, 1 warnings, 0 checks, 81 lines checked
b955f79361d3 drm/i915/gt: Distinguish the virtual breadcrumbs from the irq breadcrumbs
-:214: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#214: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 513 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
