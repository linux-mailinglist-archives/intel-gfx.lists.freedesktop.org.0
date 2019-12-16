Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C70120206
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427946E479;
	Mon, 16 Dec 2019 10:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1142E6E479;
 Mon, 16 Dec 2019 10:10:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19592830-1500050 for multiple; Mon, 16 Dec 2019 10:10:14 +0000
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <24ba122e-1213-f230-86b5-152b916833b3@intel.com>
References: <20191216093433.2517697-1-chris@chris-wilson.co.uk>
 <3b79edfe-673a-9cb7-d8a0-7bf5b54748c8@intel.com>
 <157649017142.2285.5855880084447200659@skylake-alporthouse-com>
 <24ba122e-1213-f230-86b5-152b916833b3@intel.com>
Message-ID: <157649101281.2285.10436268369123568391@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Dec 2019 10:10:12 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2019-12-16 10:06:53)
> On 16/12/2019 11:56, Chris Wilson wrote:
> 
>     Quoting Lionel Landwerlin (2019-12-16 09:46:56)
> 
>         On 16/12/2019 11:34, Chris Wilson wrote:
> 
>             Don't flat out fail if the system doesn't support OA, just skip.
> 
>             Closes: https://gitlab.freedesktop.org/drm/intel/issues/834
>             Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>             ---
>               tests/perf.c | 4 +---
>               1 file changed, 1 insertion(+), 3 deletions(-)
> 
>             diff --git a/tests/perf.c b/tests/perf.c
>             index f5dd6051e..12f552743 100644
>             --- a/tests/perf.c
>             +++ b/tests/perf.c
>             @@ -884,11 +884,9 @@ init_sys_info(void)
>                   const char *test_set_uuid = NULL;
>                   char buf[256];
> 
>             -     igt_assert_neq(devid, 0);
>             -
>                   timestamp_frequency = get_cs_timestamp_frequency();
>                   igt_debug("timestamp_frequency = %lu\n", timestamp_frequency);
>             -     igt_assert_neq(timestamp_frequency, 0);
>             +     igt_require(timestamp_frequency);
> 
> 
>         This requires a kernel version more recent (4.16) than when perf support
>         was added (4.13).
> 
>         Is this what you intended?
> 
>     You have a fatal assert there. I am just changing it so that it skips
>     when not supported as no testing is being performed.
>     -Chris
> 
> I think there might be a problem in i915 if this returns 0.
> 
> When I added this param I went back and figured the value for each platform.
> 
> What kind of machine is fi-blb-e6850? The number looks like a skylake.

Bearlake-B, gen3.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
