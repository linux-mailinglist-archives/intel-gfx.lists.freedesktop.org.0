Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6B77653B1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 14:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F13E10E0E6;
	Thu, 27 Jul 2023 12:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17E110E0E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 12:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690460641; x=1721996641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/Ft1uqRxaATMmVG3GH/eeas9VI0EokeFIXyNmMNK2yI=;
 b=kHZprOri4EreLgkbF9YkZ42QxAGNPzDmDy+7SambUCYkFzZ3K4rftUji
 wqeujA20B3YqqAupus+r3fTZgieHNNsaLWtiSThNUIlQbXqNicmnfx49M
 KohXrOZr9BEVa2m7VxkrTApD2neo699d4HBh7yIBEFeQvadgAhzLU2uUK
 aNZ1CQAkCbRpGze3TRu/54uv0AJ6T9/pAMY+lfTfDe5xuyxBryHO/jWJV
 /XyRPDuEQN8sTRTkumTKc1dAaYMmRgaXUQYKfTiMFK+ESmd0CHU0LcJU5
 p7P82PWj/oYcGoDXCldwEhQ5WQPzqdO8cNNhFGWsX4pRd7BdWdaCVhsFp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="365751756"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="365751756"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="762149605"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="762149605"
Received: from sguija-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.35.185])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:23:57 -0700
Date: Thu, 27 Jul 2023 14:23:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZMJh2gsYXvBdIzaT@ashyti-mobl2.lan>
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Simplify
 shmem_create_from_object map_type selection
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Wed, Jul 26, 2023 at 08:53:54AM -0700, Jonathan Cavitt wrote:
> The object pin created for shmem_create_from_object is just a
> single use mapping with the sole purpose of reading the contents
> of the whole object in bulk. And the whole source object is also
> even a throw-away.  Ergo, the additional logic required by
> i915_coherent_map_type can be safely dropped and simplified.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/shmem_utils.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 449c9ed44382..bccc3a1200bc 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -33,7 +33,6 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>  
>  struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>  {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>  	enum i915_map_type map_type;
>  	struct file *file;
>  	void *ptr;
> @@ -44,7 +43,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>  		return file;
>  	}
>  
> -	map_type = i915_coherent_map_type(i915, obj, true);
> +	map_type = i915_gem_object_is_lmem(obj) ? I915_MAP_WC : I915_MAP_WB;
>  	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>  	if (IS_ERR(ptr))
>  		return ERR_CAST(ptr);

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi

[ Nitpick section ]

Next time, please:

 1. Number your patches.
 2. Add a changelog (either in the cover letter (which is best
    for multi-patch series) or after the '---' section (for
    single patches)).
 3. Don't forget the previous tags, e.g. Acked-by Fei.
