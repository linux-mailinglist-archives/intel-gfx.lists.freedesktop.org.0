Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 271B1639B30
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Nov 2022 14:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5D610E086;
	Sun, 27 Nov 2022 13:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7066810E086;
 Sun, 27 Nov 2022 13:56:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DDC4A00E8;
 Sun, 27 Nov 2022 13:56:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 27 Nov 2022 13:56:42 -0000
Message-ID: <166955740244.29937.9512027210009347732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fake_dual_eDP_VBT_fixes_=28rev3=29?=
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

Series: drm/i915: Fake dual eDP VBT fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/110693/
State : warning

== Summary ==

Error: dim checkpatch failed
75c8e4541d7c drm/i915: Introduce intel_panel_init_alloc()
175ec6587f67 drm/i915: Do panel VBT init early if the VBT declares an explicit panel type
b2c65996e56d drm/i915: Generalize the PPS vlv_pipe_check() stuff
b1641bb0a6e7 drm/i915: Try to use the correct power sequencer intiially on bxt/glk
47fc67e06f24 drm/i915: Extend dual PPS handlind for ICP+
215613ee31ae drm/i915: Reject unusablee power sequencers
6b2987422b20 drm/i915: Print the PPS registers using consistent format
d41bcff953c5 drm/i915: Fix whitespace
-:23: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/display/intel_pps.c:538:
+#define IDLE_ON_VALUE		(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
1af1f53c850c drm/i915: Improve PPS debugs


