Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4B356FB49
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 11:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF91611253E;
	Mon, 11 Jul 2022 09:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1D211253E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657531690; x=1689067690;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6kUqRpT1oVjf83SPNw1oqSkNlJoRSr7PKWZJfs4a+gg=;
 b=nBXVCQKeuev28Zj0TqT+oaZeU/7hNm/hMZeqqNLCOg3lFoxr59/SalFi
 BqfU+oMetnDCcrCCGcuESU24h6FzFGCAurDQ75NjJqdiOyUKU6ruZi8x6
 wWL1G1b7U0G8oa9Jk2fNWXQG2nI9jYu88Qes/kqUttOGclNMsLD9KvRuK
 jMVcBVYqm3ktXQNlUzzJHDONlm6GtGF0C6uDhbkpHTpiCw7zKPYPnQBQb
 aF4NeIVAahuxuAwNwj0sQx74BgBPNF90K0S1Z+3W9TcDjMCHeMKWorR+3
 2oNZuuUcLZUijYE7aQppXJdTBBlSDMcyy3zfYtd9iRR1iH6ofRLe4UNRj A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="310219453"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="310219453"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 02:28:09 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="594815550"
Received: from roniellx-mobl.ger.corp.intel.com (HELO [10.213.211.225])
 ([10.213.211.225])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 02:28:06 -0700
Message-ID: <575a6b06-9d0b-6866-1569-d30359c9a280@intel.com>
Date: Mon, 11 Jul 2022 10:28:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
References: <20220708094104.GL2316@kadam>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220708094104.GL2316@kadam>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: fix a couple
 IS_ERR() vs NULL tests
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

On 08/07/2022 10:41, Dan Carpenter wrote:
> The shmem_pin_map() function doesn't return error pointers, it returns
> NULL.
> 
> Fixes: be1cb55a07bf ("drm/i915/gt: Keep a no-frills swappable copy of the default context state")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Pushed to drm-intel-gt-next. Thanks for the fix.

> ---
> v2: Correct the Fixes tag.  Add Matthew's reviewed-by tag.
> 
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
