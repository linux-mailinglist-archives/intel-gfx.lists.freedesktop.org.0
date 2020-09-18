Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED6A27030A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 19:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F226ED3B;
	Fri, 18 Sep 2020 17:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA6F6ED3B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 17:17:26 +0000 (UTC)
IronPort-SDR: s1hDJK5VkSe13un//AQ3QnOasKkwluSn4UYUn0kjjSTyf6i4+EIgXlKnkmo16rmZBijr3OhgJI
 sAKqq3AwOIug==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="147745909"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="147745909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 10:17:24 -0700
IronPort-SDR: 9MUx7r+kfaBCCNVr9Ci3Ds4IQfu+OrYAamELCrdIeVJzQcOvWvtim0Rgdtgl+/n1b9GSAh6Hi+
 UMIC6scsdCJg==
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="452830235"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 10:17:24 -0700
Date: Fri, 18 Sep 2020 13:19:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20200918171940.GC716636@intel.com>
References: <20200918111208.1392128-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918111208.1392128-1-maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix uninitialised variable in
 intel_context_create_request.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 18, 2020 at 01:12:08PM +0200, Maarten Lankhorst wrote:
> In case backoff fails with an error, we return an undefined rq,
> assign err to rq correctly.
> 
> Fixes: 8a929c9eb1c2 ("drm/i915: Use ww pinning for intel_context_create_request()")
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_context.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index d301dda1b261..92a3f25c4006 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -472,6 +472,7 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
>  		err = i915_gem_ww_ctx_backoff(&ww);
>  		if (!err)
>  			goto retry;
> +		rq = ERR_PTR(err);

The mix with "err" and rq handling both request and err is a bit confusing
ihmo and prone to misses like this.

I wonder if we also need this before the goto retry as well...
but anyway it looks better than before with no rq assigment on this block...


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



>  	} else {
>  		rq = ERR_PTR(err);
>  	}
> 
> base-commit: 5887fa2d8b9b7f6a278f9a1bc8642cb9d5d0279a
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
