Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C227C7D0D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 07:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4903C10E59F;
	Fri, 13 Oct 2023 05:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43AC810E59D;
 Fri, 13 Oct 2023 05:33:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CCE1AADF1;
 Fri, 13 Oct 2023 05:33:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 13 Oct 2023 05:33:10 -0000
Message-ID: <169717519021.31159.7711354908005317221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006133727.1822579-1-imre.deak@intel.com>
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector_?=
 =?utf-8?b?KHJldjkp?=
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

Series: drm/i915: Store DSC DPCD capabilities in the connector (rev9)
URL   : https://patchwork.freedesktop.org/series/124723/
State : warning

== Summary ==

Error: dim checkpatch failed
6f400555c8b5 drm/i915/dp: Sanitize DPCD revision check in intel_dp_get_dsc_sink_cap()
1aba1e3f919a drm/i915/dp: Store DSC DPCD capabilities in the connector
95603fc6f5f1 drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
829c4940f898 drm/i915/dp: Use i915/intel connector local variables in i915_dsc_fec_support_show()
8f41f58a5711 drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
-:40: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1249:
+				   str_yes_no(drm_dp_sink_supports_fec(connector->dp.fec_capability)));

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
2fe014f38422 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
11cc017b48f2 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
b972f1468520 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
e031494fff28 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_max_sink_compressed_bppx16()
874948c8d462 drm/i915/dp: Pass connector DSC DPCD to drm_dp_dsc_sink_supported_input_bpcs()
bda7ff57f054 drm/i915/dp: Pass only the required i915 to intel_dp_source_dsc_version_minor()
b9386622b7ba drm/i915/dp: Pass only the required DSC DPCD to intel_dp_sink_dsc_version_minor()
1be8491f96db drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
557c53b26902 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
ebdc56f82b04 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
bc29cb19228d drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
77be7dcd71f9 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
a876486e9097 drm/i915/dp_mst: Use connector DSC DPCD in intel_dp_mst_mode_valid_ctx()
41aa40c5f39f drm/i915/dp: Remove unused DSC caps from intel_dp


