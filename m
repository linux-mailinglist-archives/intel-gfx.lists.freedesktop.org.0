Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7C417C40
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 22:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687796E249;
	Fri, 24 Sep 2021 20:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35536E249
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 20:16:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="285169917"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="285169917"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 13:16:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="551934579"
Received: from lydiaag-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.38.248])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 13:16:26 -0700
Date: Fri, 24 Sep 2021 16:16:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <YU4yGOCG92pgn754@intel.com>
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-3-lucas.demarchi@intel.com>
 <160448371454.8986.12904696092648361290@jlahtine-mobl.ger.corp.intel.com>
 <20201105010422.l2mum5gep7dxva5f@ldmartin-desk1.jf.intel.com>
 <160456334665.5393.4671076622521791518@jlahtine-mobl.ger.corp.intel.com>
 <20210706234430.nm64jerbt3kkoeue@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210706234430.nm64jerbt3kkoeue@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 06, 2021 at 04:44:30PM -0700, Lucas De Marchi wrote:
> On Thu, Nov 05, 2020 at 10:02:27AM +0200, Joonas Lahtinen wrote:
> > Quoting Lucas De Marchi (2020-11-05 03:04:22)
> > > On Wed, Nov 04, 2020 at 11:55:15AM +0200, Joonas Lahtinen wrote:
> > > >Quoting Lucas De Marchi (2020-10-27 06:46:18)
> > > >> GT_PERF_STATUS and RP_STATE_LIMITS were added a long time ago in
> > > >> commit 3b8d8d91d51c ("drm/i915: dynamic render p-state support for Sandy
> > > >> Bridge").  Other than printing their values in debugfs we don't do
> > > >> anything with them.  There's not much useful information in them. These
> > > >> registers may change location in future platforms, but instead of adding
> > > >> new locations, it's simpler to just remove them.
> > > >
> > > >This code seems to have been updated for Gen9LP, so that would indicate
> > > >the debugging information is useful, right? The value is even decoded, not
> > > >simply dumped as most registers. So I would be hesitant to drop it for
> > > >not being useful.
> > > 
> > > but just updating the register in itself for a new gen doesn't mean it's
> > > actually useful... the commit message where this happened is pretty
> > > vague: 350405623ff3 ("drm/i915: Update rps frequencies for BXT")
> > > 
> > > My first reaction would be to do the same if the register had moved or
> > > if it ceased to exist in a new platform. Talking with Matt Roper some
> > > time ago we arrived to the conclusion that just printing these values is
> > > not giving us much benefit and it could very well be accomplished by
> > > intel_reg.
> > > 
> > > So answering the question:  is it really useful as is? IMO, no.
> > 
> > A quick discussion on #intel-gfx seems to indicate it was used for
> > bug triaging in the past year. So that would indicate it is still
> > useful to include.
> 
> getting back to this as we are trying to upstream XeHP-SDV that doesn't
> have access to the MCHBAR. So do you think we should just make it
> conditional instead of removing?

Yes, please let's make this conditional.

> 
> I'm still on the side that this additional code doesn't bring much value
> and could be replaced by intel-reg.

In general I'd agree. However:

1. Sometimes it is very hard to find out what registers and bits have
some useful information.
2. If it is hard to remove sometimes it is harder to add some information
like this.
3. I was not part of the IRC chat that Joonas mentioned, but apparently
this data was useful in the past for some cases.

Thanks,
Rodrigo.

> 
> > 
> > So let's not remove it.
> > 
> > > >The second question is why we have a huge block of 1-to-1 duplicated
> > > >code in there. Has there been an incorrect merge or some transition has
> > > >been left mid-way?
> > > 
> > > not a bad merge, no. It seems to be to preserve the previous file
> > > location since now it moved to be inside a gt dir. Long term I think
> > > this is bad both because of the code duplication and because it's easy
> > > to update one and forget the other.
> > 
> > I started a discussion in the thread of the original patch which called
> > to move code but left the old code in place too, effectively copying it.
> > 
> > When this path was written and such code duplication noticed, would have
> > been good to highlight or address the code duplication.
> 
> yes, but it doesn't mean there will be an action regarding that, as can
> be noticed since that duplication is still there today and this patch
> applies cleanly :-/... and they had slightly different changes according
> to
> 
> 	git log -L:frequency_show:drivers/gpu/drm/i915/gt/debugfs_gt_pm.c \
> 		-L:i915_frequency_info:drivers/gpu/drm/i915/i915_debugfs.c
> 
> 
> Lucas De Marchi
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
