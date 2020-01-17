Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D07D140C52
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C02B6F585;
	Fri, 17 Jan 2020 14:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 975106E02F;
 Fri, 17 Jan 2020 14:20:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D539A011A;
 Fri, 17 Jan 2020 14:20:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 14:20:40 -0000
Message-ID: <157927084055.26757.12500385563766759776@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117111546.3012803-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117111546.3012803-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Only_retire_requ?=
 =?utf-8?q?ests_when_eviction_is_allowed_to_blocked?=
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

Series: series starting with [1/4] drm/i915: Only retire requests when eviction is allowed to blocked
URL   : https://patchwork.freedesktop.org/series/72184/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2291b8125c5 drm/i915: Only retire requests when eviction is allowed to blocked
7df501b57690 drm/i915: More proactive timeline retirement before new requests
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
References: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")

-:19: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")'
#19: 
References: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")

total: 1 errors, 1 warnings, 0 checks, 80 lines checked
e60423ef7d0b drm/i915/gt: Yield the timeslice if waiting on a semaphore
6ecd9e89fbe8 drm/i915: Tweak scheduler's kick_submission()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
