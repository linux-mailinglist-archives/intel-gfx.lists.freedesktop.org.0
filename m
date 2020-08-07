Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD2A23E881
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 10:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA8B6E061;
	Fri,  7 Aug 2020 08:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84BB6E053;
 Fri,  7 Aug 2020 08:04:56 +0000 (UTC)
IronPort-SDR: GSE+5CCvH2Q3DYEnXPWja3lY9OGnWhUfodYEdG//p0933r7UJiK9kMeonuTs37t+och83iAzg4
 cuF16/DK4ipw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="214556548"
X-IronPort-AV: E=Sophos;i="5.75,444,1589266800"; d="scan'208";a="214556548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 01:04:56 -0700
IronPort-SDR: PQOSgDI3+nBL0kcN9NchwEdvD491fGNm8VP2pA8AXjkRAYklvdSTNMfGY1gIRdTgcV9vfxZ6jJ
 /Mj6VBIqqD7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,444,1589266800"; d="scan'208";a="397517187"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2020 01:04:55 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 01:04:54 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 13:34:52 +0530
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 7 Aug 2020 09:04:50 +0100
From: "Grzegorzek, Dominik" <dominik.grzegorzek@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH i-g-t] i915/gem_caching: Fix mmap protection for writes
Thread-Index: AQHWbB/fOspK208NwkOqd+ed2RzjPqksOdUA
Date: Fri, 7 Aug 2020 08:04:50 +0000
Message-ID: <938038521cf2f066d592fabff750356103057389.camel@intel.com>
References: <20200806183143.311857-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200806183143.311857-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.213.30.247]
Content-ID: <8895935013595840903C0C5DDAD6977A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_caching: Fix mmap protection
 for writes
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

On Thu, 2020-08-06 at 19:31 +0100, Chris Wilson wrote:
> As we are about to write into the mmap'ed pointer using memset, we
> need
> to specify PROT_WRITE [if we only say PROT_READ, then the memset
> should
> generate a SIGSEGV].
> 
Thank you for fixing that.
> Fixes: 897d21d14e99 ("i915/gem_caching: Remove libdrm dependency")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Dominik Grzegorzek <dominik.grzegorzek@intel.com>
> ---
>  tests/i915/gem_caching.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_caching.c b/tests/i915/gem_caching.c
> index 1d8989db7..894c4b12e 100644
> --- a/tests/i915/gem_caching.c
> +++ b/tests/i915/gem_caching.c
> @@ -282,7 +282,7 @@ igt_main
>  			val2 = i + 63;
>  			cpu_ptr = gem_mmap__cpu(data.fd, scratch_buf-
> >handle,
>  						0, scratch_buf-
> >surface[0].size,
> -						PROT_READ);
> +						PROT_WRITE);
>  
>  			memset(cpu_ptr + start, val2, len);
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
