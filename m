Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 235743D2CEC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 21:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813B86E9F2;
	Thu, 22 Jul 2021 19:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 115C06E9EB;
 Thu, 22 Jul 2021 19:46:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A76FA00F5;
 Thu, 22 Jul 2021 19:46:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 22 Jul 2021 19:46:49 -0000
Message-ID: <162698320902.30343.5040560211364962412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210722054338.12891-1-jose.souza@intel.com>
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/bios=3A_Allow_DSI?=
 =?utf-8?q?_ports_to_be_parsed_by_parse=5Fddi=5Fport=28=29_=28rev2=29?=
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

Series: series starting with [01/10] drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port() (rev2)
URL   : https://patchwork.freedesktop.org/series/92874/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2895a0aeaa5c drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
-:81: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#81: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1937:
+		    devdata->dsc != NULL, is_dsi);

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
64c52078d977 drm/i915/bios: Start to support two integrated panels
f12d26d736c9 drm/i915/bios: Enable parse of two integrated panels timing data
23077847bb22 drm/i915/bios: Enable parse of two integrated panels backlight data
70d027f4d286 drm/i915/bios: Enable parse of two integrated panels eDP data
ca77f49af753 drm/i915/bios: Enable parse of two integrated panels PSR data
4e1c1c0ba0fd drm/i915/bios: Enable parse of two DSI panels data
e8cb95770b1d drm/i915/bios: Nuke panel_type
328bad13d4bd drm/i915/bios: Only use opregion panel index for display ver 8 and older
bddcd380fea4 drm/i915/display/tgl+: Use PPS index from vbt


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
