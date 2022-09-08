Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B93225B1F15
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 15:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A1610EAEF;
	Thu,  8 Sep 2022 13:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6808610EAF4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 13:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662643810; x=1694179810;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VwBcWh7E1TpUEgN+Ug73aE7XubYc6l2cqNYt7ItzwmY=;
 b=mLIP8+xoURWC+eYo5CVL1Ji2kUAoAaiv8XpgyOwMKegV4QSl4pzpTz19
 lmqdszCvIiU19u41Xev0AE+yry9HnSTsD2XpXG35qtaf5+iOAvI97JHic
 t9s2owtwposbosgm1Y5CMey53Krs0txVyIpSvJmJlRPto2/bsrnpx4MGf
 n/P8o6zWO7f/bgJQNEyE8MSBQbdh5ebg3y7KDjZGUVT6FspCZ6Wq0icvX
 yS+xm9gi/zx/qN6Cb0hbQIzu+dh1aDxlxmoUCMNZ3GVyqp0p2mvqSDDmx
 kzpQkQN3XlfhrvviP5SCpssR5zJ9mw1kvpLF4zwpJ9hnx5Ybo5AnrsLBD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="277553630"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="277553630"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 06:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718558950"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 08 Sep 2022 06:30:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 16:30:07 +0300
Date: Thu, 8 Sep 2022 16:30:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YxnuX805XuuSGPUY@intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <c21535d3-8f71-b385-4ef6-1b10a783c347@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c21535d3-8f71-b385-4ef6-1b10a783c347@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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

On Thu, Sep 08, 2022 at 01:23:50PM +0100, Tvrtko Ursulin wrote:
> 
> On 06/09/2022 18:46, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On gen3 the selftests are pretty much always tripping this:
> > <4> [383.822424] pci 0000:00:02.0: drm_WARN_ON(dev_priv->mm.shrink_count)
> > <4> [383.822546] WARNING: CPU: 2 PID: 3560 at drivers/gpu/drm/i915/i915_gem.c:1223 i915_gem_cleanup_early+0x96/0xb0 [i915]
> > 
> > Looks to be due to the status page object lingering on the
> > purge_list. Call synchronize_rcu() ahead of it to make more
> > sure all objects have been freed.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_gem.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > index 0f49ec9d494a..5b61f7ad6473 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
> >   		flush_delayed_work(&i915->bdev.wq);
> >   		rcu_barrier();
> >   	}
> > +	synchronize_rcu();
> 
> Looks a bit suspicious that a loop would not free all but one last rcu 
> grace would. Definitely fixes the issue in your testing?

Definite is a bit hard to say with fuzzy stuff like this. But yes,
so far didn't see the warn triggering anymore. CI results show the same.

> 
> Perhaps the fact there is a cond_resched in __i915_gem_free_objects, but 
> then again free count should reflect the state and keep it looping in here..
> 
> Regards,
> 
> Tvrtko

-- 
Ville Syrjälä
Intel
