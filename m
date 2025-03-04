Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A311A4E108
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46CC10E5FE;
	Tue,  4 Mar 2025 14:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NncofoNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EFB10E5F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741098899; x=1772634899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lToDidDzr/yR9F5iQ6g5VCuGNxVwPZWkD/oDvNXXgEM=;
 b=NncofoNew90+8ApTSnFPB4OUl+aNpbDzBNsMAG+ROuRH+H82V8eaHOkx
 UMh12F3dQ/+BV1whmxb0uXYylIHFP6xXNy2kB6fvHmZf/X9o6pbinPLoT
 uZrMauCwtXf+buWuvzoK3O149I42nN03ia9JgrCqOVCL7PSl7PmAs0Qx/
 yewxkUXDViBt1nFYhI9M5Fy0Cr7tXliE6FjcRpOz+t5vzkACwHS8P5JAr
 5aPy2VggS+tZfI/bUNG9olPTP8NeFK4QdZ431KOY+2kqrSzQNOBQVmVRN
 KqfQS1VINB29nnjaxubLm6ail1AkFpiBIUsmAwLiJ0mN1CY8mg0AJvvfy w==;
X-CSE-ConnectionGUID: KcSSn7AWQeGPzKX2ptTRAg==
X-CSE-MsgGUID: M4aNKyHGQ6uJULJPs21fqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="29606973"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="29606973"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:34:59 -0800
X-CSE-ConnectionGUID: 9mTAJtvTS8iiwIjUiwiubg==
X-CSE-MsgGUID: DQl/bREJRE2UBVq305Shzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="118882555"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:34:04 -0800
Date: Tue, 4 Mar 2025 15:34:01 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Subject: Re: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Message-ID: <Z8cPWZOkAQxlkOOZ@ashyti-mobl2.lan>
References: <20250224063104.308242-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224063104.308242-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Mon, Feb 24, 2025 at 12:01:04PM +0530, Nitin Gote wrote:
> Sometimes engine reset fails because the engine resumes from an
> incorrect RING_HEAD. Engine head failed to set to zero even after
> writing into it. This is a timing issue and we experimented
> different values and found out that 20ms delay works best based
> on testing.
> 
> So, add a 20ms delay to let engine resumes from correct RING_HEAD.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13650
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 6e9977b2d180..5576f000e965 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -365,6 +365,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
>  			     ENGINE_READ_FW(engine, RING_HEAD),
>  			     ENGINE_READ_FW(engine, RING_TAIL),
>  			     ENGINE_READ_FW(engine, RING_START));
> +		/*
> +		 * Sometimes engine head failed to set to zero even after writing into it.
> +		 * Use 20ms delay to let engine resumes from correct RING_HEAD.
> +		 * Experimented different values and determined that 20ms works best
> +		 * based on testing.
> +		 */
> +		mdelay(20);

Is there any extremely strong reason for using mdelay here,
rather than any other delay function?

Andi

>  		if (!stop_ring(engine)) {
>  			drm_err(&engine->i915->drm,
>  				"failed to set %s head to zero "
> -- 
> 2.25.1
