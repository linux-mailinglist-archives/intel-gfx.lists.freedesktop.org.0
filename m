Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CD36D65E9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 16:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3F510E6D9;
	Tue,  4 Apr 2023 14:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866A110E6D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 14:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680620106; x=1712156106;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JC+QrcxA2Vh5gA8K1i8Sv8pO/xy1zNR8WqtMKyDY3mo=;
 b=WqwqmiU1T1Aw+i2qGK2X1CA8IVF074GMEt1JiXurIqxMK+fSyyqja8LK
 eX4TbjjwStxMDjxOZAIa4fVMZNjah7I4u5RchOKaIsDgI1mj3mltNc/t3
 wEEWUkD3jecpNEw0+eQ4EvECoOB5x73TTjt+vW6w/1SJs5TltpnwpbFVr
 LuGaJV2XXRECC1TUqeD8aD8nBvvCOseDUgWl+s0XIAQxEEFW7HOLniD2k
 jLMWvCgaTBhFmSNa5j3E4Gesrnv8GaD/ekmQALSkkHqktkCwBVa9FkHbp
 esj8+7DeMyMQ02Bru84m8wuj99UvrsJHyp1tA2tHRstoQdNGFPLUXV+H4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428491252"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="428491252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 07:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="830014732"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="830014732"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.33.159])
 ([10.249.33.159])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 07:54:57 -0700
Message-ID: <e02c3cbf-8df2-bb90-2ba7-7c2e69eaea74@linux.intel.com>
Date: Tue, 4 Apr 2023 16:54:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230404090528.173075-1-jani.nikula@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230404090528.173075-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part
 of HDRTEST
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/4/2023 11:05 AM, Jani Nikula wrote:
> Enabling kernel-doc warnings in commit aaee4bbe8a1a ("drm/i915: enable
> kernel-doc warnings for CONFIG_DRM_I915_WERROR=y") actually only covers
> the .c files. And it's good for avoiding warnings in W= builds. However,
> we need something more to check for kernel-doc issues in headers. Add it
> as part of the existing HDRTEST.
>
> We have tons of issues, and this unleashes warnings galore on
> CONFIG_DRM_I915_WERROR=y. It doesn't fail the build because (at least
> for now) we don't pass -Werror to kernel-doc.
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


This will be really helpful.

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks,

Nirmoy

> ---
>   drivers/gpu/drm/i915/Makefile | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 831e42175165..b739300267c2 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -387,7 +387,8 @@ always-$(CONFIG_DRM_I915_WERROR) += \
>   		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
>   
>   quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
> -      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
> +      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; \
> +		$(srctree)/scripts/kernel-doc -none $<; touch $@
>   
>   $(obj)/%.hdrtest: $(src)/%.h FORCE
>   	$(call if_changed_dep,hdrtest)
