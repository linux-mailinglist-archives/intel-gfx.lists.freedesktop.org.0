Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D3438F32A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 20:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F906E903;
	Mon, 24 May 2021 18:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3586C6E903;
 Mon, 24 May 2021 18:43:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E7A1A47DB;
 Mon, 24 May 2021 18:43:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 24 May 2021 18:43:50 -0000
Message-ID: <162188183018.10902.7843519725942907911@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210524172703.2113058-1-imre.deak@intel.com>
In-Reply-To: <20210524172703.2113058-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/adlp=3A_Require_DPT?=
 =?utf-8?q?_FB_CCS_color_planes_to_be_2MB_aligned?=
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

Series: series starting with [1/3] drm/i915/adlp: Require DPT FB CCS color planes to be 2MB aligned
URL   : https://patchwork.freedesktop.org/series/90484/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
67ae62f3578a drm/i915/adlp: Require DPT FB CCS color planes to be 2MB aligned
ab61802fef7d drm/i915/adlp: Fix GEM VM asserts for DPT VMs
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vm' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:362:
+#define i915_is_ggtt_or_dpt(vm) (i915_is_ggtt(vm) || i915_is_dpt(vm))

total: 0 errors, 0 warnings, 1 checks, 31 lines checked
5e4ab79a1296 drm/i915/debugfs: Print remap info for DPT VMAs as well
-:28: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 15)
#28: FILE: drivers/gpu/drm/i915/i915_debugfs.c:129:
+	if (i915_vma_is_ggtt(vma))
+	       return "ggtt";

-:29: WARNING:TABSTOP: Statements should start on a tabstop
#29: FILE: drivers/gpu/drm/i915/i915_debugfs.c:130:
+	       return "ggtt";

total: 0 errors, 2 warnings, 0 checks, 42 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
