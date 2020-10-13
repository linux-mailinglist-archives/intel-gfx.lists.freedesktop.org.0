Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FAF28D6C5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 01:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450306E985;
	Tue, 13 Oct 2020 23:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A2096E14F;
 Tue, 13 Oct 2020 23:05:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AF82A8169;
 Tue, 13 Oct 2020 23:05:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 13 Oct 2020 23:05:12 -0000
Message-ID: <160263031227.28551.15511147723272660362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201013230121.331595-1-jose.souza@intel.com>
In-Reply-To: <20201013230121.331595-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/display/psr=3A_Calc?=
 =?utf-8?q?ulate_selective_fetch_plane_registers?=
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

Series: series starting with [1/6] drm/i915/display/psr: Calculate selective fetch plane registers
URL   : https://patchwork.freedesktop.org/series/82646/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2b304de51d75 drm/i915/display/psr: Calculate selective fetch plane registers
fbf763534040 drm/i915/display/psr: Use plane damage clips to calculate damaged area
ef08d57e6534 drm/i915/display/psr: Consider other planes to damaged area calculation
96a8b4924e3c drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
6117d56f10f2 RFC/WIP: drm/i915/display/psr: Consider tiling when doing the plane offset calculation
029c35bb64f3 DEBUG: drm/i915/display: Add debug information to selective fetch
-:43: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'intel_psr2_sel_fetch_update', this function's name, in a string
#43: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1346:
+	drm_info(state->base.dev, "intel_psr2_sel_fetch_update()\n");

total: 0 errors, 1 warnings, 0 checks, 39 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
