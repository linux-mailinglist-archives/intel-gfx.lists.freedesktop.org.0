Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD18218F97
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 20:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E446E90D;
	Wed,  8 Jul 2020 18:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 122296E90C;
 Wed,  8 Jul 2020 18:20:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C705A00E6;
 Wed,  8 Jul 2020 18:20:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 18:20:20 -0000
Message-ID: <159423242002.3840.10434844388267629368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708173748.32734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708173748.32734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915/gem=3A_Unpin_i?=
 =?utf-8?q?dle_contexts_from_kswapd_reclaim?=
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

Series: series starting with [CI,1/4] drm/i915/gem: Unpin idle contexts from kswapd reclaim
URL   : https://patchwork.freedesktop.org/series/79260/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4ff593f626b9 drm/i915/gem: Unpin idle contexts from kswapd reclaim
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")'
#25: 
References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")

total: 1 errors, 1 warnings, 0 checks, 75 lines checked
1a46bbc45f46 drm/i915/gt: Replace opencoded i915_gem_object_pin_map()
18771727a29c drm/i915: Release shortlived maps of longlived objects
7ada5714cd87 drm/i915: Remove i915_gem_object_get_dirty_page()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
