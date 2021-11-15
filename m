Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BCE450F67
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 19:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BC26E247;
	Mon, 15 Nov 2021 18:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD9786E247;
 Mon, 15 Nov 2021 18:28:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7AD3A008A;
 Mon, 15 Nov 2021 18:28:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 15 Nov 2021 18:28:36 -0000
Message-ID: <163700091673.2947.3497679082854705679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112190904.62920-1-imre.deak@intel.com>
In-Reply-To: <20211112190904.62920-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_fastsets_on_TypeC_ports_following_a_non-blo?=
 =?utf-8?q?cking_modeset_=28rev2=29?=
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

Series: drm/i915: Fix fastsets on TypeC ports following a non-blocking modeset (rev2)
URL   : https://patchwork.freedesktop.org/series/96867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
16eaaf636f97 drm/i915: Fix fastsets on TypeC ports following a non-blocking modeset
-:45: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_display.c:1583:
+	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.

-:49: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_display.c:1587:
+		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {

total: 0 errors, 2 warnings, 0 checks, 61 lines checked


