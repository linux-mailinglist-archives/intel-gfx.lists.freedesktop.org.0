Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D4E12016A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 10:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3403F89F8E;
	Mon, 16 Dec 2019 09:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F325989FA6;
 Mon, 16 Dec 2019 09:46:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 01:46:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="221465602"
Received: from gackerm1-mobl1.ger.corp.intel.com (HELO [10.252.49.201])
 ([10.252.49.201])
 by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2019 01:46:58 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191216093433.2517697-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3b79edfe-673a-9cb7-d8a0-7bf5b54748c8@intel.com>
Date: Mon, 16 Dec 2019 11:46:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191216093433.2517697-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf: Skip OA testing
 on systems too old
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/12/2019 11:34, Chris Wilson wrote:
> Don't flat out fail if the system doesn't support OA, just skip.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/834
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/perf.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/tests/perf.c b/tests/perf.c
> index f5dd6051e..12f552743 100644
> --- a/tests/perf.c
> +++ b/tests/perf.c
> @@ -884,11 +884,9 @@ init_sys_info(void)
>   	const char *test_set_uuid = NULL;
>   	char buf[256];
>   
> -	igt_assert_neq(devid, 0);
> -
>   	timestamp_frequency = get_cs_timestamp_frequency();
>   	igt_debug("timestamp_frequency = %lu\n", timestamp_frequency);
> -	igt_assert_neq(timestamp_frequency, 0);
> +	igt_require(timestamp_frequency);


This requires a kernel version more recent (4.16) than when perf support 
was added (4.13).

Is this what you intended?


-Lionel


>   
>   	if (IS_HASWELL(devid)) {
>   		/* We don't have a TestOa metric set for Haswell so use


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
