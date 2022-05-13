Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E949525B1B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 07:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 917D310E50A;
	Fri, 13 May 2022 05:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043FB10E41E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 05:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652420834; x=1683956834;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Lj7/JLzP9XRMFX1TlD5zqAAmEpoNuYS1J8UAljcXlag=;
 b=P2STYKCK9lSVdawbzzcz5Pid64IR8k5CtxdpsFiXFjeicCMigkXl+EPn
 Y43PuJQ5XKz+YEYI8R3WwZ3hpn4ZgolFMw0CL89yNy4O1Q2HJEb/FfWT0
 XNZb5jJtFqWV4T0vLNTpHEQCEFeBWPSWtMAcwnt8NJ7O721fUTFh/YrNn
 IcimH7UAl/prPkdSCrBudzFfQkkgmgVY481tJUqiF7Blp58YQdZx9ksJR
 f9rxlHnotUC95vqedHWZtE0IK9/eYRWW2KUkYhA5CLUCxp/tzVRUZt2ib
 YXQQOKs1aA/JDJ6WwmZr0oOw5d/4DIib5eJ15RRvNrSs7gUiBHCxh8P/M w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250124664"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="250124664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 22:47:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="740020128"
Received: from alewando-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.19.165])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 22:47:12 -0700
Date: Fri, 13 May 2022 07:47:10 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Yn3w3ngqXarXQ04x@zkempczy-mobl2>
References: <20220512132600.26369-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220512132600.26369-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable Tile4 tiling mode
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
Cc: krishnaiah.bommu@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 12, 2022 at 03:26:00PM +0200, Nirmoy Das wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> Enable Tile4 tiling mode on platform that supports
> Tile4 but no TileY like DG2.
> 
> v2: disable X-tile for iGPU in fastblit
>     fix checkpath --strict warnings
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  .../i915/gem/selftests/i915_gem_client_blt.c  | 235 ++++++++++++++----
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 ++
>  2 files changed, 212 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index ddd0772fd828..e16661029c78 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -6,6 +6,7 @@
>  #include "i915_selftest.h"
>  
>  #include "gt/intel_context.h"
> +#include "gt/intel_engine_regs.h"
>  #include "gt/intel_engine_user.h"
>  #include "gt/intel_gpu_commands.h"
>  #include "gt/intel_gt.h"
> @@ -18,10 +19,71 @@
>  #include "huge_gem_object.h"
>  #include "mock_context.h"
>  
> +#define OW_SIZE 16                      /* in bytes */
> +#define F_SUBTILE_SIZE 64               /* in bytes */
> +#define F_TILE_WIDTH 128                /* in bytes */
> +#define F_TILE_HEIGHT 32                /* in pixels */
> +#define F_SUBTILE_WIDTH  OW_SIZE        /* in bytes */
> +#define F_SUBTILE_HEIGHT 4              /* in pixels */
> +
> +static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
> +{
> +	int tile_base;
> +	int tile_x, tile_y;
> +	int swizzle, subtile;
> +	int pixel_size = bpp / 8;
> +	int pos;
> +
> +	/*
> +	 * Subtile remapping for F tile. Note that map[a]==b implies map[b]==a
> +	 * so we can use the same table to tile and until.
> +	 */
> +	static const u8 f_subtile_map[] = {
> +		 0,  1,  2,  3,  8,  9, 10, 11,
> +		 4,  5,  6,  7, 12, 13, 14, 15,
> +		16, 17, 18, 19, 24, 25, 26, 27,
> +		20, 21, 22, 23, 28, 29, 30, 31,
> +		32, 33, 34, 35, 40, 41, 42, 43,
> +		36, 37, 38, 39, 44, 45, 46, 47,
> +		48, 49, 50, 51, 56, 57, 58, 59,
> +		52, 53, 54, 55, 60, 61, 62, 63
> +	};
> +
> +	x *= pixel_size;
> +	/*
> +	 * Where does the 4k tile start (in bytes)?  This is the same for Y and
> +	 * F so we can use the Y-tile algorithm to get to that point.
> +	 */
> +	tile_base =
> +		y / F_TILE_HEIGHT * stride * F_TILE_HEIGHT +
> +		x / F_TILE_WIDTH * 4096;
> +
> +	/* Find pixel within tile */
> +	tile_x = x % F_TILE_WIDTH;
> +	tile_y = y % F_TILE_HEIGHT;
> +
> +	/* And figure out the subtile within the 4k tile */
> +	subtile = tile_y / F_SUBTILE_HEIGHT * 8 + tile_x / F_SUBTILE_WIDTH;
> +
> +	/* Swizzle the subtile number according to the bspec diagram */
> +	swizzle = f_subtile_map[subtile];
> +
> +	/* Calculate new position */
> +	pos = tile_base +
> +		swizzle * F_SUBTILE_SIZE +
> +		tile_y % F_SUBTILE_HEIGHT * OW_SIZE +
> +		tile_x % F_SUBTILE_WIDTH;
> +
> +	GEM_BUG_ON(!IS_ALIGNED(pos, pixel_size));
> +
> +	return pos / pixel_size * 4;
> +}
> +
>  enum client_tiling {
>  	CLIENT_TILING_LINEAR,
>  	CLIENT_TILING_X,
>  	CLIENT_TILING_Y,
> +	CLIENT_TILING_4,
>  	CLIENT_NUM_TILING_TYPES
>  };
>  
> @@ -45,6 +107,21 @@ struct tiled_blits {
>  	u32 height;
>  };
>  
> +static bool fast_blit_ok(struct blit_buffer *buf)
> +{
> +	int gen = GRAPHICS_VER(buf->vma->vm->i915);
> +
> +	if (gen < 9)
> +		return false;
> +
> +	if (gen < 12)
> +		return true;
> +
> +	/* filter out platforms with unsupported X-tile support(iGPUs and DG1) in fastblit */
> +	return !((IS_DG1(buf->vma->vm->i915) || (gen == 12 && !HAS_LMEM(buf->vma->vm->i915))) &&
> +		buf->tiling == CLIENT_TILING_X);
> +}
> +

What would you say for this:

static bool supports_x_tiling(const struct drm_i915_private *i915)
{
	int gen = GRAPHICS_VER(i915);

	if (gen < 12)
		return true;

	if (!HAS_LMEM(i915) || IS_DG1(i915))
		return false;

	return true;
}

static bool fast_blit_ok(const struct blit_buffer *buf)
{
	int gen = GRAPHICS_VER(buf->vma->vm->i915);

	if (gen < 9)
		return false;

	if (gen < 12)
		return true;

	/* filter out platforms with unsupported X-tile support in fastblit */
	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
		return false;

	return true;
}

Rest code looks good to me.

--
Zbigniew

>  static int prepare_blit(const struct tiled_blits *t,
>  			struct blit_buffer *dst,
>  			struct blit_buffer *src,
> @@ -59,51 +136,103 @@ static int prepare_blit(const struct tiled_blits *t,
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> -	cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> -	if (src->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_SRC_Y;
> -	if (dst->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_DST_Y;
> -	*cs++ = cmd;
> -
> -	cmd = MI_FLUSH_DW;
> -	if (ver >= 8)
> -		cmd++;
> -	*cs++ = cmd;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -
> -	cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> -	if (ver >= 8)
> -		cmd += 2;
> -
> -	src_pitch = t->width * 4;
> -	if (src->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> -		src_pitch /= 4;
> -	}
> +	if (fast_blit_ok(dst) && fast_blit_ok(src)) {
> +		struct intel_gt *gt = t->ce->engine->gt;
> +		u32 src_tiles = 0, dst_tiles = 0;
> +		u32 src_4t = 0, dst_4t = 0;
> +
> +		/* Need to program BLIT_CCTL if it is not done previously
> +		 * before using XY_FAST_COPY_BLT
> +		 */
> +		*cs++ = MI_LOAD_REGISTER_IMM(1);
> +		*cs++ = i915_mmio_reg_offset(BLIT_CCTL(t->ce->engine->mmio_base));
> +		*cs++ = (BLIT_CCTL_SRC_MOCS(gt->mocs.uc_index) |
> +			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
> +
> +		src_pitch = t->width; /* in dwords */
> +		if (src->tiling == CLIENT_TILING_4) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
> +		} else if (src->tiling == CLIENT_TILING_Y) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +		} else if (src->tiling == CLIENT_TILING_X) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
> +		} else {
> +			src_pitch *= 4; /* in bytes */
> +		}
>  
> -	dst_pitch = t->width * 4;
> -	if (dst->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_DST_TILED;
> -		dst_pitch /= 4;
> -	}
> +		dst_pitch = t->width; /* in dwords */
> +		if (dst->tiling == CLIENT_TILING_4) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
> +		} else if (dst->tiling == CLIENT_TILING_Y) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +		} else if (dst->tiling == CLIENT_TILING_X) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
> +		} else {
> +			dst_pitch *= 4; /* in bytes */
> +		}
>  
> -	*cs++ = cmd;
> -	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> -	*cs++ = 0;
> -	*cs++ = t->height << 16 | t->width;
> -	*cs++ = lower_32_bits(dst->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2) |
> +			src_tiles | dst_tiles;
> +		*cs++ = src_4t | dst_4t | BLT_DEPTH_32 | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
>  		*cs++ = upper_32_bits(dst->vma->node.start);
> -	*cs++ = 0;
> -	*cs++ = src_pitch;
> -	*cs++ = lower_32_bits(src->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
>  		*cs++ = upper_32_bits(src->vma->node.start);
> +	} else {
> +		if (ver >= 6) {
> +			*cs++ = MI_LOAD_REGISTER_IMM(1);
> +			*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> +			cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> +			if (src->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_SRC_Y;
> +			if (dst->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_DST_Y;
> +			*cs++ = cmd;
> +
> +			cmd = MI_FLUSH_DW;
> +			if (ver >= 8)
> +				cmd++;
> +			*cs++ = cmd;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +		}
> +
> +		cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> +		if (ver >= 8)
> +			cmd += 2;
> +
> +		src_pitch = t->width * 4;
> +		if (src->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> +			src_pitch /= 4;
> +		}
> +
> +		dst_pitch = t->width * 4;
> +		if (dst->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_DST_TILED;
> +			dst_pitch /= 4;
> +		}
> +
> +		*cs++ = cmd;
> +		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(dst->vma->node.start);
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(src->vma->node.start);
> +	}
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
>  
> @@ -181,7 +310,13 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
>  
>  		t->buffers[i].vma = vma;
>  		t->buffers[i].tiling =
> -			i915_prandom_u32_max_state(CLIENT_TILING_Y + 1, prng);
> +			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
> +
> +		/* Platforms support either TileY or Tile4, not both */
> +		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
> +			t->buffers[i].tiling = CLIENT_TILING_4;
> +		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
> +			t->buffers[i].tiling = CLIENT_TILING_Y;
>  	}
>  
>  	return 0;
> @@ -206,7 +341,8 @@ static u64 swizzle_bit(unsigned int bit, u64 offset)
>  static u64 tiled_offset(const struct intel_gt *gt,
>  			u64 v,
>  			unsigned int stride,
> -			enum client_tiling tiling)
> +			enum client_tiling tiling,
> +			int x_pos, int y_pos)
>  {
>  	unsigned int swizzle;
>  	u64 x, y;
> @@ -216,7 +352,12 @@ static u64 tiled_offset(const struct intel_gt *gt,
>  
>  	y = div64_u64_rem(v, stride, &x);
>  
> -	if (tiling == CLIENT_TILING_X) {
> +	if (tiling == CLIENT_TILING_4) {
> +		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
> +
> +		/* no swizzling for f-tiling */
> +		swizzle = I915_BIT_6_SWIZZLE_NONE;
> +	} else if (tiling == CLIENT_TILING_X) {
>  		v = div64_u64_rem(y, 8, &y) * stride * 8;
>  		v += y * 512;
>  		v += div64_u64_rem(x, 512, &x) << 12;
> @@ -259,6 +400,7 @@ static const char *repr_tiling(enum client_tiling tiling)
>  	case CLIENT_TILING_LINEAR: return "linear";
>  	case CLIENT_TILING_X: return "X";
>  	case CLIENT_TILING_Y: return "Y";
> +	case CLIENT_TILING_4: return "F";
>  	default: return "unknown";
>  	}
>  }
> @@ -284,7 +426,7 @@ static int verify_buffer(const struct tiled_blits *t,
>  	} else {
>  		u64 v = tiled_offset(buf->vma->vm->gt,
>  				     p * 4, t->width * 4,
> -				     buf->tiling);
> +				     buf->tiling, x, y);
>  
>  		if (vaddr[v / sizeof(*vaddr)] != buf->start_val + p)
>  			ret = -EINVAL;
> @@ -504,6 +646,9 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>  	if (err)
>  		return err;
>  
> +	/* Simulating GTT eviction of the same buffer / layout */
> +	t->buffers[2].tiling = t->buffers[0].tiling;
> +
>  	/* Reposition so that we overlap the old addresses, and slightly off */
>  	err = tiled_blit(t,
>  			 &t->buffers[2], t->hole + t->align,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 556bca3be804..246ab8f7bf57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -236,6 +236,28 @@
>  #define   XY_FAST_COLOR_BLT_DW		16
>  #define   XY_FAST_COLOR_BLT_MOCS_MASK	GENMASK(27, 21)
>  #define   XY_FAST_COLOR_BLT_MEM_TYPE_SHIFT 31
> +
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILING_MASK     REG_GENMASK(21, 20)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILING_MASK     REG_GENMASK(14, 13)
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_SRC_TILING_MASK, mode)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_DST_TILING_MASK, mode)
> +#define     LINEAR				0
> +#define     TILE_X				0x1
> +#define     XMAJOR				0x1
> +#define     YMAJOR				0x2
> +#define     TILE_64			0x3
> +#define   XY_FAST_COPY_BLT_D1_SRC_TILE4	REG_BIT(31)
> +#define   XY_FAST_COPY_BLT_D1_DST_TILE4	REG_BIT(30)
> +#define BLIT_CCTL_SRC_MOCS_MASK  REG_GENMASK(6, 0)
> +#define BLIT_CCTL_DST_MOCS_MASK  REG_GENMASK(14, 8)
> +/* Note:  MOCS value = (index << 1) */
> +#define BLIT_CCTL_SRC_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (idx) << 1)
> +#define BLIT_CCTL_DST_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (idx) << 1)
> +
>  #define SRC_COPY_BLT_CMD		(2 << 29 | 0x43 << 22)
>  #define GEN9_XY_FAST_COPY_BLT_CMD	(2 << 29 | 0x42 << 22)
>  #define XY_SRC_COPY_BLT_CMD		(2 << 29 | 0x53 << 22)
> -- 
> 2.35.1
> 
