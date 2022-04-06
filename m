Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1FD4F4461
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 00:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D677A10E628;
	Tue,  5 Apr 2022 22:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7562F10E628;
 Tue,  5 Apr 2022 22:19:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70DE7A00FD;
 Tue,  5 Apr 2022 22:19:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 05 Apr 2022 22:19:25 -0000
Message-ID: <164919716543.24157.13409163766780573997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_Add_MMIO_range_restrictions_=28rev2=29?=
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

Series: drm/i915/dmc: Add MMIO range restrictions (rev2)
URL   : https://patchwork.freedesktop.org/series/102168/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8f8a6288aa4a drm/i915/dmc: Add MMIO range restrictions
-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:390:
+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const u32 *mmioaddr,
+u32 mmio_count)

-:49: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:397:
+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||

-:50: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:398:
+			      (mmioaddr[i] >= ADLP_PIPE_MMIO_START && mmioaddr[i] <= ADLP_PIPE_MMIO_END)))

-:55: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:403:
+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||

-:56: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:404:
+			      (mmioaddr[i] >= TGL_PIPEA_MMIO_START && mmioaddr[i] <= TGL_PIPEA_MMIO_END) ||

-:57: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:405:
+			      (mmioaddr[i] >= TGL_PIPEB_MMIO_START && mmioaddr[i] <= TGL_PIPEB_MMIO_END) ||

-:58: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:406:
+			      (mmioaddr[i] >= TGL_PIPEC_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END) ||

-:59: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:407:
+			      (mmioaddr[i] >= TGL_PIPED_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END)))

total: 0 errors, 7 warnings, 1 checks, 60 lines checked


