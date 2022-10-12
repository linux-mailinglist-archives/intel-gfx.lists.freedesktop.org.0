Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF495FCEA0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77C210E1F2;
	Wed, 12 Oct 2022 22:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D352B10E1B8;
 Wed, 12 Oct 2022 22:54:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD422A0BCB;
 Wed, 12 Oct 2022 22:54:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 12 Oct 2022 22:54:46 -0000
Message-ID: <166561528683.12984.17867915713512988658@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev6=29?=
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

Series: Add DG2 OA support (rev6)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
417244c8ec48 drm/i915/perf: Fix OA filtering logic for GuC mode
09d47558b4c6 drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
9480d2f8e988 drm/i915/perf: Fix noa wait predication for DG2
c2feb391c29e drm/i915/perf: Determine gen12 oa ctx offset at runtime
-:90: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#90: FILE: drivers/gpu/drm/i915/i915_perf.c:1399:
+	 * Note that the the reg value is written to 'offset + 1' location, so

total: 0 errors, 1 warnings, 0 checks, 241 lines checked
8ac3c122a123 drm/i915/perf: Enable bytes per clock reporting in OA
06207328a44b drm/i915/perf: Simply use stream->ctx
9188e237c461 drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
9adfddade265 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
2c0312c26728 drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
0db017205809 drm/i915/perf: Store a pointer to oa_format in oa_buffer
7ae385f5b365 drm/i915/perf: Add Wa_1508761755:dg2
e67ffa844773 drm/i915/perf: Apply Wa_18013179988
b6dae18b26f2 drm/i915/perf: Save/restore EU flex counters across reset
57e06b6e1a28 drm/i915/guc: Support OA when Wa_16011777198 is enabled
e83c47177a64 drm/i915/perf: complete programming whitelisting for XEHPSDV
a22efa535d14 drm/i915/perf: Enable OA for DG2


