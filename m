Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7724A9425
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 07:54:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A00110ED6F;
	Fri,  4 Feb 2022 06:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CD710E9C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 06:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643957636; x=1675493636;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2oW2F3iRCBhWjRWqJ9yhJncic69vHhVW3elFj6EnRGc=;
 b=NnVBWrOI9FX/CNO9FcFZe5adKXRbXpamCTB6wt4cJITqCr7k3qJAd0TV
 i01/IWdIL+1uJTHZjJqznw7EsFKgzQgnqGBMMEw/Vd8CP8/HwO3lQwroh
 qrajSp9gnROwexmlkRNMBjba7rfSuu31mXkOUJzuHyfVB+DoGNIxlSult
 g+zfvKs4yXeVTLDkwfG4x7CT70xK4XHjTARW9oBkbVl7Tzf6fXpi1X9af
 kSBHTPI7VVcTQ8udgaoRBnwI/Ct1FKjv187vgmV66SqTDaSA+RYtabFJQ
 XNbo5WmFV4hm4qY9iomXaizwQwdXLLyy+P2L1DshXSNdNpNdokckHF1RR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228972341"
X-IronPort-AV: E=Sophos;i="5.88,341,1635231600"; d="scan'208";a="228972341"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 22:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,341,1635231600"; d="scan'208";a="677024265"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 03 Feb 2022 22:53:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 08:53:52 +0200
Date: Fri, 4 Feb 2022 08:53:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YfzNgKDdWiAZU+o9@intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-2-ville.syrjala@linux.intel.com>
 <20220203215801.GA17816@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203215801.GA17816@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Flag crtc scaling_filter
 changes as modeset
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

On Thu, Feb 03, 2022 at 01:58:01PM -0800, Navare, Manasi wrote:
> On Thu, Feb 03, 2022 at 08:38:14PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The core doesn't flag scaling_filter prop changes as needing
> > a modeset. That doesn't work for us since we only reprogram the
> > pipe scaler during full modesets and fastsets. So we need to
> > flag the prop change as a modeset ourselves. Assuming nothing else
> > has changed the operation will get promoted (demoted?) to a fastset
> > later.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Makes sense, although not sure why this was sent as part of bigjoiner bitmask series

Because I noticed it while examining the bigjoiner state copy mess.

> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Thanks.

> 
> Manasi
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index df347329d90e..85dce8a093d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7846,6 +7846,10 @@ static int intel_atomic_check(struct drm_device *dev,
> >  					    new_crtc_state, i) {
> >  		if (new_crtc_state->inherited != old_crtc_state->inherited)
> >  			new_crtc_state->uapi.mode_changed = true;
> > +
> > +		if (new_crtc_state->uapi.scaling_filter !=
> > +		    old_crtc_state->uapi.scaling_filter)
> > +			new_crtc_state->uapi.mode_changed = true;
> >  	}
> >  
> >  	intel_vrr_check_modeset(state);
> > -- 
> > 2.34.1
> > 

-- 
Ville Syrjälä
Intel
