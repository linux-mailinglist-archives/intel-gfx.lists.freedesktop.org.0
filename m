Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BC28C89A4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 17:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9895210E041;
	Fri, 17 May 2024 15:55:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YbWbppSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1637310E041
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 15:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715961339; x=1747497339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5HF/TbyRHSSPeG/Y1/aQWC9oHHAXrGHwQStmtwFxEJk=;
 b=YbWbppSZGZsTDnDiAxqaxyHI/aSHnjS5uqPgbdGNjuBRWWRMQAjUQiag
 SyquhBeEkZu5/35m9Ys0F7XTGnZbq6OFZQlTaJ7pOaFZzmX+u7mR8S8F2
 S5k5/zi4x2NUjlI20xs+oKzXZdFZ1MCydKBJP0nE6BGtUaB2c//6PXFIw
 3PMRiD9Mo6k0M9Wc9enRq2m5dlo+Kfm001DW4Gw/P9qd0yUKw8m+DmrLV
 7MUA5s1+Ji9W1pYpFy54HU7tkEdRyOpOFqFCrI8uTEnjX0Sfh+a4CI3Kn
 oK+C7xdk4u8eRSv8o9She0xVQyOcFrlM1CThIR0P4Mu1kx0cGjZv8y6O/ g==;
X-CSE-ConnectionGUID: Cn2xGkGtQve8t/LPB224yA==
X-CSE-MsgGUID: z6544m7XTUuSnx17b9BScw==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="22754492"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="22754492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 08:55:38 -0700
X-CSE-ConnectionGUID: uKbe3IWqSeW2UmtGQsBUtg==
X-CSE-MsgGUID: 8XVd9aK2T1CuMAGhe8CmUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31822921"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 08:55:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 18:55:35 +0300
Date: Fri, 17 May 2024 18:55:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/13] drm/i915: Add skl+ plane name aliases to enum
 plane_id
Message-ID: <Zkd99ysYhXNDIZJk@intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-2-ville.syrjala@linux.intel.com>
 <87jzjsa1wl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87jzjsa1wl.fsf@intel.com>
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

On Fri, May 17, 2024 at 06:33:46PM +0300, Jani Nikula wrote:
> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Using PLANE_PRIMARY + PLANE_SPRITE? on skl+ results in a bunch
> > of unnecessary head scratching. Add aliases using the skl+ plane
> > names.
> > And for pre-skl we only need to keep PRIMARY,SPRITE0,SPRITE1
> > as we only ever have 0-2 sprites per pipe on those platforms.
> 
> Should these be changed too?
> 
> - intel_plane_set_ckey()

I suppose one could consider splitting this to pre-skl
vs. skl+ variants and using the appropriate names
in each. But the whole ckey uapi is really designed
around the pre-skl single primary + single sprite world
view, so using the PLANE_PRIMARY name there seems OK.

> - for_each_plane_id_on_crtc()

There's not really a right answer here I guess. As 
long as it's 0 where we start this will work.


> I'm not sure. But there's one real issue:
> 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 32d10e62b2b9..d0bfee2ca643 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -238,9 +238,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> >  static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
> >  {
> >  	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> > -		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> > +		return BIT(PLANE_6) | BIT(PLANE_7);
> >  	else
> > -		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> > +		return BIT(PLANE_4) | BIT(PLANE_5);
> 
> The if branches got swapped?

Yeah. Good catch. I suspect my brain was in the
"newer platforms surely have more things" mindset.

-- 
Ville Syrjälä
Intel
