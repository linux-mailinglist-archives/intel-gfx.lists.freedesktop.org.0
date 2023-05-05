Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8306F84D9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 16:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603FF10E619;
	Fri,  5 May 2023 14:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E2210E614;
 Fri,  5 May 2023 14:29:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 50C2963E70;
 Fri,  5 May 2023 14:29:26 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.54.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 9BDDEC433D2;
 Fri,  5 May 2023 14:29:22 +0000 (UTC)
Date: Fri, 5 May 2023 10:29:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
Message-ID: <ZFUSwEVKF5S8LF3A@rdvivi-mobl4>
References: <20230418140430.69902-1-n.zhandarovich@fintech.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418140430.69902-1-n.zhandarovich@fintech.ru>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: prevent potential div-by-zero
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
Cc: lvc-project@linuxtesting.org, intel-gfx@lists.freedesktop.org,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-kernel@vger.kernel.org,
 Manasi Navare <manasi.d.navare@intel.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 18, 2023 at 07:04:30AM -0700, Nikita Zhandarovich wrote:
> drm_dp_dsc_sink_max_slice_count() may return 0 if something goes
> wrong on the part of the DSC sink and its DPCD register. This null
> value may be later used as a divisor in intel_dsc_compute_params(),
> which will lead to an error.
> In the unlikely event that this issue occurs, fix it by testing the
> return value of drm_dp_dsc_sink_max_slice_count() against zero.
> 
> Found by Linux Verification Center (linuxtesting.org) with static
> analysis tool SVACE.
> 
> Fixes: a4a157777c80 ("drm/i915/dp: Compute DSC pipe config in atomic check")
> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

and pushed.

Thanks for the patch and sorry for the delay.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62cbab7402e9..c1825f8f885c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1533,6 +1533,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		pipe_config->dsc.slice_count =
>  			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  							true);
> +		if (!pipe_config->dsc.slice_count) {
> +			drm_dbg_kms(&dev_priv->drm, "Unsupported Slice Count %d\n",
> +				    pipe_config->dsc.slice_count);
> +			return -EINVAL;
> +		}
>  	} else {
>  		u16 dsc_max_output_bpp = 0;
>  		u8 dsc_dp_slice_count;
> -- 
> 2.25.1
> 
