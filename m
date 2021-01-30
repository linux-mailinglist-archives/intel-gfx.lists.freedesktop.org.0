Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FB8309523
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 13:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B256E06D;
	Sat, 30 Jan 2021 12:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D0F6E06D
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 12:42:18 +0000 (UTC)
IronPort-SDR: 3G/iIVw9Zqe8vVARJ/ypwE1SYrRybFZwctorc30GrHhczo7T0JH+IeaAVDjwr8f7J1mdi+Z/yG
 7FVW9F9/zRRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="167630254"
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; d="scan'208";a="167630254"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2021 04:42:17 -0800
IronPort-SDR: 62WWjQhvhB8Pmu/T60NYQNpL4BP36PCEd8eudUux/4XxyaLYtZH3LOTlHP1r9x6+23j5Ihesr7
 ULGnRQvtHFnQ==
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; d="scan'208";a="389855887"
Received: from shenkel-mobl1.ger.corp.intel.com (HELO [10.252.33.233])
 ([10.252.33.233])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2021 04:42:16 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210129124640.15048-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a4086b6d-6a97-ba97-cbaa-86cd6ce9f0c0@intel.com>
Date: Sat, 30 Jan 2021 14:42:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210129124640.15048-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only trust sseu subslice fuse
 if it is set
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/01/2021 14:46, Chris Wilson wrote:
> Since userspace cannot run without any subslices, it seems remarkable
> that any system would be configured with all fused off. Ignore the fuse
> register if it says 0.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3022
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_sseu.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 0d9f74aec8fe..99c992db2ce7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -341,9 +341,10 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
>   	 * The subslice disable field is global, i.e. it applies
>   	 * to each of the enabled slices.
>   	 */
> -	subslice_mask = (1 << sseu->max_subslices) - 1;
> -	subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
> -			   GEN9_F2_SS_DIS_SHIFT);
> +	subslice_mask = (fuse2 & GEN9_F2_SS_DIS_MASK) >> GEN9_F2_SS_DIS_SHIFT;
> +	if (!subslice_mask) /* Ignore the fuse if it says there is no HW */
> +		subslice_mask = ~0u;
> +	subslice_mask &= GENMASK(sseu->max_subslices - 1, 0);
>   
>   	/*
>   	 * Iterate through enabled slices and subslices to

I'm afraid it's not enough, as far as I can tell even the slice_mask is 
wrong (user device is GT2, can't have 3 slices).

Time to reach out to HW folks.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
