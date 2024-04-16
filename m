Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 401EC8A6B84
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 14:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9306112C43;
	Tue, 16 Apr 2024 12:54:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5HyOt3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B077112C43
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 12:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713272088; x=1744808088;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cmPx3ueFAeNv84t5iadSRzIA3frRPSqK7pFf2FKYvtM=;
 b=K5HyOt3MMUcKsjCsJsY6zhEsC8dZo8wLCi4ax9zsfvkPvTq6b+ymGoEA
 uX397heqkaYFqHb1Ob7G+X3LEzC/oc2dv2y9xf08U+1VQsQGh5ZQJmJ2h
 DFg6tqMnklzcKePRvEFvvtZ8OLCBfVN4u+Rl1V2nbJ52q0m6FpzQ2k41J
 qpwI3gEMK81CTCBOwiz3Lf3XvmwtwdnM/PDtrYIvW8dasihQdmI6NLdrL
 YEZlHz5C49LHgbSvs0Djt3aVZ+CSkJvJo20Pfkt4A4HBEAeuXnxYLBTNY
 MlMJ4tA9Fe14MYgUtYVWbispucLP3Pn7/w+0uYmy29+YTRq57I4PORrwW Q==;
X-CSE-ConnectionGUID: 84N/gA2PTq+SD5XUXrcFzQ==
X-CSE-MsgGUID: t7gx/xfgT32LteW2B6cJUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8871115"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8871115"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 05:54:47 -0700
X-CSE-ConnectionGUID: A68y6q6xQsSgI9fn9hPfEg==
X-CSE-MsgGUID: tTLHd53+QLGplaixqjQFQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22319222"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Apr 2024 05:54:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Apr 2024 15:54:44 +0300
Date: Tue, 16 Apr 2024 15:54:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 dnyaneshwar.bhadane@intel.com
Subject: Re: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Message-ID: <Zh51FEfyQbl0mIbY@intel.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416072733.624048-3-suraj.kandpal@intel.com>
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

On Tue, Apr 16, 2024 at 12:57:33PM +0530, Suraj Kandpal wrote:
> Add SCLKGATE_DIS register and it's register definition which
> will be used the next patch.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..beec91a2f493 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6250,6 +6250,10 @@ enum skl_power_gate {
>  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
>  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
>  
> +/* SCLKGATE_DIS */
> +#define SCLKGATE_DIS			_MMIO(0xc2014)

That address is SFUSE_STRAP

> +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> +
>  #define WM_MISC				_MMIO(0x45260)
>  #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
>  
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
