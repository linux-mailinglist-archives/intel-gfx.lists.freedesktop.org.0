Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D22C56AA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 15:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFCC6E956;
	Thu, 26 Nov 2020 14:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155B46E956
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:08:28 +0000 (UTC)
IronPort-SDR: 6y+jschMu652ybhVLEo3kcuRkxcIp+XytbIsizKowkOYojwiOlD4OlShHjxpFZ4EGiBsgjEWAE
 adz9X00BRLCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="151545864"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="151545864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 06:08:27 -0800
IronPort-SDR: 9KuBSnl1FVO9DCadtC0W/v3sgX9kkFYWUYMVfQTHWxPjvB5k+b818A985hngegNRzX+VbmGsEN
 LyZgBcHwnj4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="371291717"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 26 Nov 2020 06:08:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 16:08:24 +0200
Date: Thu, 26 Nov 2020 16:08:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201126140824.GC6112@intel.com>
References: <20201126105539.2661-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126105539.2661-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Program mocs:63 for cache
 eviction on gen9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 26, 2020 at 10:55:39AM +0000, Chris Wilson wrote:
> Ville noticed that the last mocs entry is used unconditionally by the HW
> when it performs cache evictions, and noted that while the value is not
> meant to be writable by the driver, we should program it to a reasonable
> value nevertheless.
> =

> As it turns out, we can change the value of mocs:63 and the value we
> were programming into it would cause hard hangs in conjunction with
> atomic operations.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2707
> Fixes: 3bbaba0ceaa2 ("drm/i915: Added Programming of the MOCS")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: <stable@vger.kernel.org> # v4.3+
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 254873e1646e..6ae512847f64 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -131,7 +131,10 @@ static const struct drm_i915_mocs_entry skl_mocs_tab=
le[] =3D {
>  	GEN9_MOCS_ENTRIES,
>  	MOCS_ENTRY(I915_MOCS_CACHED,
>  		   LE_3_WB | LE_TC_2_LLC_ELLC | LE_LRUM(3),
> -		   L3_3_WB)
> +		   L3_3_WB),
> +	MOCS_ENTRY(63,

Wonder if we should give these magic MOCS entries actual names?

Anyways, matches my reading of the spec
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_1_UC)
>  };
>  =

>  /* NOTE: the LE_TGT_CACHE is not used on Broxton */
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
