Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5FF1ECD25
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 12:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3341289CF2;
	Wed,  3 Jun 2020 10:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEEB89CF2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 10:05:52 +0000 (UTC)
IronPort-SDR: Q/v2d7nUnmanSH6+PenHJg/Dy+c5udQLAPJPq/VwDz173Sq0m9vTReE6sbOgWUUSIo4/adii4m
 pEQOfsN2BQQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 03:05:51 -0700
IronPort-SDR: aGKqsFG6QYBsdex8XypsLUfdNcskzgd+owH3ClvYc78+3rstPTOjvwG9yuNlptUExynoGa9aBE
 AeAcvYxsE3pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="312553661"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 03 Jun 2020 03:05:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jun 2020 13:05:48 +0300
Date: Wed, 3 Jun 2020 13:05:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200603100548.GN6112@intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
 <20200601141132.GK6112@intel.com> <20200602122807.GN4452@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602122807.GN4452@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC] drm/i915: lpsp with hdmi/dp outputs
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

On Tue, Jun 02, 2020 at 05:58:07PM +0530, Anshuman Gupta wrote:
> On 2020-06-01 at 17:11:32 +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Jun 01, 2020 at 03:45:16PM +0530, Anshuman Gupta wrote:
> > > Gen12 hw are failing to enable lpsp configuration due to PG3 was left=
 on
> > > due to valid usgae count of POWER_DOMAIN_AUDIO.
> > > It is not required to get POWER_DOMAIN_AUDIO ref-count when enabling
> > > a crtc, it should be always i915_audio_component request to get/put
> > > AUDIO_POWER_DOMAIN.
> > > =

> > > Cc: stable@vger.kernel.org
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 6c3b11de2daf..f31a579d7a52 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7356,7 +7356,11 @@ static u64 get_crtc_power_domains(struct intel=
_crtc_state *crtc_state)
> > >  		mask |=3D BIT_ULL(intel_encoder->power_domain);
> > >  	}
> > >  =

> > > -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> > > +	/*
> > > +	 * Gen12 can drive lpsp on hdmi/dp outpus, it doesn't require to
> > > +	 * enable AUDIO power in order to enable a crtc
> > =

> > Nothing requires audio power to enable a crtc. What this is saying is
> > that if we want audio then we must enable the audio power. If you
> > didn't want audio then you wouldn't have .has_audio set.
> IMO i915_audio_component_get_power also enables audio power, and
> i915_audio_component_put_power releases the usage count based upon audio
> runtime idleness but here get_crtc_power_domains() gets the POWER_DOMAIN_=
AUDIO usages
> count, which will be released only when this crtc get disbaled.
> It may enable AUDIO power despite of fact that audio driver has released =
the
> usage count.
> Please correct me if i am wrong here.

The audio component stuff doesn't actually do the audio enable/disable
sequence.

> =

> > =

> > That said, looks like audio is moving into the always on well, but not
> > yet in tgl.
> Still some of audio functional stuff lies in PG3, not completely removed
> from PG3.
> Thanks,
> Anshuman Gupta.
> > =

> > .
> > > +	 */
> > > +	if (INTEL_GEN(dev_priv) < 12 && HAS_DDI(dev_priv) && crtc_state->ha=
s_audio)
> > >  		mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);
> > >  =

> > >  	if (crtc_state->shared_dpll)
> > > -- =

> > > 2.26.2
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
