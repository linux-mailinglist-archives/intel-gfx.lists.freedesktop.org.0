Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4251F18F0F0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 09:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9E389E39;
	Mon, 23 Mar 2020 08:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C038289E39
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 08:35:51 +0000 (UTC)
IronPort-SDR: 6aPd993oBEIQ/s6j1XT+osBVZR5eVofcirPid3x0aSHGduBfA2zO45YlAdP7Ldr/DD4d3ZFJ6r
 c0QIgrusTTlw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 01:35:51 -0700
IronPort-SDR: fyrUOnKf/KGYq6JJEb3tg2InStXs4lcFr9LmNl+Y1aYL9I7z3k8yT+7JsEYLAk4J4vtv4dnR8K
 Q/PmC5UShWmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; d="scan'208";a="237854148"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 23 Mar 2020 01:35:50 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 01:35:50 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx158.amr.corp.intel.com (10.18.116.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 01:35:50 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.21]) with mapi id 14.03.0439.000;
 Mon, 23 Mar 2020 14:05:46 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/edp: Ignore short pulse when
 panel powered off
Thread-Index: AQHV/P8tjx9poHgOUkCjGylPlxafyqhNu+IAgAgl5RA=
Date: Mon, 23 Mar 2020 08:35:46 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824399B2@BGSMSX104.gar.corp.intel.com>
References: <20200313185227.21900-1-anshuman.gupta@intel.com>
 <20200318081837.23983-1-anshuman.gupta@intel.com> <87tv2mdmtt.fsf@intel.com>
In-Reply-To: <87tv2mdmtt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/edp: Ignore short pulse when
 panel powered off
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
> Sent: Wednesday, March 18, 2020 3:09 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/edp: Ignore short pulse when panel
> powered off
> 
> On Wed, 18 Mar 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > Few edp panels like Sharp is triggering short and long hpd pulse after
> > panel is getting powered off.
> > Currently driver is already ignoring long pulse for eDP panel but in
> > order to process the short pulse, it turns on the VDD which requires
> > panel power_cycle_delay + panel_power_on_delay these delay on Sharp
> > panel introduced the responsiveness overhead of 800ms in the modeset
> > sequence and as well is in suspend sequence.
> > Ignoring any short pulse if panel is powered off.
> >
> > FIXME: It requires to wait for panel_power_off delay in order to check
> > the panel power status due to pps_lock because panel triggers short
> > pulse immediately after writing PP_OFF to PP_CTRL register and
> > wait_panel_off waits for panel_power_off delay with pps_lock held.
> > This still creates responsiveness overhead of panel_power_off delay.
> >
> > v2:
> > - checking vdd along with panel power to ignore the hpd. [Jani,Ville]
> > v3:
> > - safer side check to ignore the long hpd when eDP have power,
> >   adding type of hpd to debug log. [Jani]
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Thanks,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed to dinq, thanks for the patch and review.

Regards,
Uma Shankar

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++++----
> >  1 file changed, 19 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0a417cd2af2b..38e74195101a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6763,19 +6763,34 @@ static const struct drm_encoder_funcs
> intel_dp_enc_funcs = {
> >  	.destroy = intel_dp_encoder_destroy,  };
> >
> > +static bool intel_edp_have_power(struct intel_dp *intel_dp) {
> > +	intel_wakeref_t wakeref;
> > +	bool have_power = false;
> > +
> > +	with_pps_lock(intel_dp, wakeref) {
> > +		have_power = edp_have_panel_power(intel_dp) &&
> > +						  edp_have_panel_vdd(intel_dp);
> > +	}
> > +
> > +	return have_power;
> > +}
> > +
> >  enum irqreturn
> >  intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool
> > long_hpd)  {
> >  	struct intel_dp *intel_dp = &intel_dig_port->dp;
> >
> > -	if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {
> > +	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
> > +	    (long_hpd || !intel_edp_have_power(intel_dp))) {
> >  		/*
> > -		 * vdd off can generate a long pulse on eDP which
> > +		 * vdd off can generate a long/short pulse on eDP which
> >  		 * would require vdd on to handle it, and thus we
> >  		 * would end up in an endless cycle of
> > -		 * "vdd off -> long hpd -> vdd on -> detect -> vdd off -> ..."
> > +		 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
> >  		 */
> > -		DRM_DEBUG_KMS("ignoring long hpd on eDP
> [ENCODER:%d:%s]\n",
> > +		DRM_DEBUG_KMS("ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
> > +			      long_hpd ? "long" : "short",
> >  			      intel_dig_port->base.base.base.id,
> >  			      intel_dig_port->base.base.name);
> >  		return IRQ_HANDLED;
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
