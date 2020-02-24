Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147F516AC9B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 18:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2E88910B;
	Mon, 24 Feb 2020 17:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9005C8910B;
 Mon, 24 Feb 2020 17:05:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A46AA00E9;
 Mon, 24 Feb 2020 17:05:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 24 Feb 2020 17:05:32 -0000
Message-ID: <158256393253.28362.2636573281293681971@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_3_display_pipes_combination_system_support_=28rev4=29?=
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

Series: 3 display pipes combination system support (rev4)
URL   : https://patchwork.freedesktop.org/series/72468/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0a8b363df1e1 drm/i915: Iterate over pipes and skip the disabled one
d9f35baa743a drm/i915: Remove (pipe == crtc->index) assumption
829657dac4f0 drm/i915: Fix broken transcoder err state
7ee86eedd4eb drm/i915: Fix wrongly populated plane possible_crtcs bit mask
65cf221f1fc2 drm/i915: Get first crtc instead of PIPE_A crtc
b89b145c598e drm/i915: Add WARN_ON in intel_get_crtc_for_pipe()
fbf356608f3d drm/i915: Fix broken num_entries in skl_ddb_allocation_overlaps
-:46: WARNING:LONG_LINE: line over 100 characters
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:15405:
+									entries, I915_MAX_PIPES, pipe));

-:55: WARNING:LONG_LINE: line over 100 characters
#55: FILE: drivers/gpu/drm/i915/display/intel_display.c:15440:
+									entries, I915_MAX_PIPES, pipe));

total: 0 errors, 2 warnings, 0 checks, 31 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
