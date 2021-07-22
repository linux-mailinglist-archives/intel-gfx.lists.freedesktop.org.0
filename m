Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A1B3D1DFA
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 08:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077596EC69;
	Thu, 22 Jul 2021 06:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B337D6EC69;
 Thu, 22 Jul 2021 06:06:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC7ABA47E1;
 Thu, 22 Jul 2021 06:06:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 22 Jul 2021 06:06:48 -0000
Message-ID: <162693400870.30345.9335807464243127941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210722054338.12891-1-jose.souza@intel.com>
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/bios=3A_Allow_DSI?=
 =?utf-8?q?_ports_to_be_parsed_by_parse=5Fddi=5Fport=28=29?=
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

Series: series starting with [01/10] drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
URL   : https://patchwork.freedesktop.org/series/92874/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ef88c9c5b742 drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
-:81: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#81: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1937:
+		    devdata->dsc != NULL, is_dsi);

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
602973f70dd6 drm/i915/bios: Start to support two integrated panels
4498348e6a41 drm/i915/bios: Enable parse of two integrated panels timing data
96c1d64222e0 drm/i915/bios: Enable parse of two integrated panels backlight data
03d0b525ccb2 drm/i915/bios: Enable parse of two integrated panels eDP data
9df5a76395bd drm/i915/bios: Enable parse of two integrated panels PSR data
d0240aa5ff78 drm/i915/bios: Enable parse of two DSI panels data
e67425c8c664 drm/i915/bios: Nuke panel_type
21a00d8eda0f drm/i915/bios: Only use opregion panel index for display ver 8 and older
a5f2d0e409e5 drm/i915/display/tgl+: Use PPS index from vbt


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
