Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4ED8949261
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6DE10E37B;
	Tue,  6 Aug 2024 13:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TrZBDHCA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FE4910E37B;
 Tue,  6 Aug 2024 13:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722952764; x=1754488764;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=i6CRg/G8WNaBedSytWSSmWvg61HbjpWWwVS7urytdmw=;
 b=TrZBDHCAh+O1aD7zBNYUl17Hmj99dHx3DLZi/lbAzovftv0OkzDews1d
 XzIoQ/IxU9xWt/zfXTDoPDYn+0oBCzXVLU3Y4OcQtj6wATN61J8nrOMk1
 akqf0xdsSm2E14/MG/eVdS9ZHzUCy1qDOj64ylEzdFsTYzgx3VySAIkei
 OVxlL0N992x6/02F/Ag7HTBdMtS7CAPa2KczHZUfo36J7eCcrZUe+N520
 CP0n/GdmGdNrVNw8bkdFc9WpVjm5YXh/MF5JAne4SIrf2++F/UgkreXNM
 Udp5s34P9WcmXFNDwDhpWweHUmgjuWEBnSy4lUxEQjBf0IgahAB5lWWzf A==;
X-CSE-ConnectionGUID: MFcgETZDT5qW1+t1Ez8RtA==
X-CSE-MsgGUID: k+zKB7uqQw6tUyHGk5BnRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20821879"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20821879"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:59:23 -0700
X-CSE-ConnectionGUID: XFyXqsipST2A1z8egBJUJg==
X-CSE-MsgGUID: EyX+C2b1TmK6iYRlSJi7qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61387939"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:59:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/pll_algorithm: Compute C10 HDMI PLLs with
 algorithm
In-Reply-To: <20240806125827.2183899-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
 <20240806125827.2183899-5-ankit.k.nautiyal@intel.com>
Date: Tue, 06 Aug 2024 16:59:06 +0300
Message-ID: <87bk2569cl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 06 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> index 9f60bd9bacbe..288289ec593f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> @@ -8,8 +8,10 @@
>  
>  #include <linux/types.h>
>  
> +struct intel_c10pll_state;
>  struct intel_mpllb_state;
>  
>  void intel_snps_phy_compute_hdmi_tmds_pll(struct intel_mpllb_state *pll_state, u64 pixel_clock);
> +void intel_c10_phy_compute_hdmi_tmds_pll(struct intel_c10pll_state *pll_state, u64 pixel_clock);

If you have a file intel_snps_hdmi_pll.[ch], the functions should be
named intel_snps_hdmi_pll_*().

Or you need to rename the file.

BR,
Jani.

>  
>  #endif /* __INTEL_SNPS_HDMI_PLL_H__ */

-- 
Jani Nikula, Intel
