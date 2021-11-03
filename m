Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBD24442F4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 15:00:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870D4734BF;
	Wed,  3 Nov 2021 14:00:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240EF734BB;
 Wed,  3 Nov 2021 14:00:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218403261"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="218403261"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 07:00:47 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="489572551"
Received: from murphyjo-mobl1.ger.corp.intel.com (HELO [10.213.220.152])
 ([10.213.220.152])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 07:00:46 -0700
To: John.C.Harrison@Intel.com, IGT-Dev@Lists.FreeDesktop.Org
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-6-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f929931-a782-7cfa-dbe0-1e7080eb75c8@linux.intel.com>
Date: Wed, 3 Nov 2021 14:00:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211021234044.3071069-6-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/8] tests/i915/gem_exec_capture:
 Check for memory allocation failure
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/10/2021 00:40, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The sysfs file read helper does not actually report any errors if a
> realloc fails. It just silently returns a 'valid' but truncated
> buffer. This then leads to the decode of the buffer failing in random
> ways. So, add a check for ENOMEM being generated during the read.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   tests/i915/gem_exec_capture.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index e373d24ed..8997125ee 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -131,9 +131,11 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
>   	char *error, *str;
>   	int blobs = 0;
>   
> +	errno = 0;
>   	error = igt_sysfs_get(dir, "error");
>   	igt_sysfs_set(dir, "error", "Begone!");
>   	igt_assert(error);
> +	igt_assert(errno != ENOMEM);

igt_sysfs_get:

	len = 64;
...
                 newbuf = realloc(buf, 2*len);

Maybe the problem is doubling goes out of hand. How big are your 
buffers? Perhaps you could improve the library function instead to grow 
less aggressively.

And at the same time perhaps the bug is this:

                 if (igt_debug_on(!newbuf))
                         break;
...
         return buf;

So failures to grow the buffer are ignored, while failure to allocate 
the initial one are not. Perhaps both should return NULL and then 
callers would not be surprised.

Or you think someone relies on this current odd behaviour?

Regards,

Tvrtko

>   	igt_debug("%s\n", error);
>   
>   	/* render ring --- user = 0x00000000 ffffd000 */
> 
