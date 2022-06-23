Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19231557D90
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 16:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3685810E047;
	Thu, 23 Jun 2022 14:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0F6110E047;
 Thu, 23 Jun 2022 14:10:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9700A66C9;
 Thu, 23 Jun 2022 14:10:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 23 Jun 2022 14:10:55 -0000
Message-ID: <165599345592.17069.14568470805180536668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Display_info_cleanup?=
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

Series: drm/i915: Display info cleanup
URL   : https://patchwork.freedesktop.org/series/105544/
State : warning

== Summary ==

Error: dim checkpatch failed
bcf8c9fff0b4 drm/i915: Move dbuf details to INTEL_INFO->display
1822c399b492 drm/i195: Move pipe_offsets[] & co. to INTEL_INFO->display
-:203: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#203: FILE: drivers/gpu/drm/i915/i915_reg.h:168:
+					 INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \

-:209: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#209: FILE: drivers/gpu/drm/i915/i915_reg.h:171:
+#define _CURSOR2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \

-:210: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#210: FILE: drivers/gpu/drm/i915/i915_reg.h:172:
+					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \

total: 0 errors, 3 warnings, 0 checks, 201 lines checked
0b9b527d78fb drm/i915: Move display_mmio_offset under INTEL_INFO->display
2b9625c946c8 drm/i915: Make pipe_offsets[] & co. u32
b48f7d430d90 drm/i915: s/_CURSOR2/_MMIO_CURSOR2//
-:23: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/i915_reg.h:171:
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
817a86fd09fc drm/i915: Use _MMIO_TRANS2() where appropriate
-:25: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/i915_reg.h:167:
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \

-:26: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/i915_reg.h:168:
+					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \

-:45: WARNING:LONG_LINE_COMMENT: line length of 111 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:2219:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */

total: 0 errors, 3 warnings, 0 checks, 57 lines checked
cc0551e0e69b drm/i915: Use _MMIO_PIPE2() where appropriate
-:24: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/i915_reg.h:4410:
+#define DSPGAMC(plane, i)	_MMIO_PIPE2(plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
b17e4cf055d2 drm/i915: Get rid of XE_LPD_CURSOR_OFFSETS
0321c1ce5e8e drm/i915: Move the color stuff under INTEL_INFO->display


