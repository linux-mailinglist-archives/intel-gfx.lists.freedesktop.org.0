Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008AB3D78B0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 16:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E033F6E524;
	Tue, 27 Jul 2021 14:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7D456E02E;
 Tue, 27 Jul 2021 14:43:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0753A8830;
 Tue, 27 Jul 2021 14:43:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 27 Jul 2021 14:43:18 -0000
Message-ID: <162739699882.18665.2523981759428091951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727134400.101290-1-imre.deak@intel.com>
In-Reply-To: <20210727134400.101290-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adlp=3A_Add_workaround_to_disable_CMTG_clock_gatin?=
 =?utf-8?q?g?=
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

Series: drm/i915/adlp: Add workaround to disable CMTG clock gating
URL   : https://patchwork.freedesktop.org/series/93067/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9cf8974d9e83 drm/i915/adlp: Add workaround to disable CMTG clock gating
-:34: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#34: FILE: drivers/gpu/drm/i915/display/intel_display.c:13203:
+		uint32_t val;

-:48: CHECK:SPACING: spaces preferred around that '&' (ctx:WxO)
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:13217:
+		drm_WARN_ON(&dev_priv->drm, val &~ DISABLE_DPT_CLK_GATING);
 		                                ^

-:48: ERROR:SPACING: space prohibited after that '~' (ctx:OxW)
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:13217:
+		drm_WARN_ON(&dev_priv->drm, val &~ DISABLE_DPT_CLK_GATING);
 		                                 ^

total: 1 errors, 0 warnings, 2 checks, 33 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
