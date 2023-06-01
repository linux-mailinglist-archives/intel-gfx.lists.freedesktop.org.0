Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BE971F34D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 21:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F4D10E5AB;
	Thu,  1 Jun 2023 19:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0526110E00D;
 Thu,  1 Jun 2023 19:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685649332; x=1717185332;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=PbZ7pG8rFNLM6ajogVzAXTt21+LI9N085K4lhMPTv00=;
 b=YqtcIt/Sj1IdCEu5wH3HUisMmEn05w9hqkfGneg5+BLihSjxOwqdD9kA
 PlRzIseP6sYjvHkHxuxhiiMpONN/lmpmLbWxTKNHHQljoaM6KKxv1qXQQ
 1Zy6qxsV7F9X4NwtNiW+V24VYvhrtGJ/1/+EfkuyBBYayESpQALEoiTTU
 qwM82Jc0WqLTNVghA/prAym0qWBpxDwhNu07ILwEzEkxjHfJwWQAUFU1N
 XCS2WF7T6HPK2jqHChdBBbCyD/O70f+PmteMzCSxf7BCK64N65WwiATiL
 YRVTNa471Uq8MYOYBr4tNPd9coCVia/xUf04CFL8mH9wlkNZwrz0PkiUE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358964616"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358964616"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 12:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="851842539"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="851842539"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.133])
 ([10.213.9.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 12:55:25 -0700
Message-ID: <eea7a840-d1e9-5f7c-e164-46358720bf82@intel.com>
Date: Thu, 1 Jun 2023 21:55:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 tests/i915/gem_ctx_persistence: Skip some subtests
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



On 24.05.2023 21:19, Vinay Belgaumkar wrote:
> Hang and heartbeat subtests are not supported with GuC submission
> enabled.
>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/i915/gem_ctx_persistence.c | 32 +++++++++++++++++++-------------
>   1 file changed, 19 insertions(+), 13 deletions(-)
>
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 42cf96329..1e122535e 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -1366,19 +1366,25 @@ igt_main
>   
>   	igt_subtest("hostile")
>   		test_nohangcheck_hostile(i915, &empty_cfg);
> -	igt_subtest("hang")
> -		test_nohangcheck_hang(i915, &empty_cfg);
> -
> -	igt_subtest("heartbeat-stop")
> -		test_noheartbeat_many(i915, 1, 0);
> -	igt_subtest("heartbeat-hang")
> -		test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
> -	igt_subtest("heartbeat-many")
> -		test_noheartbeat_many(i915, 16, 0);
> -	igt_subtest("heartbeat-close")
> -		test_noheartbeat_close(i915, 0);
> -	igt_subtest("heartbeat-hostile")
> -		test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
> +
> +	igt_subtest_group {
> +		igt_fixture
> +			igt_skip_on(gem_using_guc_submission(i915));

As Kamil said this should be put into test function.
Otherwise you will have misleading errors in other tests - fixture will 
be called always regardless of running test.

> +
> +		igt_subtest("hang")
> +			test_nohangcheck_hang(i915, &empty_cfg);

What is 'missing' in GuC in case of this test? CI is happy :)


> +
> +		igt_subtest("heartbeat-stop")
> +			test_noheartbeat_many(i915, 1, 0);
> +		igt_subtest("heartbeat-hang")
> +			test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
> +		igt_subtest("heartbeat-many")
> +			test_noheartbeat_many(i915, 16, 0);
> +		igt_subtest("heartbeat-close")
> +			test_noheartbeat_close(i915, 0);
> +		igt_subtest("heartbeat-hostile")
> +			test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);

These tests are handled already by recently merged:
https://patchwork.freedesktop.org/patch/539647/?series=118423&rev=3

Regards
Andrzej


> +	}
>   
>   	igt_subtest_group {
>   		igt_fixture

