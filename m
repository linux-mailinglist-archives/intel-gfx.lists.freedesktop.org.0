Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4D65BFE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A564C10E409;
	Wed, 21 Sep 2022 12:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A57210E3EF;
 Wed, 21 Sep 2022 12:46:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AE15AA917;
 Wed, 21 Sep 2022 12:46:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 21 Sep 2022 12:46:33 -0000
Message-ID: <166376439313.11601.3925182485056625503@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_cleaning_up_the_DPLL_ID_mess?=
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

Series: drm/i915: Start cleaning up the DPLL ID mess
URL   : https://patchwork.freedesktop.org/series/108827/
State : warning

== Summary ==

Error: dim checkpatch failed
e566d547b93b drm/i915: Always initialize dpll.lock
081d1cb10d41 drm/i915: Nuke intel_get_shared_dpll_id()
5a44789e2cb2 drm/i915: Stop requiring PLL index == PLL ID
-:156: CHECK:SPACING: No space is necessary after a cast
#156: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:542:
+		id = (enum intel_dpll_id) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 160 lines checked
da8ead688b1b drm/i915: Decouple I915_NUM_PLLS from PLL IDs


