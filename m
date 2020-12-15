Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9F02DB604
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 22:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A42389CA4;
	Tue, 15 Dec 2020 21:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05DB89CA4;
 Tue, 15 Dec 2020 21:47:51 +0000 (UTC)
IronPort-SDR: qddklm96xunqM9ovEdXeUFIO/tyZEFmZaRjqEzeWzFBbOmWI57Y4Cg/4JIddn5/bOl3RDIqOx0
 IgqliLkr28Mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="174185352"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="174185352"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 13:47:51 -0800
IronPort-SDR: +ZinWqNYO9vXeGhDZC4TQYAxe1aTIVVjFAj091+lN/rPNIr+WJT7k8iL4eOECWejbra+Rw1qih
 6jJIe6YwiV/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="412160272"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 15 Dec 2020 13:47:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 13:47:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 13:47:50 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 15 Dec 2020 13:47:50 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t 1/2] i915/gem_exec_params: Assert a 4G object does
 _not_ fit without 48b
Thread-Index: AQHW0yY9iK2uVfAADE+bV73fhJ5vcKn4sVvQ
Date: Tue, 15 Dec 2020 21:47:49 +0000
Message-ID: <f5fd4df2c9cf4a1f9849c78aff6cb0b8@intel.com>
References: <20201215210658.1188718-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201215210658.1188718-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_params: Assert a 4G
 object does _not_ fit without 48b
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Tuesday, December 15, 2020 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: igt-dev@lists.freedesktop.org; Chris Wilson <chris@chris-wilson.co.uk>;
> Tang, CQ <cq.tang@intel.com>
> Subject: [PATCH i-g-t 1/2] i915/gem_exec_params: Assert a 4G object does
> _not_ fit without 48b
> 
> Without opting into 48B addressing, objects are strictly limited to being
> placed only the first (4G - 4K). This is to avoid an issue with stateless 32b
> addressing being unable to access the last 32b page.
> Assert that we do indeed fail to fit in a 4G object without setting the
> EXEC_OBJECT_SUPPORTS_48B_ADDRESS flag.
> 
> Reported-by: CQ Tang <cq.tang@intel.com>
> References:: 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB -
> 1 page")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: CQ Tang <cq.tang@intel.com>
> ---
>  tests/i915/gem_exec_params.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
> index c405f4eb7..e679c512a 100644
> --- a/tests/i915/gem_exec_params.c
> +++ b/tests/i915/gem_exec_params.c
> @@ -340,7 +340,13 @@ static void test_larger_than_life_batch(int fd)
>         for_each_engine(e, fd) {
>  	       /* Keep the batch_len implicit [0] */
>  	       execbuf.flags = eb_ring(e);
> -	       gem_execbuf(fd, &execbuf);
> +
> +	       /* non-48b objects are limited to the low (4G - 4K) */
> +	       igt_assert_eq(__gem_execbuf(fd, &execbuf), -ENOSPC);
> +
> +	       exec.flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
> +	       igt_assert_eq(__gem_execbuf(fd, &execbuf), 0);
> +	       exec.flags = 0;

It is good to test both cases.
Reviewed-by: CQ Tang <cq.tang@intel.com>


>         }
> 
>         gem_sync(fd, exec.handle);
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
