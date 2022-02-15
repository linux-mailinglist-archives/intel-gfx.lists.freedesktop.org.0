Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8DE4B794D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573C510E546;
	Tue, 15 Feb 2022 21:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6902B10E546;
 Tue, 15 Feb 2022 21:32:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 647FEAADD2;
 Tue, 15 Feb 2022 21:32:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Tue, 15 Feb 2022 21:32:37 -0000
Message-ID: <164496075740.15371.12926242294335428713@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220214020357.10063-1-vandita.kulkarni@intel.com>
In-Reply-To: <20220214020357.10063-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_data_flow_metering_support_for_HDMI2=2E1_=28rev2=29?=
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

Series: Add data flow metering support for HDMI2.1 (rev2)
URL   : https://patchwork.freedesktop.org/series/99668/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b6cc89ab987b drm/hdmi21: Define frl_dfm structure
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 124 lines checked
1392e71508a3 drm/hdmi21: Add non dsc frl capacity computation helpers
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

-:202: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#202: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:186:
+				 unsigned int bpc, unsigned int audio_packets_line, unsigned int hblank)

-:307: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#307: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:291:
+drm_get_avg_tribyte_rate(unsigned int pixel_clk_max_khz, unsigned int tb_active, unsigned int tb_blank,

-:396: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#396: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:380:
+drm_get_frl_char_payload_actual(unsigned int tribytes_active, unsigned int tribytes_blank, unsigned int cfrl_savings)

-:400: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#400: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:384:
+	frl_char_payload_actual = DIV_ROUND_UP(3 * tribytes_active, 2) + tribytes_blank - cfrl_savings;

-:406: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#406: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:390:
+drm_compute_payload_utilization(unsigned int frl_char_payload_actual, unsigned int frl_char_per_line_period)

total: 0 errors, 6 warnings, 0 checks, 396 lines checked
12d033bb02c0 drm/hdmi21: Add helpers to verify non-dsc DFM requirements
-:99: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#99: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:477:
+						 frl_dfm->params.tb_active, frl_dfm->params.tb_blank,

total: 0 errors, 1 warnings, 0 checks, 170 lines checked
6db4a39d6dde drm/hdmi21: Add support for DFM calculation with DSC
-:33: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#33: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:571:
+drm_get_frl_hcactive_tb_target(unsigned int dsc_bpp_x16, unsigned int slice_width, unsigned int num_slices)

-:53: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#53: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:591:
+drm_get_frl_hcblank_tb_target(unsigned int hcactive_target_tb, unsigned int hactive, unsigned int hblank,

-:70: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#70: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:608:
+	return (hcactive_target_tb + hcblank_target_tb) * (fpixelclock_max_khz / (hactive + hblank));

-:89: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#89: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:627:
+drm_frl_dsc_tactive_target_ns(unsigned int frl_lanes, unsigned int hcactive_target_tb, unsigned int ftb_avg_k,

-:137: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#137: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:675:
+				unsigned int hactive, unsigned int hblank, unsigned int line_time_ns)

-:146: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#146: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:684:
+		tb_delta_limit = (((tactive_ref_ns * FRL_TIMING_NS_MULTIPLIER) - (hcactive_target_tb / (ftb_avg_k * 1000))) *

-:156: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#156: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:694:
+		tb_delta_limit = (_tb_delta_ns * (hcactive_target_tb + hcblank_target_tb1)) / line_time_ns;

total: 0 errors, 7 warnings, 0 checks, 307 lines checked
2c5449c01316 drm/hdmi21: Add frl_dfm_helper to Makefile


