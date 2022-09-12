Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9785B5F03
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 19:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7758C10E065;
	Mon, 12 Sep 2022 17:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748CA10E065
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 17:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663002980; x=1694538980;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VtieUY+odc1/4g2Po7iPlEYOvt1snRz4LgX15phvzRc=;
 b=YSTDNMyJbOjDoM3ZyVFIIhFSW783pRWh7UBa35JR8AVULKwdXn6Z+xmt
 6UGclAW1VXjjbWfhUB7LYNBSIX7uAcEaNYCYcpSgjvXR2bKEcdRorsNlW
 f3gJjOEE9C5ai4YlACUtQdCweyvC6x7olyDu/h+wLJnMevbHJX0ZEBbyj
 ej6BokiVDdoYhOK0RR/aDWIRQfPBEHcf9E3nRwJa2U0pDxOHHgKkHs3yJ
 0PenGSYJXexXBYo2zeeIFfCHw4GoBYHTvhE58C9ErzUMsiDotuTCSRgFp
 eePui5PNgYUz9SEM6D0tGkSicw3O/ZKam7xU4MVFFt2h7F3eP4fTPI3QD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="296657675"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="296657675"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 10:16:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678184899"
Received: from mtabaka-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 10:16:17 -0700
Date: Mon, 12 Sep 2022 19:16:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
Message-ID: <Yx9pX8cbsoAMsB8x@alfio.lan>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <Yx8VnClBmyDHCd3C@alfio.lan> <87czc06bkq.fsf@intel.com>
 <765d5996-c3a1-07c2-6cc7-0ade0cda74a3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <765d5996-c3a1-07c2-6cc7-0ade0cda74a3@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] i915: CAGF and RC6 changes for MTL
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

Hi Badal,

On Mon, Sep 12, 2022 at 05:42:57PM +0530, Nilawar, Badal wrote:
> I added Cc: in individual patches. So I thought it will pick automatically.
> But anyway I have to fix some of the comments. So I will fix those and
> resend the series. I will Cc relevant people.

yes... it depends on your git-send-email command. I think no one
has received the e-mail other than the mailing list.

If you have the '--suppress-cc=all' flag then you need to
explicitly add the --to/--cc recipients (this is how I do it in
order avoid sending patches to unwanted people).

If you don't have the '--suppress-cc=all' then git-send-email
figures out by itself whom to send the patch by checking the
commit tags.

In both the cases, though, before sending the patches
individually, git-send-email displays the people that have been
added to the 'cc' list.

Please make sure not to forget the dri-devel mailing list
(<dri-devel@lists.freedesktop.org>) and to check if the patches
are actually sent to everyone.

Thanks,
Andi

> Regards,
> Badal
> 
> On 12-09-2022 17:37, Jani Nikula wrote:
> > On Mon, 12 Sep 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > Hi Badal,
> > > 
> > > you haven't Cc'ed anyone here... Please do CC the people
> > > interested in the patches and dri-devel mailing list.
> > > 
> > > If you don't mind, could you please resend the series either as a
> > > V2, if you are going to change something, or as a RESEND, if you
> > > will not change anything?
> > 
> > Anyway some of the patches have been merged already so a rebase is in
> > order.
> > 
> > BR,
> > Jani.
> > 
> > > 
> > > Thanks,
> > > Andi
> > > 
> > > On Fri, Sep 09, 2022 at 08:26:40AM +0530, Badal Nilawar wrote:
> > > > This series includes the code changes to get CAGF, RC State and
> > > > C6 Residency of MTL. The series depends on:
> > > > 
> > > > https://patchwork.freedesktop.org/series/107908/
> > > > 
> > > > We have included 3 patches from from the above series as part of this
> > > > series in order for this series to compile. These are the first 3 patches
> > > > authored by Matt Roper. Please do not review these first 3 patches. Only
> > > > patch 4 and 6 needs review.
> > > > 
> > > > v2: Included "Use GEN12 RPSTAT register" patch
> > > > 
> > > > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > > 
> > > > Badal Nilawar (2):
> > > >    drm/i915/mtl: Modify CAGF functions for MTL
> > > >    drm/i915/mtl: Add C6 residency support for MTL SAMedia
> > > > 
> > > > Don Hiatt (1):
> > > >    drm/i915: Use GEN12 RPSTAT register
> > > > 
> > > > Matt Roper (3):
> > > >    drm/i915: Prepare more multi-GT initialization
> > > >    drm/i915: Rename and expose common GT early init routine
> > > >    drm/i915/xelpmp: Expose media as another GT
> > > > 
> > > >   drivers/gpu/drm/i915/Makefile                 |  1 +
> > > >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
> > > >   drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
> > > >   drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
> > > >   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 58 ++++++++++++++-
> > > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 31 ++++++++
> > > >   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
> > > >   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
> > > >   drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
> > > >   drivers/gpu/drm/i915/gt/intel_rps.c           | 22 +++++-
> > > >   drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
> > > >   drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
> > > >   drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
> > > >   drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
> > > >   drivers/gpu/drm/i915/i915_drv.h               |  2 +
> > > >   drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
> > > >   drivers/gpu/drm/i915/i915_pmu.c               | 11 ++-
> > > >   drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
> > > >   drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
> > > >   drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
> > > >   .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
> > > >   21 files changed, 325 insertions(+), 26 deletions(-)
> > > >   create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
> > > >   create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h
> > > > 
> > > > -- 
> > > > 2.25.1
> > 
