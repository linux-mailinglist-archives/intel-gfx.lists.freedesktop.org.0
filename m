Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 301C856B8AC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 13:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50EDC10F792;
	Fri,  8 Jul 2022 11:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E0510F792
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657280295; x=1688816295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rNnCKFl5HfXrKbiMYSw0n0ilHfTWkDQuQdqOmzeaiJ0=;
 b=C5IN8VGJq8ob1cWO2R3UTbpByl3QnE4tj4V8C7y+/CO+o5i/iirNt20N
 /JxccMUsvH6QiYYpCwTlcfqDj3wkVNPuMRuXXnsceVjZjSS1XCuJ3NyFY
 BWnfTu/RoJn+lP8LTLg8hmfu0ymAOVbeCt1Ja0od/oly2qG1mYa1yMlhj
 EAm6qRxprrqQq7C8xPzTHhnnxAKvY9i+YLDISbTXI26oAROTY/lOqEP8h
 60sE5d6BuTeXxDMocWhBNbsZbTs5lCrlDNNBadYk+vViBLC4J/p0iXBPL
 K6FnPR1x0yni2DQtxQmwAgc+db98DRxUxOcTglUooo4B5ZMTLa5Clgz8v A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264674570"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="264674570"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 04:38:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="651536371"
Received: from hvdeeckh-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.33.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 04:38:11 -0700
Date: Fri, 8 Jul 2022 13:38:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YsgXIE6Vg+7BuFKS@alfio.lan>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
 <YsceoP5CYySLWjJk@intel.com> <YsdVJTU+kZzZS1wb@alfio.lan>
 <d2601b7a-247f-4638-1068-92fa8f35ef58@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d2601b7a-247f-4638-1068-92fa8f35ef58@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, Chris Wilson <chris@chris-wilson.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Karolina,

[...]

> > > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > > +		if (dma_fence_is_i915(fence) &&
> > > > +		    !i915_request_started(to_request(fence)))
> > > > +			intel_rps_boost(to_request(fence));
> > > > +	}
> > 
> > you can remove the brackets here.
> > 
> > Andi
> 
> Would you like me to send v2 for it?

if the committer takes care of removing it, then no need,
otherwise, please yes, resend it. Even if it's a stupid nitpick,
if it gets applied it would be very difficult to get it fixed[*].

Didn't checkpatch.pl complain about it?

If you are going to resend it, you can add my:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

also here.

Thanks,
Andi

[*] Because just minor coding style patches are generally
rejected, the only way for fixing style issues would be if:

 1. someone is working in that part of the code
 2. someone will sneak in the code fix in some unrelated patch 
    screwing up git blame
 3. someone will send a big series on this file and have some
    trivial coding style patches in it.

Amongst the three above, number '2' is the one I dislike the
most, but unfortunately that's also the most used.
