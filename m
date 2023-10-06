Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 668B57BBE14
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 19:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D9B10E06B;
	Fri,  6 Oct 2023 17:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BD9D10E06B;
 Fri,  6 Oct 2023 17:56:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06E3EAADE3;
 Fri,  6 Oct 2023 17:56:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 06 Oct 2023 17:56:07 -0000
Message-ID: <169661496799.6467.11697638538357458433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006133727.1822579-1-imre.deak@intel.com>
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector?=
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

Series: drm/i915: Store DSC DPCD capabilities in the connector
URL   : https://patchwork.freedesktop.org/series/124723/
State : warning

== Summary ==

Error: dim checkpatch failed
a34e461c1c43 drm/i915/dp: Sanitize DPCD revision check in intel_dp_get_dsc_sink_cap()
d53d0c044733 drm/i915/dp: Store DSC DPCD capabilities in the connector
2601054468a1 drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
14a104b8c113 drm/i915/dp: Use i915/intel connector local variables in i915_dsc_fec_support_show()
5e1338b3c2df drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
-:39: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1249:
+				   str_yes_no(drm_dp_sink_supports_fec(connector->dp.fec_capability)));

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
e12f0222d790 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
71a2b1178514 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
437deb7a0cb1 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
7d24e3ba6c19 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_max_sink_compressed_bppx16()
3876d9b5bdd6 drm/i915/dp: Pass connector DSC DPCD to drm_dp_dsc_sink_supported_input_bpcs()
e14f16280128 drm/i915/dp: Pass only the required i915 to intel_dp_source_dsc_version_minor()
c30e9d652751 drm/i915/dp: Pass only the required DSC DPCD to intel_dp_sink_dsc_version_minor()
dc5dda112095 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
75d44fff8afe drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
821c5b466faf drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
bb21f88dfddf drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
5e30b8ceb610 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
d649e3acf8dd drm/i915/dp_mst: Use connector DSC DPCD in intel_dp_mst_mode_valid_ctx()
9674f9b43d9b drm/i915/dp: Remove unused DSC caps from intel_dp


