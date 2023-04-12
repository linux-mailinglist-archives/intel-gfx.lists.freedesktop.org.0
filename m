Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF64A6DECD5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 09:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE1610E24E;
	Wed, 12 Apr 2023 07:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A2810E24E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 07:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681285527; x=1712821527;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ty1zQvHDxVWkV3vxK0hPLUhZRidVDPGICndq1vq4eB0=;
 b=iltTTHEPO7kvVDmnkJWeS2u5H24ZWgMKA6rwNVowkI9RzCWMT9eJUUxP
 xXHE16NAWgtZqqrHVtL3ruIGHSyYByTFedJRazNKm+x3vWXKQYVorrTb2
 0uDTYCeD/vwdKnmsQ6zYSgy4RkatbGqmLX0fbzobgDkZnIm1vE1swFQP1
 Ijoj2FESp68JATbq7SyNm6eqxDaB4bDA9j7hJnKansva0ADraSRkrA9ag
 sMDCOP4X9/JQzmGSo5h1CJRSRvgUHXdJ1aIxPW6eVTw0sFL+65cODKk9o
 wkM+heoici32sDADrgFkGsMWcG4qbgyw/EoJzz1MCq4j0t9BfPpnpU2Gn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="327939147"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="327939147"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 00:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832638278"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="832638278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 12 Apr 2023 00:45:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Apr 2023 10:45:23 +0300
Date: Wed, 12 Apr 2023 10:45:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZDZhk/tizSv0pTmZ@intel.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <ZDTy93UCSN4TUCV1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZDTy93UCSN4TUCV1@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
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

On Tue, Apr 11, 2023 at 08:41:11AM +0300, Ville Syrjälä wrote:
> On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar Ajitkumar wrote:
> > Hi Ville,
> > 
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > > Syrjala
> > > Sent: 21 March 2023 19:26
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR enable/disable
> > > 
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Move VRR enabling/disabling into a place where it also works for fastsets.
> > > 
> > > With this we always start the transcoder up in non-VRR mode.
> > > Granted  we already did that but for a very short period of time. But now
> > > that we might end up doing a bit more with the transcoder in non-VRR mode
> > > it seems prudent to also update the active timings as the transcoder changes
> > > its operating mode.
> > > 
> > > crtc_state->vrr.enable still tracks whether VRR is actually enabled or not, but
> > > now we configure all the other VRR timing registers whenever VRR is possible
> > > (whether we actually enable it or not). crtc_state->vrr.flipline can now serve
> > > as our "is VRR possible" bit of state.
> > 
> > Understood the change. I was thinking if it is possible to make distinguish between
> > is VRR "possible" and is VRR "enabled" by adding a new param ? Although changes looks
> > good to me but using Flipline value as "is VRR Possible" makes it bit confusing.
> 
> I suppose we could think about adding a knob for it. It would just
> reflect the flipline enable bit state in the current scheme.

After further pondering I think I'm leaning towards just adding
a tiny intel_vrr_possible()/etc. helper instead of adding a separate
knob for this into the crtc state. That seems like somehting we can
trivially do as a followup.

> 
> Another thing I was pondering is whether we should even care about
> this in intel_dp_prepare_link_train() or if we should just set the
> MSA ingore bit any time we have a VRR capable display. But I suppose
> that could have some implicatations eg. for interlaces displays modes.
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
