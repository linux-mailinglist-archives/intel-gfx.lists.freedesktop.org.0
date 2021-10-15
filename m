Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3F442F574
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 16:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE216E30F;
	Fri, 15 Oct 2021 14:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F177B6E30F;
 Fri, 15 Oct 2021 14:32:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E99FCA01BB;
 Fri, 15 Oct 2021 14:32:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 14:32:21 -0000
Message-ID: <163430834192.29319.14494510112232178950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_up_DP_DFP_4=3A2=3A0_handling_more?=
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

Series: drm/i915: Fix up DP DFP 4:2:0 handling more
URL   : https://patchwork.freedesktop.org/series/95881/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
da10a92856b4 drm/i915/hdmi: Split intel_hdmi_bpc_possible() to source vs. sink pair
070dfafd959a drm/i915/hdmi: Introduce intel_hdmi_is_ycbr420()
7d2c8095b108 drm/i915/hdmi: Introduce intel_hdmi_tmds_clock()
-:50: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1947:
+		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 12, ycbcr420_output),

-:58: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1954:
+		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 10, ycbcr420_output),

total: 0 errors, 2 warnings, 0 checks, 70 lines checked
2f30c6c7e076 drm/i915/hdmi: Unify "4:2:0 also" logic between .mode_valid() and .compute_config()
cfdd62a9b76f drm/i915/hdmi: Extract intel_hdmi_output_format()
5300f80e58b7 drm/i915/hdmi: Clean up TMDS clock limit exceeding user mode handling
c1aab421454c drm/i915/hdmi: Simplify intel_hdmi_mode_clock_valid()
a2ebf755d8ec drm/i915/dp: Reuse intel_hdmi_tmds_clock()
b20dd4ac5782 drm/i915/dp: Extract intel_dp_tmds_clock_valid()
3c125fcf5842 drm/i915/dp: Respect the sink's max TMDS clock when dealing with DP->HDMI DFPs
04ab0ef5104e drm/i915/dp: Extract intel_dp_has_audio()
759fa68f70a0 drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
77d2c530f843 drm/i915/dp: Reorder intel_dp_compute_config() a bit
d1f3604570ee drm/i915/dp: Pass around intel_connector rather than drm_connector
86076600d89d drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also" modes
ec45d7b88657 drm/i915/dp: Rework HDMI DFP TMDS clock handling
4fa9d8219ec9 drm/i915/dp: Add support for "4:2:0 also" modes for DP
691f4682d81c drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP HDMI DFPs
5cb79817652f drm/i915/dp: Fix DFP rgb->ycbcr conversion matrix
87eef2b6e776 drm/i915/dp: Disable DFP RGB->YCbCr conversion for now


