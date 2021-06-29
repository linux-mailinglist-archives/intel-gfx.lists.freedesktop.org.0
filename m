Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D73DF3B6FB3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 10:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4857C6E830;
	Tue, 29 Jun 2021 08:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D676E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 08:51:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="187797053"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="187797053"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 01:51:18 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="625560112"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 01:51:16 -0700
Date: Tue, 29 Jun 2021 14:22:51 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Message-ID: <20210629085251.GB29108@intel.com>
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
 <20210628143829.22995-5-krishnaiah.bommu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628143829.22995-5-krishnaiah.bommu@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] Klock work Fix for uninitialized array
 intel_migrate.c
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-06-28 at 20:08:29 +0530, Bommu Krishnaiah wrote:
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 23c59ce66cee5..5df7b8af6fdb9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -208,11 +208,15 @@ static struct intel_context *__migrate_engines(struct intel_gt *gt)
>  
>  	count = 0;
>  	for (i = 0; i < ARRAY_SIZE(gt->engine_class[COPY_ENGINE_CLASS]); i++) {
> +
>  		engine = gt->engine_class[COPY_ENGINE_CLASS][i];
>  		if (engine_supports_migration(engine))
>  			engines[count++] = engine;
>  	}
>  
> +	if (count == 0)
> +		return ERR_PTR(-ENXIO);
> +
>  	return intel_context_create(engines[random_index(count)]);
This Kclockwork warning/error is false positive.

As intel_migrate_copy->intel_migrate_create_context->__migrate_engines is called
after the checkfor valid m->context which is created for first copy engine.

So atleast one blitter is assured. hence we can ignore this Kclockwork
result.

Ram.
>  }
>  
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
