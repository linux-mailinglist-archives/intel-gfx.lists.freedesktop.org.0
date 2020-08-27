Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EED253F94
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 09:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E37E6E427;
	Thu, 27 Aug 2020 07:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8C06E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 07:50:03 +0000 (UTC)
IronPort-SDR: lDoU1dJ7Eq7d67aU03ABYajqCEPfWZIenFrwAK2ggZJk1Rh+26xNlS8+5UTCsKZEvDmzD+fUJc
 JCwQ6OuCdDmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="155696499"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="155696499"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 00:50:02 -0700
IronPort-SDR: bFqt0TUkSMYwocU1iqqL+KXiGNcqk//sgRW1RasX81F1LudZeSS3r5QaooQ3XeHWdEGv/OkjW8
 ebG9EGYW4hQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="475107391"
Received: from pduzinki-mobl1.ger.corp.intel.com (HELO [10.249.36.219])
 ([10.249.36.219])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2020 00:50:01 -0700
To: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>,
 intel-gfx@lists.freedesktop.org, umesh.nerlige.ramappa@intel.com
References: <20200827073807.2965-1-sowmyax.kaparthi@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ad028d55-996e-e4c2-2cb9-f68b0dc7a761@intel.com>
Date: Thu, 27 Aug 2020 10:50:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200827073807.2965-1-sowmyax.kaparthi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [i-g-t] Fixing the latency of hrtimer
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

Hi Sowmya,

Thanks for the patch. If you could send it to the 
igt-dev@lists.freedesktop.org list instead, this is where the IGT 
patches go.

Could you refresh my memory as to what this is fixing?
It sounds like this is just adjusting a value to match more common settings.

Cheers,

-Lionel

On 27/08/2020 10:38, Sowmya Kaparthi wrote:
> The blocking/polling parameterized tests were introduced to test
> different hrtimer configurations.These tests check how many times the
> process wakes up to read the reports with different hrtimer values (=
> duration of test / hrtimer value). A user is more likely to choose a
> larger hrtimer value than the default 5ms to avoid wake up too frequently.
>
> Cc: Landwerlin, Lionel G <lionel.g.landwerlin@intel.com>
> Signed-off-by: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>
> ---
>   tests/i915/perf.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/perf.c b/tests/i915/perf.c
> index a894fd38..5fd1193f 100644
> --- a/tests/i915/perf.c
> +++ b/tests/i915/perf.c
> @@ -4995,7 +4995,7 @@ igt_main
>   			      40 * 1000 * 1000 /* default 40ms hrtimer */);
>   		test_blocking(500 * 1000 /* 500us oa period */,
>   			      true /* set_kernel_hrtimer */,
> -			      2 * 1000 * 1000 /* default 2ms hrtimer */);
> +			      10 * 1000 * 1000 /* default 10ms hrtimer */);
>   	}
>   
>   	igt_describe("Test polled read with default hrtimer frequency");
> @@ -5014,7 +5014,7 @@ igt_main
>   			     40 * 1000 * 1000 /* default 40ms hrtimer */);
>   		test_polling(500 * 1000 /* 500us oa period */,
>   			     true /* set_kernel_hrtimer */,
> -			     2 * 1000 * 1000 /* default 2ms hrtimer */);
> +			     10 * 1000 * 1000 /* default 10ms hrtimer */);
>   	}
>   
>   	igt_describe("Test polled read with buffer size smaller than available data");


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
