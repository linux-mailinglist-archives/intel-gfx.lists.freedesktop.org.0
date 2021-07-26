Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07C13D56A6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 11:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB586E8F2;
	Mon, 26 Jul 2021 09:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6386E851;
 Mon, 26 Jul 2021 09:30:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="211913318"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="211913318"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 02:30:45 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="664544931"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 02:30:44 -0700
Date: Mon, 26 Jul 2021 15:02:36 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210726093235.GA20437@intel.com>
References: <20210708122554.1874987-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708122554.1874987-1-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] lib/intel_memory_region: verify
 item.length
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-07-08 at 13:25:52 +0100, Matthew Auld wrote:
> If the regions query fails then the error will be encoded in the
> item.length, while the ioctl will still return success.
> 
> Reported-by: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  lib/i915/intel_memory_region.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
> index 144ae12c..e1e210f2 100644
> --- a/lib/i915/intel_memory_region.c
> +++ b/lib/i915/intel_memory_region.c
> @@ -119,6 +119,13 @@ struct drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd)
>  	memset(&item, 0, sizeof(item));
>  	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
>  	i915_query_items(fd, &item, 1);
> +	/*
> +	 * Any DRM_I915_QUERY_MEMORY_REGIONS specific errors are encoded in the
> +	 * item.length, even though the ioctl might still return success.
> +	 */
> +	igt_assert_f(item.length > 0,
> +		     "DRM_I915_QUERY_MEMORY_REGIONS failed with %d\n",
> +		     item.length);
LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>  
>  	query_info = calloc(1, item.length);
>  
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
