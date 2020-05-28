Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E38C01E58A9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 09:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C906E3D8;
	Thu, 28 May 2020 07:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7CF6E3D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 07:32:15 +0000 (UTC)
IronPort-SDR: BTCSteOOHO+kpB1tY4+igCFtWc6OdXifL0MHPgJ9hOvNUdruPgBaS1o0txNbRycezE8e4sGtGs
 4dRfl6GdQqyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:32:09 -0700
IronPort-SDR: 1Qr/ddcJUD2Eiu4+Asu2ok+uVbNMigvDEriQ/93bbgCIjtqhKsQ+CNQ7v9XvTHje9v8XF11t4K
 C0HLmKnhW4mw==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="414514797"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:31:57 -0700
Date: Thu, 28 May 2020 10:28:02 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200528072802.GA30109@intel.com>
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
 <20200527205426.GA10731@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527205426.GA10731@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 27, 2020 at 01:54:27PM -0700, Manasi Navare wrote:
> On Wed, May 27, 2020 at 11:00:22PM +0300, Stanislav Lisovskiy wrote:
> > First of all *_needs_link_retraining function should return
> > false is link_train is set to true but not false.
> > 
> > Also if we detect channel eq problem when checking mst status
> > we simply bail out, without setting link_train to false again,
> > which might end up in a situation that we don't do link retraining
> > when needed.
> > 
> > There were some issues, when we had several problems with dp mst
> > and at the same time the log was floode by messages about
> > "channel eq not ok, need retraining" however the actual training
> > seems to be never done.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1768731678a1..9288dc1f8914 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5627,6 +5627,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  			drm_dbg_kms(&i915->drm,
> >  				    "channel EQ not ok, retraining\n");
> >  			need_retrain = true;
> > +			intel_dp->link_trained = false;
> >  		}
> >  
> >  		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > @@ -5654,7 +5655,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> >  {
> >  	u8 link_status[DP_LINK_STATUS_SIZE];
> >  
> > -	if (!intel_dp->link_trained)
> > +	if (intel_dp->link_trained)
> 
> This is not correct. Since link_trained is set when link training is completed as part of a
> complete modeset. If link training is not done, like at hotplug, then in that case we should
> not retrain since the pipe has not been configured for this new hotplug and link training
> has not been done.
>
 
Ok, I was confusing the link training and retraining - assuming those are same procedure.
So we can't retrain until the training has been completed.
Thanks for clarification - will dig further then.

> Retraining is expected to happen only in cases where there is a short pulse or a spurious long pulse
> when link training through modeset is already complete and hence the old logic of returnin a false
> when !intel_dp->link_trained is correct.

Yes, that is the scenario which I was suspecting to be happening in our recent MST failures.
We sometimes get a lot of short pulses requiring rettraining however it doesn't happen in practice.


Stan

> 
> Regards
> Manasi
> 
> >  		return false;
> >  
> >  	/*
> > -- 
> > 2.24.1.485.gad05a3d8e5
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
