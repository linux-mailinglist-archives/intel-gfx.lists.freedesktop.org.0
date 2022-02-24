Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D12414C2997
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 11:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7BB10F9D1;
	Thu, 24 Feb 2022 10:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B1910F9CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 10:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645698964; x=1677234964;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5X8OmY1V0FeT2zsioKzzWR8KQhkhF0RTHeji3OozDyU=;
 b=ZJbDJauE3onX0TjXldP8eGKmMKQMLZw23SATeKVhEa/7virvOuPYB/f6
 s8rOX6fQgEcBW83RFyc3yMI0B6/79pLLDOzbjelN61dF4uNRXLu5PlxHx
 chzgSS0ESxfY9iWHVd53aG1Bi28kU4hNsiAQ3V3dGlF6/pVQY1+X+K4oQ
 X4F++2n2GC39V9ZKWK5LzrOoJ3krsHAoGm+bvkH5j807FxxPuM/Hkwv+y
 YMzfyoR/jh9JiNt2VxyxLxqreTz/oWoZLBIggOe/eO4jyOve36XqK8ZK8
 ShGJIWk/yNpJgFZvYIIU3d/Kgi/sDpBsd0JqhV52Z/mPn3g1NdZX+okRx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="251031250"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="251031250"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 02:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="548688565"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 24 Feb 2022 02:36:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 12:35:59 +0200
Date: Thu, 24 Feb 2022 12:35:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Yhdfj3T+VWOumMYZ@intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
 <20220223131315.18016-13-ville.syrjala@linux.intel.com>
 <20220223200022.GC9839@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223200022.GC9839@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 12/13] drm/i915: Use bigjoiner_pipes more
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

On Wed, Feb 23, 2022 at 12:00:28PM -0800, Navare, Manasi wrote:
> On Wed, Feb 23, 2022 at 03:13:14PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Replace the hardcoded 2 pipe assumptions when we're massaging
> > pipe_mode and the pipe_src rect to be suitable for bigjoiner.
> > Instead we can just count the number of pipes in the bitmask.
> > 
> > v2: Introduce intel_bigjoiner_num_pipes()
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++-------
> >  1 file changed, 20 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 9b4013ed3d98..7a09bb33c1eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -368,6 +368,11 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
> >  		crtc->pipe == bigjoiner_master_pipe(crtc_state);
> >  }
> >  
> > +static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
> > +{
> > +	return hweight8(crtc_state->bigjoiner_pipes);
> > +}
> 
> Okay yes makes sense. Although bigjoiner will always be between just 2 pipes so why not hardcode to 2 and
> use the  if (!crtc_state->bigjoiner_pipes) as the check instead of num_pipes < 2.
> When we have a joiner for 4 pipes, in that case also bigjoiner will still be only between 2 pipes.
> So in bigjoiner_pipe mask, it will always only have 2 pipes.

It'll be whatever pipes we have when we have more pipes.

-- 
Ville Syrjälä
Intel
