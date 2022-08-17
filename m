Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4255597723
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 21:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1290FA5C8E;
	Wed, 17 Aug 2022 19:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3EA091A81;
 Wed, 17 Aug 2022 19:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A8E5AA917;
 Wed, 17 Aug 2022 19:57:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 17 Aug 2022 19:57:41 -0000
Message-ID: <166076626160.11666.2853989486920680160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817193847.557945-1-lyude@redhat.com>
In-Reply-To: <20220817193847.557945-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/display/dp=5Fmst=3A_Drop_Radeon_MST_support=2C_make_MST?=
 =?utf-8?q?_atomic-only_=28rev4=29?=
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

Series: drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev4)
URL   : https://patchwork.freedesktop.org/series/107073/
State : warning

== Summary ==

Error: dim checkpatch failed
8209f78fa516 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)
910ba91bed39 drm/amdgpu/dm/mst: Rename get_payload_table()
43307a1cad11 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation
24c1e16fecba drm/display/dp_mst: Call them time slots, not VCPI slots
fec45c550ad6 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()
e9b7a3ca4b46 drm/display/dp_mst: Add some missing kdocs for atomic MST structs
0a8f5f283d3f drm/display/dp_mst: Add helper for finding payloads in atomic MST state
c8930532bc52 drm/display/dp_mst: Add nonblocking helpers for DP MST
6c8b1083cd20 drm/display/dp_mst: Don't open code modeset checks for releasing time slots
01d86be84ef4 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()
c6785c017bbd drm/nouveau/kms: Cache DP encoders in nouveau_connector
2b013f4e04d0 drm/nouveau/kms: Pull mst state in for all modesets
0340e53a947e drm/display/dp_mst: Add helpers for serializing SST <-> MST transitions
6e4123c37080 drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work
d7918f0338ef drm/display/dp_mst: Maintain time slot allocations when deleting payloads
437ce59c65e6 drm/radeon: Drop legacy MST support
-:299: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#299: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 346 lines checked
8f80c20dd28a drm/display/dp_mst: Move all payload info into the atomic state
-:793: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#793: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:3283:
 {
+

-:1492: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#1492: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4752:
+	seq_printf(m, "\n*** Atomic state info ***\n");

-:1496: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#1496: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4756:
+	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");

-:1827: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1827: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:511:
+				       drm_atomic_get_mst_payload_state(mst_state, connector->port));

-:2166: WARNING:LINE_SPACING: Missing a blank line after declarations
#2166: FILE: drivers/gpu/drm/nouveau/dispnv50/disp.c:1401:
+			struct nv50_mstc *mstc = msto->mstc;
+			if (mstc && mstc->mstm == mstm && !msto->disabled)

total: 0 errors, 4 warnings, 1 checks, 2268 lines checked


