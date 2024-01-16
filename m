Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CAE82ECF1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7476110E471;
	Tue, 16 Jan 2024 10:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A9D10E471
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705401975; x=1736937975;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hp+XBNNuhYyyAVAI4TQXoTcKjV405xc2vwUSuy6g2UA=;
 b=goyV2SBPWbIpsVxmhUKVtoYqPKj0robrvGQxrkdEfvZhbyuScPm8nW0c
 iHjWOKuytjsBBkmQAP1UmBKBt1H3S8XG84XQyqvPPOrLvcN+l8pNi2bIs
 97REwfp9yRRqBMjHN18K4JBCfewMxvAv1se9ZyF9PkYRhNXWyIyJs8G3b
 40s6Ohs8t5RBNqqCw45fyvY87ogatYE4jOVmC8XMg/xm52zJ1RCP72nu9
 OP6pnIiEgHKg7hpsax6w40hMozycS7KVWCagpOyBhbSRiB2oCr9BeFGv9
 uRvWoUU0jVtwM9afx89DToRj7vjjNS28raboBMb6BHGeFZEISEmM8xabh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="485978877"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="485978877"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="874414006"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="874414006"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:46:13 -0800
Message-ID: <23cb3eab-6242-4205-ad1c-960776e34ced@linux.intel.com>
Date: Tue, 16 Jan 2024 11:46:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/16] drm/i915: Fix PTE decode during initial plane
 readout
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-8-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-8-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> When multiple pipes are enabled by the BIOS we try to read out each
> in turn. But we do the readout for the second only after the inherited
> vma for the first has been rebound into its original place (and thus
> the PTEs have been rewritten). Unlike the BIOS we set some high caching
> bits in the PTE on MTL which confuses the readout for the second plane.
> Filter out the non-address bits from the PTE value appropriately to
> fix this.
>
> I suppose it might also be possible that the BIOS would already set
> some caching bits as well, in which case we'd run into this same
> issue already for the first plane.
>
> TODO:
> - should abstract the PTE decoding to avoid details leaking all over
> - should probably do the readout for all the planes before
>    we touch anything (including the PTEs) so that we truly read
>    out the BIOS state
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index a55c09cbd0e4..ffc92b18fcf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -72,7 +72,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>   			return NULL;
>   		}
>   
> -		phys_base = pte & I915_GTT_PAGE_MASK;
> +		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
>   		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
>   
>   		/*
