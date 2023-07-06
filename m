Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A6F74A38A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 20:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC2110E08F;
	Thu,  6 Jul 2023 18:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8A410E08F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 18:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688666578; x=1720202578;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t2fjBxCep7hv/aOo2kmBs8itbBhDjR5DhKu9gsuL0qw=;
 b=HQ9IWUdWS8LyN3iajb0/wBxq062h3Xxle4WgN7JqcBeWo4MnKXHwlNHQ
 TmKLo3ygVjcn5s2Zi2po55zTYlHrVMPSnVI2M+9WSfX6ebz8avF6oqPYs
 1aI9lWM3iN98xmRkTDbuUBdZmzzxYwcmo1k8YFs/RSdX+LwD5NHR8YJwZ
 A4C2d9EWIKHhHWou0yvH9BVy+LlSmvoV+1QxpBynLBCU5o2/8XSq+h/oG
 ShIiJDzF0is8bwSnJ5SbYQTU65n9zQAuxmTUBC4WR40mZafd5nWnlOHdO
 ekugVORejUkuOqkDrcDQDbAN8u9gF60MbLYdqznX0d5dVoj774H68VvvP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="343264789"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="343264789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 11:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="864203233"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="864203233"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 06 Jul 2023 11:02:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Jul 2023 21:02:29 +0300
Date: Thu, 6 Jul 2023 21:02:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZKcBtYnyHAvSP5xM@intel.com>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
 <ZKWNI2NEboNZAd+K@ideak-desk> <ZKZ6NaLVTk0RYwhm@intel.com>
 <ZKZ/ng6qj5cTrqaf@ideak-desk> <ZKaYMXeALQnEvYie@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZKaYMXeALQnEvYie@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the disabling sequence for
 Bigjoiner
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 06, 2023 at 01:32:17PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Jul 06, 2023 at 11:47:26AM +0300, Imre Deak wrote:
> > On Thu, Jul 06, 2023 at 11:24:21AM +0300, Lisovskiy, Stanislav wrote:
> > > On Wed, Jul 05, 2023 at 06:32:51PM +0300, Imre Deak wrote:
> > > > On Thu, May 25, 2023 at 01:10:36PM +0300, Stanislav Lisovskiy wrote:
> > > > > According to BSpec 49190, when enabling crtcs, we first setup
> > > > > slave and then master crtc, however for disabling it should go
> > > > > vice versa, i.e first master, then slave, however current code
> > > > > does disabling in a same way as enabling. Fix this, by skipping
> > > > > non-master crtcs, instead of non-slaves.
> > > > > 
> > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 0490c6412ab5..68958ba0ef49 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> > > > >  		 */
> > > > >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > > > >  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > > > > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > > > > +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
> > > > 
> > > > I don't see what does this fix. The sequence is correct at the moment
> > > > and this change would break it, leaving the encoder PLL enabled
> > > > incorrectly when the encoder->post_pll_disable() hook is called. Hence
> > > > it's NAK from side.
> > > 
> > > Well, as I pointed out the BSpec 49190 instructs us to disable master
> > > first, then slave. Current code skips all non-slaves in first cycle,
> > > i.e it disables first slaves and then masters. Which is _wrong_.
> > 
> > This is correct at the moment, followed in the encoder's disable hook
> > which is only assigned to the master CRTC.
> 
> Yep, I see now why it was implemented this way.
> We basically handle everything in a single hook, taking care of the correct
> sequence. As I understood otherwise we are going to have problems with the pll
> subsystem, i.e we can't disable pll for master before the slaves(basically means
> our pll subsystem contradicts what the crtc/pipe/encoder sequence requires).
> 
> I still think this is bery counterintuitive implementation, i.e when there is a single
> hook for master taking care of everything, while slaves are just noop. 
> This makes the whole thing very prone for screwing things up.
> Ideally we should still have fully functional hooks for all slaves. 
> If the pll stuff requires special treatment, that probably should be dealt somehow
> separately(don't have any solution for that yet), but definitely we shouldn't live
> further like that. Things might get even more complicated in future.

IMO what we should aim for is to call the high level crtc hooks only for
the master crtc (ie. essentially the transcoder), and then iterate through
the pipes inside the hooks at the approptiate points. To do that
cleanly we want to split the code along the pipe-transcoder boundary
as much as possible.

-- 
Ville Syrjälä
Intel
