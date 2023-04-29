Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4BC6F23A7
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Apr 2023 09:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D79B10E07E;
	Sat, 29 Apr 2023 07:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3098C10E07E
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Apr 2023 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682754600; x=1714290600;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mDdPnUzpie9RaagqNihEiWXxZD+7CZ37wFjgykdil7w=;
 b=fZnf/YBg4aAN+F3pDMftLbt9XTDbguCo3Td+iRFIr6DFicK8AuXNm5la
 ZOHkWAd/oUH7UHoXTsyGYoZ9Muiu+mMKzChn4KZWPKxPWn1r/R9mDaQjL
 5XMjGAh958vr+h4+aGykGHB6UeFMb7X1bw4n/Aeb4+Qix5rdu0DvOkwcO
 qJkvz2nOFb80y87EMfIyQ02hnr5gzDFWUOBC3nZCWFBLdlNsSt5tvCqa4
 zpS84nyO9OOtZGYZztivis/9o27yUG0RSOQsw4CE6L1tSxFtu5kQTNOsE
 KnqTcts5Gb1X9elZF2oNYfV+WQpnSeGQBod7zbGwLdX+xnInzcvT75bTy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349952081"
X-IronPort-AV: E=Sophos;i="5.99,236,1677571200"; d="scan'208";a="349952081"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 00:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="784573668"
X-IronPort-AV: E=Sophos;i="5.99,236,1677571200"; d="scan'208";a="784573668"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 00:49:57 -0700
Date: Sat, 29 Apr 2023 10:50:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <ZEzMQjoV3ArbzB/z@ideak-desk>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-6-imre.deak@intel.com>
 <ZEvR++IEZDI+uKB5@intel.com> <ZEwA1x2Yi8X8Wh3i@rkl>
 <ZEwGqwjbTtqHWwGr@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZEwGqwjbTtqHWwGr@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Add support for disabling
 any CRTCs during HW readout/sanitization
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 28, 2023 at 08:47:23PM +0300, Imre Deak wrote:
> On Fri, Apr 28, 2023 at 08:22:54PM +0300, Imre Deak wrote:
> > On Fri, Apr 28, 2023 at 05:02:35PM +0300, Ville Syrjälä wrote:
> > > On Wed, Apr 26, 2023 at 07:52:59PM +0300, Imre Deak wrote:
> > > > [...] 
> > > > +static u32 get_transcoder_pipes(struct drm_i915_private *i915, u32 transcoder_mask)
> > > > +{
> > > > +	struct intel_crtc *slave_crtc;
> > > > +	u32 pipes = 0;
> > > > +
> > > > +	for_each_intel_crtc(&i915->drm, slave_crtc) {
> > > > +		struct intel_crtc_state *slave_crtc_state =
> > > > +			to_intel_crtc_state(slave_crtc->base.state);
> > > > +
> > > > +		if (slave_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
> > > > +			continue;
> > > > +
> > > > +		if (transcoder_mask & BIT(slave_crtc_state->cpu_transcoder))
> > > > +			pipes |= BIT(slave_crtc->pipe);
> > > > +	}
> > > > +
> > > > +	return pipes;
> > > > +}
> > > > +
> > > > +static u32 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u32 master_pipes)
> > > > +{
> > > > +	struct intel_crtc *master_crtc;
> > > > +	u32 pipes = 0;
> > > > +
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, master_crtc, master_pipes) {
> > > > +		struct intel_crtc_state *master_crtc_state =
> > > > +			to_intel_crtc_state(master_crtc->base.state);
> > > > +
> > > > +		pipes |= intel_crtc_bigjoiner_slave_pipes(master_crtc_state);
> > > > +	}
> > > > +
> > > > +	return pipes;
> > > > +}
> > > > +
> > > > +static void kill_bigjoiner_slave_noatomic(struct intel_crtc *master_crtc)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
> > > > +	struct intel_crtc_state *master_crtc_state =
> > > > +		to_intel_crtc_state(master_crtc->base.state);
> > > > +	struct intel_crtc *slave_crtc;
> > > > +
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > > > +					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
> > > > +		struct intel_crtc_state *slave_crtc_state =
> > > > +			to_intel_crtc_state(slave_crtc->base.state);
> > > > +
> > > > +		slave_crtc_state->bigjoiner_pipes = 0;
> > > > +	}
> > > > +
> > > > +	master_crtc_state->bigjoiner_pipes = 0;
> > > > +}
> > > > +
> > > > +static void disable_crtc_with_slaves(struct intel_crtc *crtc,
> > > > +				     struct drm_modeset_acquire_ctx *ctx)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
> > > > +	u32 bigjoiner_masters = BIT(crtc->pipe) |
> > > > +				get_transcoder_pipes(i915, crtc_state->sync_mode_slaves_mask);
> > > 
> > > The resulting bitmask would seem to also include the bigjoiner slaves.
> > 
> > Hrm, doesn't sync_mode_slaves_mask contain only the transcoder bits for
> > the port-synced master CRTCs? I assumed that those port-synced master
> > CRTCs would point to their slave pipes via their
> > crtc_state->bigjoiner_pipes mask.
> 
> Ah, understood the issue, the port_synced slave CRTCs need to get
> disabled before the port_sync master.
> 
> So I think the following gives the correct order:
> 
> 	u32 portsync_slaves = get_transcoder_pipes(i915,
> 						   crtc_state->sync_mode_slaves_mask);
> 	u32 bigjoiner_slaves = get_bigjoiner_slave_pipes(i915,
> 							 BIT(crtc->pipe) |
> 							 portsync_slaves);
> 
> 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves)
> 		intel_crtc_disable_noatomic(temp_crtc, ctx);
> 
> 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_slaves) {
> 		intel_crtc_disable_noatomic(temp_crtc, ctx);
> 		kill_bigjoiner_slave_noatomic(temp_crtc);
> 	}
> 
> 	intel_crtc_disable_noatomic(crtc);
> 	kill_bigjoiner_slave_noatomic(crtc);
> 
> ?

And that a bigjoiner slave pipe's transcoder points to the master
transcoder :/ so those slave pipes need to be filtered out in
get_transcoder_pipes().

> > > > +	u32 bigjoiner_slaves = get_bigjoiner_slave_pipes(i915, bigjoiner_masters);
> > > > +	struct intel_crtc *temp_crtc;
> > > > +
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves)
> > > > +		intel_crtc_disable_noatomic(temp_crtc, ctx);
> > > > +
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_masters) {
> > > > +		intel_crtc_disable_noatomic(temp_crtc, ctx);
> > > > +		kill_bigjoiner_slave_noatomic(temp_crtc);
> > > > +	}
> > > > +}
> > > > +
> > > >  static void intel_sanitize_crtc(struct intel_crtc *crtc,
> > > >  				struct drm_modeset_acquire_ctx *ctx)
> > > >  {
> > > > @@ -299,10 +404,11 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
> > > >  	/*
> > > >  	 * Adjust the state of the output pipe according to whether we have
> > > >  	 * active connectors/encoders.
> > > > +	 * TODO: Add support for MST
> > > >  	 */
> > > >  	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> > > >  	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> > > > -		intel_crtc_disable_noatomic(crtc, ctx);
> > > > +		disable_crtc_with_slaves(crtc, ctx);
> > > 
> > > I'd like to keep the _noatomic() in the name.
> > 
> > Ok, will change this.
> > 
> > > 
> > > >  }
> > > >  
> > > >  static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
> > > > -- 
> > > > 2.37.2
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
