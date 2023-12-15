Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761A281469A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AEF10E116;
	Fri, 15 Dec 2023 11:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8704710E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702639074; x=1734175074;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CABde8yKJe0Cl0xxR+1vVQSnkZhyPhpDfbH3OaB8c5U=;
 b=DyBY4BPgJUcc/UQZyUSSlfkzf+Ran41xlzXWG21xS2hrhS9mai2kEaKs
 Y98NH8ttUTl2Zl207OwKobB36sd6T8opNU9CpRnwO2srtX+4hB3h0WCt4
 I5XO5s8vNSanx6q8VUNgwA2KonM1WYnueXjJMwJ40E/+pw6EAlSL0dDfP
 5aRcSQGSsXo+K7e5/JQQCctrnKldc25ua7T5cZgcsG0yltKlOGOvL7Uag
 3kB8x408o2JKGqEp5gOONMqZUZ+I5LOyNWaCZ4C5pJbavEnJJnyOihfg3
 U+gNLk/JEFssKzwdnymPgRLifPqm74tauZyKzOCPWGRHJXO+Z0s43k8EC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="380258272"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="380258272"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:17:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767948148"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767948148"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:17:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:17:45 +0200
Date: Fri, 15 Dec 2023 13:17:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH] drm/i915: Reject async flips with bigjoiner
Message-ID: <ZXw12T9rLTo0u2Mc@intel.com>
References: <20231211081134.2698-1-ville.syrjala@linux.intel.com>
 <ZXn5aJsa41Nv2tXA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXn5aJsa41Nv2tXA@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 08:36:49PM +0200, Lisovskiy, Stanislav wrote:
> On Mon, Dec 11, 2023 at 10:11:34AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently async flips are busted when bigjoiner is in use.
> > As a short term fix simply reject async flips in that case.
> > 
> > Cc: stable@vger.kernel.org
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9769
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index d955957b7d18..61053c19f4cc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5926,6 +5926,17 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
> >  		return -EINVAL;
> >  	}
> >  
> > +	/*
> > +	 * FIXME: Bigjoiner+async flip is busted currently.
> > +	 * Remove this check once the issues are fixed.
> > +	 */
> > +	if (new_crtc_state->bigjoiner_pipes) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[CRTC:%d:%s] async flip disallowed with bigjoiner\n",
> > +			    crtc->base.base.id, crtc->base.name);
> > +		return -EINVAL;
> > +	}
> > +
> 
> Was recently wondering, whether should we add some kind of helper
> func for that check to look more readable, i.e instead of just
> checking if crtc_state->bigjoiner_pipes != 0, call smth like
> is_bigjoiner_used(new_crtc_state)..

I suppose we could have something like that. We do have something
along those lines for eg. port sync. The difference being that
port sync has a bit more state than a single bitmask, so it's
more useful there.

> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>

Thanks.

> >  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> >  					     new_plane_state, i) {
> >  		if (plane->pipe != crtc->pipe)
> > -- 
> > 2.41.0
> > 

-- 
Ville Syrjälä
Intel
