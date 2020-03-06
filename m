Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C817B2FB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 01:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF4E6E3F3;
	Fri,  6 Mar 2020 00:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6375A6E3F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 00:31:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 16:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,520,1574150400"; d="scan'208";a="287827257"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Mar 2020 16:31:50 -0800
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
References: <20200305235941.1716-1-andi.shyti@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <fdf01ba2-57ab-d51a-7f62-27f4cc1c1168@intel.com>
Date: Thu, 5 Mar 2020 16:31:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200305235941.1716-1-andi.shyti@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: allow setting generic data
 pointer
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/5/20 3:59 PM, Andi Shyti wrote:
> When registering debugfs files the intel gt debugfs library
> forces a 'struct *gt' private data on the caller.
> 
> There might be different needs, therefore make it generic by
> adding one more argument to the "debugfs_register_files()"
> function which gets the generic void private data as argument.
> 
> Still keep it simple by defining a wrapper where struct *gt is
> the chosen private data to be stored.
> 
> I take the chance to rename the functions by using "intel_gt_" as
> prefix instead of "debugfs_".
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/debugfs_engines.c |  2 +-
>   drivers/gpu/drm/i915/gt/debugfs_gt.c      |  9 ++++-----
>   drivers/gpu/drm/i915/gt/debugfs_gt.h      | 10 ++++++----
>   drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  2 +-
>   4 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> index 6a5e9ab20b94..3434df10d58c 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> @@ -32,5 +32,5 @@ void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
>   		{ "engines", &engines_fops },
>   	};
>   
> -	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
> +	intel_gt_debugfs_register_file(gt, root, files, ARRAY_SIZE(files));
>   }
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> index 75255aaacaed..9112a8585caf 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> @@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
>   	debugfs_gt_pm_register(gt, root);
>   }
>   
> -void debugfs_gt_register_files(struct intel_gt *gt,
> -			       struct dentry *root,
> -			       const struct debugfs_gt_file *files,
> -			       unsigned long count)
> +void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
> +				       const struct debugfs_gt_file *files,
> +				       unsigned long count, void *data)
>   {
>   	while (count--) {
>   		if (!files->eval || files->eval(gt))

IMO the files->eval() function should also use the provided data instead 
of intel_gt. This will also allow us to drop the intel_gt parameter in 
this function, which in turn means we can use this function directly 
from all the levels.

Daniele

>   			debugfs_create_file(files->name,
> -					    0444, root, gt,
> +					    0444, root, data,
>   					    files->fops);
>   
>   		files++;
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.h b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> index 4ea0f06cda8f..1c01d70a2a44 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.h
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> @@ -31,9 +31,11 @@ struct debugfs_gt_file {
>   	bool (*eval)(const struct intel_gt *gt);
>   };
>   
> -void debugfs_gt_register_files(struct intel_gt *gt,
> -			       struct dentry *root,
> -			       const struct debugfs_gt_file *files,
> -			       unsigned long count);
> +void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
> +				       const struct debugfs_gt_file *files,
> +				       unsigned long count, void *data);
> +
> +#define intel_gt_debugfs_register_file(_g, _r, _f, _c)	\
> +	__intel_gt_debugfs_register_files(_g, _r, _f, _c, _g)
>   
>   #endif /* DEBUGFS_GT_H */
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> index 059c9e5c002e..a8d2391a207a 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -597,5 +597,5 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
>   		{ "rps_boost", &rps_boost_fops, rps_eval },
>   	};
>   
> -	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
> +	intel_gt_debugfs_register_file(gt, root, files, ARRAY_SIZE(files));
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
