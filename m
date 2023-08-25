Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D94788DD1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 19:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93E810E0F7;
	Fri, 25 Aug 2023 17:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2ACB710E0F7;
 Fri, 25 Aug 2023 17:27:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2413BAADD8;
 Fri, 25 Aug 2023 17:27:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Date: Fri, 25 Aug 2023 17:27:40 -0000
Message-ID: <169298446012.10953.12819323073374291062@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230825161129.2811298-1-navaremanasi@chromium.org>
In-Reply-To: <20230825161129.2811298-1-navaremanasi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display=3A_Allow_VR?=
 =?utf-8?q?R_parameters_mismatch_in_case_of_dual_refresh_rate_fastset?=
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

Series: series starting with [1/2] drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset
URL   : https://patchwork.freedesktop.org/series/122926/
State : warning

== Summary ==

Error: dim checkpatch failed
1dedbe087f62 drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
With VRR fastset patch series (https://patchwork.freedesktop.org/series/115422/)

-:26: WARNING:TYPO_SPELLING: 'recieved' may be misspelled - perhaps 'received'?
#26: 
This tries to address and clarify the feedback recieved on previous revs
                                               ^^^^^^^^

-:50: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#50: FILE: drivers/gpu/drm/i915/display/intel_display.c:5346:
+	/* FIXME Handle the VRR + Seamless M N case correctly by
+	   programming these VRR parameters in update_crtc()

total: 0 errors, 3 warnings, 0 checks, 21 lines checked
a15f2d68ab5c drm/i915/display/vrr: Update VRR parameters in fastset


