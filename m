Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342A31A485
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 19:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5EF6EEAC;
	Fri, 12 Feb 2021 18:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C5476EEAC;
 Fri, 12 Feb 2021 18:29:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09737A8831;
 Fri, 12 Feb 2021 18:29:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 12 Feb 2021 18:29:12 -0000
Message-ID: <161315455203.25820.5351114969415138224@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210212182201.155043-1-jose.souza@intel.com>
In-Reply-To: <20210212182201.155043-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display/adl=5Fs=3A_?=
 =?utf-8?q?Fix_dpclka=5Fcfgcr0=5Fclk=5Foff_mapping?=
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

Series: series starting with [1/3] drm/i915/display/adl_s: Fix dpclka_cfgcr0_clk_off mapping
URL   : https://patchwork.freedesktop.org/series/87048/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cc5ee23b6a3e drm/i915/display/adl_s: Fix dpclka_cfgcr0_clk_off mapping
6766f32463c4 drm/i915: Remove dead code from skl_pipe_wm_get_hw_state()
a6c0f3b65b64 drm/i915: Fix plane watermark mismatches
-:26: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#26: FILE: drivers/gpu/drm/i915/intel_pm.c:5636:
+	if (l1->plane_en == false && l2->plane_en == false)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
