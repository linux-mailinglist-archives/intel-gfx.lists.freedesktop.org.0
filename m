Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28F3BC899
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 11:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C96F89C0D;
	Tue,  6 Jul 2021 09:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9CC89C0D;
 Tue,  6 Jul 2021 09:41:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="207260021"
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; d="scan'208";a="207260021"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 02:41:50 -0700
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; d="scan'208";a="559891382"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 02:41:48 -0700
Date: Tue, 6 Jul 2021 15:13:27 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210706094327.GB23963@intel.com>
References: <20210702104642.1189978-1-matthew.auld@intel.com>
 <20210702104642.1189978-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210702104642.1189978-2-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: fix smatch warning
 in mock_reserve
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-07-02 at 11:46:42 +0100, Matthew Auld wrote:
> If mock_region_create fails then mem will be an error pointer. Instead
> we just need to use the correct ordering for the onion unwind.
> 
> igt_mock_reserve() error: 'mem' dereferencing possible ERR_PTR()
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/intel_memory_region.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 1aaccb9841a0..418caae84759 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -173,7 +173,7 @@ static int igt_mock_reserve(void *arg)
>  	if (IS_ERR(mem)) {
>  		pr_err("failed to create memory region\n");
>  		err = PTR_ERR(mem);
> -		goto out_close;
> +		goto out_free_order;
>  	}
>  
>  	/* Reserve a bunch of ranges within the region */
> @@ -224,9 +224,10 @@ static int igt_mock_reserve(void *arg)
>  	}
>  
>  out_close:
> -	kfree(order);
>  	close_objects(mem, &objects);
>  	intel_memory_region_put(mem);
> +out_free_order:
> +	kfree(order);
LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>  	return err;
>  }
>  
> -- 
> 2.26.3
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
