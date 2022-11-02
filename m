Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C8616B4C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B44110E51A;
	Wed,  2 Nov 2022 17:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D3910E51A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411722; x=1698947722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QQIquJ3MAFmzDbJAPeXIilLxW6wL+LqERC5f+M1oit0=;
 b=EimIHsZP265q1jT7PF7wTX5cI9kDw5Ez/IL+dZ6FpZw2vTngtOBAn+bw
 /Rq5X4wtObNFLL0oc4B+gEaa6pz9N4OowSojxkkAqN+NeV6c8HRpSl6h9
 0yuPuKczFqK6APkIwXGCMY6ZXx8JCAjNPYEG13aXvzHvqAKP429xfPa7U
 ZBYmP/J9DD4lFXlKfgJaXUxpwUDm33Qe30Hl+xeFJd7MBx10uvBgxxLYE
 fZ7b8yZUsH5SiEaLDezJw7mu5F1qOdX/++vhF1S4VPueR7KpZMVPbD5b+
 mwwVispMD1j9lDZmpBQ0KbpoymFBdvKofhaqUepC4onyYv9cxPcydAlhi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296930270"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296930270"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:55:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="776988700"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="776988700"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 02 Nov 2022 10:55:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Nov 2022 19:55:17 +0200
Date: Wed, 2 Nov 2022 19:55:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <Y2KvBTY2ueEWpFAj@intel.com>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
 <Y1LKLECGcZ38aF4O@intel.com>
 <e3930f78-5062-0e7c-9858-d54e7b661e25@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e3930f78-5062-0e7c-9858-d54e7b661e25@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 24, 2022 at 10:08:29AM +0200, Das, Nirmoy wrote:
> 
> On 10/21/2022 6:34 PM, Ville Syrjälä wrote:
> > On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
> >> i915_gem_drain_freed_objects() might not be enough to
> >> free all the objects and RCU delayed work might get
> >> scheduled after the i915 device struct gets freed.
> >>
> >> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
> > shard-snb is stil hitting the mm.shrink_count WARNn reliably,
> > and things go downhill after that.
> 
> 
> Looks better now again. Going to look into that.

Looks to be still hitting it occasionally in module reload tests:
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7033/shard-snb5/igt@i915_module_load@reload.html
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7035/shard-snb7/igt@perf_pmu@module-unload.html

> 
> 
> Thanks,
> 
> Nirmoy
> 
> >
> >> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
> >> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> >> index 88df9a35e0fe..7541028caebd 100644
> >> --- a/drivers/gpu/drm/i915/i915_gem.c
> >> +++ b/drivers/gpu/drm/i915/i915_gem.c
> >> @@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
> >>   
> >>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
> >>   {
> >> -	i915_gem_drain_freed_objects(dev_priv);
> >> +	i915_gem_drain_workqueue(dev_priv);
> >>   	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
> >>   	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
> >>   	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
> >> -- 
> >> 2.37.3

-- 
Ville Syrjälä
Intel
