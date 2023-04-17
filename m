Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5306E4EDD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 19:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F5910E571;
	Mon, 17 Apr 2023 17:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78C8310E3BC;
 Mon, 17 Apr 2023 17:11:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70BDDA0BCB;
 Mon, 17 Apr 2023 17:11:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 17 Apr 2023 17:11:17 -0000
Message-ID: <168175147742.24901.4717968810635377935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Check_HPD_during_eDP_probe_=28rev6=29?=
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

Series: drm/i915: Check HPD during eDP probe (rev6)
URL   : https://patchwork.freedesktop.org/series/114577/
State : warning

== Summary ==

Error: dim checkpatch failed
8c0b522203ba drm/i915: Introduce <platform>_hotplug_mask()
7131b5b152ca drm/i915: Introduce intel_hpd_enable_detection()
786171cf2e56 drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

-:74: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
#74: 
References: https://bugs.freedesktop.org/show_bug.cgi?id=111966

total: 1 errors, 1 warnings, 0 checks, 46 lines checked
9949d1b22953 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()
-:15: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'Vinod Govindapillai <vinod.govindapillai@intel.com>a #v1', should be: 'Vinod Govindapillai <vinod.govindapillai@intel.com> (a #v1)'
#15: 
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>a #v1

total: 0 errors, 1 warnings, 0 checks, 140 lines checked


