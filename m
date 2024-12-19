Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DABDF9F8770
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63CEA10EDC4;
	Thu, 19 Dec 2024 22:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B244710EDC4;
 Thu, 19 Dec 2024 22:01:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_128b/?=
 =?utf-8?q?132b_uncompressed_SST_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2024 22:01:59 -0000
Message-ID: <173464571972.549164.2988686054068023646@b555e5b46a47>
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

Series: drm/i915/dp: 128b/132b uncompressed SST (rev2)
URL   : https://patchwork.freedesktop.org/series/142547/
State : warning

== Summary ==

Error: dim checkpatch failed
90b7afc2e7f6 drm/mst: remove mgr parameter and debug logging from drm_dp_get_vc_payload_bw()
ed57d41e01b7 drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
291f57ed7a5d drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
2a187752bed7 drm/i915/mst: change return value of mst_stream_find_vcpi_slots_for_bpp()
4ca1d2bec27d drm/i915/mst: remove crtc_state->pbn
b0336ce370dd drm/i915/mst: split out a helper for figuring out the TU
6d3e448027e4 drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
-:86: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:280:
+								      true, dsc_slice_count, link_bpp_x16);

total: 0 errors, 1 warnings, 0 checks, 128 lines checked
954663f25fee drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
529b77a98287 drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
39e81c833cd1 drm/i915/ddi: write payload for 128b/132b SST
5db44ddb5088 drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
f85d6ff21655 drm/i915/ddi: enable ACT handling for 128b/132b SST
87f107d4fcaa drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout
c7988ad77965 drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
d681f30d6d5e drm/i915/ddi: disable trancoder port select for 128b/132b SST
5e6677cb059b drm/i915/dp: compute config for 128b/132b SST w/o DSC


