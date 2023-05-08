Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72606FA1E9
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 10:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352DC10E155;
	Mon,  8 May 2023 08:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E828710E155
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 08:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683533230; x=1715069230;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ELwWL0c42tmsqyL4CGp07ZQfQJTYHoHHN76j3DET0SM=;
 b=lG2QN0y+iULFVw/pgG1renhL5VvH+Z61ffTnGHR7aFTukS3mqCrhFAoH
 mlo9cBQWEra9CutRxZkcBJd5R8F4L9J+3OrsmKP6bobsPzNnnIF3DVpgX
 k3menqk/ZQTaP2yrvJcHjDNRrr0dlXiGj2H+W9Nve5T2tz/gFKywHH/u8
 TRpg76WBerOtKFDcPTXgzuFb4DCdRxUEbXzRTP1EeWdnv48boUhMG4Npp
 wtlWKjNzJVglqX/V4rAK1nyv38wrPdrALqXqv+6iYgM9z119RWUtwmNOp
 Zy+CIt0B6TypPW3IVi2dHdPMLkLu6Awc1bzYDnYpf2W3Gwgx7B2lInrAd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="334024884"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="334024884"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 01:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="728986897"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="728986897"
Received: from iannetti-mobl.ger.corp.intel.com (HELO [10.251.218.241])
 ([10.251.218.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 01:07:08 -0700
Message-ID: <f7f80c17-5f6b-d6fc-ac52-24d9bd58478a@linux.intel.com>
Date: Mon, 8 May 2023 10:07:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230505144005.23480-1-nirmoy.das@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230505144005.23480-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Drop FLAT CCS check
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, andi.shyti@intel.com,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed the series to drm-intel-gt-next.

This should handle few long standing MTL failures.

On 5/5/2023 4:40 PM, Nirmoy Das wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
>
> Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
> enabling MTL to use it.
>
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 3f638f198796..e0998879a0e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   
>   	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12)
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>   		ring_sz = XY_FAST_COLOR_BLT_DW;
>   	else if (ver >= 8)
>   		ring_sz = 8;
> @@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12) {
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>   		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
>   			(XY_FAST_COLOR_BLT_DW - 2);
>   		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
