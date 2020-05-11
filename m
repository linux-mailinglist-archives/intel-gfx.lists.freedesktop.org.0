Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C71CD8D3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 13:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4FD89FD4;
	Mon, 11 May 2020 11:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8826E440
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 11:48:09 +0000 (UTC)
IronPort-SDR: ez/4vVLQNjqWW53P6QiZt/NAHDM59UMTdqrQ/y+mHSqcw2uGILR3UfOqdhhXUsQbD783IqsqeS
 Fu2NweqvsVoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 04:48:08 -0700
IronPort-SDR: Jhn3fhAGFC32g1lPyhmt1Q2C1E05MaaIMYWfHtHGmC5wLoypSOVHaOyeQDU+Mqht+Zx8xfoyaF
 NQHLpw6bs0Dg==
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="436665858"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 04:48:07 -0700
Date: Mon, 11 May 2020 14:47:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200511114725.GB6845@ideak-desk.fi.intel.com>
References: <20200507144125.2458-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507144125.2458-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: Wait for ACT sent before
 enabling the pipe
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 07, 2020 at 05:41:25PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The correct sequence according to bspec is to wait for the ACT sent
> status before we turn on the pipe. Make it so.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 4d2384650383..d18b406f2a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -510,10 +510,6 @@ static void intel_mst_enable_dp(struct intel_atomic_=
state *state,
>  =

>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  =

> -	intel_enable_pipe(pipe_config);
> -
> -	intel_crtc_vblank_on(pipe_config);
> -
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  =

> @@ -524,6 +520,11 @@ static void intel_mst_enable_dp(struct intel_atomic_=
state *state,
>  	drm_dp_check_act_status(&intel_dp->mst_mgr);
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
> +
> +	intel_enable_pipe(pipe_config);
> +
> +	intel_crtc_vblank_on(pipe_config);
> +
>  	if (pipe_config->has_audio)
>  		intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
