Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0600646D4B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D51C10E1B8;
	Thu,  8 Dec 2022 10:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4211B10E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670496161; x=1702032161;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=zS6xJbcOUDz64D59cCVsV10m+cKlrSnkMuWM+ez7HGs=;
 b=THTrCFmj8LCeK+8faziavYW9UFgG6THr+hkI8fc3Htnt3IIUpol1Idnx
 RD9Djmu0tiPxAlVSm48Pax2MTCA8rsyx3Pg8gY49Gg3wRNPtxH75eDl0E
 7qrOMcpLyXW9fqI0yfFbnQMjFFTRLmL39nyMZhfbEOlxm/cGhdVqQBQUc
 WkMQ8tDzEyWxcDyMv/edf9QseAr5AJLWKNgzIC/Sdwfxx7PzauSkMETYd
 GHHta20qMycP51+qbaZk8siTNhtt0rj6YwXBREaB3zD6FFCGYblRNlnpx
 Qan4yhsKS2IB+5MAuPleLbpqFt9OpxRfrO7He5NTChSWYZWP/IGwwaExh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318278845"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318278845"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:42:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="715551689"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="715551689"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:42:39 -0800
Message-ID: <10ba2699-7fdf-d204-43a2-890309f26cd5@intel.com>
Date: Thu, 8 Dec 2022 11:42:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <588815fc60752b6470ee4067246698d478309fa1.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <588815fc60752b6470ee4067246698d478309fa1.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 09/11] drm/i915/wm: switch to intel_de_*
 register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 42 +++++++++-----------
>   1 file changed, 18 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index e0766d1be966..ae4e9e680c2e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -45,8 +45,7 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
>   	enum dbuf_slice slice;
>   
>   	for_each_dbuf_slice(i915, slice) {
> -		if (intel_uncore_read(&i915->uncore,
> -				      DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
> +		if (intel_de_read(i915, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
>   			enabled_slices |= BIT(slice);
>   	}
>   
> @@ -75,7 +74,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
>   	if (DISPLAY_VER(i915) >= 14) {
>   		u32 val;
>   
> -		val = intel_uncore_read(&i915->uncore, MTL_LATENCY_SAGV);
> +		val = intel_de_read(i915, MTL_LATENCY_SAGV);
>   
>   		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
>   	} else if (DISPLAY_VER(i915) >= 12) {
> @@ -756,18 +755,18 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
>   
>   	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
>   	if (plane_id == PLANE_CURSOR) {
> -		val = intel_uncore_read(&i915->uncore, CUR_BUF_CFG(pipe));
> +		val = intel_de_read(i915, CUR_BUF_CFG(pipe));
>   		skl_ddb_entry_init_from_hw(ddb, val);
>   		return;
>   	}
>   
> -	val = intel_uncore_read(&i915->uncore, PLANE_BUF_CFG(pipe, plane_id));
> +	val = intel_de_read(i915, PLANE_BUF_CFG(pipe, plane_id));
>   	skl_ddb_entry_init_from_hw(ddb, val);
>   
>   	if (DISPLAY_VER(i915) >= 11)
>   		return;
>   
> -	val = intel_uncore_read(&i915->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
> +	val = intel_de_read(i915, PLANE_NV12_BUF_CFG(pipe, plane_id));
>   	skl_ddb_entry_init_from_hw(ddb_y, val);
>   }
>   
> @@ -2821,36 +2820,32 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>   
>   		for (level = 0; level <= max_level; level++) {
>   			if (plane_id != PLANE_CURSOR)
> -				val = intel_uncore_read(&i915->uncore, PLANE_WM(pipe, plane_id, level));
> +				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
>   			else
> -				val = intel_uncore_read(&i915->uncore, CUR_WM(pipe, level));
> +				val = intel_de_read(i915, CUR_WM(pipe, level));
>   
>   			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>   		}
>   
>   		if (plane_id != PLANE_CURSOR)
> -			val = intel_uncore_read(&i915->uncore, PLANE_WM_TRANS(pipe, plane_id));
> +			val = intel_de_read(i915, PLANE_WM_TRANS(pipe, plane_id));
>   		else
> -			val = intel_uncore_read(&i915->uncore, CUR_WM_TRANS(pipe));
> +			val = intel_de_read(i915, CUR_WM_TRANS(pipe));
>   
>   		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>   
>   		if (HAS_HW_SAGV_WM(i915)) {
>   			if (plane_id != PLANE_CURSOR)
> -				val = intel_uncore_read(&i915->uncore,
> -							PLANE_WM_SAGV(pipe, plane_id));
> +				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
>   			else
> -				val = intel_uncore_read(&i915->uncore,
> -							CUR_WM_SAGV(pipe));
> +				val = intel_de_read(i915, CUR_WM_SAGV(pipe));
>   
>   			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
>   
>   			if (plane_id != PLANE_CURSOR)
> -				val = intel_uncore_read(&i915->uncore,
> -							PLANE_WM_SAGV_TRANS(pipe, plane_id));
> +				val = intel_de_read(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id));
>   			else
> -				val = intel_uncore_read(&i915->uncore,
> -							CUR_WM_SAGV_TRANS(pipe));
> +				val = intel_de_read(i915, CUR_WM_SAGV_TRANS(pipe));
>   
>   			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
>   		} else if (DISPLAY_VER(i915) >= 12) {
> @@ -3126,8 +3121,8 @@ void skl_watermark_ipc_update(struct drm_i915_private *i915)
>   	if (!HAS_IPC(i915))
>   		return;
>   
> -	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL2, DISP_IPC_ENABLE,
> -			 skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
> +	intel_de_rmw(i915, DISP_ARB_CTL2, DISP_IPC_ENABLE,
> +		     skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
>   }
>   
>   static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
> @@ -3201,19 +3196,18 @@ adjust_wm_latency(struct drm_i915_private *i915,
>   
>   static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
>   {
> -	struct intel_uncore *uncore = &i915->uncore;
>   	int max_level = ilk_wm_max_level(i915);
>   	u32 val;
>   
> -	val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> +	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
>   	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>   	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
>   
> -	val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> +	val = intel_de_read(i915, MTL_LATENCY_LP2_LP3);
>   	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>   	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
>   
> -	val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> +	val = intel_de_read(i915, MTL_LATENCY_LP4_LP5);
>   	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>   	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
>   

