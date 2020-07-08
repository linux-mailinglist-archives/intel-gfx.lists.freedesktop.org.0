Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 360D1218B0B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 17:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2266E2B0;
	Wed,  8 Jul 2020 15:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43C636E29E;
 Wed,  8 Jul 2020 15:19:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D163A47DF;
 Wed,  8 Jul 2020 15:19:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 15:19:49 -0000
Message-ID: <159422158922.3840.6644207260935694065@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gt=3A_Replace_openc?=
 =?utf-8?b?b2RlZCBpOTE1X2dlbV9vYmplY3RfcGluX21hcCgpIChyZXYyKQ==?=
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

Series: series starting with [1/7] drm/i915/gt: Replace opencoded i915_gem_object_pin_map() (rev2)
URL   : https://patchwork.freedesktop.org/series/79250/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5da8719dfd9d drm/i915/gt: Replace opencoded i915_gem_object_pin_map()
89aee552401f drm/i915: Release shortlived maps of longlived objects
4e132b12fa6a drm/i915: Remove i915_gem_object_get_dirty_page()
df4c348231d6 drm/i915/gem: Unpin idle contexts from kswapd reclaim
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")'
#25: 
References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")

total: 1 errors, 1 warnings, 0 checks, 75 lines checked
b3d09276dbba drm/i915: Preallocate stashes for vma page-directories
8279ae824a1d drm/i915: Switch to object allocations for page directories
4440561be40d drm/i915/gt: Optimise aliasing-ppgtt allocations

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
