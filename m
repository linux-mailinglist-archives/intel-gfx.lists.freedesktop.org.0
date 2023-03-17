Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC396BEED3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 17:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF8810E0C8;
	Fri, 17 Mar 2023 16:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF18E10E0C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679071800; x=1710607800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WFiB58EmebvUUpx0C0B6JzGgjaOmagXBj0JIZfofwR8=;
 b=FqKpmv7aOcYzNviM85R7FoftWn7JesnQSyG7sth3+7XSW1c52bRXOqrA
 uZOD7zhApgsYMLdijkKrFZiU6kfnr4gS2iCG2OO4CdYQS0dtLR/KvZMgj
 bwGuk54y/bIuwahbIzM++uMCyG7Za8d5PqlNE+Ok5CoL2kEcptyzw4YfC
 /qnA/qoHwP0R9MsiaIuL0qwWeabNmxw/1GU//j39jqzDWiWl8S65iPn/E
 PI5eW6IwPo0x+8qfeMIXMdMsjVZqIkAvDN9/VQ6VrDeHqo4j0Z+rZAo7q
 5PZPLD2vFcUQeXC9A2HNPvfmGWADL99w91WScl8i8OzUDNS6bj6KCqEZ1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="322157979"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="322157979"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 09:49:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="657616276"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="657616276"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 17 Mar 2023 09:49:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 18:49:45 +0200
Date: Fri, 17 Mar 2023 18:49:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZBSaKQ8O1PI4ktSP@intel.com>
References: <20230317125352.198042-1-jani.nikula@intel.com>
 <20230317125352.198042-2-jani.nikula@intel.com>
 <ZBRpOllVY8PFfc3w@intel.com> <87pm97a48q.fsf@intel.com>
 <ZBR5jb3TY6S92yZE@intel.com> <ZBR7QmtetGmroxrI@intel.com>
 <87mt4b9xm0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87mt4b9xm0.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 06:00:23PM +0200, Jani Nikula wrote:
> On Fri, 17 Mar 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Fri, Mar 17, 2023 at 04:30:37PM +0200, Ville Syrjälä wrote:
> >> On Fri, Mar 17, 2023 at 03:37:09PM +0200, Jani Nikula wrote:
> >> > On Fri, 17 Mar 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > > On Fri, Mar 17, 2023 at 02:53:52PM +0200, Jani Nikula wrote:
> >> > >> The pipe may differ from crtc index if pipes are fused off. For testing
> >> > >> purposes, IGT needs to know the pipe.
> >> > >> 
> >> > >> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
> >> > >> the upcoming Xe driver won't have that IOCTL, and going forward, we'll
> >> > >> want a unified interface for testing i915 and Xe, as they share the
> >> > >> display code. Thus add the debugfs for i915 display.
> >> > >> 
> >> > >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> > >> ---
> >> > >>  .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
> >> > >>  1 file changed, 13 insertions(+)
> >> > >> 
> >> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> > >> index faa44fb80aac..e85270adca95 100644
> >> > >> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> > >> @@ -1657,6 +1657,17 @@ static int i915_current_bpc_show(struct seq_file *m, void *data)
> >> > >>  }
> >> > >>  DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
> >> > >>  
> >> > >> +/* Pipe may differ from crtc index if pipes are fused off */
> >> > >> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
> >> > >> +{
> >> > >> +	struct intel_crtc *crtc = m->private;
> >> > >> +
> >> > >> +	seq_printf(m, "%d\n", crtc->pipe);
> >> > >
> >> > > Are we happy with an integer or should we use the actual alphabetic
> >> > > name here?
> >> > 
> >> > Primarily I considered the programmatic use case, and the ease of
> >> > switching over from the ioctl. What do we gain by making IGT parse this?
> >> 
> >> Well even the integer is represented in ascii so parsing
> >> needs to happen anyway. But I was mainly thinking if any
> >> human looks at it they may be confused as to what the
> >> raw integer even means.
> >
> > Eg. if I just jump on some random machine an do
> >
> > # grep . crtc-1/*
> > ...
> > i915_pipe: 3
> > ...
> >
> > Now I need to most likely count with my fingers
> > to figure out I'm actually looking at pipe D :P
> 
> Fair enough, not unreasonable.
> 
> Is it enough to have just A, B, ... or do we go with explanatory text
> like i915_current_bpc has "Current: %u\n"?

Think just the value should be sufficient for single value files.

I've occasionally pondered if everything in debugfs should be
single value only, but then we'd end up with tons of files for
certain things...

-- 
Ville Syrjälä
Intel
