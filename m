Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F4B74AE25
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jul 2023 11:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DD210E02F;
	Fri,  7 Jul 2023 09:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C7710E547
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jul 2023 09:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688723638; x=1720259638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EgW36PkeUHF4dP9vHGJDSrz4DH7aKHWZb066uPnjI7s=;
 b=e2nsptehOZPFGn/6vkyaNH5qjJ51HT7593OF6azwArtUM0QLNWZiXu3w
 QQb//5JHqIQl9eF1zteCLIFbZ9z15NRszsxsklWJ9wqKQRCZL5EzSUryh
 a09rpkaIqUf/oW11Q5Y5fDA4zjzmkdVjtZix1Jp0zMrIT6hH4WIm3r4kx
 9ZGCxx/yGjHaE+Dw5mqMeaAbTC2sxN5i/d+VjPYSTxjEvGXofMP4Y3+qI
 aVb0fsJ/kIPl5krX2rNZrVtMNHi3WKWXSx/qRXGeEBmEA63smrej/AiPO
 rodgcOL8zS0v/LVqTIJFBr0esKGNp6YMzL44wqmXrjf0e7bOeIZiveyP7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="361322101"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="361322101"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 02:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="755121422"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="755121422"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 02:53:49 -0700
Date: Fri, 7 Jul 2023 12:53:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZKfgpqNr2fb8TW5u@intel.com>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
 <ZKWNI2NEboNZAd+K@ideak-desk> <ZKZ6NaLVTk0RYwhm@intel.com>
 <ZKZ/ng6qj5cTrqaf@ideak-desk> <ZKaYMXeALQnEvYie@intel.com>
 <ZKcBtYnyHAvSP5xM@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZKcBtYnyHAvSP5xM@intel.com>
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

On Thu, Jul 06, 2023 at 09:02:29PM +0300, Ville Syrjälä wrote:
> On Thu, Jul 06, 2023 at 01:32:17PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Jul 06, 2023 at 11:47:26AM +0300, Imre Deak wrote:
> > > On Thu, Jul 06, 2023 at 11:24:21AM +0300, Lisovskiy, Stanislav wrote:
> > > > On Wed, Jul 05, 2023 at 06:32:51PM +0300, Imre Deak wrote:
> > > > > On Thu, May 25, 2023 at 01:10:36PM +0300, Stanislav Lisovskiy wrote:
> > > > > > According to BSpec 49190, when enabling crtcs, we first setup
> > > > > > slave and then master crtc, however for disabling it should go
> > > > > > vice versa, i.e first master, then slave, however current code
> > > > > > does disabling in a same way as enabling. Fix this, by skipping
> > > > > > non-master crtcs, instead of non-slaves.
> > > > > > 
> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index 0490c6412ab5..68958ba0ef49 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> > > > > >  		 */
> > > > > >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > > > > >  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > > > > > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > > > > > +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
> > > > > 
> > > > > I don't see what does this fix. The sequence is correct at the moment
> > > > > and this change would break it, leaving the encoder PLL enabled
> > > > > incorrectly when the encoder->post_pll_disable() hook is called. Hence
> > > > > it's NAK from side.
> > > > 
> > > > Well, as I pointed out the BSpec 49190 instructs us to disable master
> > > > first, then slave. Current code skips all non-slaves in first cycle,
> > > > i.e it disables first slaves and then masters. Which is _wrong_.
> > > 
> > > This is correct at the moment, followed in the encoder's disable hook
> > > which is only assigned to the master CRTC.
> > 
> > Yep, I see now why it was implemented this way.
> > We basically handle everything in a single hook, taking care of the correct
> > sequence. As I understood otherwise we are going to have problems with the pll
> > subsystem, i.e we can't disable pll for master before the slaves(basically means
> > our pll subsystem contradicts what the crtc/pipe/encoder sequence requires).
> > 
> > I still think this is bery counterintuitive implementation, i.e when there is a single
> > hook for master taking care of everything, while slaves are just noop. 
> > This makes the whole thing very prone for screwing things up.
> > Ideally we should still have fully functional hooks for all slaves. 
> > If the pll stuff requires special treatment, that probably should be dealt somehow
> > separately(don't have any solution for that yet), but definitely we shouldn't live
> > further like that. Things might get even more complicated in future.
> 
> IMO what we should aim for is to call the high level crtc hooks only for
> the master crtc (ie. essentially the transcoder), and then iterate through
> the pipes inside the hooks at the approptiate points. To do that
> cleanly we want to split the code along the pipe-transcoder boundary
> as much as possible.

Problem is that we are still iterating slave crtcs in other places, just
as regular pipes, which can create some additional mess.
If we choose this approach then, it would be nice not to even try treating
slave crtcs like regular pipe in places like skl_modeset_disables/enables.
We should probably just skip them if we detect that they are bigjoiner slaves.
So we go through only regular or joiner master pipes there.
And all the joiner enable/disable logic would be then done in correspondent master
crtc enable/disable hook.
Otherwise we are at risk of messing things up. Also we will then have to use all
those weird checks, all over the place.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
