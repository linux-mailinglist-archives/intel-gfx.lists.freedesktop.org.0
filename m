Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1E08CD77D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D501C10E5BD;
	Thu, 23 May 2024 15:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjYmbSU4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBC110E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716479024; x=1748015024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DNHKmQAq869U/tBJVr/lOQu/cKNMdIgTXx+1e2l1w5c=;
 b=HjYmbSU4K20Ipw0VJSRI0QZft/kFPSQHsw3DGnfWxUQHaxaDd2o32L9w
 s5LOdsMTxkunj1PB4OE+m1pZEmgbZbriP5sInC6U5kD8q/MoysxfdGcCo
 OcOL7mryJT/FfuW1Hl6snJWnVADEjfzgjz0R766SY7QtZFMNWe2jhql+U
 LV0tLkxG13yey462Pl8mpvO6T1M19v97eYnm+pAg7rcB0PaQ7NMeHX9MU
 2EBHSfPWR1fdbkdAc1zf24IgMcetJzbJEWrPs4WTMwhF7iRIsaqSDMtfD
 FExOs+2Jb5aixvadFDYB+NhJYYOyL9xmN7p8yYdbtC7caxaGOwANOqAOt Q==;
X-CSE-ConnectionGUID: rfLptOCESQuW7MCQm+W6IA==
X-CSE-MsgGUID: ZD3KWnKERvuS7bd+3ayYsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="35321684"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="35321684"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:43:43 -0700
X-CSE-ConnectionGUID: j4Rf1aejR9SOLARstAMGcg==
X-CSE-MsgGUID: aAbdoP1TTeiJLvp3FGNPEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33680765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 08:43:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 18:43:40 +0300
Date: Thu, 23 May 2024 18:43:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Message-ID: <Zk9kLPgoIMynXwz0@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-13-imre.deak@intel.com>
 <Zk9b-BnIn9QzljpT@intel.com>
 <Zk9g0TXrbZCGuT7a@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9g0TXrbZCGuT7a@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
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

On Thu, May 23, 2024 at 06:29:21PM +0300, Imre Deak wrote:
> On Thu, May 23, 2024 at 06:08:40PM +0300, Ville Syrjälä wrote:
> > On Mon, May 20, 2024 at 09:58:10PM +0300, Imre Deak wrote:
> > > Simplify things by retraining a DP link if a bad link is detected in the
> > > connector detect handler from the encoder's check link state work,
> > > similarly to how this is done after a modeset link training failure.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++-----
> > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index ff4ed6bb520d8..70b00e5ae7ad7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5863,11 +5863,8 @@ intel_dp_detect(struct drm_connector *connector,
> > >  	 * Some external monitors do not signal loss of link synchronization
> > >  	 * with an IRQ_HPD, so force a link status check.
> > >  	 */
> > > -	if (!intel_dp_is_edp(intel_dp)) {
> > > -		ret = intel_dp_retrain_link(encoder, ctx);
> > > -		if (ret)
> > > -			return ret;
> > > -	}
> > > +	if (!intel_dp_is_edp(intel_dp))
> > > +		intel_dp_check_link_state(intel_dp);
> > 
> > I would like to see this hack nuked entirely. But that
> > could be a followup.
> 
> Okay. This tries to keep the current behavior, but can add a note that
> the above workaround can be removed after the link state is checked
> after modesets.
> 
> I also wondered about the link state check in the hotplug handler. If
> that's only a way to defer doing this from the HPD IRQ handler - which
> is now changed by patch 13 - that could be also removed eventually?

Not sure which one you want to removed exactly. I presume there
are still at least these cases we need to handle:
- long HDP dropped and came back without any userspace
  initiated modeset in between
  -> kick off a retrain from the long HPD handler
- short HPD indicated some link badness
  -> kick off a retrain from the short HDP handler
- link dropped on its own soon after modeset without
  any HPD for some reason
  -> kick off a retrain from the post modeset link check

And the one we should remove:
- something weird happened to the link and no one noticed,
  and for some random reason userspace just happens to do
  a getconnector() which ends up randomly fixing things

Did I miss anything else?

-- 
Ville Syrjälä
Intel
