Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC02A8703C6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 15:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DEA61121DC;
	Mon,  4 Mar 2024 14:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="b8CuipEh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
 [209.85.166.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E88E10E2B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:07:13 +0000 (UTC)
Received: by mail-il1-f172.google.com with SMTP id
 e9e14a558f8ab-365b413549eso1400985ab.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 07:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1709219232; x=1709824032;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lUr9WwPm1bDr07bGVGyHcZBKICuYFoD9+zTSPH1u+LA=;
 b=b8CuipEhvdn9EtWYpsNHxcdK4DlpeE/4JjmiljMhkN/0OyVZ9zlH6PttP7YhD5hC05
 1U/T/thj9/Ysx+1elnTV0h5NnCqSipzitEyAS1BwGkLpYTf/kBCC9m7zHAaVZNhZ7agq
 Gtr84YPIjH96yxOXy9gRNPsqMifkV4R8T3aLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709219232; x=1709824032;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lUr9WwPm1bDr07bGVGyHcZBKICuYFoD9+zTSPH1u+LA=;
 b=HMy6sf4cC9b933Yry9Mc+JiYD5DFCfSO8MQxAxK5sOeMzR6v2h6uJQJkoGb7/3bON5
 sprNdLY6woy7mKUVN21wT6bpkxtgWyNp4AO3I4OccdAEXwlPUPdDPo8kapsJjBJx5ZNa
 qJLQTXj2U7PQQeuCTcFEHUX5PP9oRUoNQhoTl8RAMZIRY/K4JbpkQ2dH+hXLEyIqespt
 /2a05eLcZcTVHNgOgI1Q06S/8xIuc6BHtAr32kiJhfWB1DknDT3rqEcrDH2o+H722+Rn
 O3PfLMp3i/axD70WuA+Z5wxABrk7+CQmSApm3xNzfgFkQiQDqyqym32zRtMHMdFGltTk
 eEZA==
X-Gm-Message-State: AOJu0YwxuGecbzLM7W57CUCKgC9CdJqp6gUrbxD4yZLlKvMyvZY3yEQO
 3lXks6kxyUiX5MbumaF5ckDLVZNrUNek0jJMA+MeC5IaHqhWIa8LW/x+8LM0xug=
X-Google-Smtp-Source: AGHT+IGnBv7cnuB5+Ygx0Spp8dOixJyI7HqA7kTIXE4S9xFxwubQmYW37F+sI4cGzNH5Sqb9chjpgg==
X-Received: by 2002:a05:6e02:1a27:b0:365:2bd4:2f74 with SMTP id
 g7-20020a056e021a2700b003652bd42f74mr2811151ile.0.1709219232030; 
 Thu, 29 Feb 2024 07:07:12 -0800 (PST)
Received: from [192.168.1.128] ([38.175.170.29])
 by smtp.gmail.com with ESMTPSA id
 m15-20020a02c88f000000b004745b40ba6fsm346477jao.164.2024.02.29.07.07.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Feb 2024 07:07:11 -0800 (PST)
Message-ID: <be2e812c-3898-4be8-8a9d-e221acb837c3@linuxfoundation.org>
Date: Thu, 29 Feb 2024 08:07:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: linux-next: build failure after merge of the kunit-next tree
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>, David Gow <davidgow@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20240229152653.09ecf771@canb.auug.org.au>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20240229152653.09ecf771@canb.auug.org.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 04 Mar 2024 14:11:34 +0000
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

Hi Stephen,

On 2/28/24 21:26, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the kunit-next tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
> 
> In file included from drivers/gpu/drm/tests/drm_buddy_test.c:7:
> drivers/gpu/drm/tests/drm_buddy_test.c: In function 'drm_test_buddy_alloc_range_bias':
> drivers/gpu/drm/tests/drm_buddy_test.c:191:40: error: format '%u' expects a matching 'unsigned int' argument [-Werror=format=]
>    191 |                                        "buddy_alloc failed with bias(%x-%x), size=%u, ps=%u\n",
>        |                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/kunit/test.h:597:37: note: in definition of macro '_KUNIT_FAILED'
>    597 |                                     fmt,                                       \
>        |                                     ^~~
> include/kunit/test.h:662:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
>    662 |         KUNIT_UNARY_ASSERTION(test,                                            \
>        |         ^~~~~~~~~~~~~~~~~~~~~
> include/kunit/test.h:1233:9: note: in expansion of macro 'KUNIT_FALSE_MSG_ASSERTION'
>   1233 |         KUNIT_FALSE_MSG_ASSERTION(test,                                        \
>        |         ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/tests/drm_buddy_test.c:186:17: note: in expansion of macro 'KUNIT_ASSERT_FALSE_MSG'
>    186 |                 KUNIT_ASSERT_FALSE_MSG(test,
>        |                 ^~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/tests/drm_buddy_test.c:191:91: note: format string is defined here
>    191 |                                        "buddy_alloc failed with bias(%x-%x), size=%u, ps=%u\n",
>        |                                                                                          ~^
>        |                                                                                           |
>        |                                                                                           unsigned int
> cc1: all warnings being treated as errors
> 
> Caused by commit
> 
>    806cb2270237 ("kunit: Annotate _MSG assertion variants with gnu printf specifiers")
> 

Thank you. I did allmodconfig build on kselftest kunit branch to make
sure all is well, before I pushed the commits.

> interacting with commit
> 
>    c70703320e55 ("drm/tests/drm_buddy: add alloc_range_bias test")
  > 
> from the drm-misc-fixes tree.
> 
> I have applied the following patch for today (this should probably
> actually be fixed in the drm-misc-fixes tree).
> 

Danial, David,

I can carry the fix through kselftest kunit if it works
for all.

> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Thu, 29 Feb 2024 15:18:36 +1100
> Subject: [PATCH] fix up for "drm/tests/drm_buddy: add alloc_range_bias test"
> 
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> ---
>   drivers/gpu/drm/tests/drm_buddy_test.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/tests/drm_buddy_test.c b/drivers/gpu/drm/tests/drm_buddy_test.c
> index 1e73e3f0d278..369edf587b44 100644
> --- a/drivers/gpu/drm/tests/drm_buddy_test.c
> +++ b/drivers/gpu/drm/tests/drm_buddy_test.c
> @@ -188,7 +188,7 @@ static void drm_test_buddy_alloc_range_bias(struct kunit *test)
>   							      bias_end, size, ps,
>   							      &allocated,
>   							      DRM_BUDDY_RANGE_ALLOCATION),
> -				       "buddy_alloc failed with bias(%x-%x), size=%u, ps=%u\n",
> +				       "buddy_alloc failed with bias(%x-%x), size=%u\n",
>   				       bias_start, bias_end, size);
>   		bias_rem -= size;
>   

thanks,
-- Shuah
