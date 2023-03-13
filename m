Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 379136B7FC8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 18:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3E310E0AB;
	Mon, 13 Mar 2023 17:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E922310E0AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 17:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678729998; x=1710265998;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8dJ21apbI0tMORrFDkphDRyhVjW51yImDrMyP7bKoHw=;
 b=El25VCeIlSJA613x//TaIFbtpjBOH63vNWAF3x22G9sObLOni4chlOdd
 296pY0qGAUZD3GVoHbJkFiMggFpk8jNYSKeP8cMh9BLrHVlDs6CCftsLJ
 RRg9jI/M9ujiKp/3OTv3dxUJ0CsJl/RTc7VDrgDSdNRpDIc28l6qvIjQ5
 i1BmODoZPKn/Wx93cauejpt0nfmomVvssM+35EvSblCFM/stVTltxcCe9
 78o0sviRrlx5vPplLWkxbL3Q74o1gOc/CY/i+YGKA8YkBOW3wF6YZcC+o
 oxaiNktolSWj04aFxFt2UlHgHn5zFyoCP5wE/D6epBDltcgXwmbH0rHJU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325582385"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="325582385"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 10:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924595702"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="924595702"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.0.29])
 ([10.213.0.29])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 10:53:15 -0700
Message-ID: <977d29de-ca0b-7398-803a-6aa5a87d898d@intel.com>
Date: Mon, 13 Mar 2023 18:53:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230313103045.8906-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230313103045.8906-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/active: Fix missing debug
 object activation
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>,
 stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13.03.2023 11:30, Nirmoy Das wrote:
> debug_active_activate() expected ref->count to be zero
> which is not true anymore as __i915_active_activate() calls
> debug_active_activate() after incrementing the count.
> 
> v2: No need to check for "ref->count == 1" as __i915_active_activate()
> already make sure of that.
> 
> Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->active callback")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.10+
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/i915_active.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index a9fea115f2d2..8ef93889061a 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -92,8 +92,7 @@ static void debug_active_init(struct i915_active *ref)
>   static void debug_active_activate(struct i915_active *ref)
>   {
>   	lockdep_assert_held(&ref->tree_lock);
> -	if (!atomic_read(&ref->count)) /* before the first inc */
> -		debug_object_activate(ref, &active_debug_desc);
> +	debug_object_activate(ref, &active_debug_desc);
>   }
>   
>   static void debug_active_deactivate(struct i915_active *ref)

