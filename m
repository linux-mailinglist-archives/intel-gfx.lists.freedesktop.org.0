Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5C060EEAB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 05:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE0F10E2F3;
	Thu, 27 Oct 2022 03:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB0A210E16D;
 Thu, 27 Oct 2022 03:35:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0E87A0003;
 Thu, 27 Oct 2022 03:35:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 27 Oct 2022 03:35:55 -0000
Message-ID: <166684175562.4254.6195381536460278292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev11=29?=
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

Series: Add DG2 OA support (rev11)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
c780bcbe9c6f drm/i915/perf: Fix OA filtering logic for GuC mode
2401ac2c7fc1 drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
5d610536496e drm/i915/perf: Fix noa wait predication for DG2
8150f38baaf3 drm/i915/perf: Determine gen12 oa ctx offset at runtime
f8424d7d4682 drm/i915/perf: Enable bytes per clock reporting in OA
332119d05b01 drm/i915/perf: Simply use stream->ctx
9973045e0a8a drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
68ee20b88b7c drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
93a32bbfa186 drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
a4ad0fa8da87 drm/i915/perf: Store a pointer to oa_format in oa_buffer
4d0cdc933cfc drm/i915/perf: Add Wa_1508761755:dg2
2369dd487b2d drm/i915/perf: Apply Wa_18013179988
b3ae6a1bea90 drm/i915/perf: Save/restore EU flex counters across reset
11e115088bfc drm/i915/guc: Support OA when Wa_16011777198 is enabled
-:72: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#72: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:208:
+	GEM_BUG_ON(id >= SLPC_MAX_PARAM);

total: 0 errors, 1 warnings, 0 checks, 151 lines checked
304e1330b825 drm/i915/perf: complete programming whitelisting for XEHPSDV
dca80a1d9ead drm/i915/perf: Enable OA for DG2


