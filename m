Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D08AA03DB5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 12:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD45510E304;
	Tue,  7 Jan 2025 11:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D1B10E304;
 Tue,  7 Jan 2025 11:30:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_128b/?=
 =?utf-8?q?132b_uncompressed_SST_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Jan 2025 11:30:27 -0000
Message-ID: <173624942772.762007.2393322573055347155@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1735912293.git.jani.nikula@intel.com>
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: 128b/132b uncompressed SST (rev5)
URL   : https://patchwork.freedesktop.org/series/142547/
State : warning

== Summary ==

Error: dim checkpatch failed
ad7b8974429f drm/mst: remove mgr parameter and debug logging from drm_dp_get_vc_payload_bw()
8fd16db384df drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
228fdc7938ee drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
9a34cffdebf7 drm/i915/mst: change return value of mst_stream_find_vcpi_slots_for_bpp()
87a320185407 drm/i915/mst: remove crtc_state->pbn
ce244d056e5f drm/i915/mst: split out a helper for figuring out the TU
6202cb7c07ef drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
-:87: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:280:
+								      true, dsc_slice_count, link_bpp_x16);

total: 0 errors, 1 warnings, 0 checks, 128 lines checked
2bbaf3d45983 drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
0bfa4e209385 drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
b05a55eea3ef drm/i915/ddi: write payload for 128b/132b SST
a1e18ea21f73 drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
37ea0f1d6e2a drm/i915/ddi: enable ACT handling for 128b/132b SST
d174a924a0c2 drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout
26acd1ca55fe drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
008e5c6743fb drm/i915/ddi: disable trancoder port select for 128b/132b SST
c68b57daa72f drm/i915/dp: compute config for 128b/132b SST w/o DSC


