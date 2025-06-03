Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045D7ACCAAC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 17:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E25D10E63A;
	Tue,  3 Jun 2025 15:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99CC10E5FB;
 Tue,  3 Jun 2025 15:55:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/flipq=3A_Ro?=
 =?utf-8?q?ugh_flip_queue_implementation_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Jun 2025 15:55:54 -0000
Message-ID: <174896615468.44910.9267361005031939548@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/flipq: Rough flip queue implementation (rev7)
URL   : https://patchwork.freedesktop.org/series/149110/
State : warning

== Summary ==

Error: dim checkpatch failed
2336e0eb9cb4 drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
01d3bcbda546 drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
676be82d5c63 drm/i915/dsb: Introduce intel_dsb_exec_time_us()
0b1bdcd98f75 drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
bb2bcc9fecf5 drm/i915: Try to program PKG_C_LATENCY more correctly
74448d53526c drm/i915/dmc: Define flip queue related PIPEDMC registers
-:64: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:322:
+#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)

-:71: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:329:
+#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)

-:85: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:343:
+#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)

-:89: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:347:
+#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)

-:93: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:351:
+#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)

-:99: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#99: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:357:
+#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)

-:103: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:361:
+#define   PIPEDMC_SCANLINE_LOWER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))

-:107: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:365:
+#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)

-:109: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:367:
+#define   PIPEDMC_SCANLINE_UPPER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))

-:111: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#111: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:369:
+#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
+			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
+			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
+	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
+				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
+				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
+				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
+				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))

-:163: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#163: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:421:
+							  _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \

-:164: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#164: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:422:
+							  _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \

-:165: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:423:
+							  _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \

-:174: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:432:
+#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)

-:196: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:543:
+#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:198: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:545:
+#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:200: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:547:
+#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:202: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#202: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:549:
+#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

total: 0 errors, 17 warnings, 1 checks, 215 lines checked
8dbd34db9d00 drm/i915/flipq: Provide the nuts and bolts code for flip queue
-:271: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#271: 
new file mode 100644

-:298: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'flipq_id' - possible side-effects?
#298: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:23:
+#define for_each_flipq(flipq_id) \
+	for ((flipq_id) = INTEL_FLIPQ_PLANE_1; (flipq_id) < MAX_INTEL_FLIPQ; (flipq_id)++)

-:365: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#365: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:90:
+		flipq->start_mmioaddr = intel_pipedmc_start_mmioaddr(crtc) + intel_flipq_offset(flipq_id);

-:556: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#556: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:281:
+					       intel_flipq_elem_size_dw(flipq->flipq_id) + i), data);

total: 0 errors, 3 warnings, 1 checks, 600 lines checked
f977357d10d3 drm/i915/flipq: Implement flip queue based commit path
-:164: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#164: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:66:
+intel_display_param_named_unsafe(enable_flipq, bool, 0400,
+	"Enable DMC flip queue (default: false)");

total: 0 errors, 0 warnings, 1 checks, 230 lines checked
88282d5ce08f drm/i915/flipq: Implement Wa_18034343758
fb829ee149fe drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
ba326b60fa24 drm/i915/flipq: Add intel_flipq_dump()
-:33: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:178:
+		printk(KERN_CONT " 0x%08x",

-:33: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:178:
+		printk(KERN_CONT " 0x%08x",

-:35: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:180:
+		if (i % intel_flipq_elem_size_dw(flipq_id) == intel_flipq_elem_size_dw(flipq_id) - 1)

-:36: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:181:
+			printk(KERN_CONT "\n");

-:36: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:181:
+			printk(KERN_CONT "\n");

total: 0 errors, 5 warnings, 0 checks, 59 lines checked
cb7ad9a152ac drm/i915/flipq: Enable flipq by default for testing


