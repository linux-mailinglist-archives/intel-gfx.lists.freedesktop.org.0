Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE85FC1EEFE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CDC10E926;
	Thu, 30 Oct 2025 08:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPyscmtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B855410E91F;
 Thu, 30 Oct 2025 08:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761812295; x=1793348295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t9mR91NmKHozTXZrAEyvQdTgTW3lXTINYVfqVXYDIfg=;
 b=KPyscmtwF+diy2E0GOLT4an5HMMBuG4CmHxZ7VQ9FWoyUDxvigb36c0w
 MRUD12SyEyKQLJSvQ2zABOpyTzCfbbx1cbMbYcpQHHi/rI8J276da0eH0
 dmYjNE0o+Od24NbzS1fBbhaMSe5PvtDVjmzmonDfuq1z30tdcnOug3d+l
 L4zYNrA7VbBIGEr8I5ZxLytIDN4iakxU2j92DCbSPmtLwGzl1zSQex+sd
 2fhEjNIODmEVNBSxi5XwVdG5342QFXGV/XG3tzulUjvZowA4howmP9Qiv
 BYrD2eFAJn5u+DqQtoMmViZSAlgeYlS5FY3dpzzmTTeqggFX8RWadfo52 w==;
X-CSE-ConnectionGUID: dCjbyVQ/RUKYEtboIaifUQ==
X-CSE-MsgGUID: sRX2oJOXQLaa3TO1ZNHNpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75066972"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75066972"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:18:13 -0700
X-CSE-ConnectionGUID: 6AKDFU8rT9K2a7db/Pu8Ow==
X-CSE-MsgGUID: NeP1JNt9RBK8j7qkVrlN0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="190253448"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.136])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:18:11 -0700
Date: Thu, 30 Oct 2025 10:18:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/dp: Fix readback for target_rr in Adaptive
 Sync SDP
Message-ID: <aQMfQK2OiYixqv9D@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251030051755.3071648-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 30, 2025 at 10:47:51AM +0530, Ankit Nautiyal wrote:
> Correct the bit-shift logic to properly readback the 10 bit target_rr from
> DB3 and DB4.
> 
> Fixes: 12ea89291603 ("drm/i915/dp: Add Read/Write support for Adaptive Sync SDP")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 475518b4048b..c013eb2e18a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4996,7 +4996,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>  	as_sdp->length = sdp->sdp_header.HB3 & DP_ADAPTIVE_SYNC_SDP_LENGTH;
>  	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
>  	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
> -	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
> +	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)(sdp->db[4] & 0x3) << 8);

The (u64) casts are completely pointless. And I would try to write this
in a styple that is more consistent with the vtotal assignment right
above it. Eg.: target_rr = ((db[4] & 0x3) << 8) | db[3];

>  	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
>  
>  	return 0;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
