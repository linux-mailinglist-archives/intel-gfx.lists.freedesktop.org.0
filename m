Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E2A4F6EFA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 02:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C7110E61E;
	Thu,  7 Apr 2022 00:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 888F310E61E;
 Thu,  7 Apr 2022 00:11:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82733AA0EB;
 Thu,  7 Apr 2022 00:11:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 00:11:56 -0000
Message-ID: <164929031650.14671.12941430165488798913@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epan?=
 =?utf-8?q?el=5Ftype_matching_=28rev6=29?=
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

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev6)
URL   : https://patchwork.freedesktop.org/series/102213/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fdfc2be08fd7 drm/i915/bios: Use the cached BDB version
8dc5af439d5d drm/i915/bios: Make copies of VBT data blocks
672b309530c4 drm/i915/bios: Use the copy of the LFP data table always
4cfe7896f554 drm/i915/bios: Validate LFP data table pointers
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
9d8c9b4008e5 drm/i915/bios: Trust the LFP data pointers
e7a5932867a6 drm/i915/bios: Validate the panel_name table
352847c0e8b3 drm/i915/bios: Reorder panel DTD parsing
cf38814a8c6c drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
-:47: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#47: FILE: drivers/gpu/drm/i915/display/intel_bios.c:321:
+		if (data[i] == 0xff && data[i+1] == 0xff)
 		                             ^

-:134: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/display/intel_bios.c:408:
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		                                                       ^

-:135: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/display/intel_bios.c:409:
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		                                                        ^

-:136: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#136: FILE: drivers/gpu/drm/i915/display/intel_bios.c:410:
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 		                                                          ^

total: 0 errors, 0 warnings, 4 checks, 163 lines checked
88f348858b05 drm/i915/bios: Get access to the tail end of the LFP data block
77fbdc1340cb drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
d09cde4bafdd drm/i915/bios: Split parse_driver_features() into two parts
d2557a522b00 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
f3f6fd93b1d9 drm/i915/pps: Split PPS init+sanitize in two
ee0b015fb8b5 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
1f699fc7080d drm/i915/bios: Do panel specific VBT parsing later
99290a9ac023 drm/i915/bios: Extract get_panel_type()
bdb3831d1ec8 drm/i915/bios: Refactor panel_type code
98e3b7bd98d0 drm/i915/bios: Determine panel type via PNPID match
409a939b51b8 drm/i915/bios: Parse the seamless DRRS min refresh rate
1ec0c835042e drm/i915: Respect VBT seamless DRRS min refresh rate
b05a19342dcb drm/edid: Extract drm_edid_decode_mfg_id()
9f80bf52f53a drm/i915/bios: Dump PNPID and panel name


