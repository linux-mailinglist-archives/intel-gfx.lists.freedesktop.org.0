Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAA81F5C4F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 21:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9196E57E;
	Wed, 10 Jun 2020 19:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDEF6E57E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 19:59:32 +0000 (UTC)
IronPort-SDR: M4K+iiszHjvMARR6ytLwOHPZAKXiDvaGqJNsxhMdxITU74YlMNLJ3jdUTkIqPbxIpdxq6aBhoB
 o/NaY2L34hMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 12:59:31 -0700
IronPort-SDR: iLs4G3EbQdBks32i6MDpt1tVZP3hCyrDATKhXYhWagEcy0KFUMZsTpooSMKrFQlV1hIR29VSvc
 Jb/GUyGUnXWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="473461995"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jun 2020 12:59:31 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 12:59:31 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 12:59:31 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.23]) with mapi id 14.03.0439.000;
 Thu, 11 Jun 2020 01:29:28 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/icl: Disable DIP on MST ports with the
 transcoder clock still on
Thread-Index: AQHWPqo45lDH0djm60eJlVLUfIJqN6jSQJhg//+oSwCAAFy4IA==
Date: Wed, 10 Jun 2020 19:59:27 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82521FBD@BGSMSX104.gar.corp.intel.com>
References: <20200609220616.6015-1-imre.deak@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82521F76@BGSMSX104.gar.corp.intel.com>
 <20200610195620.GA13917@ideak-desk.fi.intel.com>
In-Reply-To: <20200610195620.GA13917@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Disable DIP on MST ports with
 the transcoder clock still on
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Imre Deak <imre.deak@intel.com>
> Sent: Thursday, June 11, 2020 1:26 AM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Mun, Gwan-gyeong <gwan-
> gyeong.mun@intel.com>
> Subject: Re: [PATCH] drm/i915/icl: Disable DIP on MST ports with the transcoder
> clock still on
> 
> On Wed, Jun 10, 2020 at 10:45:35PM +0300, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Wednesday, June 10, 2020 3:36 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Mun, Gwan-gyeong <gwan-gyeong.mun@intel.com>; Shankar, Uma
> > > <uma.shankar@intel.com>
> > > Subject: [PATCH] drm/i915/icl: Disable DIP on MST ports with the
> > > transcoder clock still on
> > >
> > > According to BSpec the Data Island Packet should be disabled after
> > > disabling the transcoder, but before the transcoder clock select is
> > > set to none. On an ICL RVP, daisy-chained MST config not following
> > > this leads to a hang with the following MCE when disabling the output:
> > >
> > > [  870.948739] mce: [Hardware Error]: CPU 0: Machine Check Exception: 5
> Bank 6:
> > > ba00000011000402 [  871.019212] mce: [Hardware Error]: RIP !INEXACT!
> > > 10:<ffffffff81aca652> {poll_idle+0x92/0xb0} [  871.019212] mce: [Hardware
> Error]:
> > > TSC 135a261fe61 [  871.019212] mce: [Hardware Error]: PROCESSOR
> > > 0:706e5 TIME
> > > 1591739604 SOCKET 0 APIC 0 microcode 20 [  871.019212] mce: [Hardware
> Error]:
> > > Run the above through 'mcelog --ascii'
> > > [  871.019212] mce: [Hardware Error]: Machine check: Processor
> > > context corrupt [ 871.019212] Kernel panic - not syncing: Fatal
> > > machine check [  871.019212] Kernel
> > > Offset: disabled
> > >
> > > Bspec: 4287
> > >
> > > Fixes: fa37a213275c ("drm/i915: Stop sending DP SDPs on ddi
> > > disable")
> > > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >
> >
> > This is a good catch Imre. Would be good to know how you suspected this.
> 
> The MCE happens just when accessing a register without the required clock for it
> being on. In this case when reading/writing the SDP registers. We had to fix the
> same problem in the past around HDMI infoframe programming.

Oh ok, thanks Imre for the info.

Regards,
Uma Shankar

> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > >  drivers/gpu/drm/i915/display/intel_ddi.c    | 4 +++-
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++++++++
> > >  2 files changed, 11 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 96eaa4b39c68..50ccc6e30dc1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -3510,7 +3510,9 @@ static void intel_ddi_post_disable_dp(struct
> > > intel_atomic_state *state,
> > >  					  INTEL_OUTPUT_DP_MST);
> > >  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> > >
> > > -	intel_dp_set_infoframes(encoder, false, old_crtc_state, old_conn_state);
> > > +	if (!is_mst)
> > > +		intel_dp_set_infoframes(encoder, false,
> > > +					old_crtc_state, old_conn_state);
> > >
> > >  	/*
> > >  	 * Power down sink before disabling the port, otherwise we end
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index d18b406f2a7d..f29e51ce489c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -397,6 +397,14 @@ static void intel_mst_post_disable_dp(struct
> > > intel_atomic_state *state,
> > >  	 */
> > >  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector-
> > > >port,
> > >  				     false);
> > > +
> > > +	/*
> > > +	 * BSpec 4287: disable DIP after the transcoder is disabled and before
> > > +	 * the transcoder clock select is set to none.
> > > +	 */
> > > +	if (last_mst_stream)
> > > +		intel_dp_set_infoframes(&intel_dig_port->base, false,
> > > +					old_crtc_state, NULL);
> > >  	/*
> > >  	 * From TGL spec: "If multi-stream slave transcoder: Configure
> > >  	 * Transcoder Clock Select to direct no clock to the transcoder"
> > > --
> > > 2.23.1
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
