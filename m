Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5C27E0210
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 12:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEF610E092;
	Fri,  3 Nov 2023 11:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C4F10E092
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 11:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699010243; x=1730546243;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=KajXmlZhSZhWKNy4YGc2H4Xu2d62zZLPep2bVCR61gw=;
 b=SVgjNm69lNDnzr5bFaN1w9Eup7oN1X/tcjvvQRZ/BcAUw2c51C7phOcs
 ZyOd2TiSmtWaCueP//ME1D2VVJRYqUma1/WSZPsxPH/x0njuiEAL7MBTO
 N/MOBLOc0Yk89Wcb8G3BJlKQuLVQDgSq8CLPSzM96rdu+6e7gkav9cIv7
 QIDtKHZ5OYNOcKnoIdr7K0iqWhFGsHEEQabuo557bPB+iz/BHFXaa+78b
 hc7ZvlSk0taKa37f2CXQf6UTzc/0oQwLKUJ65ALrPM4dbLJFWZL5j2uR1
 qJzzep9xq9omRqxSN+/agsNOoMMcOZhIcfexNzhEY0NgyQqfg6wPvbJer g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="475166225"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="475166225"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:17:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="9699796"
Received: from sdobbela-mobl.ger.corp.intel.com (HELO [10.213.223.51])
 ([10.213.223.51])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:17:21 -0700
Message-ID: <35c88e1e-0f2a-411e-b224-a9526723b2dd@linux.intel.com>
Date: Fri, 3 Nov 2023 11:17:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Gareth Yu <gareth.yu@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231103052959.3537-1-gareth.yu@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231103052959.3537-1-gareth.yu@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/11/2023 05:29, Gareth Yu wrote:
> Print another SSEU information addition to the first one.
> 
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
>   drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
>   2 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index e9b79c2c37d8..b5914a2c0597 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, void *data)
>   {
>   	struct drm_i915_private *i915 = node_to_i915(m->private);
>   	struct drm_printer p = drm_seq_file_printer(m);
> +	struct intel_gt *gt;
> +	unsigned int i;
>   
>   	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>   
>   	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>   	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
>   	i915_print_iommu_status(i915, &p);
> -	intel_gt_info_print(&to_gt(i915)->info, &p);
> +	for_each_gt(gt, i915, i)
> +		intel_gt_info_print(&gt->info, &p);
>   	intel_driver_caps_print(&i915->caps, &p);
>   
>   	kernel_param_lock(THIS_MODULE);
> @@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
>   static int i915_sseu_status(struct seq_file *m, void *unused)
>   {
>   	struct drm_i915_private *i915 = node_to_i915(m->private);
> -	struct intel_gt *gt = to_gt(i915);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i)
> +		intel_sseu_status(m, gt);

Don't we have the per GT debugfs directories and files already!?

>   
> -	return intel_sseu_status(m, gt);
> +	return 0;
>   }
>   
>   static int i915_forcewake_open(struct inode *inode, struct file *file)
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index b4e31e59c799..2adc317af944 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
>   			      struct intel_gt_coredump *gt)
>   {
>   	struct drm_printer p = i915_error_printer(m);
> +	struct drm_i915_private *i915 = gt->_gt->i915;
> +	struct intel_gt *gt_n;
> +	unsigned int n;
>   
>   	intel_gt_info_print(&gt->info, &p);
> -	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
> +	for_each_gt(gt_n, i915, n)
> +		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);

Do we need a consistent story across all error capture? Aka why is sseu 
special.

Also the intel_gt_info_print() above calls intel_sseu_dump so we end up 
with root tile SSEU printed twice?

There possibly was a Jira years ago to do stuff about multi-tile error 
capture but maybe it got lost.

Adding Andi if he has comments.

Regards,

Tvrtko

>   }
>   
>   static void err_print_gt_display(struct drm_i915_error_state_buf *m,
