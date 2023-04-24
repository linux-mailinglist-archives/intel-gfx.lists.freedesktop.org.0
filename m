Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F01186ED05E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 16:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BABE10E1A8;
	Mon, 24 Apr 2023 14:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FCB10E526;
 Mon, 24 Apr 2023 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682346773; x=1713882773;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JvrHJbu60zkW7tV/Z+bJjUu3q74+szsuchCErB0Gw9k=;
 b=iFLqIAOMCne7i13NIt9ur5zWMh2SeFbM0XaL4L/V58+yYWctkCI3H8s/
 u1yMIETgj2FJ5VOxZNtVtxjoONMa7PDJ+CiAsNLKMSZ/N4ik7s1mMMFew
 8g7mtgi5MYsdaxSAfd0+/6ciCTIhZFU96+NjQcgh3J7tSs7snbruO1G5y
 x2Wq4M4Ck0IgOxMwdzIxMcXhh2JsFSqzk80o4LsrVwG+/iWGCqoYAK7hg
 sPZXnXIvcKcz+lc9NQqAgy387Nis7+/HTmgJs/XFMEZ6v3aWHLEuMGyFU
 VmTCrOtJaJwNyPTlEmg4gGswTDZwUf+LQBwu9XOvRbvo3DlRmxS4jx2SJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="349266756"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="349266756"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 07:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="693094064"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="693094064"
Received: from apalfi-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.34.175])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 07:32:50 -0700
Date: Mon, 24 Apr 2023 16:32:47 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZEaTD6dRVuOYfih9@ashyti-mobl2.lan>
References: <20230421134654.273182-1-andi.shyti@linux.intel.com>
 <ZER/u/tSEX8mXC7R@ashyti-mobl2.lan> <87sfcp36ql.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sfcp36ql.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/2] Use i915 instead of dev_priv
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
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

> >> just another "Friday patch". While reviewing some patches from
> >> Tejas I found a bit confusing the use of dev_priv__ inside the
> >> for_each_engine(), perhaps it should be moved inside the gt/?
> >> 
> >> As I was at it I made the /dev_priv/i915/ change which is still
> >> harmless. Next in queue is to change the i915_irq.h, which is a
> >> bit tricky (but not much) as the "dev_priv" is hardcoded inside
> >> some defines.
> >> 
> >> Andi
> >> 
> >> Andi Shyti (2):
> >>   drm/i915/i915_drv: Use proper parameter naming in for_each_gt()
> >>   drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv
> >>     structure
> >> 
> >>  drivers/gpu/drm/i915/i915_drv.h | 462 ++++++++++++++++----------------
> >>  1 file changed, 231 insertions(+), 231 deletions(-)
> >
> > Pushed to dmr-intel-gt-next.
> 
> That's going to create problems for us for weeks to come. I'm actually
> tempted to ask Joonas or Tvrtko to just force push that out of there.
> 
> Only use drm-intel-gt-next for stuff that's specifically about gt or
> gem, and touches files used by gt or gem only. For everything else, use
> drm-intel-next. When in doubt, err on the side of drm-intel-next.

sorry, I did think of it. But...

> It's not enough that one of the patches changes parameters of
> for_each_gt() macro.

... I was fooled by the gt/i915 parameter.

Thanks and sorry,
Andi

> We can cross-merge drm-intel-next to drm-intel-gt-next, but we can't
> cross-merge drm-intel-gt-next to drm-intel-next. This means the only way
> to sync those i915_drv.h changes to drm-intel-next is to have a
> drm-intel-gt-next pull request merged to drm-next, and then backmerged
> to drm-intel-next. That's not going to happen for several weeks.
> 
> Any change aimed at drm-intel-next that conflicts with the i915_drv.h
> changes will now be pending on those merges.
