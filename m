Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2150A6CCC0B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 23:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAFC10E9B2;
	Tue, 28 Mar 2023 21:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89B0510E9B2;
 Tue, 28 Mar 2023 21:19:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80537A00E6;
 Tue, 28 Mar 2023 21:19:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 28 Mar 2023 21:19:23 -0000
Message-ID: <168003836348.29056.13796465467526983413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_=28mostly=29_PSR_related_register_cleanups?=
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

Series: drm/i915: (mostly) PSR related register cleanups
URL   : https://patchwork.freedesktop.org/series/115708/
State : warning

== Summary ==

Error: dim checkpatch failed
ea8054e733df drm/i915: Fix up whitespace in some display chicken registers
9e76c77a8f5c drm/i915: Clean up various display chicken registers
-:182: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/i915_reg.h:6142:
+#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
74b23268a3ee drm/i915/psr: Clean up PSR register defininitions
-:281: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#281: FILE: drivers/gpu/drm/i915/i915_reg.h:2240:
+							       EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines))

-:288: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#288: FILE: drivers/gpu/drm/i915/i915_reg.h:2244:
+							       (lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)

-:294: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#294: FILE: drivers/gpu/drm/i915/i915_reg.h:2248:
+							       EDP_PSR2_FAST_WAKE_MAX_LINES - (lines))

-:311: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#311: FILE: drivers/gpu/drm/i915/i915_reg.h:2252:
+							       (lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES)

total: 0 errors, 4 warnings, 0 checks, 329 lines checked
3d03b651bafd drm/i915/psr: Use intel_de_rmw()
c49d375d773e drm/i915/psr: Define more PSR mask bits
f93a5e2b108c drm/i915/psr: Add a FIXME for the PSR vs. AUX usage conflict
79e3dc149d68 drm/i915/psr: Include PSR_PERF_CNT in debugfs output on all platforms
40976ed7f984 drm/i915/psr: Sprinkle cpu_transcoder variables around
-:150: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#150: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1186:
+			    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 387 lines checked


