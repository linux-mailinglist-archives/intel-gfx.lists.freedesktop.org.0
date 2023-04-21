Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1446EAD5B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED90010E117;
	Fri, 21 Apr 2023 14:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 178CF10E117;
 Fri, 21 Apr 2023 14:46:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10888AADD5;
 Fri, 21 Apr 2023 14:46:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 21 Apr 2023 14:46:16 -0000
Message-ID: <168208837604.5828.16379246358054713350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/psr=3A_Restore_HSW/BDW_PSR1?=
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

Series: drm/i915/psr: Restore HSW/BDW PSR1
URL   : https://patchwork.freedesktop.org/series/116814/
State : warning

== Summary ==

Error: dim checkpatch failed
142f6d9f694b drm/i915: Re-init clock gating on coming out of PC8+
fceac0743cce drm/i915/psr: Fix BDW PSR AUX CH data register offsets
-:26: WARNING:LONG_LINE_COMMENT: line length of 111 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:84:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
f2797b5b7fb7 drm/i915/psr: Wrap PSR1 register with functions
-:142: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#142: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1242:
+		    intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder)) & EDP_PSR_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 208 lines checked
d3088201e30c drm/i915/psr: Reintroduce HSW PSR1 registers
e70295cefd48 drm/i915/psr: Bring back HSW/BDW PSR AUX CH registers/setup
40c55dcdbc37 drm/i915/psr: HSW/BDW have no PSR2
988e78a2917e drm/i915/psr: Restore PSR interrupt handler for HSW
db43341eea49 drm/i915/psr: Implement WaPsrDPAMaskVBlankInSRD:hsw
2117b84e684f drm/i915/psr: Implement WaPsrDPRSUnmaskVBlankInSRD:hsw
-:13: WARNING:TYPO_SPELLING: 'correspoding' may be misspelled - perhaps 'corresponding'?
#13: 
in case it matters in some cases, and the correspoding bit
                                          ^^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
78f16cfafe7a drm/i915/psr: Do no mask display register writes on hsw/bdw
200f043d0bf0 drm/i915/psr: Don't skip both TP1 and TP2/3 on hsw/bdw
1b6709cbd4de drm/i915/psr: Allow PSR with sprite enabled on hsw/bdw
41a11c91c60f drm/i915/psr: Re-enable PSR1 on hdw/bdw


