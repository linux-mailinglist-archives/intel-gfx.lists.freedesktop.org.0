Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D21B529CDBD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 04:55:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315096EC7F;
	Wed, 28 Oct 2020 03:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DDAA6E03E;
 Wed, 28 Oct 2020 03:55:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F277CA47E6;
 Wed, 28 Oct 2020 03:55:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 28 Oct 2020 03:55:29 -0000
Message-ID: <160385732996.21341.9458348291838084628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027193034.28721-1-manasi.d.navare@intel.com>
In-Reply-To: <20201027193034.28721-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prep_for_Big_joiner_+_Allow_bigjoiner_modes?=
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

Series: Prep for Big joiner + Allow bigjoiner modes
URL   : https://patchwork.freedesktop.org/series/83110/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
025d836673b7 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:10: WARNING:TYPO_SPELLING: 'halfs' may be misspelled - perhaps 'halves'?
#10: 
With bigjoiner, there will be 2 pipes driving 2 halfs of 1 transcoder,

-:138: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#138: FILE: drivers/gpu/drm/i915/display/intel_display.c:13460:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 1 warnings, 1 checks, 366 lines checked
baa2b02d5083 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
62e345c7aa6a drm/i915/dp: Prep for bigjoiner atomic check
01bbec339c11 drm/i915/dp: Call hw.adjusted_mode as hw_mode for clarity
-:6: WARNING:TYPO_SPELLING: 'retrive' may be misspelled - perhaps 'retrieve'?
#6: 
No functional changes just use hw_mode to retrive

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
db7c16d90b06 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
