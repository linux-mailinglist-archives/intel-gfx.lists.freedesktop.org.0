Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8763C2C3392
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 22:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDAA89935;
	Tue, 24 Nov 2020 21:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A10E89935;
 Tue, 24 Nov 2020 21:57:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90D2BA7525;
 Tue, 24 Nov 2020 21:57:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 24 Nov 2020 21:57:05 -0000
Message-ID: <160625502556.10859.10322863205044509857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Track_logically_?=
 =?utf-8?q?enabled_planes_for_hw_state?=
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

Series: series starting with [1/4] drm/i915: Track logically enabled planes for hw state
URL   : https://patchwork.freedesktop.org/series/84230/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8ed43f2396aa drm/i915: Track logically enabled planes for hw state
c836548c46a2 drm/i915: Add intel_atomic_add_affected_planes()
eb9f9aa0b305 drm/i915: Properly flag modesets for all bigjoiner pipes
-:68: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/display/intel_display.c:15680:
+				intel_atomic_get_new_crtc_state(state, new_crtc_state->bigjoiner_linked_crtc);

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
2475fb19684c drm/i915: Call kill_bigjoiner_slave() earlier


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
