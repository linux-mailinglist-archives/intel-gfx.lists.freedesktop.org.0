Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1190E674B80
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 05:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764D010EA41;
	Fri, 20 Jan 2023 04:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CED7C10EA42;
 Fri, 20 Jan 2023 04:59:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C89D2A00CC;
 Fri, 20 Jan 2023 04:59:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 20 Jan 2023 04:59:02 -0000
Message-ID: <167419074279.22911.10271199234399640941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_fractional_bpp_support_=28rev3=29?=
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

Series: Add DSC fractional bpp support (rev3)
URL   : https://patchwork.freedesktop.org/series/111391/
State : warning

== Summary ==

Error: dim checkpatch failed
4c1f4eda3734 drm/i915/dp: Remove extra logs for printing DSC info
5fdac8c73b98 drm/i915/dp: Avoid forcing DSC BPC for MST case
67d3aecb4f52 drm/i915/dp: Do not check for min DSC BPC for MST case
9fce7a5186e1 drm/i915/dp: Check if dsc forced bpc is in allowed limits
19e498682147 drm/i915/dp: Avoid left shift of DSC output bpp by 4
afa1e6124be1 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp
1c9e08e5dc4f drm/i915/dp: Get optimal link config to have best compressed bpp
4bb31dc56a68 drm/i915/display: Store compressed bpp in U6.4 format
-:180: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1895:
+						   dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)),

total: 0 errors, 1 warnings, 0 checks, 160 lines checked
69a94d0ddb34 drm/i915/display: Consider fractional vdsc bpp while computing m_n values
27a394713abb drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
cf77d0489b00 drm/display/dp: Fix the DP DSC Receiver cap size
176deceafca5 drm/display/dp: Add helper function to get DSC bpp prescision
ebe209a1e436 drm/i915/dsc/mtl: Add support for fractional bpp
05cf5409e44f drm/i915/dp: Iterate over output bpp with fractional step size
377ddb88d9f2 drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
7a84402a9872 drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs


