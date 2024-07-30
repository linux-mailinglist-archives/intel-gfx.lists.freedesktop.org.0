Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C70E940A20
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 09:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FB210E4D4;
	Tue, 30 Jul 2024 07:44:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leS7Mt/o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49B710E4D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 07:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722325445; x=1753861445;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c15hFfvkluQpO+HUKlYA1yQYtVzc+IbeF01Q3lNe2ZQ=;
 b=leS7Mt/oSCxYoQOMuhLWo1T7FTnvsGPaW3mtU3ftNVDLa7g14bqXGNgS
 3PLh/YynG/7lHADEaJmz8napRnoaFHxszjDckItibnv980JT0hOpz7SQv
 CXJKN8VQOUzv1wuD2gCmF4F3UdNXv4NAuwT3HGRkeswHm+Gdc7jYjCwBn
 XkwSPG0pc+bjnEWfRiQBfUqjRGWfE47ETCnIf6BImd41ipBZJlpIjyr/X
 eK5yvGjd+2WgD8lRw3pOjwwdyIaM5EkbpIb1DMweQylv9Hg8pr1Hn9pfS
 PPKJLfr0SpxJf9+ddJkQ/fz3pxqUe/+7NKEtf/gSinVAdgve1zQ5mBNPW w==;
X-CSE-ConnectionGUID: PZVrM3WbRQ+A5ZFjHjxTYw==
X-CSE-MsgGUID: +ZHj1UJHQMO0FGHjKPASog==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20073458"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20073458"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:44:04 -0700
X-CSE-ConnectionGUID: /i0757GqQsmfG6Ek5A/vrw==
X-CSE-MsgGUID: nvc+3+tNRuK0VmDW3BksJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54219553"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:44:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>, intel-gfx@lists.freedesktop.org,
 tejas.upadhyay@intel.com, matthew.d.roper@intel.com
Cc: andi.shyti@intel.com, chris.p.wilson@intel.com, nitin.r.gote@intel.com
Subject: Re: [PATCH v2] drm/i915: Add Wa_14019789679
In-Reply-To: <20240730075220.3087411-1-nitin.r.gote@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240730075220.3087411-1-nitin.r.gote@intel.com>
Date: Tue, 30 Jul 2024 10:43:59 +0300
Message-ID: <87jzh3xr28.fsf@intel.com>
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

On Tue, 30 Jul 2024, Nitin Gote <nitin.r.gote@intel.com> wrote:
> Wa_14019789679 implementation for MTL, ARL and DG2.
>
> v2: Corrected condition
>
> Bspec: 47083
>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..c143d8133a28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL ((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))
>  
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..cbc2003886d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	if (ret)
>  		return ret;
>  
> -	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(rq->i915))

Please use checkpatch and get the indentation right.

BR,
Jani.

> +		cs = intel_ring_begin(rq, (wal->count * 2 + 4));
> +	else
> +		cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	}
>  	*cs++ = MI_NOOP;
>  
> +	/* Wa_14019789679 */
> +	if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(rq->i915)) {
> +		*cs++ = CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ = MI_NOOP;
> +	}
> +
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);

-- 
Jani Nikula, Intel
