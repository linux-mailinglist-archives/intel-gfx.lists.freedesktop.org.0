Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD5451B691
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 05:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5805910E2DD;
	Thu,  5 May 2022 03:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5510988E3F;
 Thu,  5 May 2022 03:28:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 549C0A66C9;
 Thu,  5 May 2022 03:28:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 May 2022 03:28:20 -0000
Message-ID: <165172130032.7659.6197553967746955044@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Rework_BDB_block_handling_=28rev7=29?=
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

Series: drm/i915/bios: Rework BDB block handling (rev7)
URL   : https://patchwork.freedesktop.org/series/101496/
State : warning

== Summary ==

Error: dim checkpatch failed
5c4f46729d27 drm/i915/bios: Reorder panel DTD parsing
d34ebed1abf7 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
-:46: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#46: FILE: drivers/gpu/drm/i915/display/intel_bios.c:319:
+		if (data[i] == 0xff && data[i+1] == 0xff)
 		                             ^

-:134: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/display/intel_bios.c:407:
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		                                                       ^

-:135: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/display/intel_bios.c:408:
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		                                                        ^

-:136: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#136: FILE: drivers/gpu/drm/i915/display/intel_bios.c:409:
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 		                                                          ^

total: 0 errors, 0 warnings, 4 checks, 161 lines checked
dd0b53fecb41 drm/i915/bios: Get access to the tail end of the LFP data block
b444cf795df2 drm/i915/bios: Document the mess around the LFP data tables
b8fa66dfa50d drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
f80f07fab7e2 drm/i915/bios: Extract get_panel_type()
6e1e7f4d7703 drm/i915/bios: Refactor panel_type code
79b6c615ef02 drm/i915/bios: Parse the seamless DRRS min refresh rate
80a1a2def814 drm/i915: Respect VBT seamless DRRS min refresh rate


