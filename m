Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE958B9A20
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 13:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D74A10F41F;
	Thu,  2 May 2024 11:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5533510E597;
 Thu,  2 May 2024 11:36:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/psr=3A_impl?=
 =?utf-8?q?icit_dev=5Fpriv_removal_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 May 2024 11:36:22 -0000
Message-ID: <171464978234.1848758.8466457734764904664@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1714471597.git.jani.nikula@intel.com>
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/psr: implicit dev_priv removal (rev2)
URL   : https://patchwork.freedesktop.org/series/133062/
State : warning

== Summary ==

Error: dim checkpatch failed
9f210da2f130 drm/i915: pass dev_priv explicitly to TRANS_EXITLINE
1c570d2b97e7 drm/i915: pass dev_priv explicitly to EDP_PSR_CTL
3c0a8df94ad0 drm/i915: pass dev_priv explicitly to TRANS_PSR_IMR
-:22: ERROR:CODE_INDENT: code indent should use tabs where possible
#22: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1459:
+^I^I^I^I           TRANS_PSR_IMR(dev_priv, trans),$

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1459:
+			intel_uncore_write(uncore,
+				           TRANS_PSR_IMR(dev_priv, trans),

-:23: ERROR:CODE_INDENT: code indent should use tabs where possible
#23: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1460:
+^I^I^I^I           0xffffffff);$

total: 2 errors, 0 warnings, 1 checks, 26 lines checked
c789be39ac5c drm/i915: pass dev_priv explicitly to TRANS_PSR_IIR
-:22: ERROR:CODE_INDENT: code indent should use tabs where possible
#22: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:880:
+^I^I^I^I^I^I        intel_dp->psr.transcoder);$

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:880:
+				iir_reg = TRANS_PSR_IIR(dev_priv,
+						        intel_dp->psr.transcoder);

-:32: ERROR:CODE_INDENT: code indent should use tabs where possible
#32: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1463:
+^I^I^I^I           TRANS_PSR_IIR(dev_priv, trans),$

-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1463:
+			intel_uncore_write(uncore,
+				           TRANS_PSR_IIR(dev_priv, trans),

-:33: ERROR:CODE_INDENT: code indent should use tabs where possible
#33: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1464:
+^I^I^I^I           0xffffffff);$

total: 3 errors, 0 warnings, 2 checks, 44 lines checked
2c7b57873d75 drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_CTL
b05f7c5f6f6d drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_DATA
-:34: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:99:
+#define EDP_PSR_AUX_DATA(dev_priv, tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
7c973a714850 drm/i915: pass dev_priv explicitly to EDP_PSR_STATUS
64dff32c31ac drm/i915: pass dev_priv explicitly to EDP_PSR_PERF_CNT
-:34: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:129:
+#define EDP_PSR_PERF_CNT(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
67f16cf89fa5 drm/i915: pass dev_priv explicitly to EDP_PSR_DEBUG
2684ba34bd45 drm/i915: pass dev_priv explicitly to EDP_PSR2_CTL
-:39: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1703:
+		    intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder)) & EDP_PSR2_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
92798a0a4e88 drm/i915: pass dev_priv explicitly to PSR_EVENT
-:36: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:198:
+#define PSR_EVENT(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
72145c8d1ec4 drm/i915: pass dev_priv explicitly to EDP_PSR2_STATUS
a51fef53827a drm/i915: pass dev_priv explicitly to PSR2_SU_STATUS
-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:224:
+#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
7c977a95c8cd drm/i915: pass dev_priv explicitly to PSR2_MAN_TRK_CTL
-:99: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#99: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:232:
+#define PSR2_MAN_TRK_CTL(dev_priv, tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
e3caf76ccf07 drm/i915: pass dev_priv explicitly to PIPE_SRCSZ_ERLY_TPT
-:47: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:252:
+#define PIPE_SRCSZ_ERLY_TPT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
16f63422c5cf drm/i915: pass dev_priv explicitly to ALPM_CTL
1b304576f347 drm/i915: pass dev_priv explicitly to ALPM_CTL2
a20b448af521 drm/i915: pass dev_priv explicitly to PORT_ALPM_CTL
-:45: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:338:
+#define PORT_ALPM_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
c78c00d14503 drm/i915: pass dev_priv explicitly to PORT_ALPM_LFPS_CTL
-:35: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:348:
+#define PORT_ALPM_LFPS_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)

total: 0 errors, 1 warnings, 0 checks, 17 lines checked


