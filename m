Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C54F45BF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 00:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B00810E5DA;
	Tue,  5 Apr 2022 22:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3C9110E5DA;
 Tue,  5 Apr 2022 22:55:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE344A01BB;
 Tue,  5 Apr 2022 22:55:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 05 Apr 2022 22:55:29 -0000
Message-ID: <164919932994.24156.18166195553355674661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epan?=
 =?utf-8?q?el=5Ftype_matching?=
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

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching
URL   : https://patchwork.freedesktop.org/series/102213/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
05d9638c2980 drm/i915/bios: Use the cached BDB version
578166bc3056 drm/i915/bios: Make copies of VBT data blocks
90add1560515 drm/i915/bios: Use the copy of the LFP data table always
cccb9f6e5310 drm/i915/bios: Validate LFP data table pointers
-:93: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_bios.c:257:
+		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset != lfp_data_size ||

-:93: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#93: FILE: drivers/gpu/drm/i915/display/intel_bios.c:257:
+		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset != lfp_data_size ||
 		                                               ^

-:94: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_bios.c:258:
+		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset != lfp_data_size ||

-:94: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#94: FILE: drivers/gpu/drm/i915/display/intel_bios.c:258:
+		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset != lfp_data_size ||
 		                                                ^

-:95: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_bios.c:259:
+		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.offset != lfp_data_size)

-:95: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#95: FILE: drivers/gpu/drm/i915/display/intel_bios.c:259:
+		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.offset != lfp_data_size)
 		                                                  ^

total: 0 errors, 3 warnings, 3 checks, 100 lines checked
73c2bd353d63 drm/i915/bios: Trust the LFP data pointers
0ca5de1a6532 drm/i915/bios: Validate the panel_name table
057a8b805d81 drm/i915/bios: Reorder panel DTD parsing
086e15f0d645 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
-:44: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/display/intel_bios.c:321:
+		if (data[i] == 0xff && data[i+1] == 0xff)
 		                             ^

-:128: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#128: FILE: drivers/gpu/drm/i915/display/intel_bios.c:405:
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		                                                       ^

-:129: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#129: FILE: drivers/gpu/drm/i915/display/intel_bios.c:406:
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		                                                        ^

-:130: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#130: FILE: drivers/gpu/drm/i915/display/intel_bios.c:407:
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 		                                                          ^

total: 0 errors, 0 warnings, 4 checks, 160 lines checked
d07d7dcf7c2d drm/i915/bios: Get access to the tail end of the LFP data block
f00aa539537f drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
e1742d2d9cf5 drm/i915/bios: Split parse_driver_features() into two parts
36484fb6dd23 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
d1fd524d3ca5 drm/i915/pps: Split PPS init+sanitize in two
258da58b3f75 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
90cb9845428d drm/i915/bios: Do panel specific VBT parsing later
2c6005cc3af9 drm/i915/bios: Extract get_panel_type()
53decd0e521a drm/i915/bios: Refactor panel_type code
179efa1ac625 drm/i915/bios: Determine panel type via PNPID match
00d122192a92 drm/i915/bios: Parse the seamless DRRS min refresh rate
2d62931bb39e drm/i915: Respect VBT seamless DRRS min refresh rate
39a5b7b20e53 drm/edid: Extract drm_edid_decode_mfg_id()
e1e2c24beed6 drm/i915/bios: Dump PNPID and panel name


