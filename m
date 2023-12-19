Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF435818C03
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 17:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821F310E1A9;
	Tue, 19 Dec 2023 16:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FF310E1A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703002585; x=1734538585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=agNKARVo7BhsYaLazdlUYjpsQqMdWst8y6ugkgn9Els=;
 b=m74/PcEBiI8N3Mk7dDtFNZxDcRxYHlX/ZQk3ZnBLB8jAInm+o7pfvz7o
 iMCB2eHTYEZM3jugMLeeBjFntiauP7W2uI9dcXqndO8UMtUuc9Q4aEBay
 gob2zUBsoeq/wsEh9U0wUUNBnT0iB0WC5r2X8kwtlgIZI4Y1xoATCA0CF
 XLd5AzchaoivY+7L7LNKf+tTwJ8mXb+p0wt0gW8R8kQgr+HpWFosgaGjY
 f9MX10PllydxawjUWupskwIdJmsq9NZ7389GKGkwxa3nX/DRFhte1BEx5
 CdUfP1JgPh53R2E3PY4Gz8/VZT9OZoXfzQNjfLcJKGlYzesrmTdJZ/wzB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="394563608"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="394563608"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 08:16:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="919665406"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="919665406"
Received: from vkostare-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.6])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 08:16:21 -0800
Date: Tue, 19 Dec 2023 17:16:18 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userptr
 on mmu-notifier
Message-ID: <ZYHB0vel_SWh4x6E@ashyti-mobl2.lan>
References: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
 <ZYBt5n2BkJFqommW@ashyti-mobl2.lan>
 <CH0PR11MB54449E9E6A63E244DBB21B94E590A@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CH0PR11MB54449E9E6A63E244DBB21B94E590A@CH0PR11MB5444.namprd11.prod.outlook.com>
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Mon, Dec 18, 2023 at 06:33:44PM +0000, Cavitt, Jonathan wrote:
...
> > On Tue, Nov 28, 2023 at 08:25:05AM -0800, Jonathan Cavitt wrote:
> > > Never block for outstanding work on userptr object upon receipt of a
> > > mmu-notifier. The reason we originally did so was to immediately unbind
> > > the userptr and unpin its pages, but since that has been dropped in
> > > commit b4b9731b02c3c ("drm/i915: Simplify userptr locking"), we never
> > > return the pages to the system i.e. never drop our page->mapcount and so
> > > do not allow the page and CPU PTE to be revoked. Based on this history,
> > > we know we are safe to drop the wait entirely.
> > > 
> > > Upon return from mmu-notifier, we will still have the userptr pages
> > > pinned preventing the following PTE operation (such as try_to_unmap)
> > > adjusting the vm_area_struct, so it is safe to keep the pages around for
> > > as long as we still have i/o pending.
> > > 
> > > We do not have any means currently to asynchronously revalidate the
> > > userptr pages, that is always prior to next use.
> > > 
> > > Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > 
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Thank you for the review!  I don't think I have permission to push this upstream,
> though, so you or someone else will have to complete the push.

pushed in drm-intel-gt-next.

Thanks and sorry for the late merge.

Andi
