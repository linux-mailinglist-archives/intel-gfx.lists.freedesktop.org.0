Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8088A8BAD1F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 15:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9B610FC2D;
	Fri,  3 May 2024 13:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908CE10FC2D;
 Fri,  3 May 2024 13:05:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/bios=3A_Def?=
 =?utf-8?q?ine_=28almost=29_all_BDB_blocks?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 May 2024 13:05:44 -0000
Message-ID: <171474154458.1887365.4492278068984603486@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/bios: Define (almost) all BDB blocks
URL   : https://patchwork.freedesktop.org/series/133169/
State : warning

== Summary ==

Error: dim checkpatch failed
da729809e1d5 drm/i915/bios: Define eDP DSC disable bit
b3bf97c68e98 drm/i915/bios: Remove version number comment from DEVICE_HANDLE_EFP4
f21e9ca180aa drm/i915/bios: Indicate which VBT structures are based on EDID
0b46faab7f53 drm/i915/bios: Get rid of "LVDS" from all LFP data stuff
a4771f0a6ee1 drm/i915/bios: Rename SDVO DTD blocks a bit
403f4f36faa1 drm/i915/bios: Define "TV" child device handle
78756cf33765 drm/i915/bios: Flag "VBIOS only" VBT data blocks
d2c010e3c8c0 drm/i915/bios: Add version notes for some blocks
613106335c58 drm/i915/bios: Define VBT block 3 (Display Toggle Option) contents
d0a342dc8526 drm/i915/bios: Define VBT block 4 (Mode Support List) contents
1b18443b8777 drm/i915/bios: Define VBT block 5 (Generic Mode Table)
f88c6b2dac47 drm/i915/bios: Define VBT blocks 6, 7, 8 (register tables) contents
5022159a3bb3 drm/i915/bios: Define VBT block 10 (Mode Removal Table) contents
b53301562c43 drm/i915/bios: Define VBT block 12 (Driver Persistent Algorithm) contents
6f2a9f7540b4 drm/i915/bios: Define VBT block 15 (Dot Clock Override Table) contents
780e79356def drm/i915/bios: Define ALM only VBT block 9 contents
-:51: ERROR:FLEXIBLE_ARRAY: Use C99 flexible arrays - see https://docs.kernel.org/process/deprecated.html#zero-length-and-one-element-arrays
#51: FILE: drivers/gpu/drm/i915/display/intel_vbt_defs.h:671:
+	struct dot_clock_override_entry_gen2 t[0];
+} __packed;

total: 1 errors, 0 warnings, 0 checks, 49 lines checked
bc8a1ad9d9e8 drm/i915/bios: Define VBT block 17 (SV Test Functions) contents
81c9f3da4917 drm/i915/bios: Define VBT block 18 (Driver Rotation) contents
76d2393227a5 drm/i915/bios: Define VBT blocks 16, 29, 31 (Toggle List) contents
7766468413aa drm/i915/bios: Define VBT blocks 19, 30, 32 (Display Configuration Removal Table) contents
f115adad0975 drm/i915/bios: Define VBT block 20 (OEM Customizable Modes) contents
a6f7d6b10ece drm/i915/bios: Define VBT block 21 (EFP List) contents
8a53f5e4b114 drm/i915/bios: Define VBT block 24 (SDVO LVDS PnP ID) contents
46fc32698ae9 drm/i915/bios: Define VBT block 25 (SDVO LVDS PPS) contents
712d377ad383 drm/i915/bios: Define VBT block 26 (TV Options) contents
aafc45f77a40 drm/i915/bios: Define VBT block 28 (EFP DTD) contents
1513b1b6f365 drm/i915/bios: Define VBT block 45 (eDP BFI) contents
9fddf03e4aa0 drm/i915/bios: Define VBT block 46 (Chromaticity For Narrow Gamut Panel) contents
d5c916aa7854 drm/i915/bios: Define VBT block 51 (Fixed Set Mode Table) contents
5168f333f009 drm/i915/bios: Define VBT block 55 (RGB Palette Table) contents
8583a728e753 drm/i915/bios: Define VBT block 57 (Vswing PreEmphasis Table) contents
cefcbd6413e4 drm/i915/bios: Define VBT block 50 (MIPI) contents
b77455dcf3d3 drm/i915/bios: Define VBT block 55 (Compression Parameters)
f0cb4e49136f drm/i915/bios: Define VBT block 252 (int15 Hook)
77279f1c2a50 drm/i915/bios: Define VBT block 253 (PRD Table) contents


