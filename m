Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077D45E8516
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 23:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B04010E26D;
	Fri, 23 Sep 2022 21:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57E9210E26D;
 Fri, 23 Sep 2022 21:44:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EC47A0169;
 Fri, 23 Sep 2022 21:44:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 23 Sep 2022 21:44:52 -0000
Message-ID: <166396949228.30120.7691780379112337023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev3=29?=
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

Series: Add DG2 OA support (rev3)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
7e3d54fda966 drm/i915/perf: Fix OA filtering logic for GuC mode
cf4391110d50 drm/i915/perf: Add OAG and OAR formats for DG2
3b1ee9fc1bf9 drm/i915/perf: Fix noa wait predication for DG2
41fefad68a6d drm/i915/perf: Determine gen12 oa ctx offset at runtime
-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/i915_perf.c:1361:
+#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)

total: 0 errors, 0 warnings, 1 checks, 234 lines checked
a3f78042ac31 drm/i915/perf: Enable commands per clock reporting in OA
a5a6c6b84c76 drm/i915/perf: Simply use stream->ctx
4f989fb92c02 drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
2c50c8d01880 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
3af70ab98a20 drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
0d2b0f1fca68 drm/i915/perf: Store a pointer to oa_format in oa_buffer
7418a83a2f3e drm/i915/perf: Add Wa_1508761755:dg2
fad73b7c1434 drm/i915/perf: Apply Wa_18013179988
fe1388485698 drm/i915/perf: Save/restore EU flex counters across reset
9decc23433d8 drm/i915/guc: Support OA when Wa_16011777198 is enabled
7556c283eabe drm/i915/perf: Enable OA for DG2


