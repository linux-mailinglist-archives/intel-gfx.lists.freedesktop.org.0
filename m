Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C21294DD199
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 01:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097F710E8D8;
	Fri, 18 Mar 2022 00:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0097710E8CE;
 Fri, 18 Mar 2022 00:04:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFBACA00E8;
 Fri, 18 Mar 2022 00:04:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 18 Mar 2022 00:04:27 -0000
Message-ID: <164756186797.31587.13275479559039658705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Rework_BDB_block_handling_=28rev4=29?=
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

Series: drm/i915/bios: Rework BDB block handling (rev4)
URL   : https://patchwork.freedesktop.org/series/101496/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
72f9ed8364ec drm/i915/bios: Extract struct lvds_lfp_data_ptr_table
8d0061ecd718 drm/i915/bios: Make copies of VBT data blocks
b8d6ec3771a2 drm/i915/bios: Use the copy of the LFP data table always
e8e666f84297 drm/i915/bios: Validate LFP data table pointers
-:86: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_bios.c:219:
+		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset != lfp_data_size ||

-:86: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#86: FILE: drivers/gpu/drm/i915/display/intel_bios.c:219:
+		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset != lfp_data_size ||
 		                                               ^

-:87: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_bios.c:220:
+		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset != lfp_data_size ||

-:87: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#87: FILE: drivers/gpu/drm/i915/display/intel_bios.c:220:
+		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset != lfp_data_size ||
 		                                                ^

-:88: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_bios.c:221:
+		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.offset != lfp_data_size)

-:88: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#88: FILE: drivers/gpu/drm/i915/display/intel_bios.c:221:
+		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.offset != lfp_data_size)
 		                                                  ^

total: 0 errors, 3 warnings, 3 checks, 94 lines checked
7e453e0333ef drm/i915/bios: Trust the LFP data pointers
e69891bf7813 drm/i915/bios: Validate the panel_name table
0afce24e16a7 drm/i915/bios: Reorder panel DTD parsing
9c678f984f2a drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
-:41: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#41: FILE: drivers/gpu/drm/i915/display/intel_bios.c:283:
+		if (data[i] == 0xff && data[i+1] == 0xff)
 		                             ^

-:125: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#125: FILE: drivers/gpu/drm/i915/display/intel_bios.c:367:
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		                                                       ^

-:126: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#126: FILE: drivers/gpu/drm/i915/display/intel_bios.c:368:
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		                                                        ^

-:127: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#127: FILE: drivers/gpu/drm/i915/display/intel_bios.c:369:
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 		                                                          ^

total: 0 errors, 0 warnings, 4 checks, 164 lines checked
dfe51a29a54b drm/i915/bios: Get access to the tail end of the LFP data block
a81fc19622d7 drm/i915/bios: Parse the seamless DRRS min refresh rate
d457d9e6d218 drm/i915: Respect VBT seamless DRRS min refresh rate


