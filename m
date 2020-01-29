Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D8D14C7F7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 10:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB656F4B7;
	Wed, 29 Jan 2020 09:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7736F4B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 09:23:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 01:23:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="427910188"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2020 01:22:59 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jan 2020 09:22:58 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 29 Jan 2020 09:22:58 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 29 Jan 2020 09:22:58 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v16 6/7] drm/i915: Protect intel_dbuf_slices_update with
 mutex
Thread-Index: AQHV0pMaPldUaV0C6kiHz3v3R02bSKgAwXSAgACjzwA=
Date: Wed, 29 Jan 2020 09:22:58 +0000
Message-ID: <7e76b2f42a8eb45a2f32e83563bf9b250034951b.camel@intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
 <20200124084456.2961-7-stanislav.lisovskiy@intel.com>
 <20200128233311.GH22783@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200128233311.GH22783@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <1E7138C999C28A4EAEB37B385830D423@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v16 6/7] drm/i915: Protect
 intel_dbuf_slices_update with mutex
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-01-28 at 15:33 -0800, Matt Roper wrote:
> On Fri, Jan 24, 2020 at 10:44:55AM +0200, Stanislav Lisovskiy wrote:
> > Now using power_domain mutex to protect from race condition, which
> > can occur because intel_dbuf_slices_update might be running in
> > parallel to gen9_dc_off_power_well_enable being called from
> > intel_dp_detect for instance, which causes assertion triggered by
> > race condition, as gen9_assert_dbuf_enabled might preempt this
> > when registers were already updated, while dev_priv was not.
> 
> I may be overlooking something, but I think your next patch already
> takes care of this by ensuring we only do dbuf updates during
> modesets.
> We already had POWER_DOMAIN_MODESET in our various
> DC_OFF_POWER_DOMAINS
> definitions which would ensure that the "DC off" power well is
> enabled
> (and DC states themselves are disabled) for the entire duration of
> the
> modeset process.

I probably should have clarified this better in commit message.
With previous patch series, I ran into assertion which turned out to be
a consequence of two bugs:
One problem was that it tried to update dbuf slices to 0 in a non-
modeset commit, which didn't have any crtcs in a state, which was wrong
and to prevent this next patch is now checking that we are actually are
doing a modeset, otherwise we will be ocassionally updating dbuf mask
to 0, which should be done only by icl_dbuf_disable according to BSpec.
Also if the commit doesn't have any crtcs in a state, we should not
update a global state in dev priv, because access is not serialized 
according to Ville's idea - in order to read global state we need
to have at least one crtc grabbed, in order to write we need to grab
all crtcs.

Second problem was that there was a race condition in the driver which
this patch takes care of: after device was suspend/resumed, we had a
noop commit which was updating dbuf slices to 0 due to previous
problem,
it was calling icl_dbuf_slices_update function, which was first
writing that value to DBUF_CTL regs and then updating the dev_priv.
However, during that time we could an intel_dp_detect function called
in parallel based hpd irq, which was in turn enabling dc_off power well
and then triggering assertion in gen9_assert_dbuf_enabled, which is 
now checking if dev_priv slices mask and the actual hardware match,
however because icl_dbuf_slices_update was preempted in the middle,
the state didn't match. I reproduced and confirmed this by adding
artifical delay to this update and additional traces.
The most trivial solution to this was as per discussion with Ville was
to use power domains lock here, because then we will be protected
against competing with dc_off power well enabling, because it also 
locks that mutex first.

Previously we didn't hit this issue, because icl_dbuf_slices_update
was simply updating the registers themself and there was no
correspondent global state in dev_priv, also we didn't ever update
slices configuration during a modeset.

Stan

> 
> If we need this, I'm not sure whether it's a good idea to use
> power_domains->lock rather than a new, dedicated lock.  Anything that
> touches power domains in any manner grabs this lock, even though we
> only
> really care about it for stopping races with the specific "DC off"
> power
> well.
> 
> Also, if we bisect to the point right before these last two patches,
> don't we have a problem since there's a point in the git history
> where
> we potentially face a race?
> 
> 
> Matt
> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 12
> > ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 96b38252578b..99ddc21e004c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -4404,12 +4404,22 @@ void icl_dbuf_slices_update(struct
> > drm_i915_private *dev_priv,
> >  {
> >  	int i;
> >  	int max_slices = INTEL_INFO(dev_priv)-
> > >num_supported_dbuf_slices;
> > +	struct i915_power_domains *power_domains = &dev_priv-
> > >power_domains;
> >  
> >  	WARN(hweight8(req_slices) > max_slices,
> >  	     "Invalid number of dbuf slices requested\n");
> >  
> >  	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
> >  
> > +	/*
> > +	 * Might be running this in parallel to
> > gen9_dc_off_power_well_enable
> > +	 * being called from intel_dp_detect for instance,
> > +	 * which causes assertion triggered by race condition,
> > +	 * as gen9_assert_dbuf_enabled might preempt this when
> > registers
> > +	 * were already updated, while dev_priv was not.
> > +	 */
> > +	mutex_lock(&power_domains->lock);
> > +
> >  	for (i = 0; i < max_slices; i++) {
> >  		intel_dbuf_slice_set(dev_priv,
> >  				     _DBUF_CTL_S(i),
> > @@ -4417,6 +4427,8 @@ void icl_dbuf_slices_update(struct
> > drm_i915_private *dev_priv,
> >  	}
> >  
> >  	dev_priv->enabled_dbuf_slices_mask = req_slices;
> > +
> > +	mutex_unlock(&power_domains->lock);
> >  }
> >  
> >  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> > -- 
> > 2.24.1.485.gad05a3d8e5
> > 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
