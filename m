Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 314CD5634B1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 15:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5976912BBB3;
	Fri,  1 Jul 2022 13:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F4312BBAA
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 13:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656683504; x=1688219504;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CWkqX3H00cRHYFiOo4lFOMFR/baNs9i6DClwi5HJu5o=;
 b=ayzQNmrbWYf4A9flaOj9nQXqunnK89KR44PBch7AzMgUStHQ5lp4GTL3
 Ql0WnBTk0ucNIGAmmPhhc4SrZ9d+VPsxXWOXB3xa7nFCHgN6urq6dZmg+
 n71hdBrrs7GSJxH16WC4esAlZBLGgkOmaNhCjPNrubO4wDOtiA6wnKk0F
 Z+n29YbvbSrbL92SHRBamCpwN1+jgQ6OTDVltZmd1ALeTOrPPlfh4vHRi
 uwYCbc7lwS0seVw2Z4WD/cAqRAzQo5FqnmXehsCST4X74XvH8pwvMawjO
 +lIqg6Xj/EPotKSI7IsDq6W3qFX2cVwX9DQAJytg9zASSAT/LsdRfPgRr w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="265686036"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="265686036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 06:51:44 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="648353193"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 06:51:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yr7msEAS9XwAtrVU@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-3-ville.syrjala@linux.intel.com>
 <87fsjlnom8.fsf@intel.com> <Yr7msEAS9XwAtrVU@intel.com>
Date: Fri, 01 Jul 2022 16:51:40 +0300
Message-ID: <87letdlz4j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Nuke PCH_MCC
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 01 Jul 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jul 01, 2022 at 12:55:43PM +0300, Jani Nikula wrote:
>> On Thu, 30 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > MCC is derived from TGP, and we have no real need to
>> > differentiate between the two. Thus remove PCH_MCC and
>> > just declare it to be PCH_TGP compatible.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_ddi.c  | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>> >  drivers/gpu/drm/i915/intel_pch.c          | 3 ++-
>> >  drivers/gpu/drm/i915/intel_pch.h          | 4 +---
>> >  4 files changed, 5 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/dr=
m/i915/display/intel_ddi.c
>> > index 272e1bf6006b..2330604b0bcc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -4179,7 +4179,7 @@ static enum hpd_pin ehl_hpd_pin(struct drm_i915_=
private *dev_priv,
>> >  	if (port =3D=3D PORT_D)
>> >  		return HPD_PORT_A;
>> >=20=20
>> > -	if (HAS_PCH_MCC(dev_priv))
>> > +	if (HAS_PCH_TGP(dev_priv))
>> >  		return icl_hpd_pin(dev_priv, port);
>> >=20=20
>> >  	return HPD_PORT_A + port - PORT_A;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/d=
rm/i915/display/intel_hdmi.c
>> > index 1ae09431f53a..ebd91aa69dd2 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > @@ -2852,7 +2852,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encode=
r *encoder)
>> >  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
>> >  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 && HAS_PCH_TGP(dev_priv))
>> >  		ddc_pin =3D gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
>> > -	else if (HAS_PCH_MCC(dev_priv))
>> > +	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
>> >  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
>>=20
>> Nitpick, mcc_ prefix is now an outlier here, and could be named after
>> the CPU/PCH combo like above for gen 9 and TGP. But no big deal.
>
> I want to rewrite these entirely. They should be doing 99% the same
> thing as the foo_hpd_pin() functions, yet they are written in all
> various kinds of different ways (none of which match the hpd_pin()
> stuff).
>
> Also while looking at that I stumbled on the VBT code doing a
> slightly different variant of the same stuff using arrays. And on
> top of that we have the VBT AUX CH mapping code as well, written
> in yet another style. So I think I want to try to unify it all
> to a common approach.

Ack. I've looked at all of this before, but haven't really come up with
anything neat, just grumbling about how it's split between VBT parsing
and this.

> I'm thinking the array approach might be the easiest to parse for
> mere mortals, so kinda leaning towards that. What do you think?

Sounds good, and it has a better separation of platforms, instead of a
bunch of magic conditions. OTOH I'm not overly enthusiastic about how
dvo_port_to_port() ended up looking, and why it needs to be platform
specific at all, oh well. I think you'll only know for real when you've
played with the code and have half the implementation written...

> Although one hurdle between me and arrays for the VBT AUX CH stuff
> is the VBT values which are shifted up into the upper nibble of
> the byte. So using those directly would result in giant arrays
> which are mostly empty. But I could redefine the VBT values as
> just the upper four bits and shift down when parsing the VBT.

If we can hide that in intel_bios.c or something, should be fine I
think.

BR,
Jani.

>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks.
>
>>=20
>>=20
>>=20
>> >  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>> >  		ddc_pin =3D icl_port_to_ddc_pin(dev_priv, port);
>> > diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/i=
ntel_pch.c
>> > index 94446cac6605..b45c504c6f03 100644
>> > --- a/drivers/gpu/drm/i915/intel_pch.c
>> > +++ b/drivers/gpu/drm/i915/intel_pch.c
>> > @@ -116,7 +116,8 @@ intel_pch_type(const struct drm_i915_private *dev_=
priv, unsigned short id)
>> >  	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
>> >  		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
>> >  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
>> > -		return PCH_MCC;
>> > +		/* MCC is TGP compatible */
>> > +		return PCH_TGP;
>> >  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
>> >  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
>> >  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
>> > diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/i=
ntel_pch.h
>> > index b7a8cf409d48..07f6f5517968 100644
>> > --- a/drivers/gpu/drm/i915/intel_pch.h
>> > +++ b/drivers/gpu/drm/i915/intel_pch.h
>> > @@ -24,8 +24,7 @@ enum intel_pch {
>> >  	PCH_CNP,        /* Cannon/Comet Lake PCH */
>> >  	PCH_ICP,	/* Ice Lake PCH */
>> >  	PCH_JSP,	/* Jasper Lake PCH */
>> > -	PCH_MCC,        /* Mule Creek Canyon PCH */
>> > -	PCH_TGP,	/* Tiger Lake PCH */
>> > +	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>> >  	PCH_ADP,	/* Alder Lake PCH */
>> >=20=20
>> >  	/* Fake PCHs, functionality handled on the same PCI dev */
>> > @@ -69,7 +68,6 @@ enum intel_pch {
>> >  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
ADP)
>> >  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
DG1)
>> >  #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
JSP)
>> > -#define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
MCC)
>> >  #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
TGP)
>> >  #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
ICP)
>> >  #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_=
CNP)
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
