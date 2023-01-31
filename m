Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F54A683179
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6520010E032;
	Tue, 31 Jan 2023 15:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCC4D10E032;
 Tue, 31 Jan 2023 15:27:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6DD2AADE8;
 Tue, 31 Jan 2023 15:27:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 31 Jan 2023 15:27:08 -0000
Message-ID: <167517882872.5938.7125945786338585676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230131150548.1614458-1-imre.deak@intel.com>
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_drm/i915/dp=5Fmst=3A_Fix_MST_payload_removal_du?=
 =?utf-8?q?ring_output_disabling?=
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

Series: drm/i915: drm/i915/dp_mst: Fix MST payload removal during output disabling
URL   : https://patchwork.freedesktop.org/series/113527/
State : warning

== Summary ==

Error: dim checkpatch failed
dff29428fcc0 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs
7472ebf37845 drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()
ccd1b92b1d94 drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
e96169030cbe drm/i915/dp_mst: Fix payload removal during output disabling
741b71cc0b20 drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()
38e31e9f11fe drm/display/dp_mst: Sanitize payload iteration in drm_dp_mst_dump_topology()
69b8d995079a drm/i915: Factor out helpers for modesetting CRTCs and connectors
-:65: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:638:
+ * intel_atomic_modeset_connector - add a connector to the atomic state, force modeset on its CRTC if any

total: 0 errors, 1 warnings, 0 checks, 365 lines checked
52a77ab96f52 drm/i915/dp_mst: Move getting the MST topology state earlier to connector check
9a8d477f349f drm/display/dp_mst: Add a helper to verify the MST payload state
-:158: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#158: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4982:
+ * drm_dp_mst_verify_payload_state - Verify the atomic state for payloads and the related sink payload table

total: 0 errors, 1 warnings, 0 checks, 196 lines checked
56897c31415e drm/i915/dp_mst: Verify the MST state of modesetted outputs
44abb28c2317 drm/display/dp_mst: Add helpers to query for payload allocation errors
f1d761b8bc7e drm/display/dp_mst: Add helpers to query payload allocation properties
da362ee0830a drm/display/dp_mst: Export the DP_PAYLOAD_TABLE_SIZE definition
a8aa6c80169d drm/display/dp_mst: Factor out a helper to reset the payload table
a80bbf962d64 drm/dp: Add a quirk for a DELL P2715Q MST payload allocation problem
-:31: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#31: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2247:
+	/* DELL P2715Q MST payload table must be reset after the two last payload slots get allocated. */

-:32: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#32: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2248:
+	{ OUI(0x00, 0xe0, 0x4c), DEVICE_ID('D', 'p', '1', '.', '2', 0), true, BIT(DP_DPCD_QUIRK_MST_PAYLOAD_TABLE_RESET_WA) },

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
07c714f2b343 drm/i915/dp_mst: Add workaround for a DELL P2715Q payload allocation problem
91a26c6b6652 drm/i915/dp_mst: Verify the HW state of MST encoders
-:31: CHECK:SPACING: No space is necessary after a cast
#31: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:672:
+		return (enum transcoder) pipe;

-:118: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#118: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3547:
+	drm_WARN_ON(&i915->drm, state->num_mst_streams == 0 ||
+				state->num_mst_streams > ARRAY_SIZE(state->mst_stream));

total: 0 errors, 0 warnings, 2 checks, 295 lines checked


