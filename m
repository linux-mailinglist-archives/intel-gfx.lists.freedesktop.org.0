Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56DAAF0DA0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3255710E09D;
	Wed,  2 Jul 2025 08:14:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRoUU47i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C98410E09D;
 Wed,  2 Jul 2025 08:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751444076; x=1782980076;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yibHIMr04555WkgNgz0CfNExWgySoJgYAks2fqHIz+g=;
 b=SRoUU47iqEgrSfZviEX1JWRb+xcgd+YxlafAGOJTD5Dpy817ML3i/av8
 1Itr7v8pZct8aR2oVfrYPC5jEt52lv2K8Bu7KpB5kkBCisDyKLsg76SGU
 QLB7jcV5sphI9xtHgrxVg39dRvDeWRtNejsrIl4P4nb/swMcFaG8g2ZH6
 5nIqmSdLSiIAhzTiyF1sXUU/diyL4yJQ/oYFt+vSYiZ4AbzF2ePajyPVt
 /B1U+z1xbMFuJDKwoa0l6MHfGvC1PE1miO7971OraFujGMYSIrBMVGDYM
 QRy/84WuTaywlnMG3jNIIEek/4zUNiCUZPinRNlJt4Uf9AVJQV8IlqoGm Q==;
X-CSE-ConnectionGUID: R0tNlxNiQPybSjGrvFie5A==
X-CSE-MsgGUID: JshYLk6PTU2vdWaS9ZnGSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64328708"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="64328708"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:14:35 -0700
X-CSE-ConnectionGUID: Gdn/1SoeQSWoKHn4l5NTGw==
X-CSE-MsgGUID: iIcQpCAqQJeUzrXPHEp5NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="153639878"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:14:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
In-Reply-To: <6e084fa193864dec9237bdbd7f7978f15d8da0e9.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
 <CH0PR11MB54442C75AC8F390EA7B8AAD8E541A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <6e084fa193864dec9237bdbd7f7978f15d8da0e9.camel@intel.com>
Date: Wed, 02 Jul 2025 11:14:30 +0300
Message-ID: <7b90b178fde76a8a1fda54d217265ff3c0372955@intel.com>
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

On Wed, 02 Jul 2025, "Almahallawy, Khaled" <khaled.almahallawy@intel.com> w=
rote:
> On Tue, 2025-07-01 at 21:50 +0000, Cavitt, Jonathan wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> Of Khaled Almahallawy
>> Sent: Tuesday, July 1, 2025 12:27 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Almahallawy, Khaled <khaled.almahallawy@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass
>> LinkLayer DPCD&EDID tests
>> >=20
>> > 4.2.2.1 LinkLayer test states:
>> > "Verify that Source DUT does the following within 5 seconds after
>> > HPD
>> > being asserted:
>> > Reads the DPCD Receiver Capability field (DPCD: 00000h:0000Fh)"
>> > ...
>> >=20
>> > Fail1:
>> > Source DUT failed to read the DPCD Receiver Capability field (DPCD:
>> > 00000h:0000Fh) through AUX_CH before link training."
>> >=20
>> > Fix this by reading DP_ADAPTER_CAP(0x000F & 0x220F)
>> >=20
>> > Cc: Uma Shankar <uma.shankar@intel.com>
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_dp_link_training.c | 7 +++++++
>> > =C2=A01 file changed, 7 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > index a479b63112ea..762dc073b824 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > @@ -252,6 +252,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct
>> > intel_dp *intel_dp)
>> > =C2=A0{
>> > =C2=A0	struct intel_display *display =3D
>> > to_intel_display(intel_dp);
>> > =C2=A0	int lttpr_count =3D 0;
>> > +	u8 adapter_cap =3D 0;
>> > =C2=A0
>> > =C2=A0	/*
>> > =C2=A0	 * Detecting LTTPRs must be avoided on platforms with an
>> > AUX timeout
>> > @@ -277,6 +278,12 @@ int intel_dp_init_lttpr_and_dprx_caps(struct
>> > intel_dp *intel_dp)
>> > =C2=A0		return -EIO;
>> > =C2=A0	}
>> > =C2=A0
>> > +	/* Read DP_ADAPTET_CAP to pass LinkLayer CTS */
>> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_ADAPTER_CAP,
>> > +				=C2=A0=C2=A0 &adapter_cap);
>>=20
>> I'm working under the assumption that we're reading these registers
>> not to actually use
>> the values they hold but because reading them has some other effect
>> during runtime.
>>=20
>> Does reading that location clear the register field?=C2=A0 Or does it
>> signal to the system to
>> perform some other process?
>
> We read these two bytes for the sole purpose of passing the test. If we
> don't read these two addresses, the test equipment will fail the test.
> Unfortunately, this issue affects nearly all DPCD/EDID LL tests. It
> seems that reading these two bytes has no side effect at all, as it
> appears that no one is using DP_ADAPTER_CAP at all.
>
>>=20
>> > +	drm_dp_dpcd_readb(&intel_dp->aux, 0x220f,
>> > +				=C2=A0=C2=A0 &adapter_cap);
>>=20
>> 0x220f should probably have a #define macro associated with it.=C2=A0
>> Could you please create one?
>> Maybe it needs to be added to drm_dp.h.=C2=A0 Or is there a better
>> location for it?
>
> sure, I can do that.
>
> Another approach I considered is to increase DP_RECEIVER_CAP_SIZE from
> 0xf to 0x10, in line with DP2.1 section 5.1.4 "If the link is unstable
> or lost, the Source device then reads the DPCD Receiver Capabilities
> registers at DPCD 00000h through 0000Fh to determine the appropriate
> information needed to train the link.".=C2=A0
>
> This adjustment might also ensure the test succeeds with other drivers!

Increasing DP_RECEIVER_CAP_SIZE to 0x10 sounds much better to me than
adding single dummy reads.

BR,
Jani.


>
> Thank You for your review
>
> Khaled
>
>> -Jonathan Cavitt
>>=20
>> > +
>> > =C2=A0	return lttpr_count;
>> > =C2=A0}
>> > =C2=A0
>> > --=20
>> > 2.43.0
>> >=20
>> >=20
>

--=20
Jani Nikula, Intel
