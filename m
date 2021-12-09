Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD9946F395
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 20:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B8A10E254;
	Thu,  9 Dec 2021 19:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0240C10E256
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 19:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639076595; x=1670612595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LMXSisyAfskrIRq/cd2qwdLUjLhBlW2uSZajyijCN8U=;
 b=PMgh7rs8NiMDBfmpjm/iadFmMs52PSOXcaATxc2rCQsHJ454phR7jPcu
 TNqq1AxA3bAtgCdqNY32thKefl2+OIVFJINsaBBuXDx4DiH6vBj7ReNnI
 G3WrCnLPpGvJhZQO+fB2UnImxPPkIwDR3dESOH4a5cZUzOv9YpfjSaT3n
 PdiVkr5AbmGzFE/az6nZt+xx8IVRqPUS9K6fKtYHnFNyU4K8Xd5Ur3lqL
 BnVW5nLWTNJbBljHFlj6fTG2udIYSArTXzXGTFUESc8kGGKMEUjtUM30P
 R+PjDFsMypa+EQCRH1sG+5X/CRP6n9e0EgO3umUQp2n4fiRYT8tGy37T8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225051874"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="225051874"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:03:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="612632673"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:03:15 -0800
Date: Thu, 9 Dec 2021 10:57:51 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20211209185751.GA21434@jons-linux-dev-box>
References: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
 <20211209005610.1499729-3-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209005610.1499729-3-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Prepare for different
 firmware key sizes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 08, 2021 at 04:56:09PM -0800, Daniele Ceraolo Spurio wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> 
> Future GuC/HuC firmwares might be signed with different key sizes.
> Don't assume that it must be always 2048 bits long.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

You need SOB here since your posting this even though this is Michal's
patch.

With that fixed:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index b7fa51aefdff..01683f5f95bd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -322,13 +322,6 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>  	uc_fw->ucode_size = (css->size_dw - css->header_size_dw) * sizeof(u32);
>  
>  	/* now RSA */
> -	if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
> -		drm_warn(&i915->drm, "%s firmware %s: unexpected key size: %u != %u\n",
> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> -			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
> -		err = -EPROTO;
> -		goto fail;
> -	}
>  	uc_fw->rsa_size = css->key_size_dw * sizeof(u32);
>  
>  	/* At least, it should have header, uCode and RSA. Size of all three. */
> -- 
> 2.25.1
> 
