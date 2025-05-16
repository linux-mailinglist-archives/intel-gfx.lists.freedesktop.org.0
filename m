Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AACAAB9BD0
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2604810EA8A;
	Fri, 16 May 2025 12:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8404010EA8A;
 Fri, 16 May 2025 12:18:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/flipq=3A_Ro?=
 =?utf-8?q?ugh_flip_queue_implementation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 May 2025 12:18:21 -0000
Message-ID: <174739790153.88035.3901020722488605591@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/flipq: Rough flip queue implementation
URL   : https://patchwork.freedesktop.org/series/149110/
State : warning

== Summary ==

Error: dim checkpatch failed
bfc35bdaa441 drm/i915/dsb: Extract intel_dsb_ins_align()
1250cfb00d9f drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
a9e8bcc41081 drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
e8cf6a4fb5f6 drm/i915/dsb: Extract intel_dsb_{head,tail}()
63c982ea1812 drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
5a3ae628d4b3 drm/i915/dmc: Define flip queue related PIPEDMC registers
-:59: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:322:
+#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)

-:66: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:329:
+#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)

-:80: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:343:
+#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)

-:84: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:347:
+#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)

-:88: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:351:
+#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)

-:94: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:357:
+#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)

-:98: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:361:
+#define   PIPEDMC_SCANLINE_LOWER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))

-:102: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:365:
+#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)

-:104: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:367:
+#define   PIPEDMC_SCANLINE_UPPER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))

-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:369:
+#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
+			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
+			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
+	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
+				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
+				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
+				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
+				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))

-:158: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:421:
+							  _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \

-:159: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:422:
+							  _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \

-:160: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:423:
+							  _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \

-:169: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#169: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:432:
+#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)

-:191: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:543:
+#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:193: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:545:
+#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:195: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:547:
+#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

-:197: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:549:
+#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))

total: 0 errors, 17 warnings, 1 checks, 194 lines checked
f625e18093e6 drm/i915/flipq: Provide the nuts and bolts code for flip queue
-:37: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#37: 
      need to think what to about the cdclk dependency on the execution time

-:261: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#261: 
new file mode 100644

-:287: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'flipq_id' - possible side-effects?
#287: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:22:
+#define for_each_flipq(flipq_id) \
+	for ((flipq_id) = INTEL_FLIPQ_PLANE_1; (flipq_id) < MAX_INTEL_FLIPQ; (flipq_id)++)

-:354: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#354: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:89:
+		flipq->start_mmioaddr = intel_pipedmc_start_mmioaddr(crtc) + intel_flipq_offset(flipq_id);

-:519: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#519: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:254:
+					       intel_flipq_elem_size_dw(flipq->flipq_id) + i), data);

total: 0 errors, 4 warnings, 1 checks, 525 lines checked
6488c5c1708d drm/i915/flipq: Implement flipq queue based commit path
-:190: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#190: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:66:
+intel_display_param_named_unsafe(enable_flipq, bool, 0400,
+	"Enable DMC flip queue (default: false)");

total: 0 errors, 0 warnings, 1 checks, 207 lines checked
cc06d77a5509 drm/i915/flipq: Implement Wa_18034343758
5124d147ad7d drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
d55abf62553b drm/i915/flipq: Add intel_flipq_dump()
-:33: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:162:
+		printk(KERN_CONT " 0x%08x",

-:33: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#33: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:162:
+		printk(KERN_CONT " 0x%08x",

-:35: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:164:
+		if (i % intel_flipq_elem_size_dw(flipq_id) == intel_flipq_elem_size_dw(flipq_id) - 1)

-:36: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:165:
+			printk(KERN_CONT "\n");

-:36: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#36: FILE: drivers/gpu/drm/i915/display/intel_flipq.c:165:
+			printk(KERN_CONT "\n");

total: 0 errors, 5 warnings, 0 checks, 60 lines checked
55a4275b6153 drm/i915/flipq: Enable flipq by default for testing


