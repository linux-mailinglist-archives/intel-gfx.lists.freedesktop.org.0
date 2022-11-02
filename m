Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDBE617026
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 23:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0397710E67B;
	Wed,  2 Nov 2022 22:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B1410E67B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 22:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667426416; x=1698962416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/cPVrhlnb/QVePVtiJLE+sNf/yysNtuiH0xYk49Sn0Q=;
 b=S6hs+3A6fIz33C/2AG7U+lfm3ZyJuL8+6E2VBcgPaxdoRUQem/8Hk5QU
 4wSaxnpubPZnKYY1N5NrIDV54ESoyHY02TiBLre6VMG6RC8VDXMGMxGBU
 4n7wflUCdHOQLOlz8LXcc9nGZD6sCeRwhhSqITMWkzXC0KbK5XaGkrCMp
 d9470tO/osROZBCPCB0CQRNNMtNJeFGd1OieBmiRtEbKVM6iICDnACGHs
 xX7wngMSCnRyVbgqbz6gT2gXcfwuDexsOXPVZIQ9phGxv0C/4/IufBU9k
 mMXYNMh4lxyGvkPkh5Q+eRfPSNPQ7xbEGbU0O430huiAcooT+27MK+j7l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395836974"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="395836974"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 14:59:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="629114964"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="629114964"
Received: from amangalo-mobl4.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.69])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 14:59:56 -0700
Date: Wed, 2 Nov 2022 22:59:52 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Message-ID: <Y2LoWCJcbF01eN56@ashyti-mobl2.lan>
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Niranjana,

On Tue, Nov 01, 2022 at 10:14:16PM -0700, Niranjana Vishwanathapura wrote:
> Currently on DG1, which do not have LLC, we hit the below
> warning while rebinding an userptr invalidated object.
> 
> WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> Call Trace:
>  <TASK>
>  i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>  ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>  i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>  eb_lookup_vmas+0x2ff/0xcf0 [i915]
>  ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>  i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>  i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
> 
> We shouldn't be setting the obj->cache_dirty for DGFX,
> fix it.
> 
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Reported-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

The BAT failure doesn't look related to this patch, to me.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 11125c32dd35..2f7804492cd5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>  
>  	__start_cpu_write(obj);
>  	/*
> -	 * On non-LLC platforms, force the flush-on-acquire if this is ever
> +	 * On non-LLC igfx platforms, force the flush-on-acquire if this is ever
>  	 * swapped-in. Our async flush path is not trust worthy enough yet(and
>  	 * happens in the wrong order), and with some tricks it's conceivable
>  	 * for userspace to change the cache-level to I915_CACHE_NONE after the
>  	 * pages are swapped-in, and since execbuf binds the object before doing
>  	 * the async flush, we have a race window.
>  	 */
> -	if (!HAS_LLC(i915))
> +	if (!HAS_LLC(i915) && !IS_DGFX(i915))
>  		obj->cache_dirty = true;
>  }
>  
> -- 
> 2.21.0.rc0.32.g243a4c7e27
