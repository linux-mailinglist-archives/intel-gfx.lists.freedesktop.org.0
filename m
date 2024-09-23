Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8E97F0C3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2360110E466;
	Mon, 23 Sep 2024 18:38:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRk1JB2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AE610E465;
 Mon, 23 Sep 2024 18:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116701; x=1758652701;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yT7EPT3xcXbD1G8wNeg0RbHXDv8fKTM7SV1W2/7nlCQ=;
 b=hRk1JB2KRhNdBW62K2qA7g+WnSmVqoBd91XMuhcLdutfStoHOImucl6a
 uj8ayFFL+gZgdj6+XlW3cE+Dyc3Z0TinQJXFHOmO4x84KS/lR/rFd6Te1
 hyBt0a8lvApBGkfsD3FNsSobrdimzsi1oiYeARWjDGgix8WPkU7YbKhwd
 yWuZDfaZvs2+JHjevpsVmHD8OW613Hyn9G+cAvdpQTiRREZvgsqjVPRe9
 vbRlDrqVtU1vZ8ZBtdGDdqGSVGJjBmfMDAthFI1c3lcS12N5xXxhhMsam
 mqVyZCp4/v9CudEDjvjPbdKm+DRmdc7IHqW1sRjcGH/wVLmp2FcnWNfm7 w==;
X-CSE-ConnectionGUID: NxryNLCjT3WYfLXgZsGFkQ==
X-CSE-MsgGUID: 2QyJusIaTrO/2vUswl62KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13712765"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13712765"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:38:21 -0700
X-CSE-ConnectionGUID: eQZOC3vCQ2OnA0+UIIoZ0A==
X-CSE-MsgGUID: /Uzg8VGJQ2qFvNsBe6uD6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71299547"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:38:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:38:18 +0300
Date: Mon, 23 Sep 2024 21:38:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 05/16] drm/i915/display: Add debugfs support to avoid
 joiner
Message-ID: <ZvG1miz6F9EO_5wz@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-6-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:25PM +0530, Ankit Nautiyal wrote:
> Currently debugfs for joiner can take a value of 0->dont care and
> 2->join 2 pipes. Add option to force to use only 1 pipe.
> 
> If debugfs is set to 1, force to exactly one pipe (ie. no
> joiner despite what the automagic logic is saying).
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 80c499d642dc..af164e340cb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1344,6 +1344,8 @@ static ssize_t i915_joiner_write(struct file *file,
>  	switch (force_joined_pipes) {
>  	case 0:
>  		break;
> +	case 1:
> +		fallthrough;

The 'fallthrough' is still redundant.

>  	case 2:
>  		connector->force_joined_pipes = force_joined_pipes;
>  		break;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
