Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8401597B55A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 23:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3963010E501;
	Tue, 17 Sep 2024 21:53:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kfhmRnuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C170110E501;
 Tue, 17 Sep 2024 21:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726609984; x=1758145984;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pzXpENcW9KA3MoSrt3kWA05vqESBRdLJIRMtZKJxZhE=;
 b=kfhmRnuYFSwGYKJ/8IJcJWj5TVmf2Mn0p6wIoWXqcj7in98wgLk9PMrp
 Vfq9v/QUjgQXNLzMkjwsqqa31uGcv0/x+sVre6zEJXlcvucb4YvPYLTXd
 dkPnrS0EI6DoheZqFJ1cIg32Xo71gsPjuJ8ouo4PvBHBDei9rv8tSuGZ1
 JCEMZti+g8zm0aq61OvV12RZlIsgOHN6RI/JAg8JLzud1vsdGZ43bpvGP
 /pB2R9TvvhLrV4GZKfIs8XTg2gc3Bq3OC6h6RhSIOdrvxqVDOH2NeAN8g
 udarGCWFX+fqNM2YkX/FWe3hwFTejSQCw9gKBh1y3zHZ9P87V8CFe7lgP g==;
X-CSE-ConnectionGUID: dgWx5b+0T/yBVYVcd0cwzA==
X-CSE-MsgGUID: 1APecg7HQM6d6oArUPnWfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36067300"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36067300"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 14:53:03 -0700
X-CSE-ConnectionGUID: ZBhyhHm0QQ2bXUT9I0H/+A==
X-CSE-MsgGUID: lHK0w2gaTgyH9/JRT8BfxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73683575"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO [10.245.245.78])
 ([10.245.245.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 14:53:01 -0700
Message-ID: <708d6a07-3ea7-4c4d-9f28-3bf8c9443779@linux.intel.com>
Date: Tue, 17 Sep 2024 23:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/22] drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
References: <cover.1726589119.git.jani.nikula@intel.com>
 <0eae2b62b635acafe5dc97dc4b205aaa34ce1e53.1726589119.git.jani.nikula@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <0eae2b62b635acafe5dc97dc4b205aaa34ce1e53.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

For the whole series, with the comment addressed:
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Den 2024-09-17 kl. 18:14, skrev Jani Nikula:
> We've now completely stopped using drm_i915_gem_object in display code
> that gets built for xe. Kill off the -Ddrm_i915_gem_object=xe_bo
> hack. Good riddance.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/Makefile | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index e1ab68d3e066..ae245fbd91ee 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -149,7 +149,6 @@ subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
>  	-I$(src)/display/ext \
>  	-I$(src)/compat-i915-headers \
>  	-I$(srctree)/drivers/gpu/drm/i915/display/ \
> -	-Ddrm_i915_gem_object=xe_bo \
>  	-Ddrm_i915_private=xe_device
>  
>  # Rule to build SOC code shared with i915

