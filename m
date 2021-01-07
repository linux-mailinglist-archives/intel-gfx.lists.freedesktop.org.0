Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79CE2EC9EF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 06:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995FE89DC2;
	Thu,  7 Jan 2021 05:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC68489DC2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 05:21:40 +0000 (UTC)
IronPort-SDR: rtF2oY2Jt7RvMgn4Xf8O8tTopeWIpuoTRrskfEUggppItU/QaM3qLMBxBOrijoCw4L8ekn6Xxs
 OC3bRxjDwvoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="195930375"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="195930375"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 21:21:40 -0800
IronPort-SDR: 3dWnfTV/QU/t1aYJfhnLirCh5q/HQVTseEbgR/0bjoEUFaeNUV+h6ngUlOkZMkUa5g+dXm2ogM
 0aLtFRgi1Jug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="395853828"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jan 2021 21:21:39 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 05:21:38 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 10:51:36 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [RFC v2] drm/i915/pps: Add PPS power domain
Thread-Index: AQHW4+dSMgj8rb+j2ESdy0NeEriA76oaZrAAgAE5eeA=
Date: Thu, 7 Jan 2021 05:21:36 +0000
Message-ID: <36d4065f86974146bd7f654d428a6faa@intel.com>
References: <20210105051353.5714-1-anshuman.gupta@intel.com>
 <20210106043438.27754-1-anshuman.gupta@intel.com>
 <20210106160236.GA140339@ideak-desk.fi.intel.com>
In-Reply-To: <20210106160236.GA140339@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v2] drm/i915/pps: Add PPS power domain
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Imre Deak <imre.deak@intel.com>
> Sent: Wednesday, January 6, 2021 9:33 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Mason, Michael W
> <michael.w.mason@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Ville
> Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Subject: Re: [RFC v2] drm/i915/pps: Add PPS power domain
> =

> On Wed, Jan 06, 2021 at 10:04:38AM +0530, Anshuman Gupta wrote:
> > It abstracts getting the AUX power domain in pps_lock under PPS power
> > domain. This makes sure that the platforms which really requires AUX
> > power in order to access PPS registers will get the reference to
> > necessary power wells.
> >
> > PPS power domain requires only to track the AUX_A associated power
> > wells as the platforms need AUX power in order to access PPS registers
> > supports eDP only on PORT_A.
> >
> > v2:
> > - Fixed missed POWER_DOMAIN_PPS in pps_unlock().
> >
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
> > drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c            | 7 ++-----
> >  3 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index d52374f01316..1dc4ca9e5d1a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -107,6 +107,8 @@ intel_display_power_domain_str(enum
> intel_display_power_domain domain)
> >  		return "VGA";
> >  	case POWER_DOMAIN_AUDIO:
> >  		return "AUDIO";
> > +	case POWER_DOMAIN_PPS:
> > +		return "PPS";
> >  	case POWER_DOMAIN_AUX_A:
> >  		return "AUX_A";
> >  	case POWER_DOMAIN_AUX_B:
> > @@ -2651,11 +2653,13 @@
> intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > +	BIT_ULL(POWER_DOMAIN_PPS) |			\
> >  	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > +	BIT_ULL(POWER_DOMAIN_PPS) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
> > @@ -2688,6 +2692,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  #define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > +	BIT_ULL(POWER_DOMAIN_PPS) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
> > @@ -2700,6 +2705,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  #define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
> > +	BIT_ULL(POWER_DOMAIN_PPS) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > @@ -2712,6 +2718,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > +	BIT_ULL(POWER_DOMAIN_PPS) |			\
> >  	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index bc30c479be53..7642be3c8e2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -55,6 +55,7 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_PORT_OTHER,
> >  	POWER_DOMAIN_VGA,
> >  	POWER_DOMAIN_AUDIO,
> > +	POWER_DOMAIN_PPS,
> >  	POWER_DOMAIN_AUX_A,
> >  	POWER_DOMAIN_AUX_B,
> >  	POWER_DOMAIN_AUX_C,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8a00e609085f..99b4bec3c926 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -895,8 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
> >  	 * See intel_power_sequencer_reset() why we need
> >  	 * a power domain reference here.
> >  	 */
> > -	wakeref =3D intel_display_power_get(dev_priv,
> > -
> intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> > +	wakeref =3D intel_display_power_get(dev_priv,
> POWER_DOMAIN_PPS);
> =

> The purpose of this reference is to prevent a race when resetting the PPS
> state (see the comment), so I think we could reuse
> POWER_DOMAIN_DISPLAY_CORE instead of adding a new domain.
Thanks Imre for review, I will send a new patch with the fix.
Thanks,
Anshuman Gupta.
> =

> >
> >  	mutex_lock(&dev_priv->pps_mutex);
> >
> > @@ -909,9 +908,7 @@ pps_unlock(struct intel_dp *intel_dp,
> intel_wakeref_t wakeref)
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> >
> >  	mutex_unlock(&dev_priv->pps_mutex);
> > -	intel_display_power_put(dev_priv,
> > -
> 	intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> > -				wakeref);
> > +	intel_display_power_put(dev_priv, POWER_DOMAIN_PPS,
> wakeref);
> >  	return 0;
> >  }
> >
> > --
> > 2.26.2
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
