Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D93117AE958
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 11:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653A110E386;
	Tue, 26 Sep 2023 09:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F31810E386
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 09:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695720994; x=1727256994;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=yEURBmw8+J+oK80Ac62Ezwwe1H7efEi2kuOG4Y0FN8w=;
 b=WYjPUnXaBkUWNdmcUTj+wLDZP8DKADdZu84KavlQ0BoQ0HHXH/jgQOnR
 2S2qywfveoEJfS3NpQ1NZmtdH8LmpZBbE1ecXuIkiuOi0jfYmsj39iRn+
 VueR1H+Oemr91jgzWtPDHfiK6WvbGDEqnXkq26EZl2rmPgHu1fUZVby77
 1rMwMin4aELuxcj1OHdi57dW7JCWstJIXgFfLCwC5yiODCOcYuCSRCwHj
 6P5hYxSpCpZ/RoCmaoWAPDlBcKAP42MHHlJMmYfGjw+Y9ryeHX+StxjtC
 gDMGdjDYtNZo5c6U+hx4D3EksWyp9EOcIV0iGSF62hznpFaHNoj4O+DI0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="412443651"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="412443651"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="864344730"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="864344730"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:34:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
Date: Tue, 26 Sep 2023 12:34:35 +0300
Message-ID: <87v8bxl1lg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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

On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, September 25, 2023 6:00 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
>> 
>> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
>> > Refactor DSB implementation to be compatible with Xe driver.
>> 
>> Sad trombone.
>> 
>> struct intel_dsb should remain an opaque type. I put effort into hiding its
>> definition, so its guts wouldn't be accessed nilly-willy all over the place. If it's
>> not hidden, it just will get accessed.
>
> Hi Jani,
>
> Xe driver need access to intel_dsb structure, so I can create a new header file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?

I just think you need to find a different abstraction level that doesn't
involve exposing struct intel_dsb.

The stuff you're putting in intel_dsb_ops.[ch] don't really need to
operate on intel_dsb at all.


BR,
Jani.


>
> Regards,
> Animesh
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/Makefile                |   1 +
>> >  drivers/gpu/drm/i915/display/intel_dsb.c     | 115 ++++---------------
>> >  drivers/gpu/drm/i915/display/intel_dsb.h     |  41 ++++++-
>> >  drivers/gpu/drm/i915/display/intel_dsb_ops.c |  67 +++++++++++
>> >  4 files changed, 130 insertions(+), 94 deletions(-)  create mode
>> > 100644 drivers/gpu/drm/i915/display/intel_dsb_ops.c
>> >
>> > diff --git a/drivers/gpu/drm/i915/Makefile
>> > b/drivers/gpu/drm/i915/Makefile index 1b2e02e9d92c..7fbb5055b85b
>> > 100644
>> > --- a/drivers/gpu/drm/i915/Makefile
>> > +++ b/drivers/gpu/drm/i915/Makefile
>> > @@ -256,6 +256,7 @@ i915-y += \
>> >  	display/intel_dpt.o \
>> >  	display/intel_drrs.o \
>> >  	display/intel_dsb.o \
>> > +	display/intel_dsb_ops.o \
>> >  	display/intel_fb.o \
>> >  	display/intel_fb_pin.o \
>> >  	display/intel_fbc.o \
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
>> > b/drivers/gpu/drm/i915/display/intel_dsb.c
>> > index 9a507b9ad82c..f7c6b9aa130f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> > @@ -4,8 +4,6 @@
>> >   *
>> >   */
>> >
>> > -#include "gem/i915_gem_internal.h"
>> > -
>> >  #include "i915_drv.h"
>> >  #include "i915_reg.h"
>> >  #include "intel_de.h"
>> > @@ -13,41 +11,7 @@
>> >  #include "intel_dsb.h"
>> >  #include "intel_dsb_regs.h"
>> >
>> > -struct i915_vma;
>> > -
>> > -enum dsb_id {
>> > -	INVALID_DSB = -1,
>> > -	DSB1,
>> > -	DSB2,
>> > -	DSB3,
>> > -	MAX_DSB_PER_PIPE
>> > -};
>> > -
>> > -struct intel_dsb {
>> > -	enum dsb_id id;
>> > -
>> > -	u32 *cmd_buf;
>> > -	struct i915_vma *vma;
>> > -	struct intel_crtc *crtc;
>> > -
>> > -	/*
>> > -	 * maximum number of dwords the buffer will hold.
>> > -	 */
>> > -	unsigned int size;
>> > -
>> > -	/*
>> > -	 * free_pos will point the first free dword and
>> > -	 * help in calculating tail of command buffer.
>> > -	 */
>> > -	unsigned int free_pos;
>> > -
>> > -	/*
>> > -	 * ins_start_offset will help to store start dword of the dsb
>> > -	 * instuction and help in identifying the batch of auto-increment
>> > -	 * register.
>> > -	 */
>> > -	unsigned int ins_start_offset;
>> > -};
>> > +#define CACHELINE_BYTES 64
>> >
>> >  /**
>> >   * DOC: DSB
>> > @@ -117,8 +81,6 @@ static bool is_dsb_busy(struct drm_i915_private
>> > *i915, enum pipe pipe,
>> >
>> >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
>> > {
>> > -	u32 *buf = dsb->cmd_buf;
>> > -
>> >  	if (!assert_dsb_has_room(dsb))
>> >  		return;
>> >
>> > @@ -127,14 +89,13 @@ static void intel_dsb_emit(struct intel_dsb *dsb,
>> > u32 ldw, u32 udw)
>> >
>> >  	dsb->ins_start_offset = dsb->free_pos;
>> >
>> > -	buf[dsb->free_pos++] = ldw;
>> > -	buf[dsb->free_pos++] = udw;
>> > +	intel_dsb_write(dsb, dsb->free_pos++, ldw);
>> > +	intel_dsb_write(dsb, dsb->free_pos++, udw);
>> >  }
>> >
>> >  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
>> >  					u32 opcode, i915_reg_t reg)
>> >  {
>> > -	const u32 *buf = dsb->cmd_buf;
>> >  	u32 prev_opcode, prev_reg;
>> >
>> >  	/*
>> > @@ -145,8 +106,8 @@ static bool intel_dsb_prev_ins_is_write(struct
>> intel_dsb *dsb,
>> >  	if (dsb->free_pos == 0)
>> >  		return false;
>> >
>> > -	prev_opcode = buf[dsb->ins_start_offset + 1] &
>> ~DSB_REG_VALUE_MASK;
>> > -	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
>> > +	prev_opcode = intel_dsb_read(dsb, dsb->ins_start_offset + 1) >>
>> DSB_OPCODE_SHIFT;
>> > +	prev_reg =  intel_dsb_read(dsb, dsb->ins_start_offset + 1) &
>> > +DSB_REG_VALUE_MASK;
>> >
>> >  	return prev_opcode == opcode && prev_reg ==
>> > i915_mmio_reg_offset(reg);  } @@ -179,6 +140,8 @@ static bool
>> > intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
>> > void intel_dsb_reg_write(struct intel_dsb *dsb,
>> >  			 i915_reg_t reg, u32 val)
>> >  {
>> > +	u32 old_val;
>> > +
>> >  	/*
>> >  	 * For example the buffer will look like below for 3 dwords for auto
>> >  	 * increment register:
>> > @@ -202,31 +165,30 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
>> >  			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
>> >  			       i915_mmio_reg_offset(reg));
>> >  	} else {
>> > -		u32 *buf = dsb->cmd_buf;
>> > -
>> >  		if (!assert_dsb_has_room(dsb))
>> >  			return;
>> >
>> >  		/* convert to indexed write? */
>> >  		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
>> > -			u32 prev_val = buf[dsb->ins_start_offset + 0];
>> > +			u32 prev_val = intel_dsb_read(dsb, dsb-
>> >ins_start_offset + 0);
>> >
>> > -			buf[dsb->ins_start_offset + 0] = 1; /* count */
>> > -			buf[dsb->ins_start_offset + 1] =
>> > -				(DSB_OPCODE_INDEXED_WRITE <<
>> DSB_OPCODE_SHIFT) |
>> > -				i915_mmio_reg_offset(reg);
>> > -			buf[dsb->ins_start_offset + 2] = prev_val;
>> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 0, 1); /*
>> count */
>> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 1,
>> > +					(DSB_OPCODE_INDEXED_WRITE <<
>> DSB_OPCODE_SHIFT) |
>> > +					i915_mmio_reg_offset(reg));
>> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 2,
>> prev_val);
>> >
>> >  			dsb->free_pos++;
>> >  		}
>> >
>> > -		buf[dsb->free_pos++] = val;
>> > +		intel_dsb_write(dsb, dsb->free_pos++, val);
>> >  		/* Update the count */
>> > -		buf[dsb->ins_start_offset]++;
>> > +		old_val = intel_dsb_read(dsb, dsb->ins_start_offset);
>> > +		intel_dsb_write(dsb, dsb->ins_start_offset, old_val + 1);
>> >
>> >  		/* if number of data words is odd, then the last dword
>> should be 0.*/
>> >  		if (dsb->free_pos & 0x1)
>> > -			buf[dsb->free_pos] = 0;
>> > +			intel_dsb_write(dsb, dsb->free_pos, 0);
>> >  	}
>> >  }
>> >
>> > @@ -238,8 +200,8 @@ static void intel_dsb_align_tail(struct intel_dsb
>> *dsb)
>> >  	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
>> >
>> >  	if (aligned_tail > tail)
>> > -		memset(&dsb->cmd_buf[dsb->free_pos], 0,
>> > -		       aligned_tail - tail);
>> > +		intel_dsb_memset(dsb, dsb->free_pos, 0,
>> > +				 aligned_tail - tail);
>> >
>> >  	dsb->free_pos = aligned_tail / 4;
>> >  }
>> > @@ -277,9 +239,9 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool
>> wait_for_vblank)
>> >  		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
>> >  		       DSB_ENABLE);
>> >  	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
>> > -		       i915_ggtt_offset(dsb->vma));
>> > +		       intel_dsb_ggtt_offset(dsb));
>> >  	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
>> > -		       i915_ggtt_offset(dsb->vma) + tail);
>> > +		       intel_dsb_ggtt_offset(dsb) + tail);
>> >  }
>> >
>> >  void intel_dsb_wait(struct intel_dsb *dsb) @@ -325,12 +287,9 @@
>> > struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
>> >  				    unsigned int max_cmds)
>> >  {
>> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > -	struct drm_i915_gem_object *obj;
>> >  	intel_wakeref_t wakeref;
>> >  	struct intel_dsb *dsb;
>> > -	struct i915_vma *vma;
>> >  	unsigned int size;
>> > -	u32 *buf;
>> >
>> >  	if (!HAS_DSB(i915))
>> >  		return NULL;
>> > @@ -344,28 +303,11 @@ struct intel_dsb *intel_dsb_prepare(struct
>> intel_crtc *crtc,
>> >  	/* ~1 qword per instruction, full cachelines */
>> >  	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
>> >
>> > -	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
>> > -	if (IS_ERR(obj))
>> > -		goto out_put_rpm;
>> > -
>> > -	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>> > -	if (IS_ERR(vma)) {
>> > -		i915_gem_object_put(obj);
>> > +	if (!intel_dsb_buffer_create(crtc, dsb, size))
>> >  		goto out_put_rpm;
>> > -	}
>> > -
>> > -	buf = i915_gem_object_pin_map_unlocked(vma->obj,
>> I915_MAP_WC);
>> > -	if (IS_ERR(buf)) {
>> > -		i915_vma_unpin_and_release(&vma,
>> I915_VMA_RELEASE_MAP);
>> > -		goto out_put_rpm;
>> > -	}
>> >
>> >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> >
>> > -	dsb->id = DSB1;
>> > -	dsb->vma = vma;
>> > -	dsb->crtc = crtc;
>> > -	dsb->cmd_buf = buf;
>> >  	dsb->size = size / 4; /* in dwords */
>> >  	dsb->free_pos = 0;
>> >  	dsb->ins_start_offset = 0;
>> > @@ -382,16 +324,3 @@ struct intel_dsb *intel_dsb_prepare(struct
>> > intel_crtc *crtc,
>> >
>> >  	return NULL;
>> >  }
>> > -
>> > -/**
>> > - * intel_dsb_cleanup() - To cleanup DSB context.
>> > - * @dsb: DSB context
>> > - *
>> > - * This function cleanup the DSB context by unpinning and releasing
>> > - * the VMA object associated with it.
>> > - */
>> > -void intel_dsb_cleanup(struct intel_dsb *dsb) -{
>> > -	i915_vma_unpin_and_release(&dsb->vma,
>> I915_VMA_RELEASE_MAP);
>> > -	kfree(dsb);
>> > -}
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
>> > b/drivers/gpu/drm/i915/display/intel_dsb.h
>> > index b8148b47022d..7feeb37e00a5 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
>> > @@ -11,7 +11,41 @@
>> >  #include "i915_reg_defs.h"
>> >
>> >  struct intel_crtc;
>> > -struct intel_dsb;
>> > +struct i915_vma;
>> > +
>> > +enum dsb_id {
>> > +	INVALID_DSB = -1,
>> > +	DSB1,
>> > +	DSB2,
>> > +	DSB3,
>> > +	MAX_DSB_PER_PIPE
>> > +};
>> > +
>> > +struct intel_dsb {
>> > +	enum dsb_id id;
>> > +
>> > +	u32 *cmd_buf;
>> > +	struct i915_vma *vma;
>> > +	struct intel_crtc *crtc;
>> > +
>> > +	/*
>> > +	 * maximum number of dwords the buffer will hold.
>> > +	 */
>> > +	unsigned int size;
>> > +
>> > +	/*
>> > +	 * free_pos will point the first free dword and
>> > +	 * help in calculating tail of command buffer.
>> > +	 */
>> > +	unsigned int free_pos;
>> > +
>> > +	/*
>> > +	 * ins_start_offset will help to store start dword of the dsb
>> > +	 * instuction and help in identifying the batch of auto-increment
>> > +	 * register.
>> > +	 */
>> > +	unsigned int ins_start_offset;
>> > +};
>> >
>> >  struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
>> >  				    unsigned int max_cmds);
>> > @@ -22,5 +56,10 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
>> > void intel_dsb_commit(struct intel_dsb *dsb,
>> >  		      bool wait_for_vblank);
>> >  void intel_dsb_wait(struct intel_dsb *dsb);
>> > +u32 intel_dsb_ggtt_offset(struct intel_dsb *dsb); void
>> > +intel_dsb_write(struct intel_dsb *dsb, u32 idx, u32 val);
>> > +u32 intel_dsb_read(struct intel_dsb *dsb, u32 idx); void
>> > +intel_dsb_memset(struct intel_dsb *dsb, u32 idx, u32 val, u32 sz);
>> > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
>> > +intel_dsb *dsb, u32 size);
>> >
>> >  #endif
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_ops.c
>> > b/drivers/gpu/drm/i915/display/intel_dsb_ops.c
>> > new file mode 100644
>> > index 000000000000..9fe125abb890
>> > --- /dev/null
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsb_ops.c
>> > @@ -0,0 +1,67 @@
>> > +// SPDX-License-Identifier: MIT
>> > +/*
>> > + * Copyright 2023, Intel Corporation.
>> > + */
>> > +
>> > +#include "gem/i915_gem_internal.h"
>> > +#include "i915_drv.h"
>> > +#include "i915_vma.h"
>> > +#include "intel_display_types.h"
>> > +#include "intel_dsb.h"
>> > +
>> > +u32 intel_dsb_ggtt_offset(struct intel_dsb *dsb) {
>> > +	return i915_ggtt_offset(dsb->vma);
>> > +}
>> > +
>> > +void intel_dsb_write(struct intel_dsb *dsb, u32 idx, u32 val) {
>> > +	dsb->cmd_buf[idx] = val;
>> > +}
>> > +
>> > +u32 intel_dsb_read(struct intel_dsb *dsb, u32 idx) {
>> > +	return dsb->cmd_buf[idx];
>> > +}
>> > +
>> > +void intel_dsb_memset(struct intel_dsb *dsb, u32 idx, u32 val, u32
>> > +sz) {
>> > +	memset(&dsb->cmd_buf[idx], val, sz); }
>> > +
>> > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
>> > +intel_dsb *dsb, u32 size) {
>> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +	struct drm_i915_gem_object *obj;
>> > +	struct i915_vma *vma;
>> > +	u32 *buf;
>> > +
>> > +	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
>> > +	if (IS_ERR(obj))
>> > +		return false;
>> > +
>> > +	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>> > +	if (IS_ERR(vma)) {
>> > +		i915_gem_object_put(obj);
>> > +		return false;
>> > +	}
>> > +
>> > +	buf = i915_gem_object_pin_map_unlocked(vma->obj,
>> I915_MAP_WC);
>> > +	if (IS_ERR(buf)) {
>> > +		i915_vma_unpin_and_release(&vma,
>> I915_VMA_RELEASE_MAP);
>> > +		return false;
>> > +	}
>> > +
>> > +	dsb->id = DSB1;
>> > +	dsb->vma = vma;
>> > +	dsb->crtc = crtc;
>> > +	dsb->cmd_buf = buf;
>> > +
>> > +	return true;
>> > +}
>> > +
>> > +void intel_dsb_cleanup(struct intel_dsb *dsb) {
>> > +	i915_vma_unpin_and_release(&dsb->vma,
>> I915_VMA_RELEASE_MAP);
>> > +	kfree(dsb);
>> > +}
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
