Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11E71C890F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 13:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5F76E97A;
	Thu,  7 May 2020 11:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30F46E97A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 11:58:28 +0000 (UTC)
IronPort-SDR: FlYhC/sdOVUT5XmWY1mpDYqQgJPYCFAGjC3ZRrbEV+Lxvls7Njrzyx2pdFDLot9loNisy9bUYx
 Bn3p3yD0iccg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 04:58:28 -0700
IronPort-SDR: isFDjhurPCUBljc8tcBLm+oLj8alo/fE3zlz8yfojlbeDqKty+8fcPCIPM6Y6z3vsl8O28awon
 w9NWN0iD9E5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="296513494"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 07 May 2020 04:58:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 14:58:25 +0300
Date: Thu, 7 May 2020 14:58:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200507115825.GB6112@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-18-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504225227.464666-18-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 17/22] drm/i915/rkl: Don't try to read
 out DSI transcoders
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 04, 2020 at 03:52:22PM -0700, Matt Roper wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> =

> RKL doesn't have DSI outputs, so we shouldn't try to read out the DSI
> transcoder registers.
> =

> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2eeafda82188..e63221b8a9a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10901,7 +10901,7 @@ static bool hsw_get_transcoder_state(struct intel=
_crtc *crtc,
>  	intel_wakeref_t wf;
>  	u32 tmp;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (!IS_ROCKETLAKE(dev_priv) && INTEL_GEN(dev_priv) >=3D 11)
>  		panel_transcoder_mask |=3D
>  			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);

I suspect we want
1) fix the deivice info transcoder mask (if not already done)
2) use for_each_transcoder_masked() here

>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
