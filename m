Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7BA3F4ED1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC2C89FC9;
	Mon, 23 Aug 2021 16:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A8CB89AEB;
 Mon, 23 Aug 2021 16:58:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33F07A47EB;
 Mon, 23 Aug 2021 16:58:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 16:58:00 -0000
Message-ID: <162973788018.1911.17009228787299262058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629735412.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_dp_2=2E0_enabling_prep_work_=28rev2=29?=
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

Series: drm/i915/dp: dp 2.0 enabling prep work (rev2)
URL   : https://patchwork.freedesktop.org/series/93800/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8759d8bfe020 drm/dp: add DP 2.0 UHBR link rate and bw code conversions
9397aee48cfd drm/dp: use more of the extended receiver cap
a23d8a2c3bff drm/dp: add LTTPR DP 2.0 DPCD addresses
98f3670ed782 drm/dp: add helper for extracting adjust 128b/132b TX FFE preset
042b65b439ac drm/i915/dp: use actual link rate values in struct link_config_limits
-:30: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#30: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1047:
+				limits->min_rate = limits->max_rate =

total: 0 errors, 0 warnings, 1 checks, 106 lines checked
34e2c14f2850 drm/i915/dp: read sink UHBR rates
9daeb845ce59 drm/i915/dg2: add TRANS_DP2_CTL register definition
-:24: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/i915_reg.h:9108:
+#define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
7d6c5525e2aa drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
aed810a8337a drm/i915/dg2: add TRANS_DP2_VFREQHIGH and TRANS_DP2_VFREQLOW
-:25: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/i915_reg.h:9117:
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)

-:27: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/i915_reg.h:9119:
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))

-:33: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/i915_reg.h:9125:
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)

total: 0 errors, 3 warnings, 0 checks, 20 lines checked
c7f5afac00ac drm/i915/dg2: add DG2 UHBR source rates
d8ac1ff0bbbe drm/i915/dp: add max data rate calculation for UHBR rates
e5482f012b51 drm/i915/dp: add helper for checking for UHBR link rate
38655af915e1 drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
bbded83b9092 drm/i915/dp: select 128b/132b channel encoding for UHBR rates
32f8f2e8c94f drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
4406550f6936 drm/i915/dp: add HAS_DP20 macro
67152b2848ba drm/i915/dg2: use 128b/132b transcoder DDI mode
5fda70736e96 drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH, LOW} for 128b/132b
87410f9fe830 drm/i915/dg2: update link training for 128b/132b
-:27: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#27: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1403:
+		return intel_dp->train_set[0] & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 139 lines checked


