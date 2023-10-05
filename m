Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFB77BABB8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 23:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE7610E409;
	Thu,  5 Oct 2023 21:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A445010E19D;
 Thu,  5 Oct 2023 21:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696539660; x=1728075660;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MJziim614906kLzlb4mCHtAv7zaUQivyEcRYE21qekA=;
 b=G2LcmVuizf24rTSjtetwCSNkAmv3qf2ftfR/+N+R5CAswmmCeqYalk2z
 JSkP5m3S0YZYLatz5Xz3IjTlhTD9aBCYoQaCURABZLA1l8txA/4rcV1yw
 TRnnZswqUXtIv96Ihud5VM4yaqTUnK57jg0djo9P4vbfEHFIAoSbwHFPa
 ZOqoPTzM3733SgwJMqT++p0xh1KDpvPFS1mYGNkusqYHj2noXs6Uo3w+c
 rvdxTDjPiPRe2ybPW23RZF0/kWtLUN27dMyfRfarXNJaxXcO8bagEa6V+
 S8zt+VMGN7wsFe1rVA6meGXBeGHVvCjQRrr49CmkM3RE8klKyjgd+Acde Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="368695334"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="368695334"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="781386839"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="781386839"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 14:00:58 -0700
Date: Thu, 5 Oct 2023 23:00:55 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231005210055.k4zawftxpv3mmglw@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-12-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003091044.407965-12-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/9] lib/kunit: Fix handling of
 potential errors from F_GETFL
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,
On 2023-10-03 at 11:10:46 +0200, Janusz Krzysztofik wrote:
> Function fcntl(..., F_GETFL, ...) that returns file status flags may also
> return a negative error code.  Handle that error instead of blindly using
> the returned value as flags.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index d98e6c5f9e..05ff178b27 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -783,8 +783,8 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> -	flags = fcntl(tst->kmsg, F_GETFL, 0) & ~O_NONBLOCK;
> -	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags) == -1,
> +	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
> +	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
>  		      "Could not set /dev/kmsg to blocking mode\n");
>  
>  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> -- 
> 2.42.0
> 
