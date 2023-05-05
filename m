Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FE96F7FFB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 11:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B15610E5BA;
	Fri,  5 May 2023 09:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF81A10E5BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 09:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683278966; x=1714814966;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Ir6Jxn/cyAuzzHNVA6mURrhJvKuZ+swkFFCMT0jiNEA=;
 b=k3nvLKiDC503JDfRR2DPimoMRSwUtyLyntBjGWCmFtzlCtiNXbtICCHu
 sqAXIpITam5mvcUDpGNtIUSq+vJOrj0gAV9TWdfm26ZXZyTd4QnlKgxhL
 wsOCuVtvE1y6G9FfkWptj/l8g0aHc/fEfmiqE1Xeeyg81i0tLH5MWEVtR
 1U6WN7fzv5YanX8l0Xm+Rck7+0oCkO7H2VXHV139PaMt2OBwjkKrygrYh
 dEF3X2QM2i+0z5m8kiVcfs7U3/vTptE6eWilsaW3SXaSDNIDeGYmX71NL
 4Ytbve9AHNz9qTVtcdHXXMIExY30hIVp8zRmnxYkCS7dwYPLXSgKFl79q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346640017"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="346640017"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 02:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821597325"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821597325"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.13.41])
 ([10.213.13.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 02:29:24 -0700
Message-ID: <701bcdab-0070-1b3e-580b-b7bcd7c1e315@intel.com>
Date: Fri, 5 May 2023 11:29:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NULL ptr deref by checking
 new_crtc_state
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

On 05.05.2023 10:22, Stanislav Lisovskiy wrote:
> intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> obtained previously with intel_atomic_get_crtc_state, so we must check it
> for NULLness here, just as in many other places, where we can't guarantee
> that intel_atomic_get_crtc_state was called.
> We are currently getting NULL ptr deref because of that, so this fix was
> confirmed to help.
> 
> Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

I wonder if it wouldn't be safer to move the check to 
intel_crtc_needs_modeset, up to you.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 9f670dcfe76e..4125ee07a271 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>   	int ret;
>   
>   	if (old_obj) {
> -		const struct intel_crtc_state *crtc_state =
> +		const struct intel_crtc_state *new_crtc_state =
>   			intel_atomic_get_new_crtc_state(state,
>   							to_intel_crtc(old_plane_state->hw.crtc));
>   
> @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>   		 * This should only fail upon a hung GPU, in which case we
>   		 * can safely continue.
>   		 */
> -		if (intel_crtc_needs_modeset(crtc_state)) {
> +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
>   			ret = i915_sw_fence_await_reservation(&state->commit_ready,
>   							      old_obj->base.resv,
>   							      false, 0,

