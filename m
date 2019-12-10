Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A96118FA7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 19:20:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A0289B42;
	Tue, 10 Dec 2019 18:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3334F89B3B;
 Tue, 10 Dec 2019 18:20:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B641A0119;
 Tue, 10 Dec 2019 18:20:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 10 Dec 2019 18:20:24 -0000
Message-ID: <157600202417.23229.11511607635325409575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575974743.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_enable_DSC_=28rev7=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dsi: enable DSC (rev7)
URL   : https://patchwork.freedesktop.org/series/69540/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f76029d9c5d drm/i915/bios: pass devdata to parse_ddi_port
5f29128c3cd0 drm/i915/bios: parse compression parameters block
-:107: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#107: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1657:
+		      devdata->dsc != NULL);

total: 0 errors, 0 warnings, 1 checks, 101 lines checked
73921fea08b1 drm/i915/bios: add support for querying DSC details for encoder
45e4e91d5a96 drm/i915/dsc: move DP specific compute params to intel_dp.c
c57b5b30f0bd drm/i915/dsc: move slice height calculation to encoder
f974e1823e76 drm/i915/dsc: add support for computing and writing PPS for DSI encoders
ad44ed62aa51 drm/i915/dsc: make DSC source support helper generic
df59e592dc6f drm/i915/dsc: add basic hardware state readout support
04c5ad923b3d drm/i915/dsi: set pipe_bpp on ICL configure config
31a42d4e02bd drm/i915/dsi: abstract afe_clk calculation
e4ef078dc802 drm/i915/dsi: use afe_clk() instead of intel_dsi_bitrate()
f157802beff5 drm/i915/dsi: take compression into account in afe_clk()
8ce0fa00a604 drm/i915/dsi: use compressed pixel format with DSC
d1daa436911c drm/i915/dsi: account for DSC in horizontal timings
0ecba96a4eba drm/i915/dsi: Fix state mismatch warns for horizontal timings with DSC
83f777bd3452 drm/i915/dsi: add support for DSC

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
