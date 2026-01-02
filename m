Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDB0CEE317
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 11:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444DF10E051;
	Fri,  2 Jan 2026 10:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6bVJs6N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FFF10E051
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 10:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767350957; x=1798886957;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=hDLHfXWBZ9gPW7efTE6NArtI1Tkc/GgdPGLdKl/N4qQ=;
 b=g6bVJs6NhPtoncOLKv6HommJwd6y+CR/VejpZiLXwydlxhYiPs5kHfRu
 FsR5ykAiq+sQX7oIuvhPO0DI3DtHZg6aDbfmSjxhTMEdVqaIUsQMx3r9K
 WHJwNFIMRJHh0YuhrPNxw45pBAzV5aKh7A9OAPrVRIlgi0sIvXM/WDzi6
 h+0G4r/P1T+jXCgN7wu+ZCHzbuEVdTXGNkpLrNi705szr+wp45EYiiD7K
 TuL2MdzY38iggUHzV9CpkFZizqsHm2zOzf34vgfz3d/HLADmi/wnvM3Rf
 Xr9kzS7j6k7+yMbVsrv0j27popibtzxJvKuB3NYG3EUI3YnVdF8YPEvcp A==;
X-CSE-ConnectionGUID: lzltTc2lTViRLGPQ3XYjOg==
X-CSE-MsgGUID: JkSloRZPSAmMaxgp5cD9uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="68748818"
X-IronPort-AV: E=Sophos;i="6.21,197,1763452800"; d="scan'208";a="68748818"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 02:49:17 -0800
X-CSE-ConnectionGUID: 1kOwxofhSamqRk33CgIFlA==
X-CSE-MsgGUID: nHpwY45SSP+zARP6tpUffQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,197,1763452800"; d="scan'208";a="232488493"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 02:49:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/gvt: sort and group include directives
In-Reply-To: <cc653a5c-5078-4c3e-bc67-21c1123ff73e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1767180318.git.jani.nikula@intel.com>
 <c9f2b5a7367671965a7f5fa4f22b94ce9b980cfd.1767180318.git.jani.nikula@intel.com>
 <cc653a5c-5078-4c3e-bc67-21c1123ff73e@intel.com>
Date: Fri, 02 Jan 2026 12:49:12 +0200
Message-ID: <81994f989ed396c0b7f4a284c475c832bd99b5ab@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Jan 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 12/31/2025 4:56 PM, Jani Nikula wrote:
>> The include directives are a bit of a mess in gvt. Sort and group them
>> to make them easier to deal with.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for the reviews, series pushed to din.

BR,
Jani.

>
>
>> ---
>>   drivers/gpu/drm/i915/gvt/aperture_gm.c      |  5 +++--
>>   drivers/gpu/drm/i915/gvt/cfg_space.c        |  2 +-
>>   drivers/gpu/drm/i915/gvt/cmd_parser.c       | 22 +++++++++++---------
>>   drivers/gpu/drm/i915/gvt/debugfs.c          |  4 +++-
>>   drivers/gpu/drm/i915/gvt/display.c          | 12 +++++------
>>   drivers/gpu/drm/i915/gvt/display.h          |  2 +-
>>   drivers/gpu/drm/i915/gvt/dmabuf.c           |  6 +++---
>>   drivers/gpu/drm/i915/gvt/dmabuf.h           |  1 +
>>   drivers/gpu/drm/i915/gvt/edid.c             |  1 +
>>   drivers/gpu/drm/i915/gvt/execlist.c         |  2 +-
>>   drivers/gpu/drm/i915/gvt/fb_decoder.c       | 12 +++++------
>>   drivers/gpu/drm/i915/gvt/firmware.c         |  4 ++--
>>   drivers/gpu/drm/i915/gvt/gtt.c              |  9 ++++----
>>   drivers/gpu/drm/i915/gvt/gvt.h              | 23 ++++++++++-----------
>>   drivers/gpu/drm/i915/gvt/handlers.c         | 17 ++++++++-------
>>   drivers/gpu/drm/i915/gvt/interrupt.c        |  5 +++--
>>   drivers/gpu/drm/i915/gvt/kvmgt.c            | 17 +++++++--------
>>   drivers/gpu/drm/i915/gvt/mmio.c             | 11 +++++-----
>>   drivers/gpu/drm/i915/gvt/opregion.c         |  3 ++-
>>   drivers/gpu/drm/i915/gvt/page_track.c       |  3 ++-
>>   drivers/gpu/drm/i915/gvt/sched_policy.c     |  2 +-
>>   drivers/gpu/drm/i915/gvt/scheduler.c        |  3 ++-
>>   drivers/gpu/drm/i915/gvt/trace.h            |  2 +-
>>   drivers/gpu/drm/i915/gvt/trace_points.c     |  2 ++
>>   drivers/gpu/drm/i915/gvt/vgpu.c             |  5 +++--
>>   drivers/gpu/drm/i915/intel_gvt.c            | 11 ++++++----
>>   drivers/gpu/drm/i915/intel_gvt_mmio_table.c |  4 +++-
>>   27 files changed, 106 insertions(+), 84 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> index 8cc6e712b0f7..253b41789be9 100644
>> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> @@ -36,10 +36,11 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>>   #include "gt/intel_ggtt_fencing.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>>   
>>   static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
>>   {
>> diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
>> index 295a7b5e1d7c..1937e04d3791 100644
>> --- a/drivers/gpu/drm/i915/gvt/cfg_space.c
>> +++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
>> @@ -33,8 +33,8 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   #include "intel_pci_config.h"
>>   
>>   enum {
>> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> index e5301733f4e4..bf7c3d3f5f8a 100644
>> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> @@ -38,27 +38,29 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>> +#include "display/i9xx_plane_regs.h"
>>   #include "display/intel_display_regs.h"
>> +#include "display/intel_sprite_regs.h"
>> +
>> +#include "gem/i915_gem_context.h"
>> +#include "gem/i915_gem_pm.h"
>> +
>> +#include "gt/intel_context.h"
>>   #include "gt/intel_engine_regs.h"
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_gt_regs.h"
>> +#include "gt/intel_gt_requests.h"
>>   #include "gt/intel_lrc.h"
>>   #include "gt/intel_ring.h"
>> -#include "gt/intel_gt_requests.h"
>>   #include "gt/shmem_utils.h"
>> +
>> +#include "display_helpers.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   #include "i915_pvinfo.h"
>> +#include "i915_reg.h"
>>   #include "trace.h"
>>   
>> -#include "display/i9xx_plane_regs.h"
>> -#include "display/intel_sprite_regs.h"
>> -#include "gem/i915_gem_context.h"
>> -#include "gem/i915_gem_pm.h"
>> -#include "gt/intel_context.h"
>> -#include "display_helpers.h"
>> -
>>   #define INVALID_OP    (~0U)
>>   
>>   #define OP_LEN_MI           9
>> diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
>> index 415422b5943c..ae3fd2c3cd23 100644
>> --- a/drivers/gpu/drm/i915/gvt/debugfs.c
>> +++ b/drivers/gpu/drm/i915/gvt/debugfs.c
>> @@ -20,10 +20,12 @@
>>    * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
>>    * SOFTWARE.
>>    */
>> +
>>   #include <linux/debugfs.h>
>>   #include <linux/list_sort.h>
>> -#include "i915_drv.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   
>>   struct mmio_diff_param {
>>   	struct intel_vgpu *vgpu;
>> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
>> index f230b07a12ae..21341842c0a9 100644
>> --- a/drivers/gpu/drm/i915/gvt/display.c
>> +++ b/drivers/gpu/drm/i915/gvt/display.c
>> @@ -35,21 +35,21 @@
>>   #include <drm/display/drm_dp.h>
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>> -#include "display/intel_display_regs.h"
>> -#include "gvt.h"
>> -
>>   #include "display/bxt_dpio_phy_regs.h"
>>   #include "display/i9xx_plane_regs.h"
>>   #include "display/intel_crt_regs.h"
>>   #include "display/intel_cursor_regs.h"
>>   #include "display/intel_display.h"
>> -#include "display_helpers.h"
>> +#include "display/intel_display_regs.h"
>>   #include "display/intel_dpio_phy.h"
>>   #include "display/intel_dpll_mgr.h"
>>   #include "display/intel_sprite_regs.h"
>>   
>> +#include "display_helpers.h"
>> +#include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +
>>   static int get_edp_pipe(struct intel_vgpu *vgpu)
>>   {
>>   	u32 data = vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP);
>> diff --git a/drivers/gpu/drm/i915/gvt/display.h b/drivers/gpu/drm/i915/gvt/display.h
>> index bc7f05f9a271..41a3b053663a 100644
>> --- a/drivers/gpu/drm/i915/gvt/display.h
>> +++ b/drivers/gpu/drm/i915/gvt/display.h
>> @@ -35,8 +35,8 @@
>>   #ifndef _GVT_DISPLAY_H_
>>   #define _GVT_DISPLAY_H_
>>   
>> -#include <linux/types.h>
>>   #include <linux/hrtimer.h>
>> +#include <linux/types.h>
>>   
>>   struct intel_gvt;
>>   struct intel_vgpu;
>> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
>> index 92506c80322d..8e76869b352c 100644
>> --- a/drivers/gpu/drm/i915/gvt/dmabuf.c
>> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
>> @@ -35,12 +35,12 @@
>>   #include <drm/drm_plane.h>
>>   #include <drm/drm_print.h>
>>   
>> +#include "display/skl_universal_plane_regs.h"
>> +
>>   #include "gem/i915_gem_dmabuf.h"
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> -
>> -#include "display/skl_universal_plane_regs.h"
>> +#include "i915_drv.h"
>>   
>>   #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
>>   
>> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.h b/drivers/gpu/drm/i915/gvt/dmabuf.h
>> index 3dcdb6570eda..06445e1cf3cf 100644
>> --- a/drivers/gpu/drm/i915/gvt/dmabuf.h
>> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.h
>> @@ -30,6 +30,7 @@
>>   
>>   #ifndef _GVT_DMABUF_H_
>>   #define _GVT_DMABUF_H_
>> +
>>   #include <linux/vfio.h>
>>   
>>   struct intel_vgpu_fb_info {
>> diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
>> index 30e414381af3..021afff1cd5d 100644
>> --- a/drivers/gpu/drm/i915/gvt/edid.c
>> +++ b/drivers/gpu/drm/i915/gvt/edid.c
>> @@ -38,6 +38,7 @@
>>   #include "display/intel_dp_aux_regs.h"
>>   #include "display/intel_gmbus.h"
>>   #include "display/intel_gmbus_regs.h"
>> +
>>   #include "gvt.h"
>>   #include "i915_drv.h"
>>   #include "i915_reg.h"
>> diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
>> index 274c6ef42400..29147a9f162e 100644
>> --- a/drivers/gpu/drm/i915/gvt/execlist.c
>> +++ b/drivers/gpu/drm/i915/gvt/execlist.c
>> @@ -32,8 +32,8 @@
>>    *
>>    */
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   
>>   #define _EL_OFFSET_STATUS       0x234
>>   #define _EL_OFFSET_STATUS_BUF   0x370
>> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
>> index 3d1a7e5c8cd3..d7abf38df532 100644
>> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
>> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
>> @@ -35,17 +35,17 @@
>>   
>>   #include <uapi/drm/drm_fourcc.h>
>>   
>> -#include "gvt.h"
>> -#include "i915_drv.h"
>> -#include "i915_pvinfo.h"
>> -#include "i915_reg.h"
>> -#include "display/intel_display_regs.h"
>> -
>>   #include "display/i9xx_plane_regs.h"
>>   #include "display/intel_cursor_regs.h"
>> +#include "display/intel_display_regs.h"
>>   #include "display/intel_sprite_regs.h"
>>   #include "display/skl_universal_plane_regs.h"
>> +
>>   #include "display_helpers.h"
>> +#include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_pvinfo.h"
>> +#include "i915_reg.h"
>>   
>>   #define PRIMARY_FORMAT_NUM	16
>>   struct pixel_format {
>> diff --git a/drivers/gpu/drm/i915/gvt/firmware.c b/drivers/gpu/drm/i915/gvt/firmware.c
>> index 221a3ae81baf..e452298991be 100644
>> --- a/drivers/gpu/drm/i915/gvt/firmware.c
>> +++ b/drivers/gpu/drm/i915/gvt/firmware.c
>> @@ -28,12 +28,12 @@
>>    *
>>    */
>>   
>> -#include <linux/firmware.h>
>>   #include <linux/crc32.h>
>> +#include <linux/firmware.h>
>>   #include <linux/vmalloc.h>
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   #include "i915_pvinfo.h"
>>   
>>   #define FIRMWARE_VERSION (0x0)
>> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
>> index 076d9139edc6..49028e7ef1e0 100644
>> --- a/drivers/gpu/drm/i915/gvt/gtt.c
>> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
>> @@ -33,16 +33,17 @@
>>    *
>>    */
>>   
>> +#include <linux/vmalloc.h>
>> +
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> +#include "gt/intel_gt_regs.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   #include "i915_pvinfo.h"
>>   #include "trace.h"
>>   
>> -#include "gt/intel_gt_regs.h"
>> -#include <linux/vmalloc.h>
>> -
>>   #if defined(VERBOSE_DEBUG)
>>   #define gvt_vdbg_mm(fmt, args...) gvt_dbg_mm(fmt, ##args)
>>   #else
>> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
>> index 1d10c16e6465..965d94610d56 100644
>> --- a/drivers/gpu/drm/i915/gvt/gvt.h
>> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
>> @@ -34,29 +34,28 @@
>>   #define _GVT_H_
>>   
>>   #include <uapi/linux/pci_regs.h>
>> -#include <linux/vfio.h>
>>   #include <linux/mdev.h>
>> -
>> +#include <linux/vfio.h>
>>   #include <asm/kvm_page_track.h>
>>   
>>   #include "gt/intel_gt.h"
>> -#include "intel_gvt.h"
>>   
>> +#include "cmd_parser.h"
>>   #include "debug.h"
>> -#include "mmio.h"
>> -#include "reg.h"
>> -#include "interrupt.h"
>> -#include "gtt.h"
>>   #include "display.h"
>> +#include "dmabuf.h"
>>   #include "edid.h"
>>   #include "execlist.h"
>> -#include "scheduler.h"
>> -#include "sched_policy.h"
>> -#include "mmio_context.h"
>> -#include "cmd_parser.h"
>>   #include "fb_decoder.h"
>> -#include "dmabuf.h"
>> +#include "gtt.h"
>> +#include "intel_gvt.h"
>> +#include "interrupt.h"
>> +#include "mmio.h"
>> +#include "mmio_context.h"
>>   #include "page_track.h"
>> +#include "reg.h"
>> +#include "sched_policy.h"
>> +#include "scheduler.h"
>>   
>>   #define GVT_MAX_VGPU 8
>>   
>> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
>> index 7063d3c77562..04cfe0997cde 100644
>> --- a/drivers/gpu/drm/i915/gvt/handlers.c
>> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
>> @@ -36,19 +36,16 @@
>>   
>>    */
>>   
>> +#include <linux/vmalloc.h>
>> +
>>   #include <drm/display/drm_dp.h>
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>> -#include "display/intel_display_regs.h"
>> -#include "gvt.h"
>> -#include "i915_pvinfo.h"
>> -#include "intel_mchbar_regs.h"
>>   #include "display/bxt_dpio_phy_regs.h"
>>   #include "display/i9xx_plane_regs.h"
>>   #include "display/intel_crt_regs.h"
>>   #include "display/intel_cursor_regs.h"
>> +#include "display/intel_display_regs.h"
>>   #include "display/intel_display_types.h"
>>   #include "display/intel_dmc_regs.h"
>>   #include "display/intel_dp_aux_regs.h"
>> @@ -63,9 +60,15 @@
>>   #include "display/skl_universal_plane_regs.h"
>>   #include "display/skl_watermark_regs.h"
>>   #include "display/vlv_dsi_pll_regs.h"
>> +
>>   #include "gt/intel_gt_regs.h"
>> -#include <linux/vmalloc.h>
>> +
>>   #include "display_helpers.h"
>> +#include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_pvinfo.h"
>> +#include "i915_reg.h"
>> +#include "intel_mchbar_regs.h"
>>   
>>   /* XXX FIXME i915 has changed PP_XXX definition */
>>   #define PCH_PP_STATUS  _MMIO(0xc7200)
>> diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
>> index 3e66269bc4ee..91d22b1c62e2 100644
>> --- a/drivers/gpu/drm/i915/gvt/interrupt.c
>> +++ b/drivers/gpu/drm/i915/gvt/interrupt.c
>> @@ -33,10 +33,11 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>>   #include "display/intel_display_regs.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>>   #include "trace.h"
>>   
>>   struct intel_gvt_irq_info {
>> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
>> index 3abc9206f1a8..b3739c9fcc48 100644
>> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
>> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
>> @@ -33,26 +33,25 @@
>>    *    Zhi Wang <zhi.a.wang@intel.com>
>>    */
>>   
>> +#include <linux/debugfs.h>
>> +#include <linux/eventfd.h>
>>   #include <linux/init.h>
>> -#include <linux/mm.h>
>>   #include <linux/kthread.h>
>> -#include <linux/sched/mm.h>
>> -#include <linux/types.h>
>>   #include <linux/list.h>
>> -#include <linux/rbtree.h>
>> -#include <linux/spinlock.h>
>> -#include <linux/eventfd.h>
>>   #include <linux/mdev.h>
>> -#include <linux/debugfs.h>
>> -
>> +#include <linux/mm.h>
>>   #include <linux/nospec.h>
>> +#include <linux/rbtree.h>
>> +#include <linux/sched/mm.h>
>> +#include <linux/spinlock.h>
>> +#include <linux/types.h>
>>   
>>   #include <drm/drm_edid.h>
>>   #include <drm/drm_print.h>
>>   
>> +#include "gvt.h"
>>   #include "i915_drv.h"
>>   #include "intel_gvt.h"
>> -#include "gvt.h"
>>   
>>   MODULE_IMPORT_NS("DMA_BUF");
>>   MODULE_IMPORT_NS("I915_GVT");
>> diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
>> index 214eb7effa31..9e98db2d4f67 100644
>> --- a/drivers/gpu/drm/i915/gvt/mmio.c
>> +++ b/drivers/gpu/drm/i915/gvt/mmio.c
>> @@ -37,15 +37,16 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>> -#include "display/intel_display_regs.h"
>> -#include "gvt.h"
>> -
>>   #include "display/bxt_dpio_phy_regs.h"
>> +#include "display/intel_display_regs.h"
>>   #include "display/intel_dpio_phy.h"
>> +
>>   #include "gt/intel_gt_regs.h"
>>   
>> +#include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +
>>   /**
>>    * intel_vgpu_gpa_to_mmio_offset - translate a GPA to MMIO offset
>>    * @vgpu: a vGPU
>> diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
>> index dbad4d853d3a..d6e76ba31d60 100644
>> --- a/drivers/gpu/drm/i915/gvt/opregion.c
>> +++ b/drivers/gpu/drm/i915/gvt/opregion.c
>> @@ -22,8 +22,9 @@
>>    */
>>   
>>   #include <linux/acpi.h>
>> -#include "i915_drv.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   
>>   /*
>>    * Note: Only for GVT-g virtual VBT generation, other usage must
>> diff --git a/drivers/gpu/drm/i915/gvt/page_track.c b/drivers/gpu/drm/i915/gvt/page_track.c
>> index 20c3cd807488..b22ef801963e 100644
>> --- a/drivers/gpu/drm/i915/gvt/page_track.c
>> +++ b/drivers/gpu/drm/i915/gvt/page_track.c
>> @@ -20,8 +20,9 @@
>>    * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
>>    * SOFTWARE.
>>    */
>> -#include "i915_drv.h"
>> +
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   
>>   /**
>>    * intel_vgpu_find_page_track - find page track rcord of guest page
>> diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
>> index 6c2d68e88266..df787472b1cf 100644
>> --- a/drivers/gpu/drm/i915/gvt/sched_policy.c
>> +++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
>> @@ -31,8 +31,8 @@
>>    *
>>    */
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   
>>   static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
>>   {
>> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
>> index 63ad1fed525a..a91accfd371d 100644
>> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> @@ -38,16 +38,17 @@
>>   #include <drm/drm_print.h>
>>   
>>   #include "gem/i915_gem_pm.h"
>> +
>>   #include "gt/intel_context.h"
>>   #include "gt/intel_execlists_submission.h"
>>   #include "gt/intel_gt_regs.h"
>>   #include "gt/intel_lrc.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "gvt.h"
>>   #include "i915_drv.h"
>>   #include "i915_gem_gtt.h"
>>   #include "i915_perf_oa_regs.h"
>> -#include "gvt.h"
>>   
>>   #define RING_CTX_OFF(x) \
>>   	offsetof(struct execlist_ring_context, x)
>> diff --git a/drivers/gpu/drm/i915/gvt/trace.h b/drivers/gpu/drm/i915/gvt/trace.h
>> index 63874d385c6f..8cd0601e478f 100644
>> --- a/drivers/gpu/drm/i915/gvt/trace.h
>> +++ b/drivers/gpu/drm/i915/gvt/trace.h
>> @@ -31,9 +31,9 @@
>>   #if !defined(_GVT_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
>>   #define _GVT_TRACE_H_
>>   
>> -#include <linux/types.h>
>>   #include <linux/stringify.h>
>>   #include <linux/tracepoint.h>
>> +#include <linux/types.h>
>>   #include <asm/tsc.h>
>>   
>>   #undef TRACE_SYSTEM
>> diff --git a/drivers/gpu/drm/i915/gvt/trace_points.c b/drivers/gpu/drm/i915/gvt/trace_points.c
>> index fe552e877e09..79b75356d622 100644
>> --- a/drivers/gpu/drm/i915/gvt/trace_points.c
>> +++ b/drivers/gpu/drm/i915/gvt/trace_points.c
>> @@ -30,5 +30,7 @@
>>   
>>   #ifndef __CHECKER__
>>   #define CREATE_TRACE_POINTS
>> +
>>   #include "trace.h"
>> +
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
>> index c49e4bf95a30..a12011410874 100644
>> --- a/drivers/gpu/drm/i915/gvt/vgpu.c
>> +++ b/drivers/gpu/drm/i915/gvt/vgpu.c
>> @@ -31,12 +31,13 @@
>>    *
>>    */
>>   
>> +#include <linux/vmalloc.h>
>> +
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>>   #include "gvt.h"
>> +#include "i915_drv.h"
>>   #include "i915_pvinfo.h"
>> -#include <linux/vmalloc.h>
>>   
>>   void populate_pvinfo_page(struct intel_vgpu *vgpu)
>>   {
>> diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
>> index 5f615ec0e580..6b43713899b8 100644
>> --- a/drivers/gpu/drm/i915/intel_gvt.c
>> +++ b/drivers/gpu/drm/i915/intel_gvt.c
>> @@ -21,16 +21,19 @@
>>    * SOFTWARE.
>>    */
>>   
>> +#include <linux/vmalloc.h>
>> +
>>   #include <drm/drm_print.h>
>>   
>> -#include "i915_drv.h"
>> -#include "i915_vgpu.h"
>> -#include "intel_gvt.h"
>>   #include "gem/i915_gem_dmabuf.h"
>> +
>>   #include "gt/intel_context.h"
>>   #include "gt/intel_ring.h"
>>   #include "gt/shmem_utils.h"
>> -#include <linux/vmalloc.h>
>> +
>> +#include "i915_drv.h"
>> +#include "i915_vgpu.h"
>> +#include "intel_gvt.h"
>>   
>>   /**
>>    * DOC: Intel GVT-g host support
>> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>> index ca57a3dd3148..478d00f89a4b 100644
>> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>> @@ -12,6 +12,7 @@
>>   #include "display/intel_crt_regs.h"
>>   #include "display/intel_cursor_regs.h"
>>   #include "display/intel_display_core.h"
>> +#include "display/intel_display_regs.h"
>>   #include "display/intel_display_types.h"
>>   #include "display/intel_dmc_regs.h"
>>   #include "display/intel_dp_aux_regs.h"
>> @@ -27,14 +28,15 @@
>>   #include "display/skl_universal_plane_regs.h"
>>   #include "display/skl_watermark_regs.h"
>>   #include "display/vlv_dsi_pll_regs.h"
>> +
>>   #include "gt/intel_engine_regs.h"
>>   #include "gt/intel_gt_regs.h"
>> +
>>   #include "gvt/reg.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_pvinfo.h"
>>   #include "i915_reg.h"
>> -#include "display/intel_display_regs.h"
>>   #include "intel_gvt.h"
>>   #include "intel_mchbar_regs.h"
>>   

-- 
Jani Nikula, Intel
