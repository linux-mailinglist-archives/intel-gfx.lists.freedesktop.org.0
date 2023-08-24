Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D99786B1E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 11:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214FE10E50A;
	Thu, 24 Aug 2023 09:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB0710E50A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 09:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692867984; x=1724403984;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HBK7utooEMBcLNAkSDvOfnphByhIgE5pPmfkmHNq9lE=;
 b=NyqghQ2ng4ZnkpPFA1nzjG2XyyZ05QzTUzZfyJGZGg0y8+ltsphGKduE
 rd1m16lhCg3ldSqc3FtTPTP8/T14oVakUYmsKuvCjaIpMCUfZY03n/4wx
 8dl68MuM74qGcUps54aHtPUMF2+zq/mH3sq3YxOzNsNGl2yvnFbCoQeca
 jbDy2AQAi35LO8XSdIPE86q+kPcdeZJ/BuBhMgBnapMrw/Xr9Ks7QVAeq
 3kejce/M4M7bgMaweS91cfJQEmyIakCZoZsGGRVvkBRu4ciowYcTsscOi
 wX6+1alZXJU86aq/3NYKKr3dcj8jN+VNVQk4uA1xw+QP2YIT1Q+Lp7Hme g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364562397"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364562397"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713893594"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713893594"
Received: from andrzejk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:06:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230824083846.1114262-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824083846.1114262-1-chaitanya.kumar.borah@intel.com>
Date: Thu, 24 Aug 2023 12:06:18 +0300
Message-ID: <87ttso4xo5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl: Add new RPL PCI-IDs
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 24 Aug 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Add newly added PCI-IDs for RPL

Please review [1] instead.

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20230824062840.2372872-1-dnyaneshwar.bhadane@intel.com

>
> BSpec: 55376
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  include/drm/i915_pciids.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1661f9e552d2..1256770d3827 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -689,14 +689,18 @@
>  #define INTEL_RPLU_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)
> +	INTEL_VGA_DEVICE(0xA7A9, info), \
> +	INTEL_VGA_DEVICE(0xA7AC, info), \
> +	INTEL_VGA_DEVICE(0xA7AD, info)
>  
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_RPLU_IDS(info), \
>  	INTEL_VGA_DEVICE(0xA720, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info)
> +	INTEL_VGA_DEVICE(0xA7A8, info), \
> +	INTEL_VGA_DEVICE(0xA7AA, info), \
> +	INTEL_VGA_DEVICE(0xA7AB, info)
>  
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \

-- 
Jani Nikula, Intel Open Source Graphics Center
