Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BD48295F9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E63E10E577;
	Wed, 10 Jan 2024 09:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932BF10E577
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 09:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704877978; x=1736413978;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=NEC0ELe845lnYACpQkRYxi6zlVpMY0dE6Y1H4hAkCCk=;
 b=Ta5hJCrL4G9ZX+IWtymOjePTApy4O2FbztCQDhpai8Va+86hevEixFMV
 bye8JuQP6J6LxC9JCU+lix9FqFkZFBYosnXO+YYTN1nmufq+LRANuamhw
 +pm33lNU76PY3mEu3ic/9DEg9Nz6oprzZAXPCQF0d2Q54Xk7Mhb91qj9u
 UqdFYkarnpOR6u+fymJTjH9pxWh9sqG+kpgimXyrZaSIBrIh9OTnquoum
 oxBNZzNyjECZ7CiQ/cVopeMz69FQEJlgVu8f/+nc68znJx7ZAwfK5nQIw
 aFa50qjGCwRUM6Kwg0OcHt3nf5RmJVnYBB0zklFMV1HVahwkdE6azAx9H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="402239282"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="402239282"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:12:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="731797666"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="731797666"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:12:55 -0800
Message-ID: <1521fc76-7186-4214-aec6-5adc37371c7e@intel.com>
Date: Wed, 10 Jan 2024 10:12:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] drm/i915/fbdev: Fix smem_start for LMEMBAR
 stolen objects
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-14-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-14-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The "io" address of an object is its dma address minus the
> region.start. Subtract the latter to make smem_start correct.
> The current code happens to work for genuine LMEM objects
> as LMEM region.start==0, but for LMEMBAR stolen objects
> region.start!=0.
> 
> TODO: perhaps just set smem_start=0 always as our .fb_mmap()
> implementation no longer depends on it? Need to double check
> it's not needed for anything else...
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 1ac05d90b2e8..0665f943f65f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -79,7 +79,8 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
>   		/* Use fbdev's framebuffer from lmem for discrete */
>   		info->fix.smem_start =
>   			(unsigned long)(mem->io.start +
> -					i915_gem_object_get_dma_address(obj, 0));
> +					i915_gem_object_get_dma_address(obj, 0) -
> +					mem->region.start);
>   		info->fix.smem_len = obj->base.size;
>   	} else {
>   		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;

