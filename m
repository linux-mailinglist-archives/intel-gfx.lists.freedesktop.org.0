Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74507C42F7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 23:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F5610E181;
	Tue, 10 Oct 2023 21:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0B0610E181;
 Tue, 10 Oct 2023 21:50:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB435AADD8;
 Tue, 10 Oct 2023 21:50:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 10 Oct 2023 21:50:27 -0000
Message-ID: <169697462793.28097.7516236958093436463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006133727.1822579-1-imre.deak@intel.com>
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Store DSC DPCD capabilities in the connector (rev5)
URL   : https://patchwork.freedesktop.org/series/124723/
State : warning

== Summary ==

Error: dim checkpatch failed
a9998de0514d drm/i915/dp: Sanitize DPCD revision check in intel_dp_get_dsc_sink_cap()
084a5d22e67b drm/i915/dp: Store DSC DPCD capabilities in the connector
4c9898f8ef1a drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
6253ceaca84b drm/i915/dp: Use i915/intel connector local variables in i915_dsc_fec_support_show()
5ece9e985289 drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
-:40: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1249:
+				   str_yes_no(drm_dp_sink_supports_fec(connector->dp.fec_capability)));

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
c5ae10af3ff2 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
aa1eb1172df1 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
b656d0e3baf7 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
cb866f077227 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_max_sink_compressed_bppx16()
28ed18aaf15f drm/i915/dp: Pass connector DSC DPCD to drm_dp_dsc_sink_supported_input_bpcs()
f46ee22472a3 drm/i915/dp: Pass only the required i915 to intel_dp_source_dsc_version_minor()
66131692fd55 drm/i915/dp: Pass only the required DSC DPCD to intel_dp_sink_dsc_version_minor()
07c88aede1d7 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
779367d0f225 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
82ee180ce7db drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
223d2d3478a5 drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
06ea22c7d3a9 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
b421faca8199 drm/i915/dp_mst: Use connector DSC DPCD in intel_dp_mst_mode_valid_ctx()
edabd32ab1cd drm/i915/dp: Remove unused DSC caps from intel_dp


