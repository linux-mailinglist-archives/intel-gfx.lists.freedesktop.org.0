Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17818165E70
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 14:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C483D6E218;
	Thu, 20 Feb 2020 13:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BB76E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 13:14:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 05:14:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="236238719"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga003.jf.intel.com with ESMTP; 20 Feb 2020 05:14:19 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Feb 2020 13:14:12 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Feb 2020 13:14:12 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Thu, 20 Feb 2020 13:14:12 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v17 3/7] drm/i915: Init obj state in
 intel_atomic_get_old/new_global_obj_state
Thread-Index: AQHV5+bP+3Nwmv1ggEqGt9ibQePzyagkBiCAgAAId4A=
Date: Thu, 20 Feb 2020 13:14:12 +0000
Message-ID: <f770e54f703754728615e4516e583cdc5906f461.camel@intel.com>
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
 <20200220120741.6917-4-stanislav.lisovskiy@intel.com>
 <87tv3ltos4.fsf@intel.com>
In-Reply-To: <87tv3ltos4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <86984839E2F5F8489114E19BF188952E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v17 3/7] drm/i915: Init obj state in
 intel_atomic_get_old/new_global_obj_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-02-20 at 14:40 +0200, Jani Nikula wrote:
> On Thu, 20 Feb 2020, Stanislav Lisovskiy <
> stanislav.lisovskiy@intel.com> wrote:
> > We might be willing to call intel_atomic_get_old_global_obj_state
> > and intel_atomic_get_new_global_obj_state right away, however
> > those are not initializing global obj state as
> > intel_atomic_get_global_obj_state does.
> > Extracted initializing part to separate function and now using this
> > also in intel_atomic_get_old_global_obj_state and
> > intel_atomic_get_new_global_obj_state
> > 
> > v2: - Fixed typo in function call
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 28
> > ++++++++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
> >  2 files changed, 36 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 58b264bc318d..ff57277e8880 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -374,7 +374,33 @@ static unsigned int intel_bw_data_rate(struct
> > drm_i915_private *dev_priv,
> >  	return data_rate;
> >  }
> >  
> > -static struct intel_bw_state *
> > +struct intel_bw_state *
> > +intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > +	struct intel_global_state *bw_state;
> > +
> > +	bw_state = intel_atomic_get_old_global_obj_state(state,
> > &dev_priv->bw_obj);
> > +	if (IS_ERR(bw_state))
> > +		return ERR_CAST(bw_state);
> > +
> > +	return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > +	struct intel_global_state *bw_state;
> > +	bw_state = intel_atomic_get_new_global_obj_state(state,
> > &dev_priv->bw_obj);
> > +
> > +	if (IS_ERR(bw_state))
> > +		return ERR_CAST(bw_state);
> > +
> > +	return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> >  intel_atomic_get_bw_state(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h
> > b/drivers/gpu/drm/i915/display/intel_bw.h
> > index a8aa7624c5aa..ac004d6f4276 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -24,6 +24,15 @@ struct intel_bw_state {
> >  
> >  #define to_intel_bw_state(x) container_of((x), struct
> > intel_bw_state, base)
> >  
> > +struct intel_bw_state *
> > +intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_bw_state(struct intel_atomic_state *state);
> > +
> 
> I'm trying to promote a convention that a module foo_bar.[ch] would
> export functions prefixed foo_bar_. Here, intel_bw_* like below.

I'm fine with that. However most of the functions in this file have
intel_atomic_* prefix, so if I now follow this convention it won't be
consistent with current naming in the file.

Anyway if this is now mandatory, will change it. Just will wait now
first if CI doesn't blow up with this series, as I haven't rebased it
for a while..

Stan

> 
> BR,
> Jani.
> 
> 
> >  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
> >  int intel_bw_init(struct drm_i915_private *dev_priv);
> >  int intel_bw_atomic_check(struct intel_atomic_state *state);
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
