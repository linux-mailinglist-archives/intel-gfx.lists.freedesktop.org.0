Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B23B54C2CD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 09:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5AE10E135;
	Wed, 15 Jun 2022 07:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BDF10E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 07:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655279014; x=1686815014;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8TEWxRTFAuuu4Hk93oYjjqoLKFx+rrIKv8L1njiNbsA=;
 b=TMvMv+GI8Mgm95ITGqWz55uul1uyV5wUjxOgcoe1050PJCUAHD9N3PFT
 NfHhxnUE1O9+DcLXWDXFQ0bInX1IjMHM/znK2ItBqhLzqt//K/y7okMg3
 hK/+2wMldiu/p7EW7mlMVXmXOvOTvMwv6/ECntmf/pqweW5iOnwEsazKe
 bp0stvPcYDgvHK9Y3nWZbtwgM4aQ4/Fm7BFQ4n/n37d7rk5g7j3U4TlTt
 JG60oiQ4LbNsyuixkTzK1XQJ7NCibqwmqec9KElyHSN4S/aWsipPQ5BDs
 xF0AWElVFRKFjpfLGd4trX+HR/jj1OxyNj1OKb9jtDeHBmb+yR6sy+clh g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="365219532"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="365219532"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 00:43:29 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640852760"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 00:43:27 -0700
Date: Wed, 15 Jun 2022 10:43:41 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <20220615074341.GA19772@intel.com>
References: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
 <20220614122257.10925-2-stanislav.lisovskiy@intel.com>
 <bfcd24764e38db1fd13a1315106cb71dac0d7d01.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfcd24764e38db1fd13a1315106cb71dac0d7d01.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Do not enable PSR2/selective
 fetch if there are no planes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 14, 2022 at 03:55:04PM +0300, Hogander, Jouni wrote:
> On Tue, 2022-06-14 at 15:22 +0300, Stanislav Lisovskiy wrote:
> > We seem to enable PSR2 and selective fetch even if there are no
> > active
> > planes. That seems to causes FIFO underruns at least for ADLP.
> > Those are gone if we don't do that. Just adding simple check
> > in intel_psr2_sel_fetch_config_valid seems to do the trick.
> 
> We are already disabling PSR intel_psr_pre_plane_update if
> active_planes is 0.
> 
> We are also checking active_planes in _intel_psr_post_plane_update and
> not enabling PSR if it's 0.
> 
> So I'm now wondering what sequence this patch is actually changing?
> I.e. where PSR is currently enabled/not disabled if active_planes == 0?

Good question! Apparently we still do it, because without this change
we get FIFO underruns, while with that one we don't.
I have suspicion that this happens during modeset, however you are right
we need to know for sure.
I will get back here and post the exact call trace.
One thing I can say for sure that we do it somewhere, otherwise adding
this wouldn't have any effect.

Stan

> 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 7d61c55184e5..03add69cfdca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -747,6 +747,12 @@ static bool
> > intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >               return false;
> >       }
> >
> > +     if (hweight32(crtc_state->active_planes) == 0) {
> > +             drm_dbg_kms(&dev_priv->drm,
> > +                         "PSR2 sel fetch not enabled, no
> > active_planes\n");
> > +             return false;
> > +     }
> > +
> >       /* Wa_14010254185 Wa_14010103792 */
> >       if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> >               drm_dbg_kms(&dev_priv->drm,
> 
