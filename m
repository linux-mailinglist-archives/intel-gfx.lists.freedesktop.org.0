Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07904787F51
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 07:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C8D10E5FC;
	Fri, 25 Aug 2023 05:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A61010E5FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 05:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692941870; x=1724477870;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ulk/pWKSLoLfNtuWxIyh5YSMrNecKc7Fel0TBIDiJag=;
 b=f3BeysK6RvOP8BnYbCj2qalWa+XZesfgFAxJWyEFb8+X+8WEkkJHr31T
 yGzcaXLoUA2MEKpgXaJsXPNSNS+Jc9cnw/pBQmC5ACVcDoR6lwlKQrjGT
 ThVNW0QFfN6bMRuHWXtKreU93p7Y4EFZ1QfC2K0FrUBVhCXjcBMT8AmZw
 Pu+gDK2+1KjLebfdShT8RBRmZ6kL4DlodNDfVyjyt4TEeI9/RCsGrivoo
 YmMElDGxOF3jg/wq6S8Ni3iPc7+vsGIgv1T/1Rjg+0lnFhj3bZUiFnbJa
 xdt51eLhrZIvtqtnKx8wBnopXnlwJYqvyOgimNirvPC/l0cE+hUZXsmPo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="377375727"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="377375727"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 22:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737354246"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737354246"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 22:37:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Linyu Yuan <quic_linyyuan@quicinc.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
Date: Fri, 25 Aug 2023 08:37:43 +0300
Message-ID: <875y534r88.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: fix compile issue of
 guc_klvs_abi.h
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
Cc: intel-gfx@lists.freedesktop.org, Linyu Yuan <quic_linyyuan@quicinc.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 25 Aug 2023, Linyu Yuan <quic_linyyuan@quicinc.com> wrote:
> GCC report GUC_KLV_0_KEY and GUC_KLV_0_LEN is not constant when do
> preprocessing.

Please paste the actual compiler warning.

BR,
Jani.



>
> Change to use GENMASK() to avoid the issue.
>
> Signed-off-by: Linyu Yuan <quic_linyyuan@quicinc.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
> index 58012edd4eb0..fd3c16695e5f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
> @@ -29,8 +29,8 @@
>   */
>  
>  #define GUC_KLV_LEN_MIN				1u
> -#define GUC_KLV_0_KEY				(0xffff << 16)
> -#define GUC_KLV_0_LEN				(0xffff << 0)
> +#define GUC_KLV_0_KEY				GENMASK(31, 16)
> +#define GUC_KLV_0_LEN				GENMASK(15, 0)
>  #define GUC_KLV_n_VALUE				(0xffffffff << 0)
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
