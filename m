Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0670D4EDBC3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 16:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D9910EA94;
	Thu, 31 Mar 2022 14:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B966F10EA94
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 14:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648737318; x=1680273318;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hpiB2L0Di77Ynun39ckuSAmIWWfb7lgHv8jME3j6VtM=;
 b=cbYNCXgDc5TdDBQ3aEab1+jfb/zisPgB8da4W3uz2Tt3vcvzBOcZo/dg
 GBSPL8V4QQyiIkO4M0kKuHkYoAzc3zsIE1fiNjhbm1Zq+BPaOYwCYxPK7
 KFisveSsSOTpGmgPagCLvI0wzmvc6WGrWbnVVKAXWlxQLce6a2vG22oNN
 JgKS4ikY61hY3Zd9V+mBstHdUXfMcVeQOuwyCbga6qSGDlZAtl9zOrx51
 EBHAJhyv9ATbB7pP5Ht272TkLqcdWH08+Wc9H5arWqoJcPrwhBQxH0QEI
 +fP8wk6e8cVLNgvdQXPndQ7NUvEaoUgQ9xvbFtNs8cNAg9QZLXBXwaXUk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="260035960"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="260035960"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 07:35:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="654791910"
Received: from juanniex-mobl.ger.corp.intel.com (HELO [10.213.215.247])
 ([10.213.215.247])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 07:35:16 -0700
Message-ID: <0ad71510-0682-0179-213f-af9c623d09c1@linux.intel.com>
Date: Thu, 31 Mar 2022 15:35:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220331000908.1225343-1-casey.g.bowman@intel.com>
 <20220331000908.1225343-2-casey.g.bowman@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220331000908.1225343-2-casey.g.bowman@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH v5 1/1] Split i915_run_as_guest into x86
 and non-x86
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/03/2022 01:09, Casey Bowman wrote:
> Splitting i915_run_as_guest into a more arch-friendly function
> as non-x86 builds do not support this functionality.
> 
> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index b2d89c43f24d..a42882e68eea 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -428,7 +428,12 @@ static inline bool timer_expired(const struct timer_list *t)
>   
>   static inline bool i915_run_as_guest(void)
>   {
> +#if IS_ENABLED(CONFIG_X86)
>   	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +#else
> +	/* Not supported yet */
> +	return false;
> +#endif

Works for me.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

You may want to #ifdef the inclusion of asm/hypervisor.h as well. It 
only happens to work by chance since Arm has that file. Although it 
becomes uglier at that point..

There is a function in there which appears may give you a way to query 
if under hypervisor, based on some feature flags, but you'd have to ask 
Arm experts if that would make sense.

Regards,

Tvrtko

>   }
>   
>   bool i915_vtd_active(struct drm_i915_private *i915);
