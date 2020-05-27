Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD2A1E4FE1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 23:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301D46E0F5;
	Wed, 27 May 2020 21:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440776E0F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 21:12:48 +0000 (UTC)
IronPort-SDR: tDFyOTdKD2i9PaATNlmtdwgWDuz+h9xnl8BPvoe79wJIKTCZYh+7ymwfBzHJJ0HRs83TeSFd0P
 qo1zYh+zmIgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:12:47 -0700
IronPort-SDR: TS0B1kXyxsQZcKfd0AedS7WPuwmZxdNUevyKzTpAg9qSqTHaUoUnLulLWH6+uxu44IMFPSALQT
 cc3IadfOtZbg==
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="442678638"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:12:43 -0700
Date: Thu, 28 May 2020 00:12:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200527211239.GC20870@ideak-desk.fi.intel.com>
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
 <20200527202649.GA20870@ideak-desk.fi.intel.com>
 <20200527204955.GB20870@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527204955.GB20870@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Minor link training logic
 fixes for dp_mst
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 27, 2020 at 11:49:55PM +0300, Imre Deak wrote:
> On Wed, May 27, 2020 at 11:26:49PM +0300, Imre Deak wrote:
> > On Wed, May 27, 2020 at 11:00:22PM +0300, Stanislav Lisovskiy wrote:
> > > First of all *_needs_link_retraining function should return
> > > false is link_train is set to true but not false.
> > > 
> > > Also if we detect channel eq problem when checking mst status
> > > we simply bail out, without setting link_train to false again,
> > > which might end up in a situation that we don't do link retraining
> > > when needed.
> > > 
> > > There were some issues, when we had several problems with dp mst
> > > and at the same time the log was floode by messages about
> > > "channel eq not ok, need retraining" however the actual training
> > > seems to be never done.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 1768731678a1..9288dc1f8914 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5627,6 +5627,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> > >  			drm_dbg_kms(&i915->drm,
> > >  				    "channel EQ not ok, retraining\n");
> > >  			need_retrain = true;
> > > +			intel_dp->link_trained = false;
> > >  		}
> > >  
> > >  		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > > @@ -5654,7 +5655,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> > >  {
> > >  	u8 link_status[DP_LINK_STATUS_SIZE];
> > >  
> > > -	if (!intel_dp->link_trained)
> > > +	if (intel_dp->link_trained)
> > 
> > intel_dp->link_trained is set when we trained the link during a modeset,
> > it doesn't mean that the link status is good, as you seem to interpret
> > it. With this change I don't see how we would retrain the link when this
> > is called from intel_dp_short_pulse(). Could you describe more the
> > failing scenario?
> 
> One reason we wouldn't retrain when needed is that the sink is not seen
> as connected in intel_dp_retrain_link().

But mst is always connected. So maybe intel_dp_needs_link_retrain() does
an early return because intel_dp_get_link_status() or
intel_dp_link_params_valid() fails?

> 
> > 
> > >  		return false;
> > >  
> > >  	/*
> > > -- 
> > > 2.24.1.485.gad05a3d8e5
> > > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
