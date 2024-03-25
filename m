Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84CE889A9D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 11:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEDB10E708;
	Mon, 25 Mar 2024 10:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ITddNt0z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD5310E708
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711362738; x=1742898738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/7yLriuhvRcFxs/cJwyFfIpn2d65gbmkfqddeVZbCcA=;
 b=ITddNt0zW8h8RzRnZcCph1nHtRihC5Xtl5YAjz0VxfRfYBQ98C02nlq/
 HNhzCwUf/sE/Xu01Do/oDPDNyNWD0kaVWEgKXRRPfbmt6FnB7nfiY+/pM
 o0SZ9P9gN518w7PH/C5zgpwNqA3QO4B94FmTYxJl9POch8HNeFwz7h6VR
 QISWtNJXOA+O86Jcijwto3xe5SNPLGRZrDH28y/qyjXdcm/aBsKSNzCXa
 npnqkh9isw6xXZj6CKjhcOdknQoAfwVnhGGi0fIdbeVmNEuMmXT2BHOxj
 REItU/7ZkMS6LTNeqedMZaBaqFfA0ftEeihhlt4VCaaJJYwBQhn3tBz+C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6461924"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; 
   d="scan'208";a="6461924"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 03:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="15657281"
Received: from idirlea-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.171])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 03:32:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915/bios: Tolerate devdata==NULL in
 intel_bios_encoder_supports_dp_dual_mode()
In-Reply-To: <ZfnVUbHNL4lEeinV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
 <87sf0mo9hx.fsf@intel.com> <ZfnVUbHNL4lEeinV@intel.com>
Date: Mon, 25 Mar 2024 12:32:10 +0200
Message-ID: <871q7yk3f9.fsf@intel.com>
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

On Tue, 19 Mar 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 19, 2024 at 11:29:14AM +0200, Jani Nikula wrote:
>> On Tue, 19 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > If we have no VBT, or the VBT didn't declare the encoder
>> > in question, we won't have the 'devdata' for the encoder.
>> > Instead of oopsing just bail early.
>> >
>> > We won't be able to tell whether the port is DP++ or not,
>> > but so be it.
>> >
>> > Cc: stable@vger.kernel.org
>> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10464
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
>> >  1 file changed, 3 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index c7841b3eede8..c13a98431a7b 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -3458,6 +3458,9 @@ bool intel_bios_encoder_supports_dp_dual_mode(co=
nst struct intel_bios_encoder_da
>> >  {
>> >  	const struct child_device_config *child =3D &devdata->child;
>>=20
>> The above oopses already.
>
> Nope. It's just taking the address of the thing.

I guess. Still looks a bit suspicious. :/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
>>=20
>> BR,
>> Jani.
>>=20
>> >=20=20
>> > +	if (!devdata)
>> > +		return false;
>> > +
>> >  	if (!intel_bios_encoder_supports_dp(devdata) ||
>> >  	    !intel_bios_encoder_supports_hdmi(devdata))
>> >  		return false;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
