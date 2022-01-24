Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A71A49841F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 17:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFDA10E2E0;
	Mon, 24 Jan 2022 16:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D2610E2E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 16:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643040144; x=1674576144;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bGZoH85e5PcvkoVIKLBf0wq+dZ/s0KOyZFxFF612HTc=;
 b=X9UFxeHUTW2Ll5UxqDCBZhdGUUSsGP1R1HNFWhQou1UpSHQdf5Bperxa
 PPP7XXaK9bwQig7pj+EW/pDbewSLuG/8emuNs0RhGsPn8ZdJ6HcJQ/MSn
 fukwrqCz+Aw67A79Q7wu1aUUEXW6Q8DPbQRDvk9b+ljPVamlboijyYFNE
 yMF1NjLyKoEU27DlOn5eGxVeDLLJIhNj9uo6RYHks0GcWXms5P+S53tyj
 n2IUNGXFGSIHFGFjYmzEBg/7Cg+nYajDYjoLihYe4FYJ97olJrBUYPXCx
 NvpxzPm5Yb5nbqdlZbhrKfNedWJbXEDIu6HCbxIQdVnimVrT5ue7E8Dzn Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="332430019"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="332430019"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:02:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="479125657"
Received: from epreiss-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.23])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:02:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220121222252.3296117-5-adrian.larumbe@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
 <20220121222252.3296117-5-adrian.larumbe@collabora.com>
Date: Mon, 24 Jan 2022 18:02:06 +0200
Message-ID: <875yq92kch.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 4/5] drm/i915/flat-CCS: handle CCS block
 blit for bo migrations
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Jan 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
> Because the smem-evicted bo that holds the CCS block has to be blitted
> separately from the original compressed bo, two sets of PTEs have to
> be emitted for every bo copy.
>
> This commit is partially based off another commit from Ramalingam C
> <ramalingam.c@intel.com>, currently under discussion.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_migrate.c    | 288 +++++++++++++++------
>  drivers/gpu/drm/i915/gt/intel_migrate.h    |   2 +
>  drivers/gpu/drm/i915/gt/selftest_migrate.c |   3 +-
>  3 files changed, 207 insertions(+), 86 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 716f2f51c7f9..da0fcc42c43c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -447,14 +447,183 @@ static bool wa_1209644611_applies(int ver, u32 size)
>  	return height % 4 == 3 && height <= 8;
>  }
>  
> +static inline u32 *i915_flush_dw(u32 *cmd, u64 dst, u32 flags)

As a general rule, please don't use the inline keyword in .c files, just
let the compiler decide. It's a premature optimization. And you won't
get warnings if it's unused.

BR,
Jani.

> +{
> +	/* Mask the 3 LSB to use the PPGTT address space */
> +	*cmd++ = MI_FLUSH_DW | flags;
> +	*cmd++ = lower_32_bits(dst);
> +	*cmd++ = upper_32_bits(dst);
> +
> +	return cmd;
> +}
> +
> +static u32 calc_ctrl_surf_instr_size(struct drm_i915_private *i915, int
> +size)
> +{
> +	u32 num_cmds, num_blks, total_size;
> +
> +	if (!GET_CCS_SIZE(i915, size))
> +		return 0;
> +
> +	/*
> +	 * XY_CTRL_SURF_COPY_BLT transfers CCS in 256 byte
> +	 * blocks. one XY_CTRL_SURF_COPY_BLT command can
> +	 * trnasfer upto 1024 blocks.
> +	 */
> +	num_blks = (GET_CCS_SIZE(i915, size) +
> +			   (NUM_CCS_BYTES_PER_BLOCK - 1)) >> 8;
> +	num_cmds = (num_blks + (NUM_CCS_BLKS_PER_XFER - 1)) >> 10;
> +	total_size = (XY_CTRL_SURF_INSTR_SIZE) * num_cmds;
> +
> +	/*
> +	 * We need to add a flush before and after
> +	 * XY_CTRL_SURF_COPY_BLT
> +	 */
> +	total_size += 2 * MI_FLUSH_DW_SIZE;
> +	return total_size;
> +}
> +
> +static u32 *_i915_ctrl_surf_copy_blt(u32 *cmd, u64 src_addr, u64 dst_addr,
> +				     u8 src_mem_access, u8 dst_mem_access,
> +				     int src_mocs, int dst_mocs,
> +				     u16 num_ccs_blocks)
> +{
> +	int i = num_ccs_blocks;
> +
> +	/*
> +	 * The XY_CTRL_SURF_COPY_BLT instruction is used to copy the CCS
> +	 * data in and out of the CCS region.
> +	 *
> +	 * We can copy at most 1024 blocks of 256 bytes using one
> +	 * XY_CTRL_SURF_COPY_BLT instruction.
> +	 *
> +	 * In case we need to copy more than 1024 blocks, we need to add
> +	 * another instruction to the same batch buffer.
> +	 *
> +	 * 1024 blocks of 256 bytes of CCS represent a total 256KB of CCS.
> +	 *
> +	 * 256 KB of CCS represents 256 * 256 KB = 64 MB of LMEM.
> +	 */
> +	do {
> +		/*
> +		 * We use logical AND with 1023 since the size field
> +		 * takes values which is in the range of 0 - 1023
> +		 */
> +		*cmd++ = ((XY_CTRL_SURF_COPY_BLT) |
> +			  (src_mem_access << SRC_ACCESS_TYPE_SHIFT) |
> +			  (dst_mem_access << DST_ACCESS_TYPE_SHIFT) |
> +			  (((i - 1) & 1023) << CCS_SIZE_SHIFT));
> +		*cmd++ = lower_32_bits(src_addr);
> +		*cmd++ = ((upper_32_bits(src_addr) & 0xFFFF) |
> +			  (src_mocs << XY_CTRL_SURF_MOCS_SHIFT));
> +		*cmd++ = lower_32_bits(dst_addr);
> +		*cmd++ = ((upper_32_bits(dst_addr) & 0xFFFF) |
> +			  (dst_mocs << XY_CTRL_SURF_MOCS_SHIFT));
> +		src_addr += SZ_64M;
> +		dst_addr += SZ_64M;
> +		i -= NUM_CCS_BLKS_PER_XFER;
> +	} while (i > 0);
> +
> +	return cmd;
> +}
> +
> +
> +static int emit_ccs(struct i915_request *rq,
> +		    struct sgt_dma *it_lmem,
> +		    enum i915_cache_level lmem_cache_level,
> +		    struct sgt_dma *it_css,
> +		    enum i915_cache_level css_cache_level,
> +		    bool lmem2smem,
> +		    int size)
> +{
> +	struct drm_i915_private *i915 = rq->engine->i915;
> +	u32 num_ccs_blks = (GET_CCS_SIZE(i915, size) +
> +			    NUM_CCS_BYTES_PER_BLOCK - 1) >> 8;
> +	struct sgt_dma *it_src, *it_dst;
> +	enum i915_cache_level src_cache_level;
> +	enum i915_cache_level dst_cache_level;
> +	u8 src_access, dst_access;
> +	u32 src_offset, dst_offset;
> +	u32 ccs_ring_size;
> +	int err, len;
> +	u32 *cs;
> +
> +	ccs_ring_size = calc_ctrl_surf_instr_size(i915, size);
> +
> +	err = emit_no_arbitration(rq);
> +	if (err)
> +		return -EINVAL;
> +
> +	src_offset = 0;
> +	dst_offset = CHUNK_SZ;
> +	if (HAS_64K_PAGES(i915)) {
> +		src_offset = 0;
> +		dst_offset = 0;
> +		if (lmem2smem)
> +			src_offset = CHUNK_SZ;
> +		else
> +			dst_offset = 2 * CHUNK_SZ;
> +	}
> +
> +	if (lmem2smem) {
> +		it_src = it_lmem;
> +		it_dst = it_css;
> +		src_cache_level = lmem_cache_level;
> +		dst_cache_level = css_cache_level;
> +	} else {
> +		it_src = it_css;
> +		it_dst = it_lmem;
> +		src_cache_level = css_cache_level;
> +		dst_cache_level = lmem_cache_level;
> +	}
> +
> +	len = emit_pte(rq, it_src, src_cache_level,
> +		       lmem2smem ? true : false,
> +		       src_offset, CHUNK_SZ);
> +	if (len <= 0)
> +		return len;
> +
> +	err = emit_pte(rq, it_src, dst_cache_level,
> +		       lmem2smem ? false : true,
> +		       dst_offset, len);
> +	if (err < 0)
> +		return err;
> +	if (err < len)
> +		return -EINVAL;
> +
> +	err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
> +	if (err)
> +		return err;
> +
> +	cs = intel_ring_begin(rq, round_up(ccs_ring_size, 2));
> +
> +	src_access = !lmem2smem;
> +	dst_access = !src_access;
> +
> +	cs = _i915_ctrl_surf_copy_blt(cs,
> +				      src_offset,
> +				      dst_offset,
> +				      src_access,
> +				      dst_access,
> +				      1, 1,
> +				      num_ccs_blks);
> +	cs = i915_flush_dw(cs, dst_offset, MI_FLUSH_LLC | MI_FLUSH_CCS);
> +
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
>  static int emit_copy(struct i915_request *rq,
> -		     u32 dst_offset, u32 src_offset, int size)
> +		     bool dst_is_lmem, u32 dst_offset,
> +		     bool src_is_lmem, u32 src_offset,
> +		     int size)
>  {
>  	const int ver = GRAPHICS_VER(rq->engine->i915);
>  	u32 instance = rq->engine->instance;
>  	u32 *cs;
>  
> -	cs = intel_ring_begin(rq, ver >= 8 ? 10 : 6);
> +	cs = intel_ring_begin(rq, round_up(ver >= 8 ? 10 : 6, 2));
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> @@ -503,6 +672,8 @@ intel_context_migrate_copy(struct intel_context *ce,
>  			   struct scatterlist *dst,
>  			   enum i915_cache_level dst_cache_level,
>  			   bool dst_is_lmem,
> +			   struct scatterlist *css_blk,
> +			   enum i915_cache_level css_cache_level,
>  			   struct i915_request **out)
>  {
>  	struct sgt_dma it_src = sg_sgt(src), it_dst = sg_sgt(dst);
> @@ -576,7 +747,31 @@ intel_context_migrate_copy(struct intel_context *ce,
>  		if (err)
>  			goto out_rq;
>  
> -		err = emit_copy(rq, dst_offset, src_offset, len);
> +		err = emit_copy(rq, dst_is_lmem, dst_offset, src_is_lmem,
> +				src_offset, len);
> +
> +		if (HAS_FLAT_CCS(ce->engine->i915) && css_blk) {
> +			struct sgt_dma it_css_smem = sg_sgt(css_blk);
> +			enum i915_cache_level lmem_cache_level;
> +			struct sgt_dma *it_lmem;
> +			bool lmem2smem;
> +
> +			if (dst_is_lmem) {
> +				it_lmem = &it_dst;
> +				lmem_cache_level = dst_cache_level;
> +				lmem2smem = false;
> +			} else {
> +				it_lmem = &it_src;
> +				lmem_cache_level = src_cache_level;
> +				lmem2smem = true;
> +			}
> +
> +			err = emit_ccs(rq, it_lmem, lmem_cache_level,
> +				       &it_css_smem, css_cache_level,
> +				       lmem2smem, len);
> +			if (err)
> +				goto out_rq;
> +		}
>  
>  		/* Arbitration is re-enabled between requests. */
>  out_rq:
> @@ -641,84 +836,6 @@ intel_context_migrate_copy(struct intel_context *ce,
>   * 4Kb tiles i.e Tile4 layout.
>   */
>  
> -static inline u32 *i915_flush_dw(u32 *cmd, u64 dst, u32 flags)
> -{
> -	/* Mask the 3 LSB to use the PPGTT address space */
> -	*cmd++ = MI_FLUSH_DW | flags;
> -	*cmd++ = lower_32_bits(dst);
> -	*cmd++ = upper_32_bits(dst);
> -
> -	return cmd;
> -}
> -
> -static u32 calc_ctrl_surf_instr_size(struct drm_i915_private *i915, int size)
> -{
> -	u32 num_cmds, num_blks, total_size;
> -
> -	if (!GET_CCS_SIZE(i915, size))
> -		return 0;
> -
> -	/*
> -	 * XY_CTRL_SURF_COPY_BLT transfers CCS in 256 byte
> -	 * blocks. one XY_CTRL_SURF_COPY_BLT command can
> -	 * trnasfer upto 1024 blocks.
> -	 */
> -	num_blks = (GET_CCS_SIZE(i915, size) +
> -			   (NUM_CCS_BYTES_PER_BLOCK - 1)) >> 8;
> -	num_cmds = (num_blks + (NUM_CCS_BLKS_PER_XFER - 1)) >> 10;
> -	total_size = (XY_CTRL_SURF_INSTR_SIZE) * num_cmds;
> -
> -	/*
> -	 * We need to add a flush before and after
> -	 * XY_CTRL_SURF_COPY_BLT
> -	 */
> -	total_size += 2 * MI_FLUSH_DW_SIZE;
> -	return total_size;
> -}
> -
> -static u32 *_i915_ctrl_surf_copy_blt(u32 *cmd, u64 src_addr, u64 dst_addr,
> -				     u8 src_mem_access, u8 dst_mem_access,
> -				     int src_mocs, int dst_mocs,
> -				     u16 num_ccs_blocks)
> -{
> -	int i = num_ccs_blocks;
> -
> -	/*
> -	 * The XY_CTRL_SURF_COPY_BLT instruction is used to copy the CCS
> -	 * data in and out of the CCS region.
> -	 *
> -	 * We can copy at most 1024 blocks of 256 bytes using one
> -	 * XY_CTRL_SURF_COPY_BLT instruction.
> -	 *
> -	 * In case we need to copy more than 1024 blocks, we need to add
> -	 * another instruction to the same batch buffer.
> -	 *
> -	 * 1024 blocks of 256 bytes of CCS represent a total 256KB of CCS.
> -	 *
> -	 * 256 KB of CCS represents 256 * 256 KB = 64 MB of LMEM.
> -	 */
> -	do {
> -		/*
> -		 * We use logical AND with 1023 since the size field
> -		 * takes values which is in the range of 0 - 1023
> -		 */
> -		*cmd++ = ((XY_CTRL_SURF_COPY_BLT) |
> -			  (src_mem_access << SRC_ACCESS_TYPE_SHIFT) |
> -			  (dst_mem_access << DST_ACCESS_TYPE_SHIFT) |
> -			  (((i - 1) & 1023) << CCS_SIZE_SHIFT));
> -		*cmd++ = lower_32_bits(src_addr);
> -		*cmd++ = ((upper_32_bits(src_addr) & 0xFFFF) |
> -			  (src_mocs << XY_CTRL_SURF_MOCS_SHIFT));
> -		*cmd++ = lower_32_bits(dst_addr);
> -		*cmd++ = ((upper_32_bits(dst_addr) & 0xFFFF) |
> -			  (dst_mocs << XY_CTRL_SURF_MOCS_SHIFT));
> -		src_addr += SZ_64M;
> -		dst_addr += SZ_64M;
> -		i -= NUM_CCS_BLKS_PER_XFER;
> -	} while (i > 0);
> -
> -	return cmd;
> -}
>  
>  static int emit_clear(struct i915_request *rq,
>  		      u64 offset,
> @@ -740,7 +857,7 @@ static int emit_clear(struct i915_request *rq,
>  			 calc_ctrl_surf_instr_size(i915, size)
>  			 : 0;
>  
> -	cs = intel_ring_begin(rq, ver >= 8 ? 8 + ccs_ring_size : 6);
> +	cs = intel_ring_begin(rq, round_up(ver >= 8 ? 8 + ccs_ring_size : 6, 2));
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> @@ -764,8 +881,7 @@ static int emit_clear(struct i915_request *rq,
>  	}
>  
>  	if (is_lmem && HAS_FLAT_CCS(i915) && !value) {
> -		num_ccs_blks = (GET_CCS_SIZE(i915, size) +
> -				NUM_CCS_BYTES_PER_BLOCK - 1) >> 8;
> +		num_ccs_blks = GET_CCS_SIZE(i915, size);
>  		/*
>  		 * Flat CCS surface can only be accessed via
>  		 * XY_CTRL_SURF_COPY_BLT CMD and using indirect
> @@ -784,6 +900,8 @@ static int emit_clear(struct i915_request *rq,
>  					      1, 1,
>  					      num_ccs_blks);
>  		cs = i915_flush_dw(cs, offset, MI_FLUSH_LLC | MI_FLUSH_CCS);
> +		if (ccs_ring_size & 1)
> +			*cs++ = MI_NOOP;
>  	}
>  	intel_ring_advance(rq, cs);
>  	return 0;
> @@ -898,7 +1016,7 @@ int intel_migrate_copy(struct intel_migrate *m,
>  	err = intel_context_migrate_copy(ce, deps,
>  					 src, src_cache_level, src_is_lmem,
>  					 dst, dst_cache_level, dst_is_lmem,
> -					 out);
> +					 NULL, I915_CACHE_NONE, out);
>  
>  	intel_context_unpin(ce);
>  out:
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.h b/drivers/gpu/drm/i915/gt/intel_migrate.h
> index ccc677ec4aa3..dce63a0dba33 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.h
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.h
> @@ -41,6 +41,8 @@ int intel_context_migrate_copy(struct intel_context *ce,
>  			       struct scatterlist *dst,
>  			       enum i915_cache_level dst_cache_level,
>  			       bool dst_is_lmem,
> +			       struct scatterlist *cssblk,
> +			       enum i915_cache_level css_cache_level,
>  			       struct i915_request **out);
>  
>  int
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index fa4293d2944f..2a2fa6186e31 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -231,7 +231,7 @@ static int __global_copy(struct intel_migrate *migrate,
>  					  i915_gem_object_is_lmem(src),
>  					  dst->mm.pages->sgl, dst->cache_level,
>  					  i915_gem_object_is_lmem(dst),
> -					  out);
> +					  NULL, I915_CACHE_NONE, out);
>  }
>  
>  static int
> @@ -582,6 +582,7 @@ static int __perf_copy_blt(struct intel_context *ce,
>  						 src_is_lmem,
>  						 dst, dst_cache_level,
>  						 dst_is_lmem,
> +						 NULL, I915_CACHE_NONE,
>  						 &rq);
>  		if (rq) {
>  			if (i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT) < 0)

-- 
Jani Nikula, Intel Open Source Graphics Center
