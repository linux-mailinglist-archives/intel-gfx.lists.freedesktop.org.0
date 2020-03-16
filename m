Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F9218661F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 09:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68FEC6E354;
	Mon, 16 Mar 2020 08:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B7786E353;
 Mon, 16 Mar 2020 08:09:49 +0000 (UTC)
IronPort-SDR: sKqTcyduBttOkYuaSx75/Q5NhkG9Gxtsx9YmalHJuWgvNeErMBnMKMLsuGqh0KnxS/jumeF0Lg
 YgIqpHomv0xg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:09:48 -0700
IronPort-SDR: SRLRxe2eYdsxVRE583ftIKjWmNj/ut+Z1RLsnZ+eRtmFdG4ldh8TMQjudW433V/juJUjagPQ26
 /EkGHqh+SlIA==
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="390625172"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:09:46 -0700
Message-ID: <9fd0c91e3a82d4b749314ace64c6ecb86e1da720.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Mar 2020 09:09:45 +0100
In-Reply-To: <20200305175321.31384-1-janusz.krzysztofik@linux.intel.com>
References: <20200305175321.31384-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_exec_gttfill: MMAP_OFFSET
 related refresh
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-03-05 at 18:53 +0100, Janusz Krzysztofik wrote:
> The test already tried to use a working mapping by first trying legacy
> WC, then GTT.  Use gem_mmap__device_coherent() helper instead of
> approaching its implementation locally.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Please ignore this submission, an equivalent implementation has been
just merged.

Thanks,
Janusz

> ---
>  tests/i915/gem_exec_gttfill.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_gttfill.c b/tests/i915/gem_exec_gttfill.c
> index f810dafd1..27277df48 100644
> --- a/tests/i915/gem_exec_gttfill.c
> +++ b/tests/i915/gem_exec_gttfill.c
> @@ -155,15 +155,10 @@ static void fillgtt(int fd, unsigned ring, int timeout)
>  	igt_assert(batches);
>  	for (unsigned i = 0; i < count; i++) {
>  		batches[i].handle = gem_create(fd, BATCH_SIZE);
> -		batches[i].ptr =
> -			__gem_mmap__wc(fd, batches[i].handle,
> -				       0, BATCH_SIZE, PROT_WRITE);
> -		if (!batches[i].ptr) {
> -			batches[i].ptr =
> -				__gem_mmap__gtt(fd, batches[i].handle,
> -						BATCH_SIZE, PROT_WRITE);
> -		}
> -		igt_require(batches[i].ptr);
> +		batches[i].ptr = gem_mmap__device_coherent(fd,
> +							   batches[i].handle, 0,
> +							   BATCH_SIZE,
> +							   PROT_WRITE);
>  	}
>  
>  	/* Flush all memory before we start the timer */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
