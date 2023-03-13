Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D9C6B7293
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 10:31:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4751510E010;
	Mon, 13 Mar 2023 09:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B38410E010
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 09:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678699878; x=1710235878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7xBdVBYTRwxnW4RxN5/S+5mOnvZMxoH+TNkfhzZmIOY=;
 b=TdYhLDU/o2Fl73ajOYGKHw3EANCXingilN2jgZVkAqkoY78AiPA/qPNG
 CL7dt4yf1bu2OAnqqxQ/tYWvtCe0L6Od9iNO/lh5fT5J0C1OEaHSDuuSN
 QH6IwtzgyO6Zzo3zlLM6aeuX+2TObsoHU0pRyJLnbYpwtH7OtqRVADNo6
 4IMyIL7+bzlc74TZ6oaLQHI9s/vNgN4BcbSr78ErdgRxxh5E6vVyoRsPq
 VbhkWLKHwtsG1LukXiuKcV+bjqvBKA4NFFAkBChb2ueIgCm/Ktwd3KsDF
 eQ4a0QhZ2Uyi2cylelc+EONxSHrFEWeHPWwo0NM+bgOEPqpES08/RvcD3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="337123452"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="337123452"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="924438209"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="924438209"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:31:05 -0700
Date: Mon, 13 Mar 2023 11:30:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <ZA7sn2ctsskxDJvs@intel.com>
References: <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <20220906041806.4095575-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220906041806.4095575-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 09:48:06AM +0530, Arun R Murthy wrote:
> Starting from Gen12 Async Flip is supported on linear buffers.
> This patch enables support for async on linear buffer.
> 
> UseCase: In Hybrid graphics, for hardware unsupported pixel formats it
> will be converted to linear memory and then composed.
> 
> v2: Added use case
> v3: Added FIXME for ICL indicating the restrictions
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index be7cff722196..f0d2c3cb3bd5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
> +			/*
> +			 * FIXME: Async on Linear buffer is supported on ICL as
> +			 * but with additional alignment and fbc restrictions
> +			 * need to be taken care of. These aren't applicable for
> +			 * gen12+.
> +			 */
> +			if (DISPLAY_VER(i915) < 12) {
> +				drm_dbg_kms(&i915->drm,
> +					    "[PLANE:%d:%s] Modifier does not support async flips\n",
> +					    plane->base.base.id, plane->base.name);
> +				return -EINVAL;
> +			}
> +
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> -- 
> 2.25.1
> 
