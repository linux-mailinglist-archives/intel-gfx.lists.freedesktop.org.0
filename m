Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 010D87B555A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A4210E192;
	Mon,  2 Oct 2023 14:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93DC10E192
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696257663; x=1727793663;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OKkOLCPeTCgmzW58zGc3KxzFFSy0W2QaAQ9KpKlHNC4=;
 b=lVICXMlblKUTABW9WiXDXwjZLpRym55XQ51jN02hC129VyqyCD2iaupa
 QzYuPRW8Az/Mh+ycJjrztG3pt/sfa3Ny5aeT1lxc6ze2T8oan9ayH+cjB
 n4QUFcDAQ3T83nU563MBFzxZ3ZjM2zFnTdCS+oY8IvfsudbsXELyJEZ0F
 ACIzGy+3SALivhhwCFA4heFJrflyyoBH4Rb4FUULjBaqQu6fisIDa/LQa
 CKfv79Kl7vRfQG+0LcgGTkYheW3FIpLmAgGxJHluojDe/Do2yJpNt7D8+
 nQTu9L9osXx4FZ/gmf0D2CxjBW65EglmEHFbDV437TakhOGtjqg7lPaLq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385474246"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="385474246"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="874372119"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="874372119"
Received: from nsusbilx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.161.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:40:54 -0700
Date: Mon, 2 Oct 2023 16:40:47 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZRrWb5fNh6xt4tYW@ashyti-mobl2.lan>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <ZRrOA6v1katsED65@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRrOA6v1katsED65@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: nuke i915->gt0
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

> adding a few folks in Cc for some extra eyes on this series.
> 
> On Mon, Oct 02, 2023 at 11:47:01AM +0300, Jani Nikula wrote:
> > Chopping up [1] to more digestable pieces. Start off with nuking
> > i915->gt0.
> > 
> > [1] https://patchwork.freedesktop.org/series/124418/
> > 
> > Jani Nikula (3):
> >   drm/i915/mocs: use to_gt() instead of direct &i915->gt
> >   drm/i915: allocate i915->gt0 dynamically
> >   drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]
> > 
> >  drivers/gpu/drm/i915/gt/intel_gt.c               | 10 +++++++---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c             |  4 ++--
> >  drivers/gpu/drm/i915/i915_drv.h                  | 10 ++--------
> >  drivers/gpu/drm/i915/selftests/mock_gem_device.c |  1 -
> >  4 files changed, 11 insertions(+), 14 deletions(-)
> 
> Michal, Michal and Tomasz, can you please check here?

please don't merge this patch without first receiving a feedback
by the the guys I Cc'ed.

Thanks,
Andi
