Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A1815739D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 12:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA596EC14;
	Mon, 10 Feb 2020 11:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961C66EC15
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 11:43:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 03:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,424,1574150400"; d="scan'208";a="233075971"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga003.jf.intel.com with ESMTP; 10 Feb 2020 03:43:48 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 10 Feb 2020 11:43:48 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Feb 2020 11:43:47 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Mon, 10 Feb 2020 11:43:47 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/mst: fix pipe and vblank enable
Thread-Index: AQHV2/50Y7tL1mcXdE2Pjql3ch2ptagUU3UAgAACWoA=
Date: Mon, 10 Feb 2020 11:43:47 +0000
Message-ID: <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
References: <20200205082959.31317-1-jani.nikula@intel.com>
 <87imke1xvt.fsf@intel.com>
In-Reply-To: <87imke1xvt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.163]
Content-ID: <47502BEE9EE3C048A49AFAE14A720E76@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: fix pipe and vblank enable
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-02-10 at 13:32 +0200, Jani Nikula wrote:
> On Wed, 05 Feb 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > Commit 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> > encoders on DDI platforms") pushed pipe and vblank enable to
> > encoders on
> > DDI platforms, however it missed the DP MST encoder. Fix it.
> > 
> > Fixes: 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> > encoders on DDI platforms")
> > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> Thanks for the reviews and testing, pushed to dinq.
> 
> I don't usually cut corners, but I've made an exception and pushed
> this
> without full IGT results.
> 
> It's been 5 days since the patch was posted, the sharded run has
> fallen
> between the cracks, and the queue is currently about three days. IMHO
> it's intolerable for any patch, but especially so for a regression
> fix
> that was posted within hours of the bug report.

Absolutely agree, since we already had a regression, it's pointless
now to wait longer with such a trivial fix. We are anyway in a bad
situation now, checking also some other MST issues and having to apply
this patch manually first in order to get at least this issue ruled
out.

Stan

> 
> BR,
> Jani.
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index b8aee506d595..9cd59141953d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -491,6 +491,12 @@ static void intel_mst_enable_dp(struct
> > intel_encoder *encoder,
> >  	struct intel_dp *intel_dp = &intel_dig_port->dp;
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
> > +
> > +	intel_enable_pipe(pipe_config);
> > +
> > +	intel_crtc_vblank_on(pipe_config);
> > +
> >  	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> >  
> >  	if (intel_de_wait_for_set(dev_priv, intel_dp-
> > >regs.dp_tp_status,
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
