Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249D6A771E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 23:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F00110E012;
	Wed,  1 Mar 2023 22:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE12E10E012;
 Wed,  1 Mar 2023 22:50:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6627A47DF;
 Wed,  1 Mar 2023 22:50:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Date: Wed, 01 Mar 2023 22:50:58 -0000
Message-ID: <167771105894.6633.9444261498572239676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Misc_Meteorlake_patches_=28rev3=29?=
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

Series: Misc Meteorlake patches (rev3)
URL   : https://patchwork.freedesktop.org/series/112700/
State : warning

== Summary ==

Error: dim checkpatch failed
f2efa48f76b8 drm/i915/mtl: Fix Wa_16015201720 implementation
3d4b9acde185 drm/i915/gt: generate per tile debugfs files
300a16a2c511 drm/i915/mtl: make IRQ reset and postinstall multi-gt aware
1af00da0945d drm/i915/fbdev: lock the fbdev obj before vma pin
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
<7>[   93.563308] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one

-:51: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:296:
+					"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:296:
+			drm_err(&dev_priv->drm,
+					"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);

total: 0 errors, 2 warnings, 1 checks, 37 lines checked
4be18c15f3ba drm/i915/display/mtl: Program latch to phy reset


