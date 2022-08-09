Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C3E58D154
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 02:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432D7AE984;
	Tue,  9 Aug 2022 00:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A772B05A9;
 Tue,  9 Aug 2022 00:21:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D934AADD1;
 Tue,  9 Aug 2022 00:21:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 09 Aug 2022 00:21:51 -0000
Message-ID: <166000451157.12842.1539304594736389907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220808235203.123892-1-lyude@redhat.com>
In-Reply-To: <20220808235203.123892-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/display/dp=5Fmst=3A_Drop_Radeon_MST_support=2C_make_MST?=
 =?utf-8?q?_atomic-only?=
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

Series: drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only
URL   : https://patchwork.freedesktop.org/series/107073/
State : warning

== Summary ==

Error: dim checkpatch failed
1edd44d8fda1 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)
0dc527949f22 drm/amdgpu/dm/mst: Rename get_payload_table()
f1bacadf3e76 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation
2ecdbe11bc3e drm/display/dp_mst: Call them time slots, not VCPI slots
3316d1b378c1 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()
16f2c9ea3e8e drm/display/dp_mst: Add some missing kdocs for atomic MST structs
38425abd1273 drm/display/dp_mst: Add helper for finding payloads in atomic MST state
691008feb57c drm/display/dp_mst: Add nonblocking helpers for DP MST
b4e4b9170780 drm/display/dp_mst: Don't open code modeset checks for releasing time slots
ccfdf2d4da8d drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()
0ef70825a260 drm/nouveau/kms: Cache DP encoders in nouveau_connector
84f6326888b8 drm/nouveau/kms: Pull mst state in for all modesets
2947158dda3e drm/display/dp_mst: Add helpers for serializing SST <-> MST transitions
a96b55fd2dfc drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work
190816415106 drm/display/dp_mst: Skip releasing payloads if last connected port isn't connected
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
commit 3769e4c0af5b ("drm/dp_mst: Avoid to mess up payload table by ports in stale topology")

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
854fb3e71cfb drm/display/dp_mst: Maintain time slot allocations when deleting payloads
c1758ae54e11 drm/radeon: Drop legacy MST support
-:299: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#299: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 346 lines checked
71b255266310 drm/display/dp_mst: Move all payload info into the atomic state
-:790: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#790: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:3294:
 {
+

-:1453: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#1453: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4753:
+	seq_printf(m, "\n*** Atomic state info ***\n");

-:1458: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#1458: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4757:
+	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");

-:1789: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1789: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:511:
+				       drm_atomic_get_mst_payload_state(mst_state, connector->port));

-:2128: WARNING:LINE_SPACING: Missing a blank line after declarations
#2128: FILE: drivers/gpu/drm/nouveau/dispnv50/disp.c:1401:
+			struct nv50_mstc *mstc = msto->mstc;
+			if (mstc && mstc->mstm == mstm && !msto->disabled)

total: 0 errors, 4 warnings, 1 checks, 2233 lines checked


