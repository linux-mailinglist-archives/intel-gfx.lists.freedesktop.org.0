Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FF74D3EB9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 02:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9341410E7B1;
	Thu, 10 Mar 2022 01:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D08510E7AE;
 Thu, 10 Mar 2022 01:28:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BEB4A73C7;
 Thu, 10 Mar 2022 01:28:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 01:28:05 -0000
Message-ID: <164687568517.17009.6414118634687131789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DRRS_fixes/cleanups_and_start_of_static_DRRS?=
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

Series: drm/i915: DRRS fixes/cleanups and start of static DRRS
URL   : https://patchwork.freedesktop.org/series/101222/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d02f80fe9d06 drm/i915: Fix up some DRRS type checks
1d8de7687685 drm/i915: Constify intel_drrs_init() args
4afde97e93b0 drm/i915: Pimp DRRS debugs
68a4fe03dceb drm/i915: Read DRRS MSA timing delay from VBT
2a005be48e70 drm/i915: Program MSA timing delay on ilk/snb/ivb
691d5646b6ee drm/i915: Polish drrs type enum
0ce0532a4cce drm/i915: Clean up DRRS refresh rate enum
1cc72ce0c712 drm/i915: Rename PIPECONF refresh select bits
1407ab78d3dc drm/i915: Stash DRRS state under intel_crtc
-:252: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#252: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1303:
+		struct mutex mutex;

total: 0 errors, 0 warnings, 1 checks, 710 lines checked
83598718ed14 drm/i915: Move DRRS enable/disable higher up
50dc95da8ab0 drm/i915: Enable eDP DRRS on ilk/snb port A
fb10fe933f94 drm/i915: Introduce intel_panel_{fixed, downclock}_mode()
ec08fd6eee6a drm/i915: Implement static DRRS


