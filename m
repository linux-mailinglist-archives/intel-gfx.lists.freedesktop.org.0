Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 213E393A054
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C547810E596;
	Tue, 23 Jul 2024 11:56:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LjCGT26s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F7210E591
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721735770; x=1753271770;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=f6+0YMGWY9EWNTghni166eMKAyWqohbQlrsXOeM33pQ=;
 b=LjCGT26sbqEpNrB44cpMfpLtZVG5Zy/aLnoX9K14/VonFT4ZZAMf79he
 40isYbfHxzfKZkEzgvStiKFWbfkSf6DgYMmzJpwCTph59YuBlf2q3lkif
 Erho1dAlemJFFEQwfuVjP7dhWX9U/E/aTolZvoqBlUCTPj3MuOuaUMEsQ
 WSQtvn7eofAT0EGZ2fjFIwKEwELCKUW+oBmLP9nMyRwwAgQ/2D0tN4dku
 hgHMbo6MbF6tkkL8JwflDBCNbGzGkPj60/dpG2ydrb1QMjgc71ipHYF2r
 ioCHq26N899WhcmkBCTdgwHIxOW1+g85nAQi8uoCvs3QfWnWY9d7XLcyV A==;
X-CSE-ConnectionGUID: FqZaz/9eQ0yynB9bPzgcVQ==
X-CSE-MsgGUID: U2SOeaVgTH2PvbslPGYmOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19481551"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19481551"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:56:07 -0700
X-CSE-ConnectionGUID: 3zT7Zdt3S7ObQYAgdYcYVg==
X-CSE-MsgGUID: uMSPencyTdS1nMtGSxf2ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52147597"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:56:05 -0700
Date: Tue, 23 Jul 2024 14:56:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
 encoder sync_state() only for DP
Message-ID: <Zp-aZLH5kVF1RTYF@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-5-imre.deak@intel.com>
 <SN7PR11MB6750B3CBDD10FF98D612B48FE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750B3CBDD10FF98D612B48FE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Tue, Jul 23, 2024 at 11:28:33AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Monday, July 22, 2024 10:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
> > encoder sync_state() only for DP
> >
> > If the DDI encoder output is enabled in HDMI mode there is no point in
> > calling intel_dp_sync_state(), as in that case the DPCD initialization will fail -
> > as expected - with AUX timeouts. Prevent calling the hook in this case.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index a07aca96e5517..11ee4406dce8f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4172,7 +4172,8 @@ static void intel_ddi_sync_state(struct
> > intel_encoder *encoder,
> >               intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
> >                                           crtc_state);
> >
> > -     if (intel_encoder_is_dp(encoder))
> > +     if ((crtc_state && intel_crtc_has_dp_encoder(crtc_state)) ||
> > +         (!crtc_state && intel_encoder_is_dp(encoder)))
> 
> So we are trying to avoid calling  intel_dp_sync_state incase
> intel_encoder_is_dp returns INTEL_OUTPUT_DDI in that case why are we
> still keeping the check intel_encoder_is_dp when crtc_state is not
> present.

intel_encoder_is_dp() returns true if a DP connector is registered using
this DDI encoder. If the output is disabled (so crtc_state==NULL) that's
the only way to determine if the encoder may be used for DP (unless an
HDMI connector is also registered using this same encoder and that's
what is actually used on the given platform). In case the output is
enabled the DP/HDMI mode in crtc_state gives the same answer, but by
checking that instead we avoid calling the DP specific hook if the
encoder is used by HDMI.

> Regards,
> Suraj Kandpal
> 
> >               intel_dp_sync_state(encoder, crtc_state);  }
> >
> > --
> > 2.44.2
> 
