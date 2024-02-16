Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055C585873F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 21:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF6210E34B;
	Fri, 16 Feb 2024 20:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682A210E2AF;
 Fri, 16 Feb 2024 20:41:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_remove_u?=
 =?utf-8?q?nused_structure_members?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Feb 2024 20:41:00 -0000
Message-ID: <170811606042.54066.12117666856401661983@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240216065326.6910-1-jirislaby@kernel.org>
In-Reply-To: <20240216065326.6910-1-jirislaby@kernel.org>
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

Series: drm/i915: remove unused structure members
URL   : https://patchwork.freedesktop.org/series/129985/
State : warning

== Summary ==

Error: dim checkpatch failed
fe5175433c5c drm/i915: remove unused intel_dvo_dev_ops hooks
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 79e539453b34 ("DRM: i915: add mode setting support")'
#8: 
79e539453b34 (DRM: i915: add mode setting support). Drop all of them.

total: 1 errors, 0 warnings, 0 checks, 43 lines checked
fc9271ef4854 drm/i915: remove structs intel_vgpu_pipe_format and intel_vgpu_fb_format
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9f31d1063b43 ("drm/i915/gvt: Add framebuffer decoder support")'
#8: 
used since its addition in commit 9f31d1063b43 (drm/i915/gvt: Add
framebuffer decoder support). Drop them.

total: 1 errors, 0 warnings, 0 checks, 17 lines checked
9be9cdb8706b drm/i915: remove intel_dsi::{port_bits,hs}
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 369602d370fa ("drm/i915: Add support for port enable/disable for dual link configuration")'
#6: 
intel_dsi::port_bits is unused since commit 369602d370fa (drm/i915: Add
support for port enable/disable for dual link configuration) and ::hs is

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 063c86f60ad4 ("drm/i915/dsi: remove intel_dsi_cmd.c and the unused functions therein")'
#8: 
unused likely since commit 063c86f60ad4 (drm/i915/dsi: remove
intel_dsi_cmd.c and the unused functions therein). Drop them.

total: 2 errors, 0 warnings, 0 checks, 16 lines checked
d5d39722aa86 drm/i915: remove intel_gvt_gtt::{mm_alloc_page_table, mm_free_page_table}
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ede9d0cfcb78 ("drm/i915/gvt: Rework shadow graphic memory management code")'
#8: 
since commit ede9d0cfcb78 (drm/i915/gvt: Rework shadow graphic memory
management code). Drop them.

total: 1 errors, 0 warnings, 0 checks, 8 lines checked
54040cc546ed drm/i915: remove intel_gvt_mmio_info::{device, addr_range}
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e0f74ed4634d ("i915/gvt: Separate the MMIO tracking table from GVT-g")'
#6: 
intel_gvt_mmio_info::device is not used since commit e0f74ed4634d
(i915/gvt: Separate the MMIO tracking table from GVT-g) and ::addr_range

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 12d14cc43b34 ("drm/i915/gvt: Introduce a framework for tracking HW registers.")'
#8: 
was never used since its addition in commit 12d14cc43b34 (drm/i915/gvt:
Introduce a framework for tracking HW registers.). Drop them.

total: 2 errors, 0 warnings, 0 checks, 10 lines checked
8acd8e350899 drm/i915: remove intel_vgpu_workload::{ring_context, restore_inhibit}
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 28c4c6ca7f79 ("drm/i915/gvt: vGPU workload submission")'
#8: 
commit 28c4c6ca7f79 (drm/i915/gvt: vGPU workload submission) and

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e473405783c0 ("drm/i915/gvt: vGPU workload scheduler")'
#9: 
::restore_inhibit since its addition in commit e473405783c0
(drm/i915/gvt: vGPU workload scheduler). Drop them.

total: 2 errors, 0 warnings, 0 checks, 10 lines checked
2b9de2303457 drm/i915: remove intel_vbt_panel_data::edp::initialized
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9f0e7ff4b366 ("drm/i915: fetch eDP configuration data from the VBT")'
#6: 
intel_vbt_panel_data::edp::initialized is not used since commit
9f0e7ff4b366 (drm/i915: fetch eDP configuration data from the VBT).

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
57ad6c7d79b1 drm/i915: remove intel_guc::ads_engine_usage_size
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")'
#7: 
commit 77cdd054dd2c (drm/i915/pmu: Connect engine busyness stats from
GuC to pmu). Drop it.

total: 1 errors, 0 warnings, 0 checks, 8 lines checked
2f594d5d493d drm/i915: remove i915_drm_client::id
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e894b724c316 ("drm/i915: Use the fdinfo helper")'
#6: 
i915_drm_client::id is not used since commit e894b724c316 (drm/i915:
Use the fdinfo helper). Drop it.

total: 1 errors, 0 warnings, 0 checks, 8 lines checked
e38f523021d5 drm/i915: remove i915_perf_stream::size_exponent
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a37f08a882b0 ("drm/i915/perf: Refactor oa object to better manage resources")'
#7: 
commit a37f08a882b0 (drm/i915/perf: Refactor oa object to better manage
resources). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
df172ff61510 drm/i915: remove intel_vgpu_gtt::active_ppgtt_mm_bitmap
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2707e4446688 ("drm/i915/gvt: vGPU graphics memory virtualization")'
#7: 
addition in commit 2707e4446688 (drm/i915/gvt: vGPU graphics memory
virtualization). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
21120d7b7deb drm/i915: remove intel_vgpu_fence::base
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 28a60dee2ce6 ("drm/i915/gvt: vGPU HW resource management")'
#6: 
intel_vgpu_fence::base was never used since its addition in commit
28a60dee2ce6 (drm/i915/gvt: vGPU HW resource management). Drop it.

total: 1 errors, 0 warnings, 0 checks, 14 lines checked
2bc9d073573d drm/i915: remove intel_vgpu_opregion::mapped
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 367748066eeb ("drm/i915/gvt: remove enum hypervisor_type")'
#6: 
intel_vgpu_opregion::mapped is not used since commit 367748066eeb
(drm/i915/gvt: remove enum hypervisor_type). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
0a27ee932d2a drm/i915: remove intel_vgpu::intx_trigger
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit f30437c5e7bf ("drm/i915/gvt: add KVMGT support")'
#6: 
intel_vgpu::intx_trigger was never used since its addition in commit
f30437c5e7bf (drm/i915/gvt: add KVMGT support). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
d45e6baed4b6 drm/i915: remove gvt_mmio_block::device
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e0f74ed4634d ("i915/gvt: Separate the MMIO tracking table from GVT-g")'
#6: 
gvt_mmio_block::device is not used since commit e0f74ed4634d (i915/gvt:
Separate the MMIO tracking table from GVT-g). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
a5e2810863a5 drm/i915: remove intel_gvt_irq_info::warned
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c8fe6a6811a7 ("drm/i915/gvt: vGPU interrupt virtualization.")'
#6: 
intel_gvt_irq_info::warned was never used since its addition in commit
c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
abd16f50ee2e drm/i915: remove intel_gvt_event_info::policy
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c8fe6a6811a7 ("drm/i915/gvt: vGPU interrupt virtualization.")'
#7: 
commit c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.).

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
7bacd1482e7d drm/i915: remove intel_gvt_irq::pending_events
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c8fe6a6811a7 ("drm/i915/gvt: vGPU interrupt virtualization.")'
#7: 
commit c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.).

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
332bb18ad770 drm/i915: remove execute_cb::signal
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ac545b8b014 ("drm/i915/request: Remove the hook from await_execution")'
#6: 
execute_cb::signal is not used since commit 5ac545b8b014
(drm/i915/request: Remove the hook from await_execution). Drop it.

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
6920dfcc159c drm/i915: remove i915_vma::obj_hash
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 4ff4b44cbb70 ("drm/i915: Store a direct lookup from object handle to vma")'
#6: 
i915_vma::obj_hash was never used since its addition in commit

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
9e4bdaffae5d drm/i915: remove intel_memory_region_ops::flags
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 232a6ebae419 ("drm/i915: introduce intel_memory_region")'
#7: 
commit 232a6ebae419 (drm/i915: introduce intel_memory_region). Drop it.

total: 1 errors, 0 warnings, 0 checks, 8 lines checked


