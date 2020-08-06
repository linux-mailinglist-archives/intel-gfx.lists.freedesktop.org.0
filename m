Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F16F23E1E1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 21:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996406E909;
	Thu,  6 Aug 2020 19:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140796E909;
 Thu,  6 Aug 2020 19:11:12 +0000 (UTC)
IronPort-SDR: I/illrRMrPF6cAE/QJHnveaFk6qSEB1MMkcQF9/cIvloLzTq39IzzNneKdA4Huufb6lAfRxYIu
 gshk1d3POTNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150634580"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="150634580"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 12:11:11 -0700
IronPort-SDR: oZlNvZoAYWbH1DKxTgaAOumij7bJY5xy8OCgC5YfCCuYHo+b5nw9TgNgTVice8g2r59I2/zTrm
 CzeuCoO3EvSQ==
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="467962317"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 12:11:09 -0700
Date: Fri, 7 Aug 2020 00:40:46 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200806191042.GA451@intel.com>
References: <20200806183143.311857-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200806183143.311857-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-06 at 19:31:43 +0100, Chris Wilson wrote:
> As we are about to write into the mmap'ed pointer using memset, we need
> to specify PROT_WRITE [if we only say PROT_READ, then the memset should
> generate a SIGSEGV].
> 
> Fixes: 897d21d14e99 ("i915/gem_caching: Remove libdrm dependency")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
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
>  			cpu_ptr = gem_mmap__cpu(data.fd, scratch_buf->handle,
>  						0, scratch_buf->surface[0].size,
> -						PROT_READ);
> +						PROT_WRITE);
>  
>  			memset(cpu_ptr + start, val2, len);
>  
> -- 
> 2.28.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
