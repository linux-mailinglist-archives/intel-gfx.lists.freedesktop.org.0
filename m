Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618938AB430
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 19:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB9510FE7A;
	Fri, 19 Apr 2024 17:11:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QW03OAMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553D810FE7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713546710; x=1745082710;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dFhJ0+5IYhTPbYbTI1t6NjKgfzg+HB6lTNwL1oIaGeA=;
 b=QW03OAMrt9AfBWm5a3n5Hxkjfl5eUKIXkR9LGYBnRYesU7NFShL9XN8l
 f6++nftB9iniqWk7kHaU7uW51Y5FFs1yHOFnvU9grlv7vRDP8UGxck1/4
 HSPEawxDnQyHyqJXCrj+qkcuv6BRMMZ3Ta8wW1dzZlKajihH1gHx2sSrQ
 3i+cuG8KqnnALDBNi5h2FSnDzk4lpr+s5aMDUEUJot9JPc3tj0F7Jogxk
 efyGvxJPb2qkGwcuOpUxe9451MPVzVaUOeLB1NYgzCQKYuqQ3XWfofgnI
 aowK7bBx/SeWNKxBiGS5OacF3tV3/Em0rohXZaID6uUQNPoncXkSDjs8z A==;
X-CSE-ConnectionGUID: 2ilot15HQN6qc1Ngau3NCQ==
X-CSE-MsgGUID: yY4FpQY3TWWBSm5NV2Qwqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="19766407"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="19766407"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:11:50 -0700
X-CSE-ConnectionGUID: XX/ekQlJQF+XNcwPMU2zJQ==
X-CSE-MsgGUID: YXR7Al3cTV6saHVAWLdNxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23460979"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 10:11:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 20:11:46 +0300
Date: Fri, 19 Apr 2024 20:11:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v10 1/6] drm/i915/display: Add meaningful traces for QGV
 point info error handling
Message-ID: <ZiKl0i53spdT8LzY@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240405113533.338553-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 05, 2024 at 02:35:28PM +0300, Vinod Govindapillai wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> For debug purposes we need those - error path won't flood the log,
> however there has been already numerous cases, when due to lack
> of debugs, we couldn't immediately tell what was the problem on
> customer machine, which slowed down the investigation, requiring
> to get access to target device and adding those traces manually.
> 
> v2: - Make the debug more generic and move it to intel_dram_detect
>       (Gustavo Sousa)
> v3: - Use %u for unsigned variable in debug prints (Gustavo)
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
>  drivers/gpu/drm/i915/soc/intel_dram.c   | 2 ++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 7f2a50b4f494..77886cc21211 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -290,8 +290,10 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  		struct intel_qgv_point *sp = &qi->points[i];
>  
>  		ret = intel_read_qgv_point_info(dev_priv, sp, i);
> -		if (ret)
> +		if (ret) {
> +			drm_dbg_kms(&dev_priv->drm, "Could not read QGV %d info\n", i);

s/QGV/QGV point/ would be more clear.

>  			return ret;
> +		}
>  
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\n",
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 15492b69f698..e3287f1de774 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -681,6 +681,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	if (ret)
>  		return;
>  
> +	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_points);
> +

This doesn't seem to belong here.

>  	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>  
>  	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
