Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305468CAB45
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 11:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4963410E9FF;
	Tue, 21 May 2024 09:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxRlfrUP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A51E10E85C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 09:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716285069; x=1747821069;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qD7v9Pr/iAFqsUs/PsUXFBKPqcQUvO9w4dnilHxfZSU=;
 b=FxRlfrUPEQ79dqIWfpITCGOxq2A12pwlUT/kmEomf1EFlKb+RXcI39ol
 d/0PCVrTkjd3juVqY2h9RZdIlUBaq1xets8qH2dd+uxOSjHZEyUmNmte3
 kEtyPuj86sMAYY0/wdkZ5jfcb6y8qwn2TqZE28TCAeTVGpwequVjC8DJz
 JfzT0FiBj46r3dNKKd/INA4SXhzHQMBRsRIIZgP1yRknALaV/ygmecAb9
 /yYVOMaBy7ILP9Oeo+GBKX1JgjgFoX9yGtX5/GIEXoz614cKvNs8bDLAM
 z5cQ+FsLpxHRfdSwC8WxhaEhlFax/hHDI1esWWeAly66+MOOlcW0fXuuM w==;
X-CSE-ConnectionGUID: 8ZZXRPuaT9C2XxAx+MbyTw==
X-CSE-MsgGUID: cHGq5G8oSQmpvYDsErnYhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12308087"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12308087"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:51:08 -0700
X-CSE-ConnectionGUID: NgKHk9RDRjyRBhqR8MjSsA==
X-CSE-MsgGUID: eKCyWKjFRUG49XVvLING3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37708998"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:51:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
In-Reply-To: <Zktzmthyfrxk7ACO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-3-ville.syrjala@linux.intel.com>
 <87h6esu5dl.fsf@intel.com> <Zktzmthyfrxk7ACO@intel.com>
Date: Tue, 21 May 2024 12:51:03 +0300
Message-ID: <87seybqyrc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 20 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 20, 2024 at 01:47:34PM +0300, Jani Nikula wrote:
>> On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Extract a helper to check whether the source+sink combo
>> > supports DSC. That basic check is needed both during mode
>> > validation and compute config. We'll also need to add extra
>> > checks to both places, so having a single place for it is nicer.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
>> >  1 file changed, 14 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c
>> > index 1e88449fe5f2..7bf283b4df7f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp *i=
ntel_dp,
>> >  	       connector->force_bigjoiner_enable;
>> >  }
>> >=20=20
>> > +static bool intel_dp_has_dsc(struct intel_connector *connector)
>>=20
>> Why not const?
>
> We've generally not consted these things. And then whenver add
> one const somewhere it usually ends up getting in the way later,
> not because we need mutability but simply because we want to
> call something that doesn't have the const.
>
> I suppose if we do want to start consting things more we should
> just do some kind of bigger pass over the whole codebase so that
> that there's less chance of pain later.
>
> We're also not using container_of_const() for these right now,
> so the const can vanish semi-accidentally when casting things.
>
> I suppose this thing might be low level enough that the const
> could be kept. I'll have another think about it.

It's just that this series drops a bunch of const because of this, which
feels like the opposite of what you usually do. :)

BR,
Jani.


>
>>=20
>> > +{
>> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>> > +
>> > +	if (!HAS_DSC(i915))
>> > +		return false;
>> > +
>> > +	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
>> > +		return false;
>> > +
>> > +	return true;
>> > +}
>> > +
>> >  static enum drm_mode_status
>> >  intel_dp_mode_valid(struct drm_connector *_connector,
>> >  		    struct drm_display_mode *mode)
>> > @@ -1274,8 +1287,7 @@ intel_dp_mode_valid(struct drm_connector *_conne=
ctor,
>> >  	mode_rate =3D intel_dp_link_required(target_clock,
>> >  					   intel_dp_mode_min_output_bpp(connector, mode));
>> >=20=20
>> > -	if (HAS_DSC(dev_priv) &&
>> > -	    drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)) {
>> > +	if (intel_dp_has_dsc(connector)) {
>> >  		enum intel_output_format sink_format, output_format;
>> >  		int pipe_bpp;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
