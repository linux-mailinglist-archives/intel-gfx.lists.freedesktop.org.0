Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6F7198078
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 18:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB676E156;
	Mon, 30 Mar 2020 16:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D506E156
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 16:07:09 +0000 (UTC)
IronPort-SDR: +TI2F2jRJoQj+fdRd+5XCWVs5K6bmeP7ei7aiScVTJVLX01bFetpG5dyStMcnu7e8X325TjfON
 YPqEe8VqmnWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 09:07:09 -0700
IronPort-SDR: WXHYRPTFw2QA5UkgwhMCM+ySzmkBLP8Cm6hEaNkFGHWZdEE9IMWKjTnxHSlAi5WL8EcIeEHxf5
 pipDGhY94Fwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="241660077"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 30 Mar 2020 09:07:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Mar 2020 19:07:06 +0300
Date: Mon, 30 Mar 2020 19:07:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200330160705.GM13686@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
 <20200330122354.24752-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330122354.24752-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915: Introduce
 for_each_dbuf_slice_in_mask macro
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

On Mon, Mar 30, 2020 at 03:23:52PM +0300, Stanislav Lisovskiy wrote:
> We quite often need now to iterate only particular dbuf slices
> in mask, whether they are active or related to particular crtc.
> =

> Let's make our life a bit easier and use a macro for that.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h       | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display_power.h | 3 +++
>  2 files changed, 10 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index adb1225a3480..c898285f0dc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -187,6 +187,13 @@ enum plane_id {
>  	for ((__p) =3D PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
>  		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
>  =

> +#define for_each_dbuf_slice_in_mask(__slice, __mask) \

Please stick to established conventions.

> +	for ((__slice) =3D 0; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
> +		for_each_if((1 << (__slice)) & (__mask))
> +
> +#define for_each_dbuf_slice(__slice) \
> +	for_each_dbuf_slice_in_mask(__slice, (1 << I915_MAX_DBUF_SLICES) - 1)
> +
>  enum port {
>  	PORT_NONE =3D -1,
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..468e8fb0203a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -311,8 +311,11 @@ intel_display_power_put_async(struct drm_i915_privat=
e *i915,
>  enum dbuf_slice {
>  	DBUF_S1,
>  	DBUF_S2,
> +	DBUF_SLICE_MAX
>  };
>  =

> +#define I915_DBUF_MAX_SLICES DBUF_SLICE_MAX
> +

Huh?

>  #define with_intel_display_power(i915, domain, wf) \
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
