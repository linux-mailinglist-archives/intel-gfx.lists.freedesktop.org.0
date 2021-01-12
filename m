Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9592F36CD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782FD898A8;
	Tue, 12 Jan 2021 17:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4D2898A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:16:09 +0000 (UTC)
IronPort-SDR: GP2vqp8xwPklXZyTe3V3iVr7vPVIOetiyWE4N6hTht71xJJqvxynbpdbk2X68k6L8KQAEMZ8uD
 HESHcHlulLvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="178168867"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="178168867"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:16:08 -0800
IronPort-SDR: HMClyjbhVu0wngAA6XmZREHxaGVzrh+d6hxBRuxADDeOJGb8rympGedHGEnSDMd8Vos8qyKnuS
 ILnA9SPfz9Tw==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381498440"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:16:08 -0800
Date: Tue, 12 Jan 2021 09:16:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210112171606.GI21197@mdroper-desk1.amr.corp.intel.com>
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <875z43w7kq.fsf@intel.com>
 <20210111205743.GC4758@mdroper-desk1.amr.corp.intel.com>
 <20210111212553.brclyuex7dgzeryu@ldmartin-desk1>
 <87o8hut965.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8hut965.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 12, 2021 at 06:24:50PM +0200, Jani Nikula wrote:
> On Mon, 11 Jan 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > On Mon, Jan 11, 2021 at 12:57:43PM -0800, Matt Roper wrote:
> >>On Mon, Jan 11, 2021 at 10:18:45PM +0200, Jani Nikula wrote:
> >>So to clarify, it looks like we have a bunch of revid changes to the
> >>display code that got merged to the gt-next tree but not to the
> >>intel-next tree?  Should we be going back and also merging /
> >>cherry-picking those over to intel-next since that's where the display
> >>changes are supposed to go, or is it too late to do that cleanly at this
> >>point?
> >
> > it was my mistake to merge them to drm-intel-gt-next. They should have
> > been in drm-intel-next.
> 
> That's not the problem though. The branches generally being too far
> apart atm is. The single cherry-pick won't solve that. Applying these
> patches to one tree just adds a dependency that will not be around in
> the topic branch baseline, creating a new problem for merging the topic
> branch.

I still don't understand what the original goal of splitting the driver
into two different trees was.  It's clear that this approach is going to
cause extra mistakes and bugs if we continue down this path and it's not
clear to me what the expected benefit was to justify the additional
complexity?

When are the two branches supposed to be brought back in sync?  Is it
just a single backmerge to each branch immediately after new mainline
kernel releases or is there some other strategy to handle this?


Matt

> 
> >>Going forward, what should the general strategy be for stuff like
> >>platform definitions and such?  Merge such enablement patches to both
> >
> > last time we talked about this was regarding dg1 AFAIR and the consensus
> > was to create a topic branch and that topic branch to be merged in both
> > branches. That would avoid having 2 commits in different branches.
> 
> Agreed.
> 
> > Not sure if it would work out nicely for getting test on CI though.
> > Since the changes are spread through the codebase, we could very easily
> > hit a situation that this topic branch creates conflicts for other
> > patches getting merged on either drm-intel-next or drm-intel-gt-next.
> 
> The cycle in review -> apply to topic branch -> merge topic branch just
> needs to be short enough. We can't have the topic branch laying around
> for more than maybe a few days, or we'll have problems.
> 
> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
