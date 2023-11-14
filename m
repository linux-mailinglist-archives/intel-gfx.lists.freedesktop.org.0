Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078E57EADE6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 11:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89ED10E1F1;
	Tue, 14 Nov 2023 10:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF6E10E1EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 10:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699957333; x=1731493333;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=X9bRm6CpezaSUHjlxZJhR9cHdScznnz2kZlRqYDv35Q=;
 b=hEncZgOj3DGzh9YWFq8HBkeiHeyx4aut3MnjwJbxBMknadjaL44Iufzb
 HiI3szmYZrOrttZdEk1qm9sbvogJPM1MUhivBvzBJB7Eqqm2mtFkxIwU9
 xPya83dD4SlElosJgpp7oLchJaexGCbsrxk7BoebBRb9RB+vyZ0BRdbdL
 0HSWrkq8FiSo/IPVWMrxdGSFFOtrXAqu2y6e/qo0++qIhSP+BufGbRJPW
 PRVeWrghvh0E4JsBHMl/nlplcWLEko0mGC+pMfwNweS9ZcLCsTlJbRy2g
 X1wLHa0fDKK2DIM4PJ7trUtyo7voJzGLqDX0wc0hANGzkLVcKdW5hGlkw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="9265034"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="9265034"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:22:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="1096049524"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="1096049524"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.121])
 ([10.213.26.121])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:22:11 -0800
Message-ID: <46edbf6b-f343-4eaf-b8ae-422dd3256fc9@intel.com>
Date: Tue, 14 Nov 2023 11:22:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231113093737.358137-1-mika.kahola@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231113093737.358137-1-mika.kahola@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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

On 13.11.2023 10:37, Mika Kahola wrote:
> At least one TGL had regression when using u8 types
> for entry setup frames calculation. So, let's switch
> to use ints instead.

This explanation is missing the most important part - why int?

I guess it is because intel_psr_entry_setup_frames can return -ETIME, 
which converted to u8 and then int becomes not what we would expect.
And fixes tag is missing.

Regards
Andrzej

> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3691f882e1c0..a4417e85f92a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1093,12 +1093,12 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
>   	return true;
>   }
>   
> -static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
> -				       const struct drm_display_mode *adjusted_mode)
> +static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
> +					const struct drm_display_mode *adjusted_mode)
>   {
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> -	u8 entry_setup_frames = 0;
> +	int entry_setup_frames = 0;
>   
>   	if (psr_setup_time < 0) {
>   		drm_dbg_kms(&i915->drm,

