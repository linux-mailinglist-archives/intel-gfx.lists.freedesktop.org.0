Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 302B019AB1F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 13:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C249189C1E;
	Wed,  1 Apr 2020 11:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4478389C1E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 11:54:42 +0000 (UTC)
IronPort-SDR: nwt8x9LFZcndAHC40Ae6XB5Vh02V8SsKfOgBWvHn4QBogs06IBcVvGvCV3w7PHV7GFdSM5JCkD
 ZfqZyBtAEvRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 04:54:41 -0700
IronPort-SDR: CnOZSIna1SM7VFk/mpVKdFKApd0SGsPTSM0ROOqVWgNYrahEETnGJRh1BXIbDHvSj3YgcH7hBo
 e4AotqJ0x3+w==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="273147087"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 04:54:40 -0700
Date: Wed, 1 Apr 2020 14:54:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200401115405.GB24964@ideak-desk.fi.intel.com>
References: <20200330095425.29113-1-imre.deak@intel.com>
 <20200330095425.29113-2-imre.deak@intel.com>
 <20200401112022.GF11633@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401112022.GF11633@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Extend hotplug detect retry
 on TypeC connectors to 5 seconds
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 01, 2020 at 04:50:23PM +0530, Anshuman Gupta wrote:
> On 2020-03-30 at 15:24:25 +0530, Imre Deak wrote:
> > On TypeC ports if a sink deasserts/reasserts its HPD signal, generating
> > a hotplug interrupt without the sink getting unplugged/replugged from
> > the connector, there can be an up to 3 seconds delay until the AUX
> > channel gets functional. To avoid detection failures this delay causes
> > retry the detection for 5 seconds.
> > 
> > I noticed this on ICL/TGL RVPs and a DELL XPS 13 7390 ICL laptop.
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/1067
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4f508bf70f3b..2d947ff83488 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4371,7 +4371,10 @@ static enum intel_hotplug_state
> >  intel_ddi_hotplug(struct intel_encoder *encoder,
> >  		  struct intel_connector *connector)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > +	bool is_tc = intel_phy_is_tc(i915, phy);
> >  	struct drm_modeset_acquire_ctx ctx;
> >  	enum intel_hotplug_state state;
> >  	int ret;
> > @@ -4414,8 +4417,15 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
> >  	 * valid EDID. To solve this schedule another detection cycle if this
> >  	 * time around we didn't detect any change in the sink's connection
> >  	 * status.
> > +	 *
> > +	 * Type-c connectors which get their HPD signal deasserted then
> > +	 * reasserted, without unplugging/replugging the sink from the
> > +	 * connector, introduce a delay until the AUX channel communication
> > +	 * becomes functional. Retry the detection for 5 seconds on type-c
> > +	 * connectors to account for this delay.
> >  	 */
> > -	if (state == INTEL_HOTPLUG_UNCHANGED && !connector->hotplug_retries &&
> > +	if (state == INTEL_HOTPLUG_UNCHANGED &&
> > +	    connector->hotplug_retries < (is_tc ? 5 : 1) &&
>
> I had observed that intel_dp_detect may race between user spece
> invoked get connector call and intel_encoder_hotplug(), that may leave
> connector status to be UNCHANGED in actual hotplug flow as
> intel_dp_detect() already called from
> drm_helper_probe_single_connector_modes(), this may results in 5
> retries for type-C ports for normal HPD assertion.  Please correct me
> if i am wrong.

Yes, it's possible the retries will be unneccessary, but I don't think
we can do much about avoiding a race between a hotplug event and a
detect call.

> Thanks,
> Anshuman Gupta.
> >  	    !dig_port->dp.is_mst)
> >  		state = INTEL_HOTPLUG_RETRY;
> >  
> > -- 
> > 2.23.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
