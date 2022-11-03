Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56886617A0A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 10:35:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8F010E5C2;
	Thu,  3 Nov 2022 09:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85A6E10E5C2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667468104; x=1699004104;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/g1ZhiIvaDcxnEFkzOVQQhx3dotSSyShu7GBQK2/W8A=;
 b=j8VPhUpC6vFqoErijIEjglTExKrQALAV8MTrXGg5nh8+BsZPDz651S8W
 Mc/2FhKsIP/4n75vI52bA1vIzxdaB0AoFXnb2lhxfKxmLG9mDmwiPNQAE
 0FG+6XEKW+7+7dgW+edMde026VZrTswFUBJ/JHAMJRVs+BhC87nnn2bdG
 hKtUDgHyXiDuFidHTe7wb/k6Ajt0pq2mTXCNZvPzPt/0T+6N/zPc2B70s
 Ypi3LejTA2zl3Xn59cfYkS03YG6AUUT8n4R+g4QQKLfqA9tnpKEM1UuRb
 FymSJxyEPLHCO5/zKvYwhkfaszdRWcNT1j/MCc5WaCKoZOzg/9poJYaZJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="373864531"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="373864531"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 02:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="629280909"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="629280909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Nov 2022 02:34:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Nov 2022 11:34:58 +0200
Date: Thu, 3 Nov 2022 11:34:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y2OLQj9BaOAmwd0v@intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-5-ville.syrjala@linux.intel.com>
 <8865235e-1eb5-c97d-59ec-39e125e0bcbb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8865235e-1eb5-c97d-59ec-39e125e0bcbb@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915:
 s/icl_load_gcmax/ivb_load_lut_max/
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

On Thu, Nov 03, 2022 at 11:49:20AM +0530, Nautiyal, Ankit K wrote:
> Seems the offset is same since IVB.
> 
> The Gamma correction max seem to be defined since IVB, but this doesnt 
> seem to be used during ivb_load_luts, but only for multi-segmented gamma.

It would be used for the 12.4 interpolated gamma mode on
earlier platforms, but we don't expose that currently.

> 
> Is it that the default value of 1.0 is sufficient for other platforms?

Since it's not used in any of the gamma modes we do expose
it doesn't matter what we leave there atm.

> 
> Regards,
> 
> Ankit
> 
> On 10/26/2022 5:08 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Unify icl_load_gcmax() with the rest of the function
> > naming scheme by calling it ivb_load_lut_max() instead.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 415e0a6839a4..e73e6ea6f82f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -935,8 +935,8 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
> >   }
> >   
> >   static void
> > -icl_load_gcmax(const struct intel_crtc_state *crtc_state,
> > -	       const struct drm_color_lut *color)
> > +ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
> > +		 const struct drm_color_lut *color)
> >   {
> >   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >   	enum pipe pipe = crtc->pipe;
> > @@ -1028,7 +1028,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
> >   
> >   	/* The last entry in the LUT is to be programmed in GCMAX */
> >   	entry = &lut[256 * 8 * 128];
> > -	icl_load_gcmax(crtc_state, entry);
> > +	ivb_load_lut_max(crtc_state, entry);
> >   	ivb_load_lut_ext_max(crtc_state);
> >   }
> >   

-- 
Ville Syrjälä
Intel
