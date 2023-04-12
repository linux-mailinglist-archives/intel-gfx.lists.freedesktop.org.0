Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2AA6DE894
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 02:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E5510E0B9;
	Wed, 12 Apr 2023 00:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98FA010E0B9;
 Wed, 12 Apr 2023 00:51:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 905F9A0078;
 Wed, 12 Apr 2023 00:51:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 12 Apr 2023 00:51:28 -0000
Message-ID: <168126068855.10846.17352989019854762898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_=28mostly=29_PSR_related_register_cleanups_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915: (mostly) PSR related register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/115708/
State : warning

== Summary ==

Error: dim checkpatch failed
bbba159d0621 drm/i915: Fix up whitespace in some display chicken registers
9133d1719ae0 drm/i915: Clean up various display chicken registers
-:182: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/i915_reg.h:5122:
+#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
80df48f1404d drm/i915/psr: Clean up PSR register defininitions
-:283: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#283: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:141:
+							       EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines))

-:290: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#290: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:145:
+							       (lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)

-:296: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#296: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:149:
+							       EDP_PSR2_FAST_WAKE_MAX_LINES - (lines))

-:313: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#313: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:153:
+							       (lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES)

total: 0 errors, 4 warnings, 0 checks, 329 lines checked
fc1fe53c6302 drm/i915/psr: Use intel_de_rmw()
f996a3f9afb0 drm/i915/psr: Define more PSR mask bits
f595552e25b4 drm/i915/psr: Add a FIXME for the PSR vs. AUX usage conflict
6d16d3fa5141 drm/i915/psr: Include PSR_PERF_CNT in debugfs output on all platforms
4a1cbd8f9b24 drm/i915/psr: Sprinkle cpu_transcoder variables around
-:150: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#150: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1206:
+			    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 387 lines checked


