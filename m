Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A3652BBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 16:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2703310ECCC;
	Wed, 18 May 2022 14:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A03510ECCC
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652882919; x=1684418919;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=atDUoF8dcdI5uxzzK3HgAecVqz9G/JbLgPh03jwkzoc=;
 b=g9ZDVkJ6/YlLv/LjSmfpgKyZgd7A2NkTyGxtactNt8WMU55LRgNNEQcR
 qKUzxo61zxHUUrYntDi5ABdVXMvYZ766W2wQL9X6fWivDFaZbsCZdW7Vw
 UkrejOoHg1xQ1a1b/x5yEqzs/ORW4dqzlQG7H/VIMzSp8e4ZgM4lwO/Ch
 T3Cts0/wQd+XCaAzB6+dY6jad/4bKo7FHbMX9yQasFQ6LrXbBENYvAzvv
 9dmB1ucilywc3orr8/LfsfDVrARI8xfpQxqPF5faOiLx3nxWJy9fFoXYf
 sp7H6PVczSg1wJZk6g9egKKQd5QqSBrjjftYHllCh0fgbEJFzFRS+6dro w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358095688"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="358095688"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 07:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="817457298"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 18 May 2022 07:08:37 -0700
Received: from [10.249.133.31] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.133.31])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 24IE8ZCF026547; Wed, 18 May 2022 15:08:36 +0100
Message-ID: <fecf0889-c10b-3034-91d3-68add9cc9db1@intel.com>
Date: Wed, 18 May 2022 16:08:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220518113315.1305027-1-jani.nikula@intel.com>
 <20220518113315.1305027-2-jani.nikula@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20220518113315.1305027-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uc: Fix undefined behavior due
 to shift overflowing the constant
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
Cc: Randy Dunlap <rdunlap@infradead.org>, Borislav Petkov <bp@suse.de>,
 Ruiqi GONG <gongruiqi1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 18.05.2022 13:33, Jani Nikula wrote:
> From: Borislav Petkov <bp@suse.de>
> 
> Fix:
> 
>   In file included from <command-line>:0:0:
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c: In function ‘intel_guc_send_mmio’:
>   ././include/linux/compiler_types.h:352:38: error: call to ‘__compiletime_assert_1047’ \
>   declared with attribute error: FIELD_PREP: mask is not constant
>     _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> 
> and other build errors due to shift overflowing values.
> 
> See https://lore.kernel.org/r/YkwQ6%2BtIH8GQpuct@zn.tnic for the gory
> details as to why it triggers with older gccs only.
> 
> v2 by Jani:
> - Drop the i915_reg.h changes
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Ruiqi GONG <gongruiqi1@huawei.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Borislav Petkov <bp@suse.de>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h           | 2 +-
>  drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h | 2 +-
>  drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h          | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h                 | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index be9ac47fa9d0..4ef9990ed7f8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -50,7 +50,7 @@
>  
>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
> -#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffff << 16)
> +#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffffU << 16)

nit: maybe for consistency we should update all these hex constants to
be explicitly marked as "unsigned" (as that was the intention) and also
maybe we should use lowercase "u" - but both that can be done later,

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_LEN		(0xffff << 0)
>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_DATAn
>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_3_VALUE64		GUC_HXG_REQUEST_MSG_n_DATAn
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> index c9086a600bce..df83c1cc7c7a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> @@ -82,7 +82,7 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
>  #define GUC_CTB_HDR_LEN				1u
>  #define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
>  #define GUC_CTB_MSG_MAX_LEN			256u
> -#define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
> +#define GUC_CTB_MSG_0_FENCE			(0xffffU << 16)
>  #define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
>  #define   GUC_CTB_FORMAT_HXG			0u
>  #define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
> index 29ac823acd4c..7d5ba4d97d70 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
> @@ -40,7 +40,7 @@
>   */
>  
>  #define GUC_HXG_MSG_MIN_LEN			1u
> -#define GUC_HXG_MSG_0_ORIGIN			(0x1 << 31)
> +#define GUC_HXG_MSG_0_ORIGIN			(0x1U << 31)
>  #define   GUC_HXG_ORIGIN_HOST			0u
>  #define   GUC_HXG_ORIGIN_GUC			1u
>  #define GUC_HXG_MSG_0_TYPE			(0x7 << 28)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> index 2516705b9f36..8dc063f087eb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> @@ -28,7 +28,7 @@
>  #define   GS_MIA_HALT_REQUESTED		  (0x02 << GS_MIA_SHIFT)
>  #define   GS_MIA_ISR_ENTRY		  (0x04 << GS_MIA_SHIFT)
>  #define   GS_AUTH_STATUS_SHIFT		30
> -#define   GS_AUTH_STATUS_MASK		  (0x03 << GS_AUTH_STATUS_SHIFT)
> +#define   GS_AUTH_STATUS_MASK		  (0x03U << GS_AUTH_STATUS_SHIFT)
>  #define   GS_AUTH_STATUS_BAD		  (0x01 << GS_AUTH_STATUS_SHIFT)
>  #define   GS_AUTH_STATUS_GOOD		  (0x02 << GS_AUTH_STATUS_SHIFT)
>  
