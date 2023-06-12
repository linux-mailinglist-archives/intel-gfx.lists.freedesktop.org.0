Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DC472C538
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 14:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF1D10E233;
	Mon, 12 Jun 2023 12:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E5E10E230
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686574653; x=1718110653;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=IZMHnbkq3L3RvSjEULa+8LI973S8DW7QAtrXo4dLm3I=;
 b=eBhGgBG8PdZdgCKrpkd59LoqGO9VGg59bt+lNXES5JDH+pfp7AZwymea
 xvF3/seZDRGtU6JPeeh10HoDYivXoIHY8s+p+oLRfWFerSyRpzPNoQQG7
 HOBSq6tFKdQ+bpT4GjNN/W+BT5iSTxxsGh361OFrpWXesjHgO5wUAMYao
 0a0oZEcMRUmxvEhIZpjKDuw/CKwpSpB2c2ixYB+/OwjNK0SwuQypLcBsy
 FvhJeLUOibux6VRjm7Yg4SK3DocdhM7zk2gePEDMUP1wSX2jcXPNp9hSa
 7YTR0LshdA7f0ktJxLADc8JQdzkz9HN9Xu1VUUfEXJ73YryklCxCguEgj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="386413144"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="386413144"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 05:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="801013905"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="801013905"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 05:57:31 -0700
Date: Mon, 12 Jun 2023 15:57:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <ZIcWPS0NxS101D8k@ideak-desk>
References: <20230608093218.511280-1-arun.r.murthy@intel.com>
 <ZIcDPqQ9V1qgkLh1@ideak-desk>
 <DM6PR11MB31774C433DD62845A0732F52BA54A@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB31774C433DD62845A0732F52BA54A@DM6PR11MB3177.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 12, 2023 at 02:47:37PM +0300, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Monday, June 12, 2023 5:07 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
> > restart freshly
> >
> > On Thu, Jun 08, 2023 at 03:02:18PM +0530, Arun R Murthy wrote:
> > > At the begining of the aux transfer a check for aux control busy bit
> > > is done. Then as per the spec on aux transfer timeout, need to retry
> > > freshly for 3 times with a delay which is taken care by the control
> > > register.
> > > On each of these 3 trials a check for busy has to be done so as to
> > > start freshly.
> > >
> > > v2: updated the commit message
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 50
> > > +++++++++------------
> > >  1 file changed, 22 insertions(+), 28 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > index 197c6e81db14..25090542dd9f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > @@ -273,30 +273,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > >      * it using the same AUX CH simultaneously
> > >      */
> > >
> > > -   /* Try to wait for any previous AUX channel activity */
> > > -   for (try = 0; try < 3; try++) {
> > > -           status = intel_de_read_notrace(i915, ch_ctl);
> > > -           if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> > > -                   break;
> > > -           msleep(1);
> > > -   }
> > > -   /* just trace the final value */
> > > -   trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > > -
> > > -   if (try == 3) {
> > > -           const u32 status = intel_de_read(i915, ch_ctl);
> > > -
> > > -           if (status != intel_dp->aux_busy_last_status) {
> > > -                   drm_WARN(&i915->drm, 1,
> > > -                            "%s: not started (status 0x%08x)\n",
> > > -                            intel_dp->aux.name, status);
> > > -                   intel_dp->aux_busy_last_status = status;
> > > -           }
> > > -
> > > -           ret = -EBUSY;
> > > -           goto out;
> > > -   }
> > > -
> > >     /* Only 5 data registers! */
> > >     if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
> > >             ret = -E2BIG;
> > > @@ -304,14 +280,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > >     }
> > >
> > >     while ((aux_clock_divider = intel_dp-
> > >get_aux_clock_divider(intel_dp, clock++))) {
> > > -           u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> > > +           /* Must try at least 3 times according to DP spec */
> > > +           for (try = 0; try < 5; try++) {
> > > +                   u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> > >                                                       send_bytes,
> > >                                                       aux_clock_divider);
> > >
> > > -           send_ctl |= aux_send_ctl_flags;
> > > +                   send_ctl |= aux_send_ctl_flags;
> >
> > Why is send_ctl recomputed in each iteration?
> 
> This can be moved outside the loop, since the value doesn't tend to change.
> 
> >
> > > +
> > > +                   /* Try to wait for any previous AUX channel activity
> > */
> > > +                   status = intel_dp_aux_wait_done(intel_dp);
> >
> > How does it help to wait here for the same condition that was already waited
> > for at the end of the loop?
> 
> Here we are checking for busy bit so as to ensure that the previous
> transfer is complete and only then the new transfer is initiated.
> 
> In the latter case, we sent the data and then wait to get the
> acknowledgement(busy/error/timeout).
> 
> Check for busy is to be done before sending the data. Here it was done
> before this loop.  The spec limits the trials for sending data to 3 in
> case of failure and in each of this iteration it has to be started
> freshly. So we need to ensure that the previous transfer is completed
> before sending the new data.

Not sure what you mean by "freshly". One potential problem in the
current code I can see is that if BUSY is still set after
intel_dp_aux_wait_done() returns none of the control register fields
should be changed, so I think at that point the transfer should be
aborted.

Also since a while back intel_dp_aux_wait_done() was changed to poll for
the transfer completion instead of waiting for an interrupt, the
corresponding interrupt should not be enabled either in the control
register.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> >
> > > +                   /* just trace the final value */
> > > +                   trace_i915_reg_rw(false, ch_ctl, status, sizeof(status),
> > true);
> > > +
> > > +                   if (status & DP_AUX_CH_CTL_SEND_BUSY) {
> > > +                           drm_WARN(&i915->drm, 1,
> > > +                                    "%s: not started, previous Tx still in
> > process (status 0x%08x)\n",
> > > +                                    intel_dp->aux.name, status);
> > > +                           intel_dp->aux_busy_last_status = status;
> > > +                           if (try > 3) {
> > > +                                   ret = -EBUSY;
> > > +                                   goto out;
> > > +                           } else
> > > +                                   continue;
> > > +                   }
> > >
> > > -           /* Must try at least 3 times according to DP spec */
> > > -           for (try = 0; try < 5; try++) {
> > >                     /* Load the send data into the aux channel data
> > registers */
> > >                     for (i = 0; i < send_bytes; i += 4)
> > >                             intel_de_write(i915, ch_data[i >> 2], @@ -
> > 321,6 +314,7 @@
> > > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > >                     /* Send the command and wait for it to complete */
> > >                     intel_de_write(i915, ch_ctl, send_ctl);
> > >
> > > +                   /* TODO: if typeC then 4.2ms else 800us. For DG2
> > add 1.5ms for
> > > +both cases */
> > >                     status = intel_dp_aux_wait_done(intel_dp);
> > >
> > >                     /* Clear done status and any errors */
> > > --
> > > 2.25.1
> > >
