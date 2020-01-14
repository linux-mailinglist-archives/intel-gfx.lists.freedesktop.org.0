Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63120139DC3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 01:05:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF2B6E1B1;
	Tue, 14 Jan 2020 00:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A8189F33;
 Tue, 14 Jan 2020 00:05:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 16:05:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="247860953"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jan 2020 16:05:11 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jan 2020 16:05:11 -0800
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jan 2020 16:05:11 -0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.30]) by
 shsmsx102.ccr.corp.intel.com ([169.254.2.202]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 08:05:09 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Skip redundant
 clear of a fresh buffer
Thread-Index: AQHVxU28fm34vmnIW0eDYNI6S6a79qfpUUvQ
Date: Tue, 14 Jan 2020 00:05:09 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A61602B82@SHSMSX101.ccr.corp.intel.com>
References: <20200107112913.2726371-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200107112913.2726371-1-chris@chris-wilson.co.uk>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Skip redundant
 clear of a fresh buffer
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> Wilson
> Sent: Tuesday, January 7, 2020 7:29 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: igt-dev@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Skip redundant clear of
> a fresh buffer
> 
> No need to memset(0) the mapping of a fresh buffer, as we expect it to
> be 0 already.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_ctx_engines.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
> index 55794a438..86c4bea5a 100644
> --- a/tests/i915/gem_ctx_engines.c
> +++ b/tests/i915/gem_ctx_engines.c
> @@ -454,7 +454,6 @@ static void independent(int i915)
>  	map = gem_mmap__cpu(i915, results.handle, 0, 4096, PROT_READ);
>  	gem_set_domain(i915, results.handle,
>  		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
> -	memset(map, 0, 4096);

Reviewed-by: Chuansheng Liu <chuansheng.liu@intel.com>

This patch can fix the problem of memsetting read-only map memory.
Just curious when it can get merged?
Thanks.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
