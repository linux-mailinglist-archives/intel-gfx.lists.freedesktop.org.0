Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A561DB4A9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 15:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16CB46E848;
	Wed, 20 May 2020 13:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D958E6E847
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 13:12:15 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id c16so3039762iol.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 06:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gwLB+XS8V/twBVsuqmDPcRGrpZLTnUmWmiqdd43XxJc=;
 b=cKR10APcTZ6EslpPCRg204pANwqayB77e4VAU1tyasP2DmdPiQtbmLy/1AQdyt0CDc
 9DIT2lZBoKmqOA2Qwj6gHeOqOFbt68JqBc8+zT70hCBoggszyzplMeLXPRrAcuU8x5Gr
 TiHFhwQjvCCQ4NVJsI0952r2LyGzvKP9S8jRkzvjOJiG98LKzmT6FhTvM7It4415Bgrk
 Hx0HEtmSDAmDwVfnyV5iSsyOmbt34w2xN/pVFyOnQZ2+EUPmuiwtG4DHC1RmZ6aCdBoO
 xSTk1nfqal92mW3n2xvWgDCSZRAb0LcxXX8gs4jRx64lRN64DOGF1UAdcMsdPgfqg3p4
 22Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gwLB+XS8V/twBVsuqmDPcRGrpZLTnUmWmiqdd43XxJc=;
 b=c4qnprriXEIF/6oww6hO3dzhXu6BLW6ecFIZG4qwfJnHCIdDRLU0d1gegA9PA1sTbf
 22Vi9Zty+2gDvK4YkDP4vUpQxvJBuRMqT96lFT/TnNjNzQj1MgLt246f/Z0iY1eRvBoE
 zSK8lE3sQJWAmK+ccx5cU0sIEPnj7bmy4E4fpLYZd3Wrd1Byd11PQdybdWVBwASUGtJY
 S8fmE5W1fWfSiB6qvMktrCihwuBcAnym+gi+qeY9kT7bfrEU2iXhY3saHKVaBHfLoBWM
 jpGReOXWRR5QZFkt82qXzDIoIDgmH/FZu2vGxhgePBnmmKk/dWjBbvWkcSEaFWrepuMH
 wpfg==
X-Gm-Message-State: AOAM532ox9At4CsZp6KAEyFok8OrRXT8srbh+TRGJgFS6cLUU9iVqqr9
 1TaPaArT6qsYfuY+gLS2aHDZ6uMf57Bj0zjSAtcAUw==
X-Google-Smtp-Source: ABdhPJwvS5i+129vMx+jKarCr41FpUoSU+d9Oap1UWrdqUC9A4xgI7LrpFZLLknQTgUXBN9UHt+H2DT8l5ylUI6Zjms=
X-Received: by 2002:a6b:e509:: with SMTP id y9mr3301388ioc.67.1589980335016;
 Wed, 20 May 2020 06:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200429195502.39919-1-sean@poorly.run>
 <20200515144812.GB11877@intel.com>
 <CAMavQKKv-3Wh=9QP=2Bf_FsSVcp4eXxPB9c80nDZwz-Wmvmz=w@mail.gmail.com>
 <20200518164130.GA14897@intel.com>
In-Reply-To: <20200518164130.GA14897@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Wed, 20 May 2020 09:11:38 -0400
Message-ID: <CAMavQKL495j9aVj_0_jnwATW-rmyU5V=coBB-keQ78+1bmREUg@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 00/16] drm/i915: Add support for HDCP 1.4
 over MST connectors
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 18, 2020 at 12:41 PM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> On 2020-05-18 at 10:32:09 -0400, Sean Paul wrote:
> > On Fri, May 15, 2020 at 10:48 AM Ramalingam C <ramalingam.c@intel.com> wrote:
> > >
> > > On 2020-04-29 at 15:54:46 -0400, Sean Paul wrote:
> > > > From: Sean Paul <seanpaul@chromium.org>
> > > >
> > > > Changes in v6:
> > > > -Rebased on -tip
> > > > -Disabled HDCP over MST on GEN12
> > > > -Addressed Lyude's review comments in the QUERY_STREAM_ENCRYPTION_STATUS patch
> > >
> > > Sean,
> > >
> > > What is the test setup you have used?
> > >
> >
> > Hi Ram,
> > Thanks for the feedback. To be completely honest it's really
> > frustrating that I'm just now getting questions and review feedback
> > (which I've been begging for on IRC) on this review that could have
> > been addressed ~5 months ago. It's super disruptive to have to keep
> > switching back to this after a long hiatus and many i915 refactors
> > complicating my rebases.
> Hi Sean,
>
> As a developer I really feel bad for the delay happened in review.
> I couldn't spend required time for understanding MST part hence I
> couldn't review.
>
> Just for this series now I have started preparing myself on these topics,
> hence started reviewing the series.
>
> If you are still interested to work on this, I can commit for regular reviews.
>

Thanks Ram. I'm still incentivized to get this in. Once you have had a
chance to look over the whole series, I'll revise again.

Sean



> Thanks,
> Ram.
> >
> > If no one wants this patchset, that's fine, please just let me know so
> > I don't waste any more time. If Intel is interested, could we please
> > stop the review trickle and lay out exactly what needs to be done to
> > get this landed?
> >
> > Sean
> >
> >
> > > I am afraid our CI dont have the coverage for MST capability yet to provide
> > > the functional status of the code.
> > >
> > > -Ram.
> > > >
> > > > Sean Paul (16):
> > > >   drm/i915: Fix sha_text population code
> > > >   drm/i915: Clear the repeater bit on HDCP disable
> > > >   drm/i915: WARN if HDCP signalling is enabled upon disable
> > > >   drm/i915: Intercept Aksv writes in the aux hooks
> > > >   drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP
> > > >     signalling
> > > >   drm/i915: Factor out hdcp->value assignments
> > > >   drm/i915: Protect workers against disappearing connectors
> > > >   drm/i915: Don't fully disable HDCP on a port if multiple pipes are
> > > >     using it
> > > >   drm/i915: Support DP MST in enc_to_dig_port() function
> > > >   drm/i915: Use ddi_update_pipe in intel_dp_mst
> > > >   drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
> > > >   drm/i915: Plumb port through hdcp init
> > > >   drm/i915: Add connector to hdcp_shim->check_link()
> > > >   drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband
> > > >     message
> > > >   drm/i915: Print HDCP version info for all connectors
> > > >   drm/i915: Add HDCP 1.4 support for MST connectors
> > > >
> > > >  drivers/gpu/drm/drm_dp_mst_topology.c         | 142 ++++
> > > >  drivers/gpu/drm/i915/Makefile                 |   1 +
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  29 +-
> > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
> > > >  .../drm/i915/display/intel_display_debugfs.c  |  21 +-
> > > >  .../drm/i915/display/intel_display_types.h    |  30 +-
> > > >  drivers/gpu/drm/i915/display/intel_dp.c       | 654 +--------------
> > > >  drivers/gpu/drm/i915/display/intel_dp.h       |   9 +
> > > >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 743 ++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  19 +
> > > >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 217 +++--
> > > >  drivers/gpu/drm/i915/display/intel_hdcp.h     |   2 +-
> > > >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  25 +-
> > > >  .../drm/selftests/test-drm_dp_mst_helper.c    |  17 +
> > > >  include/drm/drm_dp_helper.h                   |   3 +
> > > >  include/drm/drm_dp_mst_helper.h               |  44 ++
> > > >  include/drm/drm_hdcp.h                        |   3 +
> > > >  17 files changed, 1235 insertions(+), 726 deletions(-)
> > > >  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > >
> > > > --
> > > > Sean Paul, Software Engineer, Google / Chromium OS
> > > >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
