Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7977D2DB7BD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 01:16:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4205489B57;
	Wed, 16 Dec 2020 00:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 884F589862;
 Wed, 16 Dec 2020 00:16:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 824C7A0BCB;
 Wed, 16 Dec 2020 00:16:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 16 Dec 2020 00:16:52 -0000
Message-ID: <160807781250.16511.762201822861441771@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215214901.10038-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20201215214901.10038-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_i915/perf=3A_Move_gen_specif?=
 =?utf-8?q?ic_OA_formats_to_single_array?=
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

Series: series starting with [1/2] i915/perf: Move gen specific OA formats to single array
URL   : https://patchwork.freedesktop.org/series/84978/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
60f0353cf872 i915/perf: Move gen specific OA formats to single array
-:63: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/i915_perf.c:321:
+	[I915_OA_FORMAT_A32u40_A4u32_B8_C8]     = { 5, 256, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },

total: 0 errors, 1 warnings, 0 checks, 120 lines checked
4db0badf5a24 i915/perf: Add removed OA formats back for TGL
-:30: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/i915_perf.c:317:
+	[I915_OA_FORMAT_A12]                    = { 0, 64, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },

-:31: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/i915_perf.c:318:
+	[I915_OA_FORMAT_A12_B8_C8]              = { 2, 128, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },

total: 0 errors, 2 warnings, 0 checks, 53 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
