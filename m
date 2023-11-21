Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E53C97F23CF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 03:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78CB610E25C;
	Tue, 21 Nov 2023 02:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A748510E25C;
 Tue, 21 Nov 2023 02:23:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98DC5AA915;
 Tue, 21 Nov 2023 02:23:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 21 Nov 2023 02:23:26 -0000
Message-ID: <170053340658.30158.11701671690920470688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231116131841.1588781-1-imre.deak@intel.com>
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_UHBR_data=2C_link_M/N/TU_and_PBN_values_=28?=
 =?utf-8?q?rev6=29?=
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

Series: drm/i915: Fix UHBR data, link M/N/TU and PBN values (rev6)
URL   : https://patchwork.freedesktop.org/series/126526/
State : warning

== Summary ==

Error: dim checkpatch failed
3513c76cbe67 drm/dp_mst: Store the MST PBN divider value in fixed point format
-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6915:
+		mst_state->pbn_div.full = dfixed_const(dm_mst_get_pbn_divider(aconnector->mst_root->dc_link));

-:87: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#87: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:945:
+			link_timeslots_used += DIV_ROUND_UP(vars[i + k].pbn, dfixed_trunc(mst_state->pbn_div));

-:91: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#91: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:948:
+			(63 - link_timeslots_used) / remaining_to_increase * dfixed_trunc(mst_state->pbn_div);

total: 0 errors, 3 warnings, 0 checks, 176 lines checked
88e3c76abeb9 drm/dp_mst: Fix PBN divider calculation for UHBR rates
78f2b3df56e6 drm/dp_mst: Add kunit tests for drm_dp_get_vc_payload_bw()
-:171: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#171: FILE: drivers/gpu/drm/tests/drm_dp_mst_helper_test.c:205:
+	KUNIT_EXPECT_EQ(test, drm_dp_get_vc_payload_bw(mgr, params->link_rate, params->lane_count).full,

total: 0 errors, 1 warnings, 0 checks, 179 lines checked
325978fa175e drm/i915/dp: Replace intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
d46ea41579a3 drm/i915/dp: Account for channel coding efficiency on UHBR links
cc65f47fbc5a drm/i915/dp: Fix UHBR link M/N values
1cbb990e3949 drm/i915/dp_mst: Calculate the BW overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
754ae198dba1 drm/i915/dp_mst: Fix PBN / MTP_TU size calculation for UHBR rates
8009b4d8db6e drm/i915/dp: Report a rounded-down value as the maximum data rate
-:25: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_dp.c:416:
+		max_link_rate_kbps = DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
a7991e660321 drm/i915/dp: Simplify intel_dp_max_data_rate()
0d2ad4a6dcbf drm/i915/dp: Reuse intel_dp_{max, effective}_data_rate in intel_link_compute_m_n()


