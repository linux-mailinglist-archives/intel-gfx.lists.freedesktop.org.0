Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D70414AE6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 15:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C663A89DA8;
	Wed, 22 Sep 2021 13:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE9E89DA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 13:41:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210830134"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="210830134"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 06:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="613513882"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 22 Sep 2021 06:41:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Sep 2021 16:41:45 +0300
Date: Wed, 22 Sep 2021 16:41:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YUsymVb6uwV84Hxy@intel.com>
References: <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
 <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
 <YUSSbMQKuQxQ7Ug9@intel.com>
 <c347299ba2b7bdcb2de79ee60569977058aeb51a.camel@intel.com>
 <YUTVDPKmGezFAt+d@intel.com>
 <2e523c6b149091fb9418bbfd44bde129fb20b7f0.camel@intel.com>
 <YUnfvMLGDbhopmEj@intel.com>
 <61306afdb2d733d342336c3eb57df558c497afe4.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <61306afdb2d733d342336c3eb57df558c497afe4.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

On Tue, Sep 21, 2021 at 10:37:53PM +0000, Souza, Jose wrote:
> On Tue, 2021-09-21 at 16:35 +0300, Ville Syrjälä wrote:
> > On Fri, Sep 17, 2021 at 09:33:59PM +0000, Souza, Jose wrote:
> > > On Fri, 2021-09-17 at 20:49 +0300, Ville Syrjälä wrote:
> > > > On Fri, Sep 17, 2021 at 05:02:21PM +0000, Souza, Jose wrote:
> > > > > On Fri, 2021-09-17 at 16:04 +0300, Ville Syrjälä wrote:
> > > > > > On Thu, Sep 16, 2021 at 05:09:08PM +0000, Souza, Jose wrote:
> > > > > > > On Thu, 2021-09-16 at 16:17 +0300, Ville Syrjälä wrote:
> > > > > > > > On Wed, Sep 15, 2021 at 06:18:35PM +0000, Souza, Jose wrote:
> > > > > > > > > On Wed, 2021-09-15 at 17:58 +0300, Ville Syrjälä wrote:
> > > > > > > > > > On Tue, Sep 14, 2021 at 02:25:05PM -0700, José Roberto de Souza wrote:
> > > > > > > > > > > Not sure why but when moving the cursor fast it causes some artifacts
> > > > > > > > > > > of the cursor to be left in the cursor path, adding some pixels above
> > > > > > > > > > > the cursor to the damaged area fixes the issue, so leaving this as a
> > > > > > > > > > > workaround until proper fix is found.
> > > > > > > > > > 
> > > > > > > > > > Have you tried warping the cursor clear across the screen while
> > > > > > > > > > a partial update is already pending? I think it will go badly.
> > > > > > > > > 
> > > > > > > > > You mean move the cursor for example from 0x0 to 500x500 in one frame?
> > > > > > > > > It will mark as damaged the previous area and the new one.
> > > > > > > > 
> > > > > > > > Legacy cursor updates bypass all that stuff so you're not going to
> > > > > > > > updating the sel fetch area for the other planes.
> > > > > > > > 
> > > > > > > > > 
> > > > > > > > > > 
> > > > > > > > > > In fact I'm thinking the mailbox style legacy cursor updates are just
> > > > > > > > > > fundementally incompatible with partial updates since the cursor
> > > > > > > > > > can move outside of the already committed update region any time.
> > > > > > > > > > Ie. I suspect while the cursor is visible we simply can't do partial
> > > > > > > > > > updates.
> > > > > > > > > 
> > > > > > > > > Probably I did not understand what you want to say, but each cursor update will be in one frame, updating the necessary area.
> > > > > > > > 
> > > > > > > > The legacy cursor uses mailbox updates so there is no 1:1 relationship
> > > > > > > > between actual scanned out frames and cursor ioctl calls. You can
> > > > > > > > have umpteen thousand cursor updates per frame.
> > > > > > > 
> > > > > > > Not if intel_legacy_cursor_update() is changed to go to the slow path and do one atomic commit for each move.
> > > > > > > https://patchwork.freedesktop.org/patch/453192/?series=94522&rev=1
> > > > > > 
> > > > > > That's not going to fly. The whole reason for the legacy cursor thing is
> > > > > > that X likes to do thousands of cursor updates per frame.
> > > > > 
> > > > > From user experience perspective there is no issues in converting to atomic commit, those 3 videos that I shared with you have this conversion. 
> > > > 
> > > > I don't know what you've tested but the legacy cursor fastpath is very
> > > > much needed. We've have numerous bug reports whenever it has
> > > > accidentally regressed, and I've witnessed the carnage myself as well.
> > > > Hmm, I guess you didn't actually disable it fully. To do that you
> > > > would have to clear state->legacy_cursor_update explicitly somewhere.
> > > 
> > > Thanks for pointing out state->legacy_cursor_update and yes setting it to false makes causes the cursor to lag.
> > > 
> > > > 
> > > > Either way I just retested the earlier patches just with the nonblocking
> > > > commit for dirtyfb hacked in, and I left the cursor code using the
> > > > half fast path you made it take. The user experience is still as bad
> > > > as before. Just moving the mouse around makes glxgears stutter, and the
> > > > reported fps drops to ~400 from that alone. And doing anything more
> > > > involved like moving windows around is still a total fail.
> > > 
> > > I have tested it in a TGL and ADL-P, will try to get some gen9 to try it.
> > > Other than that I don't know what could this big difference between our setups.
> > > I'm using Mate like you with 'enable software compositing window manager' disabled.
> > 
> > Not sure.
> > 
> > BTW another thing I noticed is that the sel_fetch coordinate calculation
> > code seems super confused:
> > - it seems to do operations between coordinates that don't even live in
> >   the same coordinate space (eg. drm_rect_intersect(&clip, &src) where
> >   clip is the straight userspace damage coordinates but src is
> >   PLANE_SURF relative plane source coordinates)
> 
> On the first for_each_oldnew_intel_plane_in_state() it calculates the plane damaged area and then in the last 3 lines converts it to pipe coordinate
> space.
> The second for_each_oldnew_intel_plane_in_state() takes the pipe coordinate space damaged area and sets new_plane_state->psr2_sel_fetch_area with the
> plane coordinate space damaged area.

There are many many coordinate spaces we use:
- relative to user fb origin: userspace provided dirtyfb and plane src
  coordinates (drm_plane_state_src())
- relative to start of gem obj: used temporarily during some calculations
- relative to start of vma: used temporarily during some calculations
  (also actually what intel_plane_fence_y_offset() gives you)
- relative to PLANE_SURF: plane_state->uapi.src
- relative to user crtc origin: drm_plane_state_dest()
- relative to pipe origin: plane_state->uapi.dst

The sel_fetch code is now doing operations between coordinates from
different coordinate spaces AFAICS.

My gut feeling is that we want to do these calculations alongside the
rest of the plane coordinate calcs in the plane code. That way we can
just work forwards from userspace coords all the way to PLANE_SURF
relative coords for both cases. Trying to do these sel fetch
calculations after the fact means we're going to have to work both
forwards and backwards at the same time, which doesn't sounds all that
nice to me. But I've not spent a huge amount of time thinking about
this so not 100% sure.

What we need is basically something like kms_big_fb but with sel fetch
in mind. That could test all the interesting cases where we either use
remapping or just hit the standard panning cases where PLANE_SURF does 
not match the fb origin.

> 
> > - no checks for plane scaling that I can see but it still assumes it can 
> >   just assume a 1:1 relationship between src and dst coordinates
> 
> My understanding is that intel_atomic_plane_check_clipping() will adjust src to match dst width and height.

To do partial scaled updates correctly we'd need to have sub-pixel
coordinates for the src or else you'll get a visible seam when the
update region doesn't exactly terminate on a pixel boundary. And
actually even if it did land on a pixel boundary you'd still get
the seam unless we could instruct the hardware to filter across
the edge. Don't think we can even do that with the currect hardware.

> 
> > - bigjoiner also affects the coordinate spaces, so that part too is probably
> >   busted
> > 
> 
> I don't think there is a commercial available eDP panel that would require bigjoiner.
> We could definitely rule PSR2 out if such case shows up by adding a check in intel_psr2_sel_fetch_config_valid().
> 

Yeah, if bigjoiner turns out to complicate the calculations to much we
could just reject the combo. Not entirely sure it's a significant
complication though.

-- 
Ville Syrjälä
Intel
