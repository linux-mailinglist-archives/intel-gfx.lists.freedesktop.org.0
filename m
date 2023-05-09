Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F046FCE86
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 21:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CDD10E3C4;
	Tue,  9 May 2023 19:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B66C10E3C4;
 Tue,  9 May 2023 19:27:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 042B0A00CC;
 Tue,  9 May 2023 19:27:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 09 May 2023 19:27:45 -0000
Message-ID: <168366046597.14156.16820486648220213179@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230509171411.7184-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230509171411.7184-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_REG=5FBIT=28=29_=26_co=2E_for_AUX_CH_regist?=
 =?utf-8?q?ers?=
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

Series: drm/i915: Use REG_BIT() & co. for AUX CH registers
URL   : https://patchwork.freedesktop.org/series/117533/
State : warning

== Summary ==

Error: dim checkpatch failed
7101057c8957 drm/i915: Use REG_BIT() & co. for AUX CH registers
-:120: WARNING:LONG_LINE_COMMENT: line length of 120 exceeds 100 columns
#120: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:62:
+#define   DP_AUX_CH_CTL_TIME_OUT_MAX		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 3) /* Varies per platform */

-:125: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#125: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:67:
+#define   DP_AUX_CH_CTL_PRECHARGE_2US(x)	REG_FIELD_PREP(DP_AUX_CH_CTL_PRECHARGE_2US_MASK, (x))

-:140: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#140: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:82:
+#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK, (c) - 1)

-:142: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#142: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:84:
+#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)

total: 0 errors, 4 warnings, 0 checks, 148 lines checked


