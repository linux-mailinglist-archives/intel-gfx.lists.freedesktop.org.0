Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9531F4D9E12
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEDD10E116;
	Tue, 15 Mar 2022 14:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0D5A10E116
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647355768; x=1678891768;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qm22vcEPXE3YzUUsefzbeCelD7GweoB2WoXEg1NP2js=;
 b=jS63VgpA82zX8EuU9QUlF99IvFWNqOX39Y+fjTC33RPYXBYlqegDdrC3
 Sm7au/7NuU91CkdHQ8HI7mbPxg3s9o1JcV7K7mgfpyYoCKF/QdM31FLI8
 GXY+xZBk7ewhkMfy3jBIpMQ+UEoPxVsBOAZNtc3/TBsWpA4jBu1KND4jL
 J7omP0q03NCXDxB8l8JTEXt30CCdbZRfJalh7pADBbgD/UmC9C1iw7mmV
 KDXnx4Ze0ruFghO10VhqudsTu3X3ipSQcsOfXylhfjNX3rjlNO4RQtWsf
 QEIhdjZsICjI9YyDoANq6i4l3bWIxEl5ym/JJkBdnwEeyxib6F5b9KZim w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342749394"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="342749394"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:49:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556958336"
Received: from cgrilli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:49:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220315140001.1172-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
 <20220315140001.1172-2-ville.syrjala@linux.intel.com>
Date: Tue, 15 Mar 2022 16:49:24 +0200
Message-ID: <87pmmntgnf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/fbc: Eliminate
 possible_framebuffer_bits
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

On Tue, 15 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Not sure what the point of this fbc->possible_frontbuffer_bits is.
> And especially don't see why it's returning all the bits when
> fbc is not even enabled. So let's just get rid of this and only
> say we are interested in the plane's frontbuffer bits when fbc
> is actually enabled.

So, uh, why are we calling this "bits", all over the place? It doesn't
tell anything to a casual reader. It's been percolated to fbc, psr,
plane, frontbuffer...

It's a kind of slot or id mask? I think the naming should reflect that,
and it would be easier to read. For future cleanup.

For the patch at hand, beats me,

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> ---
>drivers/gpu/drm/i915/display/intel_fbc.c | 7 +------ 1 file changed, 1
>insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 142280b6ce6d..e45d64655090 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -89,7 +89,6 @@ struct intel_fbc {
>  	 * with stolen_lock.
>  	 */
>  	struct mutex lock;
> -	unsigned int possible_framebuffer_bits;
>  	unsigned int busy_bits;
>=20=20
>  	struct drm_mm_node compressed_fb;
> @@ -1316,7 +1315,7 @@ static unsigned int intel_fbc_get_frontbuffer_bit(s=
truct intel_fbc *fbc)
>  	if (fbc->state.plane)
>  		return fbc->state.plane->frontbuffer_bit;
>  	else
> -		return fbc->possible_framebuffer_bits;
> +		return 0;
>  }
>=20=20
>  static void __intel_fbc_invalidate(struct intel_fbc *fbc,
> @@ -1655,11 +1654,7 @@ static bool need_fbc_vtd_wa(struct drm_i915_privat=
e *i915)
>=20=20
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plan=
e)
>  {
> -	if (!fbc)
> -		return;
> -
>  	plane->fbc =3D fbc;
> -	fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
>  }
>=20=20
>  static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,

--=20
Jani Nikula, Intel Open Source Graphics Center
