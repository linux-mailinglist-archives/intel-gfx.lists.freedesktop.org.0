Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3467067C7FE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 11:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8CF10E135;
	Thu, 26 Jan 2023 10:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B72D910E135;
 Thu, 26 Jan 2023 10:04:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0E7AAADE2;
 Thu, 26 Jan 2023 10:04:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 26 Jan 2023 10:04:17 -0000
Message-ID: <167472745772.538.5457422659222793006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125114852.748337-1-imre.deak@intel.com>
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=5Fmst=3A_Fix_MST_payload_removal_during_output_?=
 =?utf-8?q?disabling_=28rev2=29?=
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

Series: drm/i915/dp_mst: Fix MST payload removal during output disabling (rev2)
URL   : https://patchwork.freedesktop.org/series/113329/
State : warning

== Summary ==

Error: dim checkpatch failed
3f7d65acc205 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs
6ef41ca2e79a drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()
560a83a7af3f drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
8f01717d8d3f drm/i915/dp_mst: Fix payload removal during output disabling
6fa9587afac7 drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()
c438e5430859 drm/i915: Factor out helpers for modesetting CRTCs and connectors
-:63: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:643:
+ * intel_atomic_modeset_connector - add a connector to the atomic state, force modeset on its CRTC if any

total: 0 errors, 1 warnings, 0 checks, 331 lines checked
555f84d3e147 drm/i915/dp_mst: Move getting the MST topology state earlier to connector check
4aba29fbb308 drm/display/dp_mst: Add a helper to verify the MST payload state
-:154: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#154: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:4969:
+ * drm_dp_mst_verify_payload_state - Verify the atomic state for payloads and the related sink payload table

total: 0 errors, 1 warnings, 0 checks, 196 lines checked
065539bb668b drm/i915/dp_mst: Verify the MST state of modesetted outputs


