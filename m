Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183953DAE99
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 00:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A9A6EE86;
	Thu, 29 Jul 2021 22:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC7C96EE86;
 Thu, 29 Jul 2021 22:00:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9857AA0EA;
 Thu, 29 Jul 2021 22:00:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 29 Jul 2021 22:00:08 -0000
Message-ID: <162759600882.27326.5587856323605587191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729215545.192606-1-jose.souza@intel.com>
In-Reply-To: <20210729215545.192606-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/10=5D_drm/i915/bios=3A_Allo?=
 =?utf-8?q?w_DSI_ports_to_be_parsed_by_parse=5Fddi=5Fport=28=29?=
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

Series: series starting with [CI,01/10] drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
URL   : https://patchwork.freedesktop.org/series/93210/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
311c3d22baba drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
-:77: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#77: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1937:
+		    devdata->dsc != NULL, is_dsi);

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
db14d408c50c drm/i915/bios: Start to support two integrated panels
8533acd4179c drm/i915/bios: Enable parse of two integrated panels timing data
08c75431bf45 drm/i915/bios: Enable parse of two integrated panels backlight data
75d73519ca13 drm/i915/bios: Enable parse of two integrated panels eDP data
4b6c19a53732 drm/i915/bios: Enable parse of two integrated panels PSR data
dae060ccab5f drm/i915/bios: Enable parse of two DSI panels data
32dda397f679 drm/i915/bios: Nuke panel_type
da2fd3b4d9c3 drm/i915/bios: Only use opregion panel index for display ver 8 and older
09e6d17ef019 drm/i915/display/tgl+: Use PPS index from vbt


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
