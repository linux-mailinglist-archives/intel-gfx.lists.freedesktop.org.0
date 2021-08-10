Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA283E58C9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 13:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31F3989D99;
	Tue, 10 Aug 2021 11:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D1889D99
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 11:02:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="202060811"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="202060811"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="525991976"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2021 04:02:57 -0700
Received: from [10.249.39.58] (gluber-mobl1.ger.corp.intel.com [10.249.39.58])
 by linux.intel.com (Postfix) with ESMTP id 72C74580922
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 04:02:57 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20210809023342.377422-1-julius.victorian.home@gmail.com>
From: Lionel Landwerlin <lionel.g.landwerlin@linux.intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <fb010ec2-5776-58c1-93f1-400f57674402@linux.intel.com>
Date: Tue, 10 Aug 2021 14:02:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210809023342.377422-1-julius.victorian.home@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] DRM: i915: i915_perf: Fixed compiler warning
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

On 09/08/2021 05:33, Julius Victorian wrote:
> From: Julius <julius.victorian.home@gmail.com>
>
> Fixed compiler warning: "left shift of negative value"
>
> Signed-off-by: Julius Victorian <julius.victorian.home@gmail.com>

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks!

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 9f94914958c3..7b852974241e 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2804,7 +2804,7 @@ get_default_sseu_config(struct intel_sseu *out_sseu,
>   		 * all available subslices per slice.
>   		 */
>   		out_sseu->subslice_mask =
> -			~(~0 << (hweight8(out_sseu->subslice_mask) / 2));
> +			~(~0U << (hweight8(out_sseu->subslice_mask) / 2));
>   		out_sseu->slice_mask = 0x1;
>   	}
>   }


