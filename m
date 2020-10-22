Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BADA296765
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE6F6E423;
	Thu, 22 Oct 2020 22:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869C76E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:38:20 +0000 (UTC)
IronPort-SDR: rZrYkQXC0FWgaQjeeUNzGrTac8EZGwXDe+BQ3ndF+A4AZ9SoDsuSFlKmmiNGk+F54PAJPMEeWA
 a2Mzf4PN6ptg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="231797459"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="231797459"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:38:20 -0700
IronPort-SDR: c8yAkEsnEMU6mIB6OqtuJvS17IDqc+pn9NlBT4kINAmnwA4Hivk5ElCFAxB0yIuU9x++yNWVNW
 w3I4ViT+fyPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="321530358"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 22 Oct 2020 15:38:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 01:38:16 +0300
Date: Fri, 23 Oct 2020 01:38:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201022223816.GT6112@intel.com>
References: <20201022210814.23004-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022210814.23004-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Skip RPS tests on
 Ironlake (only IPS)
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

On Thu, Oct 22, 2020 at 10:08:14PM +0100, Chris Wilson wrote:
> Since Ironlake uses intel_ips.ko for its dynamic frequency adjustment,
> we do not have direct control over the frequency management so such
> tests are defunct.

We could just ignore what ips is saying, but maybe we don't want to.

> Similarly, we can't check the gen6+ RPS registers on
> Ironlake.

I can definitely get behind that one.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Hopefully this catches all the invalid tests now that Ironlake has
> rejoined the dynamic GPU frequency club.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i91=
5/gt/selftest_rps.c
> index 3540ba9bd459..aa5675ecb5cc 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -219,7 +219,7 @@ int live_rps_clock_interval(void *arg)
>  	struct igt_spinner spin;
>  	int err =3D 0;
>  =

> -	if (!intel_rps_is_enabled(rps))
> +	if (!intel_rps_is_enabled(rps) || INTEL_GEN(gt->i915) < 6)
>  		return 0;
>  =

>  	if (igt_spinner_init(&spin, gt))
> @@ -1028,7 +1028,7 @@ int live_rps_interrupt(void *arg)
>  	 * First, let's check whether or not we are receiving interrupts.
>  	 */
>  =

> -	if (!intel_rps_has_interrupts(rps))
> +	if (!intel_rps_has_interrupts(rps) || INTEL_GEN(gt->i915) < 6)
>  		return 0;
>  =

>  	intel_gt_pm_get(gt);
> @@ -1133,7 +1133,7 @@ int live_rps_power(void *arg)
>  	 * that theory.
>  	 */
>  =

> -	if (!intel_rps_is_enabled(rps))
> +	if (!intel_rps_is_enabled(rps) || INTEL_GEN(gt->i915) < 6)
>  		return 0;
>  =

>  	if (!librapl_energy_uJ())
> @@ -1237,7 +1237,7 @@ int live_rps_dynamic(void *arg)
>  	 * moving parts into dynamic reclocking based on load.
>  	 */
>  =

> -	if (!intel_rps_is_enabled(rps))
> +	if (!intel_rps_is_enabled(rps) || INTEL_GEN(gt->i915) < 6)
>  		return 0;
>  =

>  	if (igt_spinner_init(&spin, gt))
> -- =

> 2.20.1
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
