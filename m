Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BC356B502
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 11:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA634112F85;
	Fri,  8 Jul 2022 09:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4582E112F80
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 09:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657270961; x=1688806961;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tKWcwPqcbjObrTUB24sffDUwiVK0h3uOAduJNhhM1Kw=;
 b=cnljmnXU7JX3bMqyFMztVHmLqMtz7EwE1wTD/Cn6gmLiIUe5gEmCbfzP
 z8Nflp0DU+eoGZ+vFJylpDcmR+hVpIKE4gx3o4paoMluur4C7r9AFefFQ
 bKqx7Pa4x0jLHldxvmpSYDsX+Pta/zQ4oQad7UV/nCroYcwc9FEGgOW0m
 hjP4Ud7Gu5oXNCAFuKtZlOC/uJtjYPtZ1/JSbc0mygSLAc09fGjOVhkZz
 psGZaUyjt9gmXqYkVZxrSw8TyuDyE/z6h3g5RDzrXcZoSr+OaFbLoUvid
 bhj2v6/LcAzYQlQLy0QsNPjB+PQkpdjxF9gX/tkGkxzTswSpd8gaprHGT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="345924803"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="345924803"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 02:02:40 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="661708958"
Received: from cmchugh-mobl.ger.corp.intel.com (HELO [10.213.229.21])
 ([10.213.229.21])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 02:02:37 -0700
Message-ID: <861d92ff-1d30-10f5-e10b-403980af503b@intel.com>
Date: Fri, 8 Jul 2022 10:02:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
References: <Ysftmk147JdS1gVu@kili>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Ysftmk147JdS1gVu@kili>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix a couple IS_ERR()
 vs NULL tests
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
Cc: =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal.winiarski@intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08/07/2022 09:40, Dan Carpenter wrote:
> The shmem_pin_map() function doesn't return error pointers, it returns
> NULL.
> 
> Fixes: a0d3fdb628b8 ("drm/i915/gt: Split logical ring contexts from execlist submission"

I think this should be:

Fixes: be1cb55a07bf ("drm/i915/gt: Keep a no-frills swappable copy of 
the default context state")

> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

There looks to be one more in gvt/cmd_parser.c?

Otherwise,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 8b2c11dbe354..1109088fe8f6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -176,8 +176,8 @@ static int live_lrc_layout(void *arg)
>   			continue;
>   
>   		hw = shmem_pin_map(engine->default_state);
> -		if (IS_ERR(hw)) {
> -			err = PTR_ERR(hw);
> +		if (!hw) {
> +			err = -ENOMEM;
>   			break;
>   		}
>   		hw += LRC_STATE_OFFSET / sizeof(*hw);
> @@ -365,8 +365,8 @@ static int live_lrc_fixed(void *arg)
>   			continue;
>   
>   		hw = shmem_pin_map(engine->default_state);
> -		if (IS_ERR(hw)) {
> -			err = PTR_ERR(hw);
> +		if (!hw) {
> +			err = -ENOMEM;
>   			break;
>   		}
>   		hw += LRC_STATE_OFFSET / sizeof(*hw);
