Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9B83D1544
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0716E991;
	Wed, 21 Jul 2021 17:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1D5C6E873;
 Wed, 21 Jul 2021 17:42:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA7B1A47DB;
 Wed, 21 Jul 2021 17:42:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Wed, 21 Jul 2021 17:42:26 -0000
Message-ID: <162688934669.767.16212795019465570559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721155355.173183-1-hch@lst.de>
In-Reply-To: <20210721155355.173183-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/21=5D_drm/i915/gvt=3A_integrate_?=
 =?utf-8?q?into_the_main_Makefile?=
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

Series: series starting with [01/21] drm/i915/gvt: integrate into the main Makefile
URL   : https://patchwork.freedesktop.org/series/92829/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fb4910938868 drm/i915/gvt: integrate into the main Makefile
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
deleted file mode 100644

-:76: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#76: FILE: drivers/gpu/drm/i915/gvt/trace.h:382:
+#define TRACE_INCLUDE_FILE gvt/trace
                               ^

total: 0 errors, 1 warnings, 1 checks, 41 lines checked
db6b61277669 drm/i915/gvt: remove module refcounting in intel_gvt_{, un}register_hypervisor
ab572add6f55 drm/i915/gvt: remove enum hypervisor_type
-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: drivers/gpu/drm/i915/gvt/opregion.c:427:
+		gvt_vgpu_err("guest opregion read error %d, gpa 0x%llx, len %lu\n",
+			ret, scic_pa, sizeof(scic));

-:239: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#239: FILE: drivers/gpu/drm/i915/gvt/opregion.c:434:
+		gvt_vgpu_err("guest opregion read error %d, gpa 0x%llx, len %lu\n",
+			ret, scic_pa, sizeof(scic));

-:275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#275: FILE: drivers/gpu/drm/i915/gvt/opregion.c:472:
+		gvt_vgpu_err("guest opregion write error %d, gpa 0x%llx, len %lu\n",
+			ret, scic_pa, sizeof(scic));

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/gvt/opregion.c:480:
+		gvt_vgpu_err("guest opregion write error %d, gpa 0x%llx, len %lu\n",
+			ret, scic_pa, sizeof(scic));

total: 0 errors, 0 warnings, 4 checks, 251 lines checked
4a615848a361 drm/i915/gvt: move the gvt code into kvmgt.ko
-:400: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#400: FILE: drivers/gpu/drm/i915/intel_gvt.c:184:
+EXPORT_SYMBOL_NS_GPL(i915_gem_object_init, I915_GVT);

-:401: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#401: FILE: drivers/gpu/drm/i915/intel_gvt.c:185:
+EXPORT_SYMBOL_NS_GPL(i915_gem_object_ggtt_pin_ww, I915_GVT);

-:402: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#402: FILE: drivers/gpu/drm/i915/intel_gvt.c:186:
+EXPORT_SYMBOL_NS_GPL(i915_gem_object_pin_map, I915_GVT);

-:403: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#403: FILE: drivers/gpu/drm/i915/intel_gvt.c:187:
+EXPORT_SYMBOL_NS_GPL(i915_gem_object_set_to_cpu_domain, I915_GVT);

-:404: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#404: FILE: drivers/gpu/drm/i915/intel_gvt.c:188:
+EXPORT_SYMBOL_NS_GPL(__i915_gem_object_flush_map, I915_GVT);

-:405: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#405: FILE: drivers/gpu/drm/i915/intel_gvt.c:189:
+EXPORT_SYMBOL_NS_GPL(__i915_gem_object_set_pages, I915_GVT);

-:406: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#406: FILE: drivers/gpu/drm/i915/intel_gvt.c:190:
+EXPORT_SYMBOL_NS_GPL(i915_gem_gtt_insert, I915_GVT);

-:407: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#407: FILE: drivers/gpu/drm/i915/intel_gvt.c:191:
+EXPORT_SYMBOL_NS_GPL(i915_gem_prime_export, I915_GVT);

-:408: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#408: FILE: drivers/gpu/drm/i915/intel_gvt.c:192:
+EXPORT_SYMBOL_NS_GPL(i915_gem_ww_ctx_init, I915_GVT);

-:409: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#409: FILE: drivers/gpu/drm/i915/intel_gvt.c:193:
+EXPORT_SYMBOL_NS_GPL(i915_gem_ww_ctx_backoff, I915_GVT);

-:410: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#410: FILE: drivers/gpu/drm/i915/intel_gvt.c:194:
+EXPORT_SYMBOL_NS_GPL(i915_gem_ww_ctx_fini, I915_GVT);

-:411: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#411: FILE: drivers/gpu/drm/i915/intel_gvt.c:195:
+EXPORT_SYMBOL_NS_GPL(i915_ppgtt_create, I915_GVT);

-:412: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#412: FILE: drivers/gpu/drm/i915/intel_gvt.c:196:
+EXPORT_SYMBOL_NS_GPL(i915_request_add, I915_GVT);

-:413: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#413: FILE: drivers/gpu/drm/i915/intel_gvt.c:197:
+EXPORT_SYMBOL_NS_GPL(i915_request_create, I915_GVT);

-:414: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#414: FILE: drivers/gpu/drm/i915/intel_gvt.c:198:
+EXPORT_SYMBOL_NS_GPL(i915_request_wait, I915_GVT);

-:415: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#415: FILE: drivers/gpu/drm/i915/intel_gvt.c:199:
+EXPORT_SYMBOL_NS_GPL(i915_reserve_fence, I915_GVT);

-:416: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#416: FILE: drivers/gpu/drm/i915/intel_gvt.c:200:
+EXPORT_SYMBOL_NS_GPL(i915_unreserve_fence, I915_GVT);

-:417: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#417: FILE: drivers/gpu/drm/i915/intel_gvt.c:201:
+EXPORT_SYMBOL_NS_GPL(i915_vm_release, I915_GVT);

-:418: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#418: FILE: drivers/gpu/drm/i915/intel_gvt.c:202:
+EXPORT_SYMBOL_NS_GPL(i915_vma_move_to_active, I915_GVT);

-:419: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#419: FILE: drivers/gpu/drm/i915/intel_gvt.c:203:
+EXPORT_SYMBOL_NS_GPL(intel_context_create, I915_GVT);

-:420: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#420: FILE: drivers/gpu/drm/i915/intel_gvt.c:204:
+EXPORT_SYMBOL_NS_GPL(intel_context_unpin, I915_GVT);

-:421: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#421: FILE: drivers/gpu/drm/i915/intel_gvt.c:205:
+EXPORT_SYMBOL_NS_GPL(__intel_context_do_pin, I915_GVT);

-:422: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#422: FILE: drivers/gpu/drm/i915/intel_gvt.c:206:
+EXPORT_SYMBOL_NS_GPL(intel_ring_begin, I915_GVT);

-:423: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#423: FILE: drivers/gpu/drm/i915/intel_gvt.c:207:
+EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_get, I915_GVT);

-:424: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#424: FILE: drivers/gpu/drm/i915/intel_gvt.c:208:
+EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_put_unchecked, I915_GVT);

-:425: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#425: FILE: drivers/gpu/drm/i915/intel_gvt.c:209:
+EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_for_reg, I915_GVT);

-:426: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#426: FILE: drivers/gpu/drm/i915/intel_gvt.c:210:
+EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_get, I915_GVT);

-:427: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#427: FILE: drivers/gpu/drm/i915/intel_gvt.c:211:
+EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_put, I915_GVT);

-:428: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#428: FILE: drivers/gpu/drm/i915/intel_gvt.c:212:
+EXPORT_SYMBOL_NS_GPL(shmem_pin_map, I915_GVT);

-:429: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#429: FILE: drivers/gpu/drm/i915/intel_gvt.c:213:
+EXPORT_SYMBOL_NS_GPL(shmem_unpin_map, I915_GVT);

-:430: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#430: FILE: drivers/gpu/drm/i915/intel_gvt.c:214:
+EXPORT_SYMBOL_NS_GPL(__px_dma, I915_GVT);

total: 0 errors, 31 warnings, 0 checks, 366 lines checked
4a9718b0e2cd drm/i915/gvt: remove intel_gvt_ops
-:164: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#164: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1057:
+		ret = intel_vgpu_emulate_mmio_write(vgpu,
 					bar_start + off, buf, count);

-:168: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#168: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1060:
+		ret = intel_vgpu_emulate_mmio_read(vgpu,
 					bar_start + off, buf, count);

-:177: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#177: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1116:
+			ret = intel_vgpu_emulate_cfg_write(vgpu, pos,
 						buf, count);

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1119:
+			ret = intel_vgpu_emulate_cfg_read(vgpu, pos,
 						buf, count);

-:241: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#241: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1861:
+		intel_vgpu_page_track_handler(info->vgpu, gpa,
 						     (void *)val, len);

total: 0 errors, 0 warnings, 5 checks, 214 lines checked
17f9380f85ac drm/i915/gvt: remove the map_gfn_to_mfn and set_trap_area ops
-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/gvt/cfg_space.c:181:
+static void emulate_pci_bar_write(struct intel_vgpu *vgpu, unsigned int offset,
 	void *p_data, unsigned int bytes)

total: 0 errors, 0 warnings, 1 checks, 217 lines checked
b9000b54cb4f drm/i915/gvt: remove the unused from_virt_to_mfn op
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
47581e8b69e6 drm/i915/gvt: merge struct kvmgt_vdev into struct intel_vgpu
-:46: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#46: FILE: drivers/gpu/drm/i915/gvt/gvt.h:229:
+	struct mutex cache_lock;

-:303: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#303: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:649:
+	region = krealloc(vgpu->region,
+			(vgpu->num_regions + 1) * sizeof(*region),

-:335: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#335: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:669:
+	vgpu->vfio_device = vfio_device_get_from_dev(

-:523: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#523: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:936:
+	ret = vfio_unregister_notifier(mdev_dev(vgpu->mdev), VFIO_IOMMU_NOTIFY,
+					&vgpu->iommu_notifier);

-:530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#530: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:941:
+	ret = vfio_unregister_notifier(mdev_dev(vgpu->mdev), VFIO_GROUP_NOTIFY,
+					&vgpu->group_notifier);

-:736: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!vgpu->msi_trigger"
#736: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1948:
+	if (vgpu->msi_trigger == NULL)

total: 0 errors, 0 warnings, 6 checks, 821 lines checked
462f7fb6be15 drm/i915/gvt: merge struct kvmgt_guest_info into strut intel_vgpu
-:201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#201: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1795:
+		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);

total: 0 errors, 0 warnings, 1 checks, 358 lines checked
c033dc22a0e6 drm/i915/gvt: remove vgpu->handle
-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/i915/gvt/hypercall.h:61:
+	void (*dma_unmap_guest_page)(struct intel_vgpu *vgpu,
+				dma_addr_t dma_addr);

-:296: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#296: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1903:
+static unsigned long kvmgt_gfn_to_pfn(struct intel_vgpu *vgpu,
+		unsigned long gfn)

-:316: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#316: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1918:
+static int kvmgt_dma_map_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		unsigned long size, dma_addr_t *dma_addr)

-:337: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#337: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1965:
+static int kvmgt_dma_pin_guest_page(struct intel_vgpu *vgpu,
+		dma_addr_t dma_addr)

-:358: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#358: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1994:
+static void kvmgt_dma_unmap_guest_page(struct intel_vgpu *vgpu,
+		dma_addr_t dma_addr)

-:393: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#393: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:2017:
+static int kvmgt_read_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
 			void *buf, unsigned long len)

-:401: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#401: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:2023:
+static int kvmgt_write_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
 			void *buf, unsigned long len)

-:531: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#531: FILE: drivers/gpu/drm/i915/gvt/vgpu.c:374:
+	gvt_dbg_core("low %llu MB high %llu MB fence %llu\n",
+			param->low_gm_sz, param->high_gm_sz,

total: 0 errors, 0 warnings, 8 checks, 483 lines checked
24f596a8d272 drm/i915/gvt: devirtualize ->{read, write}_gpa
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/gvt/cmd_parser.c:1013:
+		intel_gvt_read_gpa(s->vgpu,
 			s->workload->ring_context_gpa + 12, &ctx_sr_ctl, 4);

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/gvt/execlist.c:163:
+		intel_gvt_write_gpa(vgpu,
+			hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 + write_pointer * 8,

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/gvt/execlist.c:166:
+		intel_gvt_write_gpa(vgpu,
+			hwsp_gpa + intel_hws_csb_write_index(execlist->engine->i915) * 4,

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1499:
+	ret = intel_gvt_read_gpa(spt->vgpu,
 			spt->guest_page.gfn << I915_GTT_PAGE_SHIFT,

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/gvt/gvt.h:734:
+static inline int intel_gvt_read_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
+		void *buf, unsigned long len)

-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/gvt/gvt.h:752:
+static inline int intel_gvt_write_gpa(struct intel_vgpu *vgpu,
+		unsigned long gpa, void *buf, unsigned long len)

-:333: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#333: FILE: drivers/gpu/drm/i915/gvt/scheduler.c:169:
+		intel_gvt_read_gpa(vgpu,
 				workload->ring_context_gpa +

-:342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#342: FILE: drivers/gpu/drm/i915/gvt/scheduler.c:180:
+	intel_gvt_read_gpa(vgpu,
 			workload->ring_context_gpa +

-:395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#395: FILE: drivers/gpu/drm/i915/gvt/scheduler.c:1037:
+	intel_gvt_write_gpa(vgpu,
 			workload->ring_context_gpa +

-:404: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#404: FILE: drivers/gpu/drm/i915/gvt/scheduler.c:1574:
+		intel_gvt_read_gpa(vgpu,
 				gpa + i * 8, &pdp[7 - i], 4);

total: 0 errors, 0 warnings, 10 checks, 367 lines checked
e0e73ad94224 drm/i915/gvt: devirtualize ->{get, put}_vfio_device
d36971595ad1 drm/i915/gvt: devirtualize ->set_edid and ->set_opregion
81a08bb01447 drm/i915/gvt: devirtualize ->detach_vgpu
ecb0f9df6783 drm/i915/gvt: devirtualize ->inject_msi
-:32: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'offset' may be better as '(offset)' to avoid precedence issues
#32: FILE: drivers/gpu/drm/i915/gvt/interrupt.c:400:
+#define MSI_CAP_CONTROL(offset) (offset + 2)

-:33: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'offset' may be better as '(offset)' to avoid precedence issues
#33: FILE: drivers/gpu/drm/i915/gvt/interrupt.c:401:
+#define MSI_CAP_ADDRESS(offset) (offset + 4)

-:34: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'offset' may be better as '(offset)' to avoid precedence issues
#34: FILE: drivers/gpu/drm/i915/gvt/interrupt.c:402:
+#define MSI_CAP_DATA(offset) (offset + 8)

total: 0 errors, 0 warnings, 3 checks, 132 lines checked
5d78c64848e6 drm/i915/gvt: devirtualize ->is_valid_gfn
16963db2e084 drm/i915/gvt: devirtualize ->gfn_to_mfn
6cd11c2afa9d drm/i915/gvt: devirtualize ->{enable, disable}_page_track
35d7761f42d7 drm/i915/gvt: devirtualize ->dma_{, un}map_guest_page
-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/gvt/dmabuf.c:128:
+			intel_gvt_dma_unmap_guest_page(vgpu,
 					       sg_dma_address(sg));

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/gvt/gvt.h:770:
+int intel_gvt_dma_map_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
+		unsigned long size, dma_addr_t *dma_addr);

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/i915/gvt/gvt.h:772:
+void intel_gvt_dma_unmap_guest_page(struct intel_vgpu *vgpu,
+		dma_addr_t dma_addr);

-:152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#152: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1859:
+int intel_gvt_dma_map_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		unsigned long size, dma_addr_t *dma_addr)

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1935:
+void intel_gvt_dma_unmap_guest_page(struct intel_vgpu *vgpu,
 		dma_addr_t dma_addr)

total: 0 errors, 0 warnings, 5 checks, 164 lines checked
a93f04904e69 drm/i915/gvt: devirtualize dma_pin_guest_page
2c36e1260150 drm/i915/gvt: remove struct intel_gvt_mpt
-:86: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#86: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 130 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
