Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E1B9FF857
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 11:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F3110E411;
	Thu,  2 Jan 2025 10:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D7610E411;
 Thu,  2 Jan 2025 10:43:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_128b/?=
 =?utf-8?q?132b_uncompressed_SST_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jan 2025 10:43:00 -0000
Message-ID: <173581458053.1990809.8914683719369086314@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1734643485.git.jani.nikula@intel.com>
In-Reply-To: <cover.1734643485.git.jani.nikula@intel.com>
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

Series: drm/i915/dp: 128b/132b uncompressed SST (rev3)
URL   : https://patchwork.freedesktop.org/series/142547/
State : warning

== Summary ==

Error: dim checkpatch failed
8c415b084cef drm/mst: remove mgr parameter and debug logging from drm_dp_get_vc_payload_bw()
65dac07c523a drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
5c061d877fd8 drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
bb57b6d91bc1 drm/i915/mst: change return value of mst_stream_find_vcpi_slots_for_bpp()
22e78a566711 drm/i915/mst: remove crtc_state->pbn
4161e0731bd4 drm/i915/mst: split out a helper for figuring out the TU
637a9bcb889c drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
-:87: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:280:
+								      true, dsc_slice_count, link_bpp_x16);

total: 0 errors, 1 warnings, 0 checks, 128 lines checked
8b52ae436c05 drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
59bb6a8fd137 drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
1a61d7ad72b2 drm/i915/ddi: write payload for 128b/132b SST
1cf0d2a4e210 drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
335866dee88f drm/i915/ddi: enable ACT handling for 128b/132b SST
7dfcad31b374 drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout
10cf30f8ec6c drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
4334d0e093b0 drm/i915/ddi: disable trancoder port select for 128b/132b SST
e1d14691b9ef drm/i915/dp: compute config for 128b/132b SST w/o DSC


