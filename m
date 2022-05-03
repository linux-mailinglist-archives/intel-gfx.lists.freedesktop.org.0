Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9AA517FA2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 10:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F79110ED87;
	Tue,  3 May 2022 08:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155CE10EB9A;
 Tue,  3 May 2022 08:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651566148; x=1683102148;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p6kQ/qhhfSnDw3TIyp8r8wmca+K/zgQpWmeHN3WbOTI=;
 b=OkaM47vUEugw1FxD60BajX1qTnNPDGFHqdaMfklMa3D/a3QTib9uKkt4
 1xguZyepxfijL4OBE1spyUFvcRerBEIuUX6sEYHKLQzFNrrQboJ6stYe6
 RaUmS6Cr+a3cT+sofsPijrNpRr8nn1mLbCHhy3VyS9gfQAaIdohn1xBQn
 zWCW1OZxlM6nIkz969ZVLb0mRXt5qFtCfDcMmO6+hotfgHCvm8JTPvkw6
 DyneFvHLT1bQOgiEEXpkQK7PhOxIske9oftjrypOFwlDsVyo6WFoiO/JY
 2PLlKPkPTMiJm3cjCRsT/4SWyV/q1LML1c9Uju7RZMOek7M5xnvMakIgW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247334650"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="247334650"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:22:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="584111585"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.33.141])
 ([10.249.33.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:22:26 -0700
Message-ID: <c822e897-c091-b47c-2cbb-904f520876a0@linux.intel.com>
Date: Tue, 3 May 2022 10:22:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20220503061556.513175-1-lucas.demarchi@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220503061556.513175-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Make drop_pages() return bool
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


On 5/3/2022 8:15 AM, Lucas De Marchi wrote:
> Commit e4e806253003 ("drm/i915: Change shrink ordering to use locking
> around unbinding.") changed the return type to int without changing the
> return values or their meaning to "0 is success". Move it back to
> boolean.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>


Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index 6a6ff98a8746..1030053571a2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -36,7 +36,7 @@ static bool can_release_pages(struct drm_i915_gem_object *obj)
>   	return swap_available() || obj->mm.madv == I915_MADV_DONTNEED;
>   }
>   
> -static int drop_pages(struct drm_i915_gem_object *obj,
> +static bool drop_pages(struct drm_i915_gem_object *obj,
>   		       unsigned long shrink, bool trylock_vm)
>   {
>   	unsigned long flags;
