Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D8CAD2297
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 17:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493FF10E087;
	Mon,  9 Jun 2025 15:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C2A10E087;
 Mon,  9 Jun 2025 15:38:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/flipq=3A_Ro?=
 =?utf-8?q?ugh_flip_queue_implementation_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Jun 2025 15:38:38 -0000
Message-ID: <174948351832.61033.55475300982850173@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/flipq: Rough flip queue implementation (rev8)
URL   : https://patchwork.freedesktop.org/series/149110/
State : warning

== Summary ==

Error: dim checkpatch failed
2a87f87ad39d drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
0a871a5f4a52 drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
806ff954c1d2 drm/i915/dsb: Introduce intel_dsb_exec_time_us()
e89aeb257921 drm/i915/dsb: Garbage collect the MMIO DEwake stuff
23b6ae6ab195 drm/i915/dsb: Move the DSB_PMCTRL* reset out of intel_dsb_finish()
252737e19f18 drm/i915/dsb: Disable the GOSUB interrupt
50bedc715dc3 drm/i915/dmc: Limit PIPEDMC clock gating w/a to just ADL/DG2/MTL
a644e1f596d6 drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
f38ffed061d6 drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
b83a2499d2fd drm/i915: Try to program PKG_C_LATENCY more correctly
e207c44bc53b drm/i915/dmc: Shuffle code around
-:111: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:590:
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
39ba6262c3bf drm/i915/dmc: Reload PIPEDMC MMIO registers for pipe C/D on PTL+
b364fea737b8 drm/i915/dmc: Assert DMC is loaded harder
4dc531399103 drm/i915/dmc: Define flip queue related PIPEDMC registers
-:66: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:321:
+#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)

-:73: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:328:
+#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)

-:87: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:342:
+#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)

-:91: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:346:
+#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)

-:95: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:350:
+#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)

-:101: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:356:
+#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)

-:105: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:360:
+#define   PIPEDMC_SCANLINE_LOWER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))

-:109: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:364:
+#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)

-:111: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:366:
+#define   PIPEDMC_SCANLINE_UPPER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))

-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:368:
+#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
+			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
+			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
+	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
+				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
+				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
+				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
+				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))

-:165: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:420:
+							  _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \

-:166: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:421:
+							  _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \

-:167: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#167: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:422:
+							  _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \

-:176: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#176: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:431:
+#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)

-:198: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:542:
+#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:200: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:544:
+#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:202: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#202: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:546:
+#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:204: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:548:
+#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

total: 0 errors, 17 warnings, 1 checks, 214 lines checked
0fb7163f19c2 drm/i915/flipq: Provide the nuts and bolts code for flip queue
-:273: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#273: 
new file mode 100644

-:300: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'flipq_id' - possible side-effects?
#300: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:23:
+#define for_each_flipq(flipq_id) \
+	for ((flipq_id) = INTEL_FLIPQ_PLANE_1; (flipq_id) < MAX_INTEL_FLIPQ; (flipq_id)++)

-:367: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#367: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:90:
+		flipq->start_mmioaddr = intel_pipedmc_start_mmioaddr(crtc) + intel_flipq_offset(flipq_id);

-:562: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#562: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:285:
+					       intel_flipq_elem_size_dw(flipq->flipq_id) + i), data);

total: 0 errors, 3 warnings, 1 checks, 599 lines checked
7253af299b9a drm/i915/flipq: Implement flip queue based commit path
-:164: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#164: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:66:
+intel_display_param_named_unsafe(enable_flipq, bool, 0400,
+	"Enable DMC flip queue (default: false)");

total: 0 errors, 0 warnings, 1 checks, 266 lines checked
a90f292c9978 drm/i915/flipq: Implement Wa_18034343758
2548a6d07bd1 drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
75abe797bd21 drm/i915/flipq: Add intel_flipq_dump()
-:33: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:206:
+		printk(KERN_CONT " 0x%08x",

-:33: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:206:
+		printk(KERN_CONT " 0x%08x",

-:35: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:208:
+		if (i % intel_flipq_elem_size_dw(flipq_id) == intel_flipq_elem_size_dw(flipq_id) - 1)

-:36: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:209:
+			printk(KERN_CONT "\n");

-:36: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:209:
+			printk(KERN_CONT "\n");

total: 0 errors, 5 warnings, 0 checks, 59 lines checked
42411b3f7dfe drm/i915/flipq: Enable flipq by default for testing
85977d6b9e5e drm/i915/flipq: Disable PSR for extra flip queue coverage


