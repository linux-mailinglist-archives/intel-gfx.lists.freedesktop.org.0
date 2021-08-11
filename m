Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F853E9456
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 17:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E656E0E1;
	Wed, 11 Aug 2021 15:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA126E0DB;
 Wed, 11 Aug 2021 15:15:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="214872527"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="214872527"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 08:15:25 -0700
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="672904533"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 08:15:25 -0700
Date: Wed, 11 Aug 2021 08:15:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 DRI <dri-devel@lists.freedesktop.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Message-ID: <20210811151524.GE1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210715141854.1ad4a956@canb.auug.org.au>
 <162823181614.15830.10618174106053255881@jlahtine-mobl.ger.corp.intel.com>
 <YRE2RwQ6XlUqbgmn@phenom.ffwll.local>
 <20210809161939.GS1556418@mdroper-desk1.amr.corp.intel.com>
 <YRIcTTsEF0Kg7F8K@phenom.ffwll.local> <8735rgo3hi.fsf@intel.com>
 <YROc0KkBbuAwrx0f@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YROc0KkBbuAwrx0f@phenom.ffwll.local>
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-intel tree
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

On Wed, Aug 11, 2021 at 11:48:00AM +0200, Daniel Vetter wrote:
> On Wed, Aug 11, 2021 at 10:16:41AM +0300, Jani Nikula wrote:
> > On Tue, 10 Aug 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> > > On Mon, Aug 09, 2021 at 09:19:39AM -0700, Matt Roper wrote:
> > >> On Mon, Aug 09, 2021 at 04:05:59PM +0200, Daniel Vetter wrote:
> > >> > On Fri, Aug 06, 2021 at 09:36:56AM +0300, Joonas Lahtinen wrote:
> > >> > > Hi Matt,
> > >> > > 
> > >> > > Always use the dim tooling when applying patches, it will do the right
> > >> > > thing with regards to adding the S-o-b.
> > >> > 
> > >> > fd.o server rejects any pushes that haven't been done by dim, so how did
> > >> > this get through?
> > >> 
> > >> I definitely used dim for all of these patches, but I'm not sure how I
> > >> lost my s-o-b on this one.  Maybe when I edited the commit message after
> > >> 'dim extract-tags' I accidentally deleted an extra line when I removed
> > >> the extract-tags marker?  It's the only patch where the line is missing,
> > >> so it's almost certainly human error on my part rather than something
> > >> dim did wrong.
> > >
> > > Yeah that's an expected failure model, and dim is supposed to catch that
> > > by rechecking for sobs when you push. See dim_push_branch ->
> > > checkpatch_commit_push_range in dim. So you can hand-edit stuff however
> > > you want, dim /should/ catch it when pushing. That it didn't is kinda
> > > confusing and I'd like to know why that slipped through.
> > 
> > One of the failures that happened here was that the commit was part of a
> > topic branch that was merged and pushed directly. All merges should
> > happen via pull requests on the list, and applied (preferrably by
> > maintainers or at least with their acks recorded on the merge) using dim
> > apply-pull which should also have the checks.
> 
> Ah yes if the merge is applied directly instead of using apply-pull then
> that's not good. I guess that's why we have the rule that only maintainers
> should handle topic branches ...

Hmm, I wasn't aware of this rule.  I double checked with Rodrigo before
doing so and he thought merging a branch directly to intel-next and
gt-next with the foundational definitions and tables should be an okay
approach here (and he did an extra backmerge in preparation to make sure
it went smoothly).

Anyway, definitely my fault; I'll keep this in mind for the future.


Matt

> 
> Not sure how we can fix this in dim? Maybe a check whether the patches
> your pushing contain a merge commit, which prompts an additional query
> like
> 
> "Merge commits should only be done by repo maintainers, not committers.
> Confirm that you are a maintainer of $repo?"
> 
> It's not the first time this slipped through and caused some fun. Similar
> to how we have the confirmation check if you push a lot of patches.
> 
> Thoughts?
> -Daniel
> 
> 
> > 
> > 
> > BR,
> > Jani.
> > 
> > >
> > >> > Matt, can you pls figure out and type up the patch to
> > >> > plug that hole?
> > >> 
> > >> Are you referring to a patch for dim here?  The i915 patch has already
> > >> landed, so we can't change its commit message now.
> > >
> > > Yeah dim, not drm-intel, that can't be fixed anymore because it's all
> > > baked in.
> > > -Daniel
> > >
> > >> 
> > >> 
> > >> Matt
> > >> 
> > >> > 
> > >> > Thanks, Daniel
> > >> > 
> > >> > > 
> > >> > > Regards, Joonas
> > >> > > 
> > >> > > Quoting Stephen Rothwell (2021-07-15 07:18:54)
> > >> > > > Hi all,
> > >> > > > 
> > >> > > > Commit
> > >> > > > 
> > >> > > >   db47fe727e1f ("drm/i915/step: s/<platform>_revid_tbl/<platform>_revids")
> > >> > > > 
> > >> > > > is missing a Signed-off-by from its committer.
> > >> > > > 
> > >> > > > -- 
> > >> > > > Cheers,
> > >> > > > Stephen Rothwell
> > >> > 
> > >> > -- 
> > >> > Daniel Vetter
> > >> > Software Engineer, Intel Corporation
> > >> > http://blog.ffwll.ch
> > >> 
> > >> -- 
> > >> Matt Roper
> > >> Graphics Software Engineer
> > >> VTT-OSGC Platform Enablement
> > >> Intel Corporation
> > >> (916) 356-2795
> > 
> > -- 
> > Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
