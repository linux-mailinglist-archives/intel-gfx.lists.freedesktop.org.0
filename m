Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18091503A1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 10:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1892A6EB93;
	Mon,  3 Feb 2020 09:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07ED26EB90;
 Mon,  3 Feb 2020 09:53:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0000DA0093;
 Mon,  3 Feb 2020 09:53:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Feb 2020 09:53:17 -0000
Message-ID: <158072359799.3017.3450406055692893744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display=3A_Defer_ap?=
 =?utf-8?q?plication_of_initial_chv=5Fphy=5Fcontrol?=
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

Series: series starting with [1/3] drm/i915/display: Defer application of initial chv_phy_control
URL   : https://patchwork.freedesktop.org/series/72905/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9599b1400368 drm/i915/display: Defer application of initial chv_phy_control
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
<7> [120.055984] i915 0000:00:02.0: [drm:intel_power_domains_init_hw [i915]] rawclk rate: 200000 kHz

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
79cc55ca7ceb drm/i915/display: Fix NULL-crtc deref in calc_min_cdclk()
bfbeab6879a9 drm/i915/audio: Skip the cdclk modeset if no pipes attached
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
<6> [278.907105] snd_hda_intel 0000:00:0e.0: DSP detected with PCI class/subclass/prog-if info 0x040100

total: 0 errors, 1 warnings, 0 checks, 41 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
