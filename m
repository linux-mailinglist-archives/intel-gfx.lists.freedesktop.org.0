Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E125FA79D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 00:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E50B810E73A;
	Mon, 10 Oct 2022 22:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAF3010E73A;
 Mon, 10 Oct 2022 22:19:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1AACAADD2;
 Mon, 10 Oct 2022 22:19:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 10 Oct 2022 22:19:26 -0000
Message-ID: <166544036678.29672.780065156973099236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev5=29?=
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

Series: Add DG2 OA support (rev5)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
e7d2ddc2181d drm/i915/perf: Fix OA filtering logic for GuC mode
1d70790b1303 drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
b97b644bb1d0 drm/i915/perf: Fix noa wait predication for DG2
da8d80f58908 drm/i915/perf: Determine gen12 oa ctx offset at runtime
-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_perf.c:1359:
+#define valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)

total: 0 errors, 0 warnings, 1 checks, 242 lines checked
0f7174c003eb drm/i915/perf: Enable bytes per clock reporting in OA
b286c128b54f drm/i915/perf: Simply use stream->ctx
2efd0183464c drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
5245cfe41005 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
1fb05a2f731b drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
6b6fc115fa11 drm/i915/perf: Store a pointer to oa_format in oa_buffer
a32dfbc72a72 drm/i915/perf: Add Wa_1508761755:dg2
475cba3e1d18 drm/i915/perf: Apply Wa_18013179988
59eaa4a25577 drm/i915/perf: Save/restore EU flex counters across reset
180bdc18d55d drm/i915/guc: Support OA when Wa_16011777198 is enabled
5c2fb7812b19 drm/i915/perf: complete programming whitelisting for XEHPSDV
20611dd13047 drm/i915/perf: Enable OA for DG2


