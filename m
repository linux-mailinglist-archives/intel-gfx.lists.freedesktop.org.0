Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E046ACC61
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 19:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AD810E420;
	Mon,  6 Mar 2023 18:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A0010E420
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 18:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678126970; x=1709662970;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=walEKc53trTebZHV0K9w8mHajM8qcxsxmn2ZOl2kt6c=;
 b=PKd0w/jvm3rxe5yzVbIPAGt1sP3un1bMxPeg7+Twu0JzCjAWZuaNkNEX
 S/+ca13cHQPDsSqvEBIa02fgChFLkGNfU8DHZLFNJ0dPvyzHjBZFWEGph
 1GbdKactiHUQS8+bYuq7bNm1e29zefhLurVrCXRDiteDRVeCLEmLROhmL
 cYwl/+AdUUvZywIsIVirw90VYy92L8UqMBbP36S0KierAqJ0AJapSAGTc
 Jg+xe6L+smLi1n/xivdjdUpEYODB7skuVrhJZO2ZYg+ni0Omdqtr3Z67L
 7JrgRLf5EN0+jaHtOs+akhueiwBiuQ36LCfWeC4029dxen6AvpJBE6VLl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337959235"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337959235"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:22:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="653692425"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="653692425"
Received: from ramuchie-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.58.188])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:22:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZADbOzsUe3+iGepN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230302164936.3034161-1-jani.nikula@intel.com>
 <ZADbOzsUe3+iGepN@intel.com>
Date: Mon, 06 Mar 2023 20:22:45 +0200
Message-ID: <87y1o9spsa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: split out display rps parts
 to a separate file
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

On Thu, 02 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 02, 2023 at 06:49:36PM +0200, Jani Nikula wrote:
>> Split out the RPS parts so they can be conditionally compiled out later.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  .../gpu/drm/i915/display/intel_atomic_plane.c | 79 ++----------------
>>  .../gpu/drm/i915/display/intel_display_rps.c  | 81 +++++++++++++++++++
>>  .../gpu/drm/i915/display/intel_display_rps.h  | 22 +++++
>>  4 files changed, 111 insertions(+), 72 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index b2f91a1f8268..8e46f57e4569 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -239,6 +239,7 @@ i915-y +=3D \
>>  	display/intel_display_power.o \
>>  	display/intel_display_power_map.o \
>>  	display/intel_display_power_well.o \
>> +	display/intel_display_rps.o \
>>  	display/intel_dmc.o \
>>  	display/intel_dpio_phy.o \
>>  	display/intel_dpll.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers=
/gpu/drm/i915/display/intel_atomic_plane.c
>> index 3bd8f7eb75a6..719a60e278f3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -34,11 +34,10 @@
>>  #include <drm/drm_atomic_helper.h>
>>  #include <drm/drm_fourcc.h>
>>=20=20
>> -#include "gt/intel_rps.h"
>> -
>>  #include "i915_config.h"
>>  #include "intel_atomic_plane.h"
>>  #include "intel_cdclk.h"
>> +#include "intel_display_rps.h"
>>  #include "intel_display_trace.h"
>>  #include "intel_display_types.h"
>>  #include "intel_fb.h"
>> @@ -941,64 +940,6 @@ int intel_atomic_plane_check_clipping(struct intel_=
plane_state *plane_state,
>>  	return 0;
>>  }
>>=20=20
>> -struct wait_rps_boost {
>> -	struct wait_queue_entry wait;
>> -
>> -	struct drm_crtc *crtc;
>> -	struct i915_request *request;
>> -};
>> -
>> -static int do_rps_boost(struct wait_queue_entry *_wait,
>> -			unsigned mode, int sync, void *key)
>> -{
>> -	struct wait_rps_boost *wait =3D container_of(_wait, typeof(*wait), wai=
t);
>> -	struct i915_request *rq =3D wait->request;
>> -
>> -	/*
>> -	 * If we missed the vblank, but the request is already running it
>> -	 * is reasonable to assume that it will complete before the next
>> -	 * vblank without our intervention, so leave RPS alone.
>> -	 */
>> -	if (!i915_request_started(rq))
>> -		intel_rps_boost(rq);
>> -	i915_request_put(rq);
>> -
>> -	drm_crtc_vblank_put(wait->crtc);
>> -
>> -	list_del(&wait->wait.entry);
>> -	kfree(wait);
>> -	return 1;
>> -}
>> -
>> -static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
>> -				       struct dma_fence *fence)
>> -{
>> -	struct wait_rps_boost *wait;
>> -
>> -	if (!dma_fence_is_i915(fence))
>> -		return;
>> -
>> -	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
>> -		return;
>> -
>> -	if (drm_crtc_vblank_get(crtc))
>> -		return;
>> -
>> -	wait =3D kmalloc(sizeof(*wait), GFP_KERNEL);
>> -	if (!wait) {
>> -		drm_crtc_vblank_put(crtc);
>> -		return;
>> -	}
>> -
>> -	wait->request =3D to_request(dma_fence_get(fence));
>> -	wait->crtc =3D crtc;
>> -
>> -	wait->wait.func =3D do_rps_boost;
>> -	wait->wait.flags =3D 0;
>> -
>> -	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
>> -}
>> -
>>  /**
>>   * intel_prepare_plane_fb - Prepare fb for usage on plane
>>   * @_plane: drm plane to prepare for
>> @@ -1089,13 +1030,13 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>>  		dma_resv_iter_begin(&cursor, obj->base.resv,
>>  				    DMA_RESV_USAGE_WRITE);
>>  		dma_resv_for_each_fence_unlocked(&cursor, fence) {
>> -			add_rps_boost_after_vblank(new_plane_state->hw.crtc,
>> -						   fence);
>> +			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>> +							     fence);
>>  		}
>>  		dma_resv_iter_end(&cursor);
>>  	} else {
>> -		add_rps_boost_after_vblank(new_plane_state->hw.crtc,
>> -					   new_plane_state->uapi.fence);
>> +		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>> +						     new_plane_state->uapi.fence);
>>  	}
>>=20=20
>>  	/*
>> @@ -1106,10 +1047,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>>  	 * that are not quite steady state without resorting to forcing
>>  	 * maximum clocks following a vblank miss (see do_rps_boost()).
>>  	 */
>> -	if (!state->rps_interactive) {
>> -		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, true);
>> -		state->rps_interactive =3D true;
>> -	}
>> +	intel_display_rps_mark_interactive(dev_priv, state, true);
>>=20=20
>>  	return 0;
>>=20=20
>> @@ -1140,10 +1078,7 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
>>  	if (!obj)
>>  		return;
>>=20=20
>> -	if (state->rps_interactive) {
>> -		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, false);
>> -		state->rps_interactive =3D false;
>> -	}
>> +	intel_display_rps_mark_interactive(dev_priv, state, false);
>>=20=20
>>  	/* Should only be called after a successful intel_prepare_plane_fb()! =
*/
>>  	intel_plane_unpin_fb(old_plane_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/=
gpu/drm/i915/display/intel_display_rps.c
>> new file mode 100644
>> index 000000000000..918d0327169a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>> @@ -0,0 +1,81 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright =C2=A9 2023 Intel Corporation
>> + */
>> +
>> +#include <drm/drm_crtc.h>
>> +#include <drm/drm_vblank.h>
>> +
>> +#include "gt/intel_rps.h"
>> +#include "i915_drv.h"
>> +#include "intel_display_rps.h"
>> +#include "intel_display_types.h"
>> +
>> +struct wait_rps_boost {
>> +	struct wait_queue_entry wait;
>> +
>> +	struct drm_crtc *crtc;
>> +	struct i915_request *request;
>> +};
>> +
>> +static int do_rps_boost(struct wait_queue_entry *_wait,
>> +			unsigned mode, int sync, void *key)
>> +{
>> +	struct wait_rps_boost *wait =3D container_of(_wait, typeof(*wait), wai=
t);
>> +	struct i915_request *rq =3D wait->request;
>> +
>> +	/*
>> +	 * If we missed the vblank, but the request is already running it
>> +	 * is reasonable to assume that it will complete before the next
>> +	 * vblank without our intervention, so leave RPS alone.
>> +	 */
>> +	if (!i915_request_started(rq))
>> +		intel_rps_boost(rq);
>> +	i915_request_put(rq);
>> +
>> +	drm_crtc_vblank_put(wait->crtc);
>> +
>> +	list_del(&wait->wait.entry);
>> +	kfree(wait);
>> +	return 1;
>> +}
>> +
>> +void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>> +					  struct dma_fence *fence)
>> +{
>> +	struct wait_rps_boost *wait;
>> +
>> +	if (!dma_fence_is_i915(fence))
>> +		return;
>> +
>> +	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
>> +		return;
>> +
>> +	if (drm_crtc_vblank_get(crtc))
>> +		return;
>> +
>> +	wait =3D kmalloc(sizeof(*wait), GFP_KERNEL);
>> +	if (!wait) {
>> +		drm_crtc_vblank_put(crtc);
>> +		return;
>> +	}
>> +
>> +	wait->request =3D to_request(dma_fence_get(fence));
>> +	wait->crtc =3D crtc;
>> +
>> +	wait->wait.func =3D do_rps_boost;
>> +	wait->wait.flags =3D 0;
>> +
>> +	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
>> +}
>> +
>> +void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
>> +					struct intel_atomic_state *state,
>> +					bool interactive)
>> +{
>> +	if (state->rps_interactive =3D=3D interactive)
>> +		return;
>> +
>> +	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>> +	state->rps_interactive =3D interactive;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/=
gpu/drm/i915/display/intel_display_rps.h
>> new file mode 100644
>> index 000000000000..e19009c2371a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2023 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DISPLAY_RPS_H__
>> +#define __INTEL_DISPLAY_RPS_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct dma_fence;
>> +struct drm_crtc;
>> +struct drm_i915_private;
>> +struct intel_atomic_state;
>> +
>> +void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>> +					  struct dma_fence *fence);
>> +void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
>> +					struct intel_atomic_state *state,
>> +					bool interactive);
>> +
>> +#endif /* __INTEL_DISPLAY_RPS_H__ */
>> --=20
>> 2.39.1

--=20
Jani Nikula, Intel Open Source Graphics Center
