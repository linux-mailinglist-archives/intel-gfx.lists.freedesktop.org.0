Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDC738F717
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 02:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7109A6E4C9;
	Tue, 25 May 2021 00:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87256E4AD;
 Tue, 25 May 2021 00:49:42 +0000 (UTC)
IronPort-SDR: A3Zc4AHNg2EOw+KpFIVGL7/a8MBYMu97VWA2PvuPyFHrGLSbQei78IA5Ozl5gXAJmPHPbG5uoY
 w30k3Es/hguQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="201814511"
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; d="scan'208";a="201814511"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 17:49:41 -0700
IronPort-SDR: UsLCiVOTg+Q8RFnOsatPEwbtSW+Sv07pmn6xCd+uPHOcOFOh02Ufj8a6gvIQnj5Gbfga+1lH6p
 aHyriBrj+wDw==
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; d="scan'208";a="632825845"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 17:49:41 -0700
Date: Mon, 24 May 2021 17:42:32 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210525004232.GA24968@sdutt-i7>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-11-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506191451.77768-11-matthew.brost@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC PATCH 10/97] drm/i915: Promote ptrdiff() to
 i915_utils.h
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 12:13:24PM -0700, Matthew Brost wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> 
> Generic helpers should be placed in i915_utils.h.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_utils.h | 5 +++++
>  drivers/gpu/drm/i915/i915_vma.h   | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index f02f52ab5070..5259edacde38 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -201,6 +201,11 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
>  	__T;								\
>  })
>  
> +static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> +{
> +	return a - b;
> +}
> +
>  /*
>   * container_of_user: Extract the superclass from a pointer to a member.
>   *
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 8df784a026d2..a29a158990c6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -146,11 +146,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
>  	i915_gem_object_put(vma->obj);
>  }
>  
> -static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> -{
> -	return a - b;
> -}
> -
>  static inline long
>  i915_vma_compare(struct i915_vma *vma,
>  		 struct i915_address_space *vm,
> -- 
> 2.28.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
