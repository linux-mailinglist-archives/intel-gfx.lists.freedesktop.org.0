Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB6079A2F3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 07:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E183910E104;
	Mon, 11 Sep 2023 05:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C836810E030;
 Mon, 11 Sep 2023 05:43:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEC26AADF4;
 Mon, 11 Sep 2023 05:43:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 11 Sep 2023 05:43:36 -0000
Message-ID: <169441101675.31367.1315751483179935456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_fractional_bpp_support_=28rev5=29?=
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

Series: Add DSC fractional bpp support (rev5)
URL   : https://patchwork.freedesktop.org/series/111391/
State : warning

== Summary ==

Error: dim checkpatch failed
212219eebdff drm/display/dp: Add helper function to get DSC bpp prescision
8ca519027e97 drm/i915/display: Store compressed bpp in U6.4 format
-:273: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#273: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:256:
+							     to_bpp_int(crtc_state->dsc.compressed_bpp_x16),

-:274: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#274: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:257:
+							     to_bpp_int(crtc_state->dsc.compressed_bpp_x16),

total: 0 errors, 2 warnings, 0 checks, 229 lines checked
1f6e8b3da485 drm/i915/display: Consider fractional vdsc bpp while computing m_n values
8e22f6b5fd3d drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
63d0e6f944c3 drm/i915/dsc/mtl: Add support for fractional bpp
87d13694719f drm/i915/dp: Iterate over output bpp with fractional step size
4e1c6710e89f drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
afa236fc4570 drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs


