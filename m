Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47E217C86F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 23:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D3D6ED81;
	Fri,  6 Mar 2020 22:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068F36ED81
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 22:39:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 14:39:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="288092965"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Mar 2020 14:39:43 -0800
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
References: <20200306221405.53152-1-andi@etezian.org>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a79d2035-61ea-8070-08fc-e335be60a2ab@intel.com>
Date: Fri, 6 Mar 2020 14:39:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200306221405.53152-1-andi@etezian.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: allow setting generic data
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



On 3/6/20 2:14 PM, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
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
> Thanks Daniele for the review.
> 
> Andi
> 
> Changelog:
> v3:
>   - removed unused gt parameter from the
>     __intel_gt_debugfs_register_files()
> v2:
>   - the eval function is made generic as suggested by Daniele.
> 
>   drivers/gpu/drm/i915/gt/debugfs_engines.c |  2 +-
>   drivers/gpu/drm/i915/gt/debugfs_gt.c      | 11 +++++------
>   drivers/gpu/drm/i915/gt/debugfs_gt.h      | 12 +++++++-----
>   drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   | 14 +++++++++-----
>   4 files changed, 22 insertions(+), 17 deletions(-)
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
> index 75255aaacaed..344f70e475c1 100644
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
> +void __intel_gt_debugfs_register_files(struct dentry *root,
> +				       const struct debugfs_gt_file *files,
> +				       unsigned long count, void *data)
>   {
>   	while (count--) {
> -		if (!files->eval || files->eval(gt))
> +		if (!files->eval || files->eval(data))
>   			debugfs_create_file(files->name,
> -					    0444, root, gt,
> +					    0444, root, data,
>   					    files->fops);
>   
>   		files++;
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.h b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> index 4ea0f06cda8f..332ea1fc72f7 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.h
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> @@ -28,12 +28,14 @@ void debugfs_gt_register(struct intel_gt *gt);
>   struct debugfs_gt_file {
>   	const char *name;
>   	const struct file_operations *fops;
> -	bool (*eval)(const struct intel_gt *gt);
> +	bool (*eval)(void *data);
>   };
>   
> -void debugfs_gt_register_files(struct intel_gt *gt,
> -			       struct dentry *root,
> -			       const struct debugfs_gt_file *files,
> -			       unsigned long count);
> +void __intel_gt_debugfs_register_files(struct dentry *root,
> +				       const struct debugfs_gt_file *files,
> +				       unsigned long count, void *data);
> +
> +#define intel_gt_debugfs_register_file(g, r, f, c)	\
> +	__intel_gt_debugfs_register_files(r, f, c, g)

This macro isn't really needed anymore, the base function is generic 
enough to be used in all situation, just pass in the data you want.
With the macro dropped and using directly the 
intel_gt_debugfs_register_files() function (removing the leading 
underscores):

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   
>   #endif /* DEBUGFS_GT_H */
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> index 059c9e5c002e..e2249fb49404 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -506,9 +506,11 @@ static int llc_show(struct seq_file *m, void *data)
>   	return 0;
>   }
>   
> -static bool llc_eval(const struct intel_gt *gt)
> +static bool llc_eval(void *data)
>   {
> -	return HAS_LLC(gt->i915);
> +	struct intel_gt *gt = data;
> +
> +	return gt && HAS_LLC(gt->i915);
>   }
>   
>   DEFINE_GT_DEBUGFS_ATTRIBUTE(llc);
> @@ -580,9 +582,11 @@ static int rps_boost_show(struct seq_file *m, void *data)
>   	return 0;
>   }
>   
> -static bool rps_eval(const struct intel_gt *gt)
> +static bool rps_eval(void *data)
>   {
> -	return HAS_RPS(gt->i915);
> +	struct intel_gt *gt = data;
> +
> +	return gt && HAS_RPS(gt->i915);
>   }
>   
>   DEFINE_GT_DEBUGFS_ATTRIBUTE(rps_boost);
> @@ -597,5 +601,5 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
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
