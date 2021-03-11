Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A04313378BC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196AB6EE45;
	Thu, 11 Mar 2021 16:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410736EE45
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:06:56 +0000 (UTC)
IronPort-SDR: X6t82XBmCKpbv07koHym2TNwne8SVutT9BwjFudeTnIE0GC61dg59iCs1RDJaMiEEPqm3Pjp1+
 C2jfHatCizlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188055031"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188055031"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:06:36 -0800
IronPort-SDR: BjBMzmtS/PHR6QLjf5PDzV9rjffwKBQlCzlqxTiDFBLWVNjBNEPYXfr+xHBnCSCohE4NtN+5G4
 NjNOrEyjdWVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="372366362"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 11 Mar 2021 08:06:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:06:33 +0200
Date: Thu, 11 Mar 2021 18:06:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpACVWIx+/lQ76m@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915/selftest: Fix debug message
 in igt_vma_remapped_gtt()
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

On Thu, Mar 11, 2021 at 12:17:16AM +0200, Imre Deak wrote:
> The expected/found values were swapped in a debug message, fix this up.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 2c067343d65f..ffea2602a781 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -953,7 +953,7 @@ static int igt_vma_remapped_gtt(void *arg)
>  					if (val !=3D exp) {
>  						pr_err("%s VMA write test failed, expected 0x%x, found 0x%x\n",
>  						       *t =3D=3D I915_GGTT_VIEW_ROTATED ? "Rotated" : "Remapped",
> -						       val, exp);
> +						       exp, val);
>  						i915_vma_unpin_iomap(vma);
>  						err =3D -EINVAL;
>  						goto out;
> -- =

> 2.25.1
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
