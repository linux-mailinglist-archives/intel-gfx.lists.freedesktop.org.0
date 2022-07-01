Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5B55630BF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 11:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C1F113E26;
	Fri,  1 Jul 2022 09:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081AB10F392
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 09:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656669239; x=1688205239;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=my0HDbbp/fMJy63JETNPeN0BaXOw9apg/+o5fzfCqqI=;
 b=NMalfCNQmKGhv3a9tns5FiDqasny3V7jDwSHF7DejmJLouPBOXxRlqSC
 Z6mygNEA9ZgMnjpUFDTOVgPd56uT/Yb3E0WtO4OA2iosRI5ot2HWWH/dg
 7hvE/At/EJNky2aeeHmImZ4iVrYe9kuFXWLLAAozcpXp4I+KpziyqCdM4
 OSGzEL9G16a+brQztTWNSrFr/17UXCD+rhpRN+wsMSQB0mU6AdZaG2ith
 GNEVmHaA+aw0DPFPvwSegJUNYuGpwc8LI3oskUZPNvrQG0X/5xoZldtc8
 zCm8EEYd0LutEVLWrAPIwsxxsZvvcGlwn9ZrvNt8cccHnBa5ohD0n5ctL w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="265644603"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="265644603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:53:58 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="596201089"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:53:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <Yr3WmWe1K4OfLw+2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-2-ville.syrjala@linux.intel.com>
 <DM6PR11MB31770ECA020E77AE853627C7BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Yr3WmWe1K4OfLw+2@intel.com>
Date: Fri, 01 Jul 2022 12:53:54 +0300
Message-ID: <87ilohnop9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use short PCH names
 consistently
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 30 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jun 30, 2022 at 03:50:15PM +0000, Murthy, Arun R wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > The comments regarding PCH compatibility use long vs.
>> > short names inconsistently. Just use short names always.
>> >=20
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/intel_pch.c | 10 +++++-----
>> >  1 file changed, 5 insertions(+), 5 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/intel_pch.c
>> > b/drivers/gpu/drm/i915/intel_pch.c
>> > index e2b2bbdc0714..94446cac6605 100644
>> > --- a/drivers/gpu/drm/i915/intel_pch.c
>> > +++ b/drivers/gpu/drm/i915/intel_pch.c
>> > @@ -25,7 +25,7 @@ intel_pch_type(const struct drm_i915_private
>> > *dev_priv, unsigned short id)
>> >  		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint
>> > PCH\n");
>> >  		drm_WARN_ON(&dev_priv->drm,
>> >  			    GRAPHICS_VER(dev_priv) !=3D 6 &&
>> > !IS_IVYBRIDGE(dev_priv));
>> > -		/* PantherPoint is CPT compatible */
>> > +		/* PPT is CPT compatible */
>>=20
>>=20
>> This is not the code but only comment, I feel elaborated names makes it =
more readable than abbreviation.
>
> We rarely type out the full names for anything.

And we still keep debug logging the full names right there.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel Open Source Graphics Center
