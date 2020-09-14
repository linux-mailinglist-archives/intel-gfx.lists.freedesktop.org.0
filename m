Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4452689E0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 13:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A3589E2A;
	Mon, 14 Sep 2020 11:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C77289E0C;
 Mon, 14 Sep 2020 11:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A045A0009;
 Mon, 14 Sep 2020 11:22:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Mon, 14 Sep 2020 11:22:05 -0000
Message-ID: <160008252546.5912.17425263509305523857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200914055633.21109-1-karthik.b.s@intel.com>
In-Reply-To: <20200914055633.21109-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915_=28rev8=29?=
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

Series: Asynchronous flip implementation for i915 (rev8)
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
41e215a678e3 drm/i915: Add enable/disable flip done and flip done handler
6cbc7da6e9d7 drm/i915: Add support for async flips in I915
dd3af66e26c3 drm/i915: Add checks specific to async flips
42a5bdc0f23e drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
bd90b9b59356 drm/i915: Add dedicated plane hook for async flip case
f034c8bbe82e drm/i915: WA for platforms with double buffered adress update enable bit
-:4: WARNING:TYPO_SPELLING: 'adress' may be misspelled - perhaps 'address'?
#4: 
Subject: [PATCH] drm/i915: WA for platforms with double buffered adress update

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
91a266c111fe Documentation/gpu: Add asynchronous flip documentation for i915
7e2163c101ad drm/i915: Enable async flips in i915


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
