Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2521AA00B60
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 16:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04D110E8E8;
	Fri,  3 Jan 2025 15:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF8E10E8E8;
 Fri,  3 Jan 2025 15:22:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_128b/?=
 =?utf-8?q?132b_uncompressed_SST_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jan 2025 15:22:51 -0000
Message-ID: <173591777136.2683165.10828720540558894568@b555e5b46a47>
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

Series: drm/i915/dp: 128b/132b uncompressed SST (rev4)
URL   : https://patchwork.freedesktop.org/series/142547/
State : warning

== Summary ==

Error: dim checkpatch failed
30657eb66215 drm/mst: remove mgr parameter and debug logging from drm_dp_get_vc_payload_bw()
deadc628a4e7 drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
d29d0dca5d2a drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
cc65849234fe drm/i915/mst: change return value of mst_stream_find_vcpi_slots_for_bpp()
efa02f897876 drm/i915/mst: remove crtc_state->pbn
f0e146e279e5 drm/i915/mst: split out a helper for figuring out the TU
43b4052d082a drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
-:87: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:280:
+								      true, dsc_slice_count, link_bpp_x16);

total: 0 errors, 1 warnings, 0 checks, 128 lines checked
bcfec9e78c39 drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
389ac611341f drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
0eb2ee6332c4 drm/i915/ddi: write payload for 128b/132b SST
c2419bb8f3a6 drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
bb862a9a07bd drm/i915/ddi: enable ACT handling for 128b/132b SST
7cf86f9f54fb drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout
e4539e47d3a2 drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
a9ea3cab4554 drm/i915/ddi: disable trancoder port select for 128b/132b SST
1bd520c015e6 drm/i915/dp: compute config for 128b/132b SST w/o DSC


