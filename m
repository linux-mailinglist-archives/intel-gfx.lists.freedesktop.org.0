Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C232952D6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 21:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B016F4B1;
	Wed, 21 Oct 2020 19:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59C7D6F4B1;
 Wed, 21 Oct 2020 19:20:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51EF2A00CC;
 Wed, 21 Oct 2020 19:20:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 21 Oct 2020 19:20:43 -0000
Message-ID: <160330804330.17471.1786504246072589534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201021183252.4765-1-manasi.d.navare@intel.com>
In-Reply-To: <20201021183252.4765-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_hw=2Epipe=5Fmode_to_allow_bigjoiner_pipe/tr?=
 =?utf-8?q?anscoder_split?=
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

Series: drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
URL   : https://patchwork.freedesktop.org/series/82931/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3060c8151734 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:7: WARNING:TYPO_SPELLING: 'halfs' may be misspelled - perhaps 'halves'?
#7: 
With bigjoiner, there will be 2 pipes driving 2 halfs of 1 transcoder,

-:135: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#135: FILE: drivers/gpu/drm/i915/display/intel_display.c:13457:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 1 warnings, 1 checks, 366 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
