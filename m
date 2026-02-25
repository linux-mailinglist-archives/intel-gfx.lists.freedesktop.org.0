Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJbDJS7InmkuXQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:00:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E696619568B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:00:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD9A10E35E;
	Wed, 25 Feb 2026 10:00:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyKdUz7Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC9810E073;
 Wed, 25 Feb 2026 10:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772013611; x=1803549611;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DYsw4Hbb7Dh8b/Tz/NAhRjUKT+bQ774UFOoX/YpCVkE=;
 b=lyKdUz7YRKlqpyETpDNoKfA7EU3unMLRQT1IIO46Bu63AmPnQyF+v84U
 Ejete4N5cY9mf/9xFH5QuF/fo1jflyxDTqVbyzyiDp3+eqyinjAeMMA9V
 um7HQecLyXKMZmx0NeIYi3dW9s1bf1v9MOG4vosuYaCEH+3aV1y2DgFaJ
 apHzHTdfCPIFktDIyUQs2zxPkkUuctmRXG/GQISwrMpI8bTAkygV0NWsI
 Hx+wZn9mK+pxW0TlexgmmaB9ii8fKzeoNni6P1mhkMAGc0941CJv3cIv+
 aF10aIlu86L2iAbmlznX/LkBUrv3G3sAHv0cKcI604u46kCwy8fmP0XZA g==;
X-CSE-ConnectionGUID: wGWA40u5QQqBIrLQRbdThw==
X-CSE-MsgGUID: s115q97zSBGqdqIb3z1sOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73021608"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73021608"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:00:10 -0800
X-CSE-ConnectionGUID: yyuzS6mOTaqF4PrUusE4jg==
X-CSE-MsgGUID: fOAi0FnnQ9+BftHk65VmFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="221186353"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.16])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:00:09 -0800
Date: Wed, 25 Feb 2026 12:00:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 17/19] drm/i915/overlay: Don't use fetch_and_zero() in
 display code
Message-ID: <aZ7IJmlLZlgwgHH5@intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
 <20260218152806.18885-18-ville.syrjala@linux.intel.com>
 <4cf679b592b1b38850bb14ce297f316fa6c5ea37@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4cf679b592b1b38850bb14ce297f316fa6c5ea37@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: E696619568B
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:47:26AM +0200, Jani Nikula wrote:
> On Wed, 18 Feb 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We don't have fetch_and_zero() on the display side, so stop
> 
> Unfortunately, we do have a dupe of it display side too. I wish it would
> just die. I approve of the patch anyway.

Ah, I guess it was just hiding in some header that I wasn't including.
But yeah, we definitely don't need it here.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > using it in the display side intel_overlay_cleanup(). Fortunately
> > we don't really have anything to do here apart from freeing the
> > data. And we'll keep on clearing the pointer, just in case something
> > somewhere cares about it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_overlay.c | 9 ++-------
> >  1 file changed, 2 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index 8b06c2cff7f2..6a2af1f356ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -1554,13 +1554,8 @@ static void i915_overlay_cleanup(struct drm_device *drm)
> >  
> >  void intel_overlay_cleanup(struct intel_display *display)
> >  {
> > -	struct intel_overlay *overlay;
> > -
> > -	overlay = fetch_and_zero(&display->overlay);
> > -	if (!overlay)
> > -		return;
> > -
> >  	i915_overlay_cleanup(display->drm);
> >  
> > -	kfree(overlay);
> > +	kfree(display->overlay);
> > +	display->overlay = NULL;
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
