Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCDC724FED
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 00:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC3010E3FA;
	Tue,  6 Jun 2023 22:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98BCF10E3E6;
 Tue,  6 Jun 2023 22:34:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91E45AADD6;
 Tue,  6 Jun 2023 22:34:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 06 Jun 2023 22:34:39 -0000
Message-ID: <168609087956.22671.9186717589817092512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Load_LUTs_with_DSB_=28rev2=29?=
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

Series: drm/i915: Load LUTs with DSB (rev2)
URL   : https://patchwork.freedesktop.org/series/113042/
State : warning

== Summary ==

Error: dim checkpatch failed
35a5ec5257a0 drm/i915: Constify LUT entries in checker
018aa36a0ba6 drm/i915/dsb: Use non-locked register access
7f1c6c879158 drm/i915/dsb: Dump the DSB command buffer when DSB fails
-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:108:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                        ^

-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:108:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                                  ^

-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:108:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                                            ^

total: 0 errors, 0 warnings, 3 checks, 46 lines checked
0a4d1ee3a7dc drm/i915/dsb: Define more DSB bits
38081eebc4d0 drm/i915/dsb: Define the contents of some intstructions bit better
9f17b48cfa11 drm/i915/dsb: Avoid corrupting the first register write
c42dd35aefce drm/i915/dsb: Don't use indexed writes when byte enables are not all set
3fbf457bbf91 drm/i915/dsb: Introduce intel_dsb_noop()
dac21505a69f drm/i915/dsb: Introduce intel_dsb_reg_write_masked()
31801d2a8474 drm/i915/dsb: Add support for non-posted DSB registers writes
855a48b16b6a drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
2c4cd85c5f78 drm/i915/dsb: Load LUTs using the DSB during vblank
cfe38d031292 drm/i915/dsb: Use non-posted register writes for legacy LUT
dd012e35d761 drm/i915/dsb: Evade transcoder undelayed vblank when using DSB
941cfcdee747 drm/i915: Introduce skl_watermark_max_latency()
2fb1138ee512 drm/i915: Introudce intel_crtc_scanline_to_hw()
952b6004f60c drm/i915/dsb: Use DEwake to combat PkgC latency
d88af6de0a61 drm/i915/dsb: Re-instate DSB for LUT updates
c745478e5c12 drm/i915: Do state check for color management changes


