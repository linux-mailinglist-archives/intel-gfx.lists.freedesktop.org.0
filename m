Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE0B22B282
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 17:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FF66E0E1;
	Thu, 23 Jul 2020 15:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B80D6E0E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 15:28:32 +0000 (UTC)
IronPort-SDR: otBqNvDpeOTNJPNEYaBtCX6DL9Vl+6Rh1Z/C/btenR71ScbDTUFSDoMu39BAXcCObLBYDB5/Pu
 B2oy3Hh7au4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="150533451"
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="150533451"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 08:28:31 -0700
IronPort-SDR: tKb09aNbXE8c7m27unhu+axTFcyNxy/2TWPjXCackraQ84ISWeD4+lGXdgyCwkO8BciLt85VaO
 ANTk6JzebyzA==
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="488406160"
Received: from sujarith-mobl1.amr.corp.intel.com (HELO [10.254.180.104])
 ([10.254.180.104])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 08:28:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200723140747.27839-1-chris@chris-wilson.co.uk>
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Message-ID: <a985b514-eceb-f6ae-ce60-bce7207d7a0c@intel.com>
Date: Thu, 23 Jul 2020 19:28:11 +0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200723140747.27839-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Downgrade severity of
 CS/SRM frequency scaling
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/23/2020 6:07 PM, Chris Wilson wrote:
> Gracefully skip over the failures in the frequency scaling for the
> moment, the results are under review.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
> Cc: "Ewins, Jon" <jon.ewins@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 8624f5d2a1f3..b50ed20c427c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -700,7 +700,7 @@ int live_rps_frequency_cs(void *arg)
>   				f = act; /* may skip ahead [pcu granularity] */
>   			}
>   
> -			err = -EINVAL;
> +			err = -EINTR;
>   		}
>   
>   err_vma:
> @@ -841,7 +841,7 @@ int live_rps_frequency_srm(void *arg)
>   				f = act; /* may skip ahead [pcu granularity] */
>   			}
>   
> -			err = -EINVAL;
> +			err = -EINTR;
>   		}
>   
>   err_vma:

The BAT failure looks to be unrelated.

Hopefully we can get a little more clarity in the future as to why the

CS does not scale once we are sure that there are no HW or PCU issues.

Reviewed-by : Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
