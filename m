Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 320211D7B4F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DE989E5A;
	Mon, 18 May 2020 14:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFEDF89E5A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 14:32:45 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id f4so10738673iov.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 07:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6WNODVGJlCT9KIhfyYXKtkIcMa8bGEmJKBTeDTvbiiA=;
 b=d8AQJaB71gSQ1WiAu4ygEu5Ahy5NEVWLwuTIhUd13IroxmFO/NB8AfvtLdnglxJPLu
 CBXV6GhKK5Zltor1yUNAQfLmKmx2ma1Z/PpZE5ducP6oYoZJP2GpaLL5OOtiu4UFrGog
 /RdrzQxrc0dnhvEqlvmCwbaG2xvYzbFxw016YDN+FZ8rUTReyBoRg6XOafW9gj7hBOXz
 CJiKM5oN9NSdwywSVt/lAe7VqKKiPiClrlmpFkiMLs+KgB1rjU+nKBDOhz3Faj9eN85Q
 9YRFWtFAo7FHGwZMRk6h6IT9nnIvabMI2MH3tP0uRLCbLR0qDOhYC94YDjPJjAHOJ88f
 aQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6WNODVGJlCT9KIhfyYXKtkIcMa8bGEmJKBTeDTvbiiA=;
 b=jYWloHKC9C3tYe1T615IHT8DYX56JSCSTeyZRm4rFM4lWAkqAgOpSKYPRNPLZJAxzA
 ZpeJG5Vh+K77HZrmji5IftXtsDqWF7M6qFbUJGYXoAiSa+MPk+C9ILXx99YW3yAsTdDk
 YoM/4mdtWPNl0CVF6gPP8cDxPgfJdLGLQdPTVXSQy7jkcQZTqmlsJ7qVUqMS1yLeqVot
 16qT3lpZoAmZValJejGE/Sgts2l8V/hSgFzVdftGQVimaUe7u7EcOOot/Ytw0WeN07Cn
 VQvYqAsPKquPXjSYgIKhP5iGK8zLd38L3xaFKUEqae2I+/NtHrIUYRQq9/OIpIDYRKHl
 1FdQ==
X-Gm-Message-State: AOAM5321FXA3JQ7nU2u/x2d4XbVWtayVXd7CbzhnVUUPKjm/itpkhx+s
 XGiGVSZg1PGoLsUtCm7kbPHwBfVIp2Z8N31AOBP5vw==
X-Google-Smtp-Source: ABdhPJyUdQmBTLIRfCA+he3L0SV8nixaRz3Mj+dj6wAh1R7ZFK6xy462cE+Iiuz2EOYUSI61rDoRUvCB0I+bXLyi/ng=
X-Received: by 2002:a02:5807:: with SMTP id f7mr15966599jab.118.1589812365033; 
 Mon, 18 May 2020 07:32:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200429195502.39919-1-sean@poorly.run>
 <20200515144812.GB11877@intel.com>
In-Reply-To: <20200515144812.GB11877@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 18 May 2020 10:32:09 -0400
Message-ID: <CAMavQKKv-3Wh=9QP=2Bf_FsSVcp4eXxPB9c80nDZwz-Wmvmz=w@mail.gmail.com>
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

On Fri, May 15, 2020 at 10:48 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> On 2020-04-29 at 15:54:46 -0400, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> >
> > Changes in v6:
> > -Rebased on -tip
> > -Disabled HDCP over MST on GEN12
> > -Addressed Lyude's review comments in the QUERY_STREAM_ENCRYPTION_STATUS patch
>
> Sean,
>
> What is the test setup you have used?
>

Hi Ram,
Thanks for the feedback. To be completely honest it's really
frustrating that I'm just now getting questions and review feedback
(which I've been begging for on IRC) on this review that could have
been addressed ~5 months ago. It's super disruptive to have to keep
switching back to this after a long hiatus and many i915 refactors
complicating my rebases.

If no one wants this patchset, that's fine, please just let me know so
I don't waste any more time. If Intel is interested, could we please
stop the review trickle and lay out exactly what needs to be done to
get this landed?

Sean


> I am afraid our CI dont have the coverage for MST capability yet to provide
> the functional status of the code.
>
> -Ram.
> >
> > Sean Paul (16):
> >   drm/i915: Fix sha_text population code
> >   drm/i915: Clear the repeater bit on HDCP disable
> >   drm/i915: WARN if HDCP signalling is enabled upon disable
> >   drm/i915: Intercept Aksv writes in the aux hooks
> >   drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP
> >     signalling
> >   drm/i915: Factor out hdcp->value assignments
> >   drm/i915: Protect workers against disappearing connectors
> >   drm/i915: Don't fully disable HDCP on a port if multiple pipes are
> >     using it
> >   drm/i915: Support DP MST in enc_to_dig_port() function
> >   drm/i915: Use ddi_update_pipe in intel_dp_mst
> >   drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
> >   drm/i915: Plumb port through hdcp init
> >   drm/i915: Add connector to hdcp_shim->check_link()
> >   drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband
> >     message
> >   drm/i915: Print HDCP version info for all connectors
> >   drm/i915: Add HDCP 1.4 support for MST connectors
> >
> >  drivers/gpu/drm/drm_dp_mst_topology.c         | 142 ++++
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  29 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
> >  .../drm/i915/display/intel_display_debugfs.c  |  21 +-
> >  .../drm/i915/display/intel_display_types.h    |  30 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 654 +--------------
> >  drivers/gpu/drm/i915/display/intel_dp.h       |   9 +
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 743 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  19 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 217 +++--
> >  drivers/gpu/drm/i915/display/intel_hdcp.h     |   2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  25 +-
> >  .../drm/selftests/test-drm_dp_mst_helper.c    |  17 +
> >  include/drm/drm_dp_helper.h                   |   3 +
> >  include/drm/drm_dp_mst_helper.h               |  44 ++
> >  include/drm/drm_hdcp.h                        |   3 +
> >  17 files changed, 1235 insertions(+), 726 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
