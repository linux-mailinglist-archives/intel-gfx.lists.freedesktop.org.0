Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B0725F159
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 03:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B7E89F2D;
	Mon,  7 Sep 2020 01:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43CF789DD2;
 Mon,  7 Sep 2020 01:12:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 341AFA47E2;
 Mon,  7 Sep 2020 01:12:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Mon, 07 Sep 2020 01:12:17 -0000
Message-ID: <159944113718.31222.7397264303642853647@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1599236505-9086-1-git-send-email-xiaolin.zhang@intel.com>
In-Reply-To: <1599236505-9086-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_enhanced_i915_vgpu_with_PV_feature_support?=
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

Series: enhanced i915 vgpu with PV feature support
URL   : https://patchwork.freedesktop.org/series/81400/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b72c9e3578ae drm/i915: introduced vgpu pv capability
-:98: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#98: FILE: drivers/gpu/drm/i915/i915_vgpu.c:144:
+static bool intel_vgpu_check_pv_cap(struct drm_i915_private *dev_priv,
+		enum pv_caps cap)

-:101: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#101: FILE: drivers/gpu/drm/i915/i915_vgpu.c:147:
+	return (dev_priv->vgpu.active && (dev_priv->vgpu.caps & VGT_CAPS_PV)
+			&& (dev_priv->vgpu.pv_caps & cap));

-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/i915_vgpu.c:366:
+void intel_vgpu_config_pv_caps(struct drm_i915_private *i915,
+		enum pv_caps cap, void *data)

-:127: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#127: FILE: drivers/gpu/drm/i915/i915_vgpu.c:368:
+{
+

-:140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#140: FILE: drivers/gpu/drm/i915/i915_vgpu.c:381:
+bool intel_vgpu_detect_pv_caps(struct drm_i915_private *i915,
+		void __iomem *shared_area)

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/i915/i915_vgpu.h:49:
+bool intel_vgpu_detect_pv_caps(struct drm_i915_private *i915,
+		void __iomem *shared_area);

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/i915_vgpu.h:51:
+void intel_vgpu_config_pv_caps(struct drm_i915_private *i915,
+		enum pv_caps cap, void *data);

total: 0 errors, 0 warnings, 7 checks, 137 lines checked
6c29bb1bd899 drm/i915: vgpu shared memory setup for pv support
-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/i915/i915_vgpu.c:377:
+static int intel_vgpu_setup_shared_page(struct drm_i915_private *i915,
+		void __iomem *shared_area)

-:162: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*pv)...) over kzalloc(sizeof(struct i915_virtual_gpu_pv)...)
#162: FILE: drivers/gpu/drm/i915/i915_vgpu.c:435:
+	pv = kzalloc(sizeof(struct i915_virtual_gpu_pv), GFP_KERNEL);

total: 0 errors, 0 warnings, 2 checks, 172 lines checked
3357dfa9bfcf drm/i915: vgpu pv command buffer transport protocol
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/i915_vgpu.c:389:
+static int wait_for_desc_update(struct vgpu_pv_ct_buffer_desc *desc,
+		u32 fence, u32 *status)

-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/i915/i915_vgpu.c:401:
+		DRM_ERROR("CT: fence %u failed; reported fence=%u\n",
+				fence, desc->fence);

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/i915_vgpu.c:426:
+static int pv_command_buffer_write(struct i915_virtual_gpu_pv *pv,
+		const u32 *action, u32 len /* in dwords */, u32 fence)

-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/gpu/drm/i915/i915_vgpu.c:487:
+static int pv_send(struct drm_i915_private *i915,
+		const u32 *action, u32 len, u32 *status)

-:185: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#185: FILE: drivers/gpu/drm/i915/i915_vgpu.c:522:
+static int intel_vgpu_pv_send_command_buffer(struct drm_i915_private *i915,
+		u32 *action, u32 len)

-:201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#201: FILE: drivers/gpu/drm/i915/i915_vgpu.c:538:
+		DRM_ERROR("PV: send action %#x returned %d (%#x)\n",
+				action[0], ret, ret);

-:251: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#251: FILE: drivers/gpu/drm/i915/i915_vgpu.c:627:
+	pv->ctb.desc->size = PAGE_SIZE/2;
 	                              ^

-:270: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/i915_vgpu.h:34:
+#define PV_DESC_OFF     (PAGE_SIZE/256)
                                   ^

-:271: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/i915_vgpu.h:35:
+#define PV_CMD_OFF      (PAGE_SIZE/2)
                                   ^

total: 0 errors, 0 warnings, 9 checks, 299 lines checked
4de75f774c0a drm/i915: vgpu ppgtt page table pv support
-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/i915/i915_vgpu.c:377:
+static int vgpu_pv_vma_action(struct i915_address_space *vm,
+		struct i915_vma *vma,

-:87: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!gpas"
#87: FILE: drivers/gpu/drm/i915/i915_vgpu.c:409:
+	if (gpas == NULL)

-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/gpu/drm/i915/i915_vgpu.c:431:
+static void ppgtt_bind_vma_pv(struct i915_address_space *vm,
+		    struct i915_vm_pt_stash *stash,

-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/i915/i915_vgpu.c:455:
+static void ppgtt_unbind_vma_pv(struct i915_address_space *vm,
+		struct i915_vma *vma)

total: 0 errors, 0 warnings, 4 checks, 156 lines checked
ebdd3ccc911e drm/i915: vgpu ggtt page table pv support
-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/i915/i915_vgpu.c:462:
+static void ggtt_bind_vma_pv(struct i915_address_space *vm,
+			  struct i915_vm_pt_stash *stash,

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/i915_vgpu.c:484:
+static void ggtt_unbind_vma_pv_nop(struct i915_address_space *vm,
+		struct i915_vma *vma)

-:79: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#79: FILE: drivers/gpu/drm/i915/i915_vgpu.c:486:
+{
+

-:80: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#80: FILE: drivers/gpu/drm/i915/i915_vgpu.c:487:
+
+}

total: 0 errors, 0 warnings, 4 checks, 88 lines checked
1d7f2ad07d7e drm/i915: vgpu workload submisison pv support
-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/i915/i915_vgpu.c:674:
+static void inte_vgpu_register_cap_gpa(struct drm_i915_private *i915,
+		struct pv_cap_addr *cap_addr, void __iomem *shared_area)

-:208: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/i915_vgpu.h:36:
+#define PV_RSVD_OFF     (PAGE_SIZE/8)
                                   ^

-:209: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/i915_vgpu.h:37:
+#define PV_SUB_OFF      (PAGE_SIZE/4)
                                   ^

-:264: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#264: FILE: drivers/gpu/drm/i915/i915_vgpu.h:133:
+	spinlock_t submission_lock[I915_NUM_ENGINES];

-:276: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#276: 
new file mode 100644

-:421: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#421: FILE: drivers/gpu/drm/i915/intel_pv_submission.c:141:
+static void pv_submit(struct intel_engine_cs *engine,
+		struct i915_request **out, struct i915_request **end)

-:595: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#595: FILE: drivers/gpu/drm/i915/intel_pv_submission.c:315:
+	engine->park = engine->unpark = NULL;

total: 0 errors, 1 warnings, 6 checks, 546 lines checked
e104ce5af762 drm/i915/gvt: GVTg expose pv_caps PVINFO register
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/gvt/gvt.h:537:
+static inline bool intel_vgpu_enabled_pv_cap(struct intel_vgpu *vgpu,
+		enum pv_caps cap)

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
b87ea2334728 drm/i915/gvt: GVTg handle guest shared_page setup
-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/gvt/gvt.h:692:
+int intel_gvt_read_shared_page(struct intel_vgpu *vgpu,
+		unsigned int offset, void *buf, unsigned long len);

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/gvt/gvt.h:694:
+int intel_gvt_write_shared_page(struct intel_vgpu *vgpu,
+		unsigned int offset, void *buf, unsigned long len);

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/i915/gvt/vgpu.c:619:
+int intel_gvt_read_shared_page(struct intel_vgpu *vgpu,
+		unsigned int offset, void *buf, unsigned long len)

-:141: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#141: FILE: drivers/gpu/drm/i915/gvt/vgpu.c:638:
+int intel_gvt_write_shared_page(struct intel_vgpu *vgpu,
+		unsigned int offset, void *buf, unsigned long len)

total: 0 errors, 0 warnings, 4 checks, 123 lines checked
faded3875072 drm/i915/gvt: GVTg support vgpu pv CTB protocol
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1232:
+static int fetch_pv_command_buffer(struct intel_vgpu *vgpu,
+		struct vgpu_pv_ct_buffer_desc *desc,

-:51: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#51: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1253:
+	head = desc->head/4;
 	                 ^

-:52: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#52: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1254:
+	tail = desc->tail/4;
 	                 ^

-:53: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#53: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1255:
+	size = desc->size/4;
 	                 ^

-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1297:
+		ret = intel_gvt_read_shared_page(vgpu, off, &data[avail],
+				(len - avail) * 4);

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1307:
+static int pv_command_buffer_read(struct intel_vgpu *vgpu,
+		u32 *cmd, u32 *data)

-:120: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#120: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1322:
+
+}

total: 0 errors, 0 warnings, 7 checks, 143 lines checked
0ab96123813a drm/i915/gvt: GVTg support ppgtt pv operations
-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1842:
+		gvt_vgpu_err("fail to create ppgtt for pdp 0x%llx\n",
+				px_dma(mm->ppgtt->pd));

-:99: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#99: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2657:
+static int intel_vgpu_pv_ppgtt_insert_4lvl(struct intel_vgpu *vgpu,
+		struct intel_vgpu_mm *mm, struct pv_vma *pvvma, u64 *gfns)

-:126: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#126: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2684:
+		ret = intel_gvt_hypervisor_dma_map_guest_page(vgpu,
+				gfn, PAGE_SIZE, &dma_addr);

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2704:
+static void intel_vgpu_pv_ppgtt_bind(struct intel_vgpu *vgpu,
+		struct intel_vgpu_mm *mm, struct pv_vma *vma, u64 *gfns)

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2719:
+static void intel_vgpu_pv_ppgtt_unbind(struct intel_vgpu *vgpu,
+		struct intel_vgpu_mm *mm, struct pv_vma *vma, u64 *gfns)

-:175: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#175: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2733:
+
+}

-:178: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#178: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2736:
+int intel_vgpu_handle_pv_vma(struct intel_vgpu *vgpu,
+	struct intel_vgpu_mm *mm, u32 cmd, u32 data[])

-:196: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#196: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2754:
+		dma_addr_mem = kmalloc_array(num_pages,
+				sizeof(u64), GFP_KERNEL);

-:201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#201: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2759:
+	ret = intel_gvt_hypervisor_read_gpa(vgpu, vma->dma_addrs,
+			dma_addrs, num_pages * sizeof(u64));

-:243: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#243: FILE: drivers/gpu/drm/i915/gvt/gtt.h:286:
+int intel_vgpu_handle_pv_vma(struct intel_vgpu *vgpu,
+	struct intel_vgpu_mm *mm, u32 action, u32 data[]);

total: 0 errors, 0 warnings, 10 checks, 267 lines checked
9352c15a9bc8 drm/i915/gvt: GVTg support ggtt pv operations
-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2736:
+static int intel_vgpu_pv_ggtt_bind(struct intel_vgpu *vgpu,
+		struct pv_vma *vma, u64 *gpas)

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2761:
+		ret = intel_gvt_hypervisor_dma_map_guest_page(vgpu,
+				gfn, PAGE_SIZE, &dma_addr);

-:48: CHECK:BRACES: braces {} should be used on all arms of this statement
#48: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2762:
+		if (ret) {
[...]
+		} else
[...]

-:51: CHECK:BRACES: Unbalanced braces around else statement
#51: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2765:
+		} else

-:66: CHECK:LINE_SPACING: Please don't use multiple blank lines
#66: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2780:
+
+

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/gvt/gtt.c:2782:
+static int intel_vgpu_pv_ggtt_unbind(struct intel_vgpu *vgpu,
+		struct pv_vma *vma, u64 *gpas)

total: 0 errors, 0 warnings, 6 checks, 113 lines checked
d4828a33c233 drm/i915/gvt: GVTg support pv workload submssion
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1884:
+static int submit_context_pv(struct intel_vgpu *vgpu,
+			  const struct intel_engine_cs *engine,

-:89: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i' may be better as '(i)' to avoid precedence issues
#89: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1901:
+#define get_desc_from_elsp_dwords(ed, i) \
+	((struct execlist_ctx_descriptor_format *)&((ed)->data[i * 2]))

-:93: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#93: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1905:
+static int handle_pv_submission(struct intel_vgpu *vgpu,
+		const struct intel_engine_cs *engine)

-:108: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around subdata.descs[0]
#108: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1920:
+	desc[0] = (struct execlist_ctx_descriptor_format *)&(subdata.descs[0]);

-:109: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around subdata.descs[1]
#109: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1921:
+	desc[1] = (struct execlist_ctx_descriptor_format *)&(subdata.descs[1]);

-:154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#154: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1971:
+	if (intel_vgpu_enabled_pv_cap(vgpu, PV_SUBMISSION) &&
+			data == PV_CMD_SUBMIT_WORKLOAD)

total: 0 errors, 0 warnings, 6 checks, 139 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
