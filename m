Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DF74D0910
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 21:56:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1604010E1C7;
	Mon,  7 Mar 2022 20:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EB310E1CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 20:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646686572;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r5GbRFjK8PxbhIiigUxvLIa6DN5JBShbQSrOkJuZQKQ=;
 b=ZgHgiePWFbjsQ8PECcyl5L6Brbzo7siV2UIGv4P2xP09r6+Pi3ms8PyR6F1n1jK1BzcsJ7
 KNApvFaSKBVh+RcNF1vmD6R3sNOZ+j+0pAoCqanS0b479H4Hx/ZPLyzN4n08c6KrOj4B60
 JxHZiTO02Zl46Y/Zd9LuSJ9cFdB1hzU=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-320-vQhQ8OECPHaiJAFXh3tPRg-1; Mon, 07 Mar 2022 15:56:08 -0500
X-MC-Unique: vQhQ8OECPHaiJAFXh3tPRg-1
Received: by mail-qt1-f198.google.com with SMTP id
 f13-20020ac8014d000000b002ddae786fb0so13577477qtg.19
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Mar 2022 12:56:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=r5GbRFjK8PxbhIiigUxvLIa6DN5JBShbQSrOkJuZQKQ=;
 b=caQ55Qh/25t8SxfnXsSpBQQM3XPKjt9nCbtVE76m5FGtDdqW6K/Nh4jp5WE0LCGMYf
 7thwYlqS7Hs5dkj08tEhiXp76oqONLRED/8Emr0lS1xLBYQ80Y4bWJ606C2sY6PGzsTS
 rO5hgeTdw6eebILZgyuVM5a4XDyS+LxOhFR5P8tUI5dup5HNnHcxxMg6SsXwdcg4TDaI
 fnPZv+fRjU9plKJoFYL0VedRE/hU0IIopchkapQlb2KBYXwe9peCJhLVhNoueJtumO4f
 Tc5X+NjdcT0UwnUmiT/prtBYYcffcoE5tYIuEaf1XMD8VkgJL9W4g5S1l2Y5rLmXxwBe
 XUow==
X-Gm-Message-State: AOAM533Bar6LyYscTtqMXwiLFhsHMxFF+WdYs4fC7YRMIfqYobgW+6DF
 C08BqCYmtMMgfltbSIC1Xi3cAimUJvW+f5d4oOStiH0Al4VzLXklF6c5fyAUMXsIf8HBDdVIwzh
 tR7Bybkrv0AuYZbsWAJSlvxaDdHcg
X-Received: by 2002:a37:270c:0:b0:5f0:832f:6d81 with SMTP id
 n12-20020a37270c000000b005f0832f6d81mr8317277qkn.682.1646686568143; 
 Mon, 07 Mar 2022 12:56:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyzXn3Ko2nHGO5Sy2Fwnagx5c1h0JuhOCdoENIwoITOeSWp/m7qlBQ+eX/jkVPiP2EJNUpRjw==
X-Received: by 2002:a37:270c:0:b0:5f0:832f:6d81 with SMTP id
 n12-20020a37270c000000b005f0832f6d81mr8317256qkn.682.1646686567828; 
 Mon, 07 Mar 2022 12:56:07 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 m18-20020a05622a119200b002e062f73c6asm3962869qtk.3.2022.03.07.12.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 12:56:07 -0800 (PST)
Message-ID: <a359dc3bf20be0e70afae187a74d6c2c2b8ec5d9.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
Date: Mon, 07 Mar 2022 15:56:05 -0500
In-Reply-To: <YiZvu30c4WXRS7gK@intel.com>
References: <20220307193657.2468022-1-jani.nikula@intel.com>
 <YiZvu30c4WXRS7gK@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: re-enable link training
 failure fallback for DP MST
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2022-03-07 at 22:48 +0200, Ville Syrjälä wrote:
> On Mon, Mar 07, 2022 at 09:36:57PM +0200, Jani Nikula wrote:
> > Commit 80a8cecf62a5 ("drm/i915/dp_mst: Disable link training fallback on
> > MST links") disabled link training failure fallback for DP MST due to
> > the MST manager using the DPCD directly, and generally being ignorant
> > about the possibility of downgrading link parameters. See the commit for
> > further details.
> > 
> > Since then, the max_lane_count and max_link_rate members have been added
> > to struct drm_dp_mst_topology_mgr in commit 98025a62cb00 ("drm/dp_mst:
> > Use Extended Base Receiver Capability DPCD space") and refined in
> > follow-up work.
> > 
> > The members perhaps aren't intended for changing the parameters during
> > the lifetime of the manager, as they're supposed to be passed to
> > drm_dp_mst_topology_mgr_init(). However, the members are only ever used
> > in drm_dp_mst_topology_mgr_set_mst(), and there seems to be nothing to
> > prevent us from adjusting them *before* enabling MST. The wouldn't have
> > an effect if modified while MST is enabled. This is not necessarily
> > pretty, though.
> > 
> > Cc: Nikola Cornij <nikola.cornij@amd.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > ---
> > 
> > This is *untested*. I don't see why it wouldn't work, though...
> 
> I don't think we have the required stuff to force a modeset on all
> the streams when the link params change. And the bad link status
> property + uevent stuff is only hooked up to the SST connector
> AFAICS.
> 
> The other major thing missing is a way to reduce the bpp/etc. of
> all the streams to make more room on the link if we have
> insufficient bandwidth. And the more we start to reduce the bw
> the more we're going to hit that and fail the modesets. We already
> ran into regressions due to this when I tried to enable deep color
> for MST.

Yeah, this is why I have been trying to move stuff into the atomic state
because it will make stuff like this a LOT easier. And to be honest, I think
pretty much all of the bandwidth related info in the MST mgr that isn't in
atomic is a hack at this point (I'm definitely not accepting adding any more
props into mgr now). We'll probably also want to consider maybe having a more
complicated link_status API for MST (I was originally going to use the
link_status prop we already have, but I've been realizing that might cause a
lot of problems when initially introducing it since fixing MST link status
errors will likely require disabling all sinks on the link - which userspace
won't understand).

Unfortunately now that I'm back to working on that, I'm stuck on trying to
wrap my head around adjusting amdgpu for these changes <<. I have a WIP branch
with other drivers adjusted if anyone is interested in looking:

https://gitlab.freedesktop.org/lyudess/linux/-/commits/wip/mst-atomic-only-v1

Haven't actually tried it yet on any hardware though

> 
> > this
> > should allow us to downgrade the link to from 128b/132b to 8b/10b if the
> > former fails.
> > 
> > Thoughts? In particular, any objections for messing with the topology
> > manager members directly? Any chance it'll make refactoring the MST code
> > more difficult?
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 42 ++++++++++-----------
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 ++-
> >  2 files changed, 23 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 619546441eae..2fad3104b40e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -600,15 +600,6 @@ int intel_dp_get_link_train_fallback_values(struct
> > intel_dp *intel_dp,
> >         struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >         int index;
> >  
> > -       /*
> > -        * TODO: Enable fallback on MST links once MST link compute can
> > handle
> > -        * the fallback params.
> > -        */
> > -       if (intel_dp->is_mst) {
> > -               drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > -               return -1;
> > -       }
> > -
> >         if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> >                 drm_dbg_kms(&i915->drm,
> >                             "Retrying Link training for eDP with max
> > parameters\n");
> > @@ -2785,6 +2776,8 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
> >         struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >         struct intel_encoder *encoder =
> >                 &dp_to_dig_port(intel_dp)->base;
> > +       struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> > +
> >         bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp-
> > >dpcd);
> >  
> >         drm_dbg_kms(&i915->drm,
> > @@ -2800,8 +2793,17 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
> >         intel_dp->is_mst = sink_can_mst &&
> >                 i915->params.enable_dp_mst;
> >  
> > -       drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> > -                                       intel_dp->is_mst);
> > +       /*
> > +        * Set the source max lane count and link rate using the possibly
> > +        * limited values due to failed link training.
> > +        *
> > +        * This is a bit hackish, as the values are supposed to be passed
> > to
> > +        * drm_dp_mst_topology_mgr_init().
> > +        */
> > +       mgr->max_lane_count = intel_dp->max_link_lane_count;
> > +       mgr->max_link_rate = intel_dp->max_link_rate;
> > +
> > +       drm_dp_mst_topology_mgr_set_mst(mgr, intel_dp->is_mst);
> >  }
> >  
> >  static bool
> > @@ -4472,23 +4474,19 @@ intel_dp_detect(struct drm_connector *connector,
> >                 goto out;
> >         }
> >  
> > -       /* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > -       if (DISPLAY_VER(dev_priv) >= 11)
> > -               intel_dp_get_dsc_sink_cap(intel_dp);
> > -
> > -       intel_dp_configure_mst(intel_dp);
> > -
> > -       /*
> > -        * TODO: Reset link params when switching to MST mode, until MST
> > -        * supports link training fallback params.
> > -        */
> > -       if (intel_dp->reset_link_params || intel_dp->is_mst) {
> > +       if (intel_dp->reset_link_params) {
> >                 intel_dp_reset_max_link_params(intel_dp);
> >                 intel_dp->reset_link_params = false;
> >         }
> >  
> >         intel_dp_print_rates(intel_dp);
> >  
> > +       /* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > +       if (DISPLAY_VER(dev_priv) >= 11)
> > +               intel_dp_get_dsc_sink_cap(intel_dp);
> > +
> > +       intel_dp_configure_mst(intel_dp);
> > +
> >         if (intel_dp->is_mst) {
> >                 /*
> >                  * If we are in MST mode then this connector
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e30e698aa684..442dbd0ed201 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -151,8 +151,9 @@ static int intel_dp_mst_compute_config(struct
> > intel_encoder *encoder,
> >                         intel_conn_state->force_audio == HDMI_AUDIO_ON;
> >  
> >         /*
> > -        * for MST we always configure max link bw - the spec doesn't
> > -        * seem to suggest we should do otherwise.
> > +        * For MST we always configure max link bw - the spec doesn't seem
> > to
> > +        * suggest we should do otherwise. The values may be reduced due
> > to link
> > +        * training failures, however.
> >          */
> >         limits.min_rate =
> >         limits.max_rate = intel_dp_max_link_rate(intel_dp);
> > -- 
> > 2.30.2
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

