Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3ED644506
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 14:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25BF010E0F3;
	Tue,  6 Dec 2022 13:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3239F10E065;
 Tue,  6 Dec 2022 13:55:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC3F6AA01E;
 Tue,  6 Dec 2022 13:55:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 06 Dec 2022 13:55:23 -0000
Message-ID: <167033492393.3371.3818028940800171643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_fractional_bpp_support_=28rev2=29?=
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

Series: Add DSC fractional bpp support (rev2)
URL   : https://patchwork.freedesktop.org/series/111391/
State : warning

== Summary ==

Error: dim checkpatch failed
ca89ce658c84 drm/i915/dp: Check if force dsc bpc <= max requested bpc
1613a598e065 drm/display/dp: Fix the DP DSC Receiver cap size
2b18c4afdb5d drm/display/dp: Add helper function to get DSC bpp prescision
61ecbd186a90 drm/i915/dp: Rename helpers to get DSC max pipe bpp and max output bpp
8e28cd587162 drm/i915/dp: Get optimal link config to have best compressed bpp
bd155269ff3a drm/i915/display: Store compressed bpp in U6.4 format
-:180: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1852:
+						   dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)),

total: 0 errors, 1 warnings, 0 checks, 160 lines checked
19fccce66e56 drm/i915/display: Consider fractional vdsc bpp while computing m_n values
40d37fb44044 drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
187ab4a5d05f drm/i915/dsc/mtl: Add support for fractional bpp
618cb2a207df drm/i915/dp: Iterate over output bpp with fractional step size
cafc6806b3bf drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
f988ddafb56e drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs


