Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414674E9FC2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 21:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AEA810E042;
	Mon, 28 Mar 2022 19:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA53710E042;
 Mon, 28 Mar 2022 19:26:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B46A0A0078;
 Mon, 28 Mar 2022 19:26:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 28 Mar 2022 19:26:45 -0000
Message-ID: <164849560571.2848.4594996669114130455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328124615.2301238-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220328124615.2301238-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_intel=5Fvtd=5Factive_and_run=5Fas=5Fguest_?=
 =?utf-8?q?to_i915=5Futils?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Move intel_vtd_active and run_as_guest to i915_utils
URL   : https://patchwork.freedesktop.org/series/101874/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
503b9129eddd drm/i915: Move intel_vtd_active and run_as_guest to i915_utils
-:185: CHECK:LINE_SPACING: Please don't use multiple blank lines
#185: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:21:
 
+

total: 0 errors, 0 warnings, 1 checks, 313 lines checked


