Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A16E511847
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 15:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B620B10E0F7;
	Wed, 27 Apr 2022 13:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E67CE10E0F7;
 Wed, 27 Apr 2022 13:25:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E11AFAAA91;
 Wed, 27 Apr 2022 13:25:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 27 Apr 2022 13:25:48 -0000
Message-ID: <165106594889.24236.17050743247275154068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epan?=
 =?utf-8?q?el=5Ftype_matching_=28rev8=29?=
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

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev8)
URL   : https://patchwork.freedesktop.org/series/102213/
State : warning

== Summary ==

Error: dim checkpatch failed
e059b3ad1acf drm/i915/bios: Reorder panel DTD parsing
0daf03385bab drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
-:45: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#45: FILE: drivers/gpu/drm/i915/display/intel_bios.c:319:
+		if (data[i] == 0xff && data[i+1] == 0xff)
 		                             ^

-:133: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#133: FILE: drivers/gpu/drm/i915/display/intel_bios.c:407:
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		                                                       ^

-:134: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/display/intel_bios.c:408:
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		                                                        ^

-:135: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/display/intel_bios.c:409:
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 		                                                          ^

total: 0 errors, 0 warnings, 4 checks, 161 lines checked
1474ba848018 drm/i915/bios: Get access to the tail end of the LFP data block
1a1e2dbf1e29 drm/i915/bios: Document the mess around the LFP data tables
69293b53dad4 drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
22d9a51d0e9b drm/i915/bios: Split parse_driver_features() into two parts
04dc76c9e730 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
acc3e7825cf2 drm/i915/bios: Don't parse some panel specific data multiple times
95cff1eb5e1d drm/i915/pps: Split PPS init+sanitize in two
f2d496895332 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
b01feedc5f58 drm/i915/bios: Do panel specific VBT parsing later
3e5e12e89c0a drm/i915/bios: Extract get_panel_type()
20e816239ebc drm/i915/bios: Refactor panel_type code
f89016f8d594 drm/i915/bios: Determine panel type via PNPID match
45ca4d81977d drm/i915/bios: Parse the seamless DRRS min refresh rate
2a04c7ddbb0a drm/i915: Respect VBT seamless DRRS min refresh rate
fcdc28cfed8d drm/edid: Extract drm_edid_decode_mfg_id()
4f6667441d9a drm/i915/bios: Dump PNPID and panel name


