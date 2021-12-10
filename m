Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A45846F9B8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 05:00:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4B910E1F0;
	Fri, 10 Dec 2021 04:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 816D710E1EE;
 Fri, 10 Dec 2021 04:00:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78CE7AADD1;
 Fri, 10 Dec 2021 04:00:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 10 Dec 2021 04:00:34 -0000
Message-ID: <163910883447.3445.16367955133928402638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1639068649.git.jani.nikula@intel.com>
In-Reply-To: <cover.1639068649.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/cdclk=3A_improve_abstractions?=
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

Series: drm/i915/cdclk: improve abstractions
URL   : https://patchwork.freedesktop.org/series/97802/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f998c44f2eb drm/i915/cdclk: move intel_atomic_check_cdclk() to intel_cdclk.c
9a302307adb3 drm/i915/cdclk: un-inline intel_cdclk_state functions
-:27: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2642:
+	return to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));

-:33: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2648:
+	return to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));

total: 0 errors, 2 warnings, 0 checks, 43 lines checked
8a09ab9559e2 drm/i915/cdclk: hide struct intel_cdclk_vals
f957246959a0 drm/i915/cdclk: turn around i915_drv.h and intel_cdclk.h dependency


