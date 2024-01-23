Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35F838934
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D256E10E170;
	Tue, 23 Jan 2024 08:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C88810E719
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 08:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705999098; x=1737535098;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dgWWj4f2xB0fA+rGkwdoA/19NnxVLqnkAQhmdNKUn5o=;
 b=ByAwJamKMuRR9ZZjyYoOREJaJLQGaNzVVTz+w2TE4zs0aUT8eqAEEUON
 Yvc1Qmag6TYB4C+p+hdaf6PUxI+NQIkYSPSDNWQH1Up2mZ0JCoNPo564U
 7CnJ1dEhHhugP3CRwD6Xf5TrYxiOK4FY1ZTUvYRU9QC6V0xnQQDDR+SW9
 6k3GmE5xjXNZSzibIU5FMXQ+x+IplaF9ZUMRmBCVLtQ1COFt4+cGMxojz
 n4tsBvtf7lVowyPIvu6+wkmomy3ubPZ3Q2uw1P5UQBmA0rU2XldFBy076
 gtx3z7bVYRBsYuCFlS7sE+RhFLidw4VwKM+kFe4Hvmxbf6tx0GTqEi674 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="432614754"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="432614754"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 00:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820008614"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820008614"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 00:38:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 10:38:11 +0200
Date: Tue, 23 Jan 2024 10:38:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Message-ID: <Za9683G7dFVHQffL@intel.com>
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
 <Za9tpxLhbrexGEDG@intel.com>
 <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
 <Za9zpJKDG_EMfROZ@intel.com>
 <22080480081e00b383f48a6c2f6caf755734683e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22080480081e00b383f48a6c2f6caf755734683e.camel@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jan 23, 2024 at 08:17:36AM +0000, Hogander, Jouni wrote:
> On Tue, 2024-01-23 at 10:07 +0200, Ville Syrjälä wrote:
> > On Tue, Jan 23, 2024 at 07:57:00AM +0000, Hogander, Jouni wrote:
> > > On Tue, 2024-01-23 at 09:41 +0200, Ville Syrjälä wrote:
> > > > On Tue, Jan 23, 2024 at 09:11:03AM +0200, Jouni Högander wrote:
> > > > > We want to request full modeset in initial fast check to force
> > > > > PSR
> > > > > state
> > > > > computation. Otherwise PSR is not enabled on initial commit but
> > > > > on
> > > > > first
> > > > > commit with modeset or fastset. With this change Initial commit
> > > > > will still
> > > > > end up using fastset (unless something else requires full
> > > > > modeset)
> > > > > as PSR
> > > > > parameters are not anymore part of intel_pipe_config_compare.
> > > > 
> > > > I think I'd prefer to go the oppostie direction and try to get
> > > > all
> > > > the full modeset stuff out from the initial commit. The only
> > > > reason
> > > > the initial commit was introduced was to compute the plane states
> > > > due to lack of readout, and then it got extended due to various
> > > > other
> > > > hacks. Our goal is to inherit the state from the BIOS so ideally
> > > > the whole initial_commit thing wouldn't even exist.
> > > 
> > > Bios doesn't enable PSR. Do you think this would be better approach
> > > ?:
> > > 
> > > https://patchwork.freedesktop.org/patch/575368/?series=129023&rev=1
> > > 
> > > What we just need is something triggering intel_psr_compute_config
> > > +
> > > psr enable. Maybe that could be separate function doing both and
> > > call
> > > that from intel_initial_commit. If/when we get rid of that
> > > intel_initial_commit: this function would be called by that new
> > > thing.
> > 
> > I don't think we should do anything at all. PSR will get enabled by
> > the
> > first proper commit, if possible.
> 
> That means PSR is disabled until there is fastset or full modeset. Is
> that ok? I.e. is there some usecase where either of these doesn't
> happen?

Shouldn't happen, unless there is no userspace/fbcon client at all.
But in that case we should just turn off the whole display and let
the device enter runtime suspend. I don't think we are doing that
atm. It should perhaps be done from eg. a work scheduled fairly
far into the future to give userspace/fbcon enough time to
initialize.

> 
> Panel replay is also now coming to picture as it requires sink side
> being enabled before link training. Maybe you have some advice on these
> as well:
> 
> https://patchwork.freedesktop.org/patch/574966/?series=128156&rev=5
> https://patchwork.freedesktop.org/patch/574979/?series=128156&rev=5

I'll have to think a bit about all of it. In general I think the
sink PSR enable/disable should be moved to the full modeset/fastset
sequence properly, same for most of the source side PSR setup. The 
only thing we should be frobbing during any other kind of commit/etc.
is the control register enable bit (in case we need to actually toggle
PSR, as opposed to just forcing a temporary exit with the CURSURFLIVE
trick).

-- 
Ville Syrjälä
Intel
