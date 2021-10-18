Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529BB432484
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 19:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C6F6E9FA;
	Mon, 18 Oct 2021 17:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C4A6E9FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 17:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="215231921"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="215231921"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 10:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="573149644"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 18 Oct 2021 10:14:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 20:14:04 +0300
Date: Mon, 18 Oct 2021 20:14:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YW2rXMmeJzrGORxt@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-6-ville.syrjala@linux.intel.com>
 <20211018120634.GA16624@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018120634.GA16624@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Split skl+ plane update into
 noarm+arm pair
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

On Mon, Oct 18, 2021 at 03:06:34PM +0300, Lisovskiy, Stanislav wrote:
> On Mon, Oct 18, 2021 at 02:50:26PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Chop skl_program_plane() into two halves. Fist half becomes
> > the _noarm() variant, second part the _arm() variant.
> > 
> > Fortunately I have already previously grouped the register
> > writes into roughtly the correct order, so the split looks
> > surprisingly clean.
> > 
> > A few notable oddities I did not realize were self arming
> > are AUX_DIST and COLOR_CTL.
> > 
> > i915_update_info doesn't look too terrible on my cfl running
> > kms_atomic_transition --r plane-all-transition --extended:
> > w/o patch                           w/ patch
> > Updates: 2178                       Updates: 2018
> >        |                                   |
> >    1us |                               1us |
> >        |                                   |
> >    4us |                               4us |*****
> >        |*********                          |**********
> >   16us |**********                    16us |*******
> >        |***                                |
> >   66us |                              66us |
> >        |                                   |
> >  262us |                             262us |
> >        |                                   |
> >    1ms |                               1ms |
> >        |                                   |
> >    4ms |                               4ms |
> >        |                                   |
> >   17ms |                              17ms |
> >        |                                   |
> > Min update: 8332ns                  Min update: 6164ns
> > Max update: 48758ns                 Max update: 31808ns
> > Average update: 19959ns             Average update: 13159ns
> > Overruns > 100us: 0                 Overruns > 100us: 0
> > 
> > And with lockdep enabled:
> > w/o patch                           w/ patch
> > Updates: 2177			    Updates: 2172
> >        |			    	   |
> >    1us |			       1us |
> >        |			    	   |
> >    4us |			       4us |
> >        |*******			    	   |*********
> >   16us |**********		      16us |**********
> >        |*******			    	   |*
> >   66us |			      66us |
> >        |			    	   |
> >  262us |			     262us |
> >        |			    	   |
> >    1ms |			       1ms |
> >        |			    	   |
> >    4ms |			       4ms |
> >        |			    	   |
> >   17ms |			      17ms |
> >        |			    	   |
> > Min update: 12645ns		    Min update: 9980ns
> > Max update: 50153ns		    Max update: 33533ns
> > Average update: 25337ns		    Average update: 18245ns
> > Overruns > 250us: 0		    Overruns > 250us: 0
> > 
> > TODO: On icl+ everything seems to be armed by PLANE_SURF, so we
> >       can optimize this even further on modern platforms. But I
> >       think there's a bit of refactoring to be done first to
> >       figure out the best way to go about it (eg. just reusing
> >       the current skl+ functions, or doing a lower level split).
> > 
> > TODO: Split scaler programming as well, but IIRC the scaler
> >       has some oddball double buffering behaviour on some
> >       platforms, so needs proper reverse engineering
> > 
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Should I use that one as a base for further splitting, i.e for DG2?
> Which refactoring has to be done first, as I understand should be
> pretty safe to leave only PLANE_SURF update in arm section, and 
> of course scaler is a different thing.

I'm not really sure which way we should do the skl+ vs. icl+ split.

Various ideas I've had:
- Definitly pull all the icl+ specific things out from the skl+
  functions and stuff them into icl_plane_update_noarm()
- After that just call the remaining skl_plane_update_noarm()+arm() 
  back to back from icl_update_noarm() maybe? I don't like this
  idea much actually.
- Maybe instead pull some sequences of register writes into small
  helpers (eg. colorkey registers could be one). But dunno if there
  are other clear groups to make this super useful.
- Or perhaps just pull most fiddly register value calculations 
  (aux_dist,ckey+alpha things,maybe others) into small helpers
  to avoid duplicating themm but otherwise fully duplicate all
  the actual register writes?

The sweet spot is probably some combination of those.

I was also thinking of doing an overhaul of the register
defines to use REG_BI() & co. That might help with approaches
that involves any amount of duplication.

-- 
Ville Syrjälä
Intel
