Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A628E21B577
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15F66EC3F;
	Fri, 10 Jul 2020 12:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F321B6EC3F;
 Fri, 10 Jul 2020 12:51:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC231A00E6;
 Fri, 10 Jul 2020 12:51:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 10 Jul 2020 12:51:30 -0000
Message-ID: <159438549095.20497.17195018688793736739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710115757.290984-1-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DG1_LMEM_enabling?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: DG1 LMEM enabling
URL   : https://patchwork.freedesktop.org/series/79339/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
64e885563508 drm/i915: Add has_master_unit_irq flag
07333dfd467a drm/i915/dg1: add initial DG-1 definitions
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1566:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
aa3febafd54f drm/i915/dg1: Add DG1 PCI IDs
-:27: WARNING:BAD_SIGN_OFF: Duplicate signature
#27: 
Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
a8faa6244187 drm/i915/dg1: add support for the master unit interrupt
29620df1a5ff drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
e6fb62a95618 drm/i915/dg1: Add fake PCH
f89f5df391fa drm/i915/dg1: Initialize RAWCLK properly
c3be96ec4e2f drm/i915/dg1: Define MOCS table for DG1
f3e3af28e6da drm/i915/dg1: Add DG1 power wells
283845ab8957 drm/i915/dg1: Increase mmio size to 4MB
c73835ce2769 drm/i915/dg1: Wait for pcode/uncore handshake at startup
5467518226bd drm/i915/dg1: Add DPLL macros for DG1
d2b6d0fc64cf drm/i915/dg1: Add and setup DPLLs for DG1
fef23496c454 drm/i915/dg1: Enable DPLL for DG1
226726870402 drm/i915/dg1: add hpd interrupt handling
0b9012fb78d1 drm/i915/dg1: invert HPD pins
d520ab1c2265 drm/i915/dg1: gmbus pin mapping
f998462b8eb2 drm/i915/dg1: Enable first 2 ports for DG1
d4760bd1b4aa drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
649e6352cfc5 drm/i915/dg1: Update comp master/slave relationships for PHYs
f79c4ce6415d drm/i915/dg1: Update voltage swing tables for DP
9d91bbcfc48b drm/i915/dg1: provide port/phy mapping for vbt
ee5e03aaf90c drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10315:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
c9404617ff28 drm/i915/dg1: enable PORT C/D aka D/E
b6563ffa776b drm/i915/dg1: Load DMC
719467b3a5b9 drm/i915/rkl: Add initial workarounds
db688caa6c0b drm/i915/dg1: Add initial DG1 workarounds
720371af8fd0 drm/i915/dg1: DG1 does not support DC6
db311ea9f880 drm/i915/lmem: Limit block size to 4G
-:8: WARNING:TYPO_SPELLING: 'sytem' may be misspelled - perhaps 'system'?
#8: 
buddy sytem can allocate blocks that can have size >= 4G and

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
d1d490a37e6f drm/i915/lmem: Do not check r->sgt.pfn for NULL
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
When user space does mmap, kernel would map the physical page of local memory

-:25: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author '"Wen, Kui" <kui.wen@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 8 lines checked
39d507e18b2c drm/i915/dgfx: define llc and snooping behaviour
7fcb3d5adb3d drm/i915/lmem: support pread
-:170: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_i915_gem_object *' should also have an identifier name
#170: FILE: drivers/gpu/drm/i915/gem/i915_gem_object_types.h:59:
+	int (*pread)(struct drm_i915_gem_object *,

total: 0 errors, 1 warnings, 0 checks, 158 lines checked
6904f6ee9a66 drm/i915/lmem: support pwrite
-:78: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_lmem.c:154:
+		unwritten = __copy_from_user_inatomic_nocache((void __force*)vaddr + offset,

-:83: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#83: FILE: drivers/gpu/drm/i915/gem/i915_gem_lmem.c:159:
+			unwritten = copy_from_user((void __force*)vaddr + offset,

total: 2 errors, 0 warnings, 0 checks, 98 lines checked
c654f1e3f508 drm/i915: introduce kernel blitter_context
83900007bf29 drm/i915/query: Expose memory regions through the query uAPI
-:180: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#180: FILE: drivers/gpu/drm/i915/intel_memory_region.c:10:
+       [INTEL_REGION_SMEM] = {$

-:181: ERROR:CODE_INDENT: code indent should use tabs where possible
#181: FILE: drivers/gpu/drm/i915/intel_memory_region.c:11:
+               .class = INTEL_MEMORY_SYSTEM,$

-:181: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#181: FILE: drivers/gpu/drm/i915/intel_memory_region.c:11:
+               .class = INTEL_MEMORY_SYSTEM,$

-:182: ERROR:CODE_INDENT: code indent should use tabs where possible
#182: FILE: drivers/gpu/drm/i915/intel_memory_region.c:12:
+               .instance = 0,$

-:182: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#182: FILE: drivers/gpu/drm/i915/intel_memory_region.c:12:
+               .instance = 0,$

-:183: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#183: FILE: drivers/gpu/drm/i915/intel_memory_region.c:13:
+       },$

-:184: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#184: FILE: drivers/gpu/drm/i915/intel_memory_region.c:14:
+       [INTEL_REGION_LMEM] = {$

-:185: ERROR:CODE_INDENT: code indent should use tabs where possible
#185: FILE: drivers/gpu/drm/i915/intel_memory_region.c:15:
+               .class = INTEL_MEMORY_LOCAL,$

-:185: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#185: FILE: drivers/gpu/drm/i915/intel_memory_region.c:15:
+               .class = INTEL_MEMORY_LOCAL,$

-:186: ERROR:CODE_INDENT: code indent should use tabs where possible
#186: FILE: drivers/gpu/drm/i915/intel_memory_region.c:16:
+               .instance = 0,$

-:186: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#186: FILE: drivers/gpu/drm/i915/intel_memory_region.c:16:
+               .instance = 0,$

-:187: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#187: FILE: drivers/gpu/drm/i915/intel_memory_region.c:17:
+       },$

-:188: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#188: FILE: drivers/gpu/drm/i915/intel_memory_region.c:18:
+       [INTEL_REGION_STOLEN_SMEM] = {$

-:189: ERROR:CODE_INDENT: code indent should use tabs where possible
#189: FILE: drivers/gpu/drm/i915/intel_memory_region.c:19:
+               .class = INTEL_MEMORY_STOLEN_SYSTEM,$

-:189: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#189: FILE: drivers/gpu/drm/i915/intel_memory_region.c:19:
+               .class = INTEL_MEMORY_STOLEN_SYSTEM,$

-:190: ERROR:CODE_INDENT: code indent should use tabs where possible
#190: FILE: drivers/gpu/drm/i915/intel_memory_region.c:20:
+               .instance = 0,$

-:190: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#190: FILE: drivers/gpu/drm/i915/intel_memory_region.c:20:
+               .instance = 0,$

-:191: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#191: FILE: drivers/gpu/drm/i915/intel_memory_region.c:21:
+       },$

-:289: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#289: FILE: drivers/gpu/drm/i915/intel_memory_region.h:51:
+       u16 class;$

-:290: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#290: FILE: drivers/gpu/drm/i915/intel_memory_region.h:52:
+       u16 instance;$

total: 6 errors, 14 warnings, 0 checks, 328 lines checked
cc6a052c411f drm/i915/uapi: introduce drm_i915_gem_create_ext
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:677: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#677: FILE: include/uapi/drm/i915_drm.h:394:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

-:686: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#686: FILE: include/uapi/drm/i915_drm.h:727:
+struct drm_i915_gem_create_ext {
+

-:725: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#725: FILE: include/uapi/drm/i915_drm.h:1682:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

total: 0 errors, 2 warnings, 2 checks, 656 lines checked
25e66f7d0a5c drm/i915/lmem: allocate cmd ring in lmem
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
f9f300099d61 drm/i915/dg1: Introduce dmabuf mmap to LMEM
4416c2f7894c drm/i915: setup the LMEM region
d8a3239ffeaa drm/i915: drop fake LMEM
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 182 lines checked
d41c52d4ed7a drm/i915: Distinction of memory regions
-:34: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author ''

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
643474aa3150 drm/i915: PPGTT support
c54410159094 drm/i915: support GGTT LMEM entries
f4982e6c0259 drm/i915: allocate context from LMEM
047b9d87f202 drm/i915: move engine scratch to LMEM
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
32e939403a2d drm/i915: Provide a way to disable PCIe relaxed write ordering
ca44b6c4d514 drm/i915: setup GPU device lmem region
1755a4e32c7f drm/i915: Fix object page offset within a region
9b32500e03cf drm/i915: add i915_gem_object_is_devmem() function
efea29d82bbd drm/i915: finish memory region support for stolen objects.
be0fce4a6e1c drm/i915/lmem: support optional CPU clearing for special internal use
-:75: WARNING:LINE_SPACING: Missing a blank line after declarations
#75: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:402:
+	struct drm_i915_private *i915 = arg;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
6ee119d1496f drm/i915/guc: put all guc objects in lmem when available
-:19: WARNING:BAD_SIGN_OFF: Duplicate signature
#19: 
Cc: Matthew Auld <matthew.auld@intel.com>

-:20: WARNING:BAD_SIGN_OFF: Duplicate signature
#20: 
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:45:
+static int guc_xfer_rsa(struct intel_uc_fw *guc_fw,
 			 struct intel_uncore *uncore)

total: 0 errors, 2 warnings, 1 checks, 219 lines checked
a6d6e930f411 drm/i915: Create stolen memory region from local memory
-:213: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#213: FILE: drivers/gpu/drm/i915/intel_memory_region.c:22:
+       [INTEL_REGION_STOLEN_LMEM] = {$

-:214: ERROR:CODE_INDENT: code indent should use tabs where possible
#214: FILE: drivers/gpu/drm/i915/intel_memory_region.c:23:
+               .class = INTEL_MEMORY_STOLEN_LOCAL,$

-:214: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#214: FILE: drivers/gpu/drm/i915/intel_memory_region.c:23:
+               .class = INTEL_MEMORY_STOLEN_LOCAL,$

-:215: ERROR:CODE_INDENT: code indent should use tabs where possible
#215: FILE: drivers/gpu/drm/i915/intel_memory_region.c:24:
+               .instance = 0,$

-:215: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#215: FILE: drivers/gpu/drm/i915/intel_memory_region.c:24:
+               .instance = 0,$

-:216: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#216: FILE: drivers/gpu/drm/i915/intel_memory_region.c:25:
+       },$

-:224: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#224: FILE: drivers/gpu/drm/i915/intel_memory_region.c:312:
+		case INTEL_MEMORY_STOLEN_LOCAL: /* fallthrough */

total: 2 errors, 5 warnings, 0 checks, 174 lines checked
8d4bc254af2b drm/i915/lmem: Bypass aperture when lmem is available
be601b687707 drm/i915/lmem: reset the lmem buffer created by fbdev
dd7bf2daf3dc drm/i915/dsb: Enable lmem for dsb
78474d0ee907 drm/i915: Reintroduce mem->reserved
-:74: WARNING:LINE_SPACING: Missing a blank line after declarations
#74: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:152:
+	resource_size_t avail = resource_size(&mem->region);
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
3e441301c8d3 drm/i915/dg1: Reserve first 1MB of local memory
9d929688551d drm/i915: defer pd lmem block put to worker
88b8c65b7fbf drm/i915/lmem: allocate HWSP in lmem
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:32: WARNING:TABSTOP: Statements should start on a tabstop
#32: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:264:
+	 if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)

-:32: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (9, 17)
#32: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:264:
+	 if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
+		 type = I915_MAP_WC;

total: 0 errors, 3 warnings, 0 checks, 62 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
