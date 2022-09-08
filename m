Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 801865B21B3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 17:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02D910E516;
	Thu,  8 Sep 2022 15:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0930B10E516
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 15:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662649898; x=1694185898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jNACwQI2sYS8gXiemxvRZ1khhEMAUCc23c11aaqN1PY=;
 b=H17QNXEp6Ns3VgKLViTzObu8OZDYv5VJiEtiUKe9bhmf1tcSdFWlCqBB
 38T2jtuIngeekZH95ki9A8eiFsLWM7nmhhMaZfXIf913jJaR2MEEBYOBW
 4FpRBDkchPCyz9xXbebDVf4s+lTQmerrC3mev66nE99bYkhlezH2ZpLq0
 /XrwyyTMWVWNG8y8Dg6TEgZLf0A8R7VmEr9mWR2UhWAm8TH5QZYOF7vOu
 ZWR2cIMNGfpcOuk3mL9IDeX/36NHvpoG1r0fdUK0xh1T6IXnEa2TFeQZw
 fZhNFZ07cYbZiDfqbSjgcFZQA/B9yI3TYO0RTM7UXYGfApjkxKyw1bZwM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298546338"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="298546338"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 08:11:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718602040"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 08 Sep 2022 08:11:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 18:11:34 +0300
Date: Thu, 8 Sep 2022 18:11:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <YxoGJrriiWt1r5uT@intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
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

On Thu, Sep 08, 2022 at 04:32:56PM +0200, Das, Nirmoy wrote:
> Hi Ville,
> 
> 
> I fixed a similar issue in DII but I couldn't reproduce it in drm
> 
> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
> 
> I wonder if that fixes the problem you are facing then I can send that 
> to drm.

CI can tell you. It has been complaining about this for ages without
anyone doing anything about it.

> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
> b/drivers/gpu/drm/i915/i915_gem.c
> index 7809be3a6840..5438e9277924 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1213,7 +1213,7 @@  void i915_gem_init_early(struct drm_i915_private 
> *dev_priv)
> 
>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>   {
> -    i915_gem_drain_freed_objects(dev_priv);
> +    i915_gem_drain_workqueue(dev_priv);
>       GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>       GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
> 
> 
> Regards,
> 
> Nirmoy
> 
> On 9/6/2022 7:46 PM, Ville Syrjala wrote:
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
> >   }
> >   
> >   /*

-- 
Ville Syrjälä
Intel
