Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8A37F6E2F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0699E10E1B7;
	Fri, 24 Nov 2023 08:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7A910E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814736; x=1732350736;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hrj1Fo2zgEK5Rpe4kSyKOJU4lOuPQwEvcOyt5gbA9QE=;
 b=G6wc+Pxw1X8rl2Ne3JAEa4mW7G67v2aG530v3fagssLyDVkc3H4WJR0Z
 S2Di237iK0Vd1pYbZbeDJmIADQhCA8hRP6/MVbahs/6jktAfjDj5F0QkK
 XVoL1og3jQgKb4afeC3IBlFTSxw15oppg5GJQv/kOnpKEbqL9kZ6mRSJu
 KBXgyZYmGDer/1Gd9sk581LJX2mupEPrzcLss2JDbFSB619xr+8oNyqDm
 wpor/YuEdWvqQMplMcDE9Ng1Kv+Z/HjJSVrTj/4tfqxxP/4JDt2yUfP85
 VhNm1o60AoSGeBey/qB9Eg2uLAAsUXXirmvYphqud2anXM2orH57yQv4m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="456727089"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="456727089"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:32:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760897832"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="760897832"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2023 00:32:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Nov 2023 10:32:12 +0200
Date: Fri, 24 Nov 2023 10:32:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZWBfjHcc6chHuG41@intel.com>
References: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
 <332f5e75434962347225c6bd5b3e2f27867b78e4.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <332f5e75434962347225c6bd5b3e2f27867b78e4.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/psr: Don't send a NULL VSC SDP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 23, 2023 at 07:14:29AM +0000, Hogander, Jouni wrote:
> On Wed, 2023-11-22 at 11:31 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The PSR code is unconditionally enabling the VSC SDP whether or not
> > PSR
> > itself is enabled. This means if the DP code decided not to use a VSC
> > SDP we're always transmitting a zeroed SDP. Not sure what the
> > hardware
> > will even do in that case. We also see a "Failed to unpack DP VSC
> > SDP"
> > message on every readout since the DIP buffer is just full of zeroes.
> 
> This is already taken care by this patch :
> 
> https://patchwork.freedesktop.org/patch/568234/?series=126651&rev=1

Yeah, I suppose that takes care of it.

On a slight tangent, we should see about nuking crtc_state->psr_vsc
and just switch to using the normal crtc_state->infoframes.vsc,
including full readout/state check/etc. I suppose the only open question
is whether the hardware mutates the VSC DIP buffer when it does its
PSR magic, and if so we'd need to sanitize the results from the
readout to not include those mutable parts (or ignore those parts
in the state check).

> 
> I'm about to merge it.
> 
> BR,
> 
> Jouni Högander
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 8d180132a74b..931295934659 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1373,6 +1373,9 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >         else
> >                 crtc_state->has_psr = _psr_compute_config(intel_dp,
> > crtc_state);
> >  
> > +       if (!crtc_state->has_psr)
> > +               return;
> > +
> >         crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp,
> > crtc_state);
> >  
> >         crtc_state->infoframes.enable |=
> > intel_hdmi_infoframe_enable(DP_SDP_VSC);
> 

-- 
Ville Syrjälä
Intel
