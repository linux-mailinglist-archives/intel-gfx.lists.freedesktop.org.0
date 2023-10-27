Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EF07D99A1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 15:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BB510E9A4;
	Fri, 27 Oct 2023 13:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCE910E97F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 13:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698412888; x=1729948888;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FB7FYBcm9oJiYqfDnXa6gSb86qdE5GvKY5xyIB6vhJk=;
 b=EXFjvapQLRN1dPtL953CZTpE9iJYx9ynEeRwCE64ZJGQFlDNclRZUVFj
 pgtEoGb6pKIpFCZ7LWGc6LxM+IlaNO9ew0uF81oojH1qCdo/GqxfWgNkB
 mZTfP6Ujth/11ZpmtjtmlOPzwE/NkGaXd+Wyr3CvahNxnVzEtS3fxYVCx
 XzMS1RkxVnBQshy4TxL78L0fO2hcO1CK6qPGXbiZH1j0p44Ai56oTwwbJ
 fh2UbiBD2Vhui7OkLJCVV+HN9oeOt0nQCk7BOnqAzAnO3ZCO1DayZsvuv
 qkd4/k6lDRXLybJBaC2K4gveou6nYVxME/ri84E7wEA80rdeI0Z3TR0g7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="418883478"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="418883478"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 06:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="763209274"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="763209274"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga007.fm.intel.com with SMTP; 27 Oct 2023 06:21:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Oct 2023 16:21:24 +0300
Date: Fri, 27 Oct 2023 16:21:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <ZTu1lLZ3M-nV-Dxn@intel.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <ZTp4ib-FKyX0r9ct@intel.com>
 <BL1PR11MB5979B66B0F9B7A336FA1EB51F9DCA@BL1PR11MB5979.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BL1PR11MB5979B66B0F9B7A336FA1EB51F9DCA@BL1PR11MB5979.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 27, 2023 at 05:59:45AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Thursday, October 26, 2023 8:03 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
> > 
> > On Sun, Oct 08, 2023 at 03:42:06PM +0530, Animesh Manna wrote:
> > > Refactor DSB implementation to be compatible with Xe driver.
> > >
> > > v1: RFC version.
> > > v2: Make intel_dsb structure opaque from external usage. [Jani]
> > > v3: Rebased on latest.
> > >
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dsb.c      | 84 ++++++++-----------
> > >  .../gpu/drm/i915/display/intel_dsb_buffer.c   | 64 ++++++++++++++
> > >  .../gpu/drm/i915/display/intel_dsb_buffer.h   | 26 ++++++
> > >  4 files changed, 126 insertions(+), 49 deletions(-)  create mode
> > > 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > >
> > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > b/drivers/gpu/drm/i915/Makefile index dec78efa452a..7c3f91c2375a
> > > 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -260,6 +260,7 @@ i915-y += \
> > >  	display/intel_dpt.o \
> > >  	display/intel_drrs.o \
> > >  	display/intel_dsb.o \
> > > +	display/intel_dsb_buffer.o \
> > >  	display/intel_fb.o \
> > >  	display/intel_fb_pin.o \
> > >  	display/intel_fbc.o \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 3e32aa49b8eb..ec89d968a873 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -13,12 +13,13 @@
> > >  #include "intel_de.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_dsb.h"
> > > +#include "intel_dsb_buffer.h"
> > >  #include "intel_dsb_regs.h"
> > >  #include "intel_vblank.h"
> > >  #include "intel_vrr.h"
> > >  #include "skl_watermark.h"
> > >
> > > -struct i915_vma;
> > > +#define CACHELINE_BYTES 64
> > >
> > >  enum dsb_id {
> > >  	INVALID_DSB = -1,
> > > @@ -31,8 +32,7 @@ enum dsb_id {
> > >  struct intel_dsb {
> > >  	enum dsb_id id;
> > >
> > > -	u32 *cmd_buf;
> > > -	struct i915_vma *vma;
> > > +	struct intel_dsb_buffer dsb_buf;
> > >  	struct intel_crtc *crtc;
> > >
> > >  	/*
> > > @@ -108,15 +108,17 @@ static void intel_dsb_dump(struct intel_dsb
> > > *dsb)  {
> > >  	struct intel_crtc *crtc = dsb->crtc;
> > >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > -	const u32 *buf = dsb->cmd_buf;
> > >  	int i;
> > >
> > >  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
> > >  		    crtc->base.base.id, crtc->base.name, dsb->id);
> > >  	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
> > >  		drm_dbg_kms(&i915->drm,
> > > -			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
> > > -			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
> > > +			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
> > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
> > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
> > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
> > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
> > >  	drm_dbg_kms(&i915->drm, "}\n");
> > >  }
> > >
> > > @@ -128,8 +130,6 @@ static bool is_dsb_busy(struct drm_i915_private
> > > *i915, enum pipe pipe,
> > >
> > >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> > > {
> > > -	u32 *buf = dsb->cmd_buf;
> > > -
> > >  	if (!assert_dsb_has_room(dsb))
> > >  		return;
> > >
> > > @@ -138,14 +138,13 @@ static void intel_dsb_emit(struct intel_dsb
> > > *dsb, u32 ldw, u32 udw)
> > >
> > >  	dsb->ins_start_offset = dsb->free_pos;
> > >
> > > -	buf[dsb->free_pos++] = ldw;
> > > -	buf[dsb->free_pos++] = udw;
> > > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, ldw);
> > > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, udw);
> > >  }
> > >
> > >  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> > >  					u32 opcode, i915_reg_t reg)
> > >  {
> > > -	const u32 *buf = dsb->cmd_buf;
> > >  	u32 prev_opcode, prev_reg;
> > >
> > >  	/*
> > > @@ -156,8 +155,10 @@ static bool intel_dsb_prev_ins_is_write(struct
> > intel_dsb *dsb,
> > >  	if (dsb->free_pos == 0)
> > >  		return false;
> > >
> > > -	prev_opcode = buf[dsb->ins_start_offset + 1] &
> > ~DSB_REG_VALUE_MASK;
> > > -	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
> > > +	prev_opcode = intel_dsb_buffer_read(&dsb->dsb_buf,
> > > +					    dsb->ins_start_offset + 1) >>
> > DSB_OPCODE_SHIFT;
> > > +	prev_reg =  intel_dsb_buffer_read(&dsb->dsb_buf,
> > > +					  dsb->ins_start_offset + 1) &
> > DSB_REG_VALUE_MASK;
> > >
> > >  	return prev_opcode == opcode && prev_reg ==
> > > i915_mmio_reg_offset(reg);  } @@ -190,6 +191,8 @@ static bool
> > > intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
> > > void intel_dsb_reg_write(struct intel_dsb *dsb,
> > >  			 i915_reg_t reg, u32 val)
> > >  {
> > > +	u32 old_val;
> > > +
> > >  	/*
> > >  	 * For example the buffer will look like below for 3 dwords for auto
> > >  	 * increment register:
> > > @@ -213,31 +216,32 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
> > >  			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
> > >  			       i915_mmio_reg_offset(reg));
> > >  	} else {
> > > -		u32 *buf = dsb->cmd_buf;
> > > -
> > >  		if (!assert_dsb_has_room(dsb))
> > >  			return;
> > >
> > >  		/* convert to indexed write? */
> > >  		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
> > > -			u32 prev_val = buf[dsb->ins_start_offset + 0];
> > > +			u32 prev_val = intel_dsb_buffer_read(&dsb-
> > >dsb_buf,
> > > +							     dsb-
> > >ins_start_offset + 0);
> > >
> > > -			buf[dsb->ins_start_offset + 0] = 1; /* count */
> > > -			buf[dsb->ins_start_offset + 1] =
> > > -				(DSB_OPCODE_INDEXED_WRITE <<
> > DSB_OPCODE_SHIFT) |
> > > -				i915_mmio_reg_offset(reg);
> > > -			buf[dsb->ins_start_offset + 2] = prev_val;
> > > +			intel_dsb_buffer_write(&dsb->dsb_buf,
> > > +					       dsb->ins_start_offset + 0, 1); /*
> > count */
> > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > >ins_start_offset + 1,
> > > +					       (DSB_OPCODE_INDEXED_WRITE
> > << DSB_OPCODE_SHIFT) |
> > > +					       i915_mmio_reg_offset(reg));
> > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > >ins_start_offset + 2,
> > > +prev_val);
> > >
> > >  			dsb->free_pos++;
> > >  		}
> > >
> > > -		buf[dsb->free_pos++] = val;
> > > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++,
> > val);
> > >  		/* Update the count */
> > > -		buf[dsb->ins_start_offset]++;
> > > +		old_val = intel_dsb_buffer_read(&dsb->dsb_buf, dsb-
> > >ins_start_offset);
> > > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > >ins_start_offset,
> > > +old_val + 1);
> > >
> > >  		/* if number of data words is odd, then the last dword
> > should be 0.*/
> > >  		if (dsb->free_pos & 0x1)
> > > -			buf[dsb->free_pos] = 0;
> > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > >free_pos, 0);
> > >  	}
> > >  }
> > >
> > > @@ -296,8 +300,8 @@ static void intel_dsb_align_tail(struct intel_dsb
> > *dsb)
> > >  	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
> > >
> > >  	if (aligned_tail > tail)
> > > -		memset(&dsb->cmd_buf[dsb->free_pos], 0,
> > > -		       aligned_tail - tail);
> > > +		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
> > > +					aligned_tail - tail);
> > >
> > >  	dsb->free_pos = aligned_tail / 4;
> > >  }
> > > @@ -358,7 +362,7 @@ static void _intel_dsb_commit(struct intel_dsb
> > *dsb, u32 ctrl,
> > >  			  ctrl | DSB_ENABLE);
> > >
> > >  	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> > > -			  i915_ggtt_offset(dsb->vma));
> > > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
> > >
> > >  	if (dewake_scanline >= 0) {
> > >  		int diff, hw_dewake_scanline;
> > > @@ -380,7 +384,7 @@ static void _intel_dsb_commit(struct intel_dsb
> > *dsb, u32 ctrl,
> > >  	}
> > >
> > >  	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> > > -			  i915_ggtt_offset(dsb->vma) + tail);
> > > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
> > >  }
> > >
> > >  /**
> > > @@ -405,7 +409,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> > >  	enum pipe pipe = crtc->pipe;
> > >
> > >  	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
> > > -		u32 offset = i915_ggtt_offset(dsb->vma);
> > > +		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
> > >
> > >  		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> > >  				  DSB_ENABLE | DSB_HALT);
> > > @@ -442,12 +446,9 @@ struct intel_dsb *intel_dsb_prepare(const struct
> > > intel_crtc_state *crtc_state,  {
> > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > -	struct drm_i915_gem_object *obj;
> > >  	intel_wakeref_t wakeref;
> > >  	struct intel_dsb *dsb;
> > > -	struct i915_vma *vma;
> > >  	unsigned int size;
> > > -	u32 *buf;
> > >
> > >  	if (!HAS_DSB(i915))
> > >  		return NULL;
> > > @@ -461,28 +462,13 @@ struct intel_dsb *intel_dsb_prepare(const struct
> > intel_crtc_state *crtc_state,
> > >  	/* ~1 qword per instruction, full cachelines */
> > >  	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
> > >
> > > -	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > > -	if (IS_ERR(obj))
> > > -		goto out_put_rpm;
> > > -
> > > -	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > > -	if (IS_ERR(vma)) {
> > > -		i915_gem_object_put(obj);
> > > +	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
> > >  		goto out_put_rpm;
> > > -	}
> > > -
> > > -	buf = i915_gem_object_pin_map_unlocked(vma->obj,
> > I915_MAP_WC);
> > > -	if (IS_ERR(buf)) {
> > > -		i915_vma_unpin_and_release(&vma,
> > I915_VMA_RELEASE_MAP);
> > > -		goto out_put_rpm;
> > > -	}
> > >
> > >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > >
> > >  	dsb->id = DSB1;
> > > -	dsb->vma = vma;
> > >  	dsb->crtc = crtc;
> > > -	dsb->cmd_buf = buf;
> > >  	dsb->size = size / 4; /* in dwords */
> > >  	dsb->free_pos = 0;
> > >  	dsb->ins_start_offset = 0;
> > > @@ -510,6 +496,6 @@ struct intel_dsb *intel_dsb_prepare(const struct
> > intel_crtc_state *crtc_state,
> > >   */
> > >  void intel_dsb_cleanup(struct intel_dsb *dsb)  {
> > > -	i915_vma_unpin_and_release(&dsb->vma,
> > I915_VMA_RELEASE_MAP);
> > > +	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
> > >  	kfree(dsb);
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > new file mode 100644
> > > index 000000000000..723937591831
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > @@ -0,0 +1,64 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright 2023, Intel Corporation.
> > > + */
> > > +
> > > +#include "gem/i915_gem_internal.h"
> > > +#include "i915_drv.h"
> > > +#include "i915_vma.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_dsb_buffer.h"
> > > +
> > > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf) {
> > > +	return i915_ggtt_offset(dsb_buf->vma); }
> > > +
> > > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val) {
> > > +	dsb_buf->cmd_buf[idx] = val;
> > > +}
> > > +
> > > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
> > > +{
> > > +	return dsb_buf->cmd_buf[idx];
> > > +}
> > > +
> > > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val, u32 sz) {
> > > +	memset(&dsb_buf->cmd_buf[idx], val, sz); }
> > 
> > What's the point in abstracting that stuff?
> 
> For xe driver the memset implementation will be done differently,

Differently how?

> so created this abstraction. The same thing is followed other xe-refactoring code as well.
> If you want me to change the code any specific way please let me, will try to modify accordingly. 
> 
> Regards,
> Animesh
> 
> > 
> > > +
> > > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > > +intel_dsb_buffer *dsb_buf, u32 size) {
> > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > +	struct drm_i915_gem_object *obj;
> > > +	struct i915_vma *vma;
> > > +	u32 *buf;
> > > +
> > > +	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > > +	if (IS_ERR(obj))
> > > +		return false;
> > > +
> > > +	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > > +	if (IS_ERR(vma)) {
> > > +		i915_gem_object_put(obj);
> > > +		return false;
> > > +	}
> > > +
> > > +	buf = i915_gem_object_pin_map_unlocked(vma->obj,
> > I915_MAP_WC);
> > > +	if (IS_ERR(buf)) {
> > > +		i915_vma_unpin_and_release(&vma,
> > I915_VMA_RELEASE_MAP);
> > > +		return false;
> > > +	}
> > > +
> > > +	dsb_buf->vma = vma;
> > > +	dsb_buf->cmd_buf = buf;
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf) {
> > > +	i915_vma_unpin_and_release(&dsb_buf->vma,
> > I915_VMA_RELEASE_MAP); }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > new file mode 100644
> > > index 000000000000..7dbfd23b52a9
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > @@ -0,0 +1,26 @@
> > > +/* SPDX-License-Identifier: MIT
> > > + *
> > > + * Copyright © 2023 Intel Corporation  */
> > > +
> > > +#ifndef _INTEL_DSB_BUFFER_H
> > > +#define _INTEL_DSB_BUFFER_H
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +struct intel_crtc;
> > > +struct i915_vma;
> > > +
> > > +struct intel_dsb_buffer {
> > > +	u32 *cmd_buf;
> > > +	struct i915_vma *vma;
> > > +};
> > > +
> > > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
> > > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val);
> > > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
> > > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val, u32 sz); bool intel_dsb_buffer_create(struct intel_crtc
> > > +*crtc, struct intel_dsb_buffer *dsb_buf, u32 size); void
> > > +intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
> > > +
> > > +#endif
> > > --
> > > 2.29.0
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
