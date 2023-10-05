Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C867BABC2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 23:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1331210E409;
	Thu,  5 Oct 2023 21:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3897010E19D;
 Thu,  5 Oct 2023 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696539873; x=1728075873;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=w6iE/XFX/i4Mmk6e8s2PXX+0+9rA7eZxi8458bhGYXI=;
 b=BXq33OAOyvkSzFUHxi2qKonXVZew0koeYYxVS29BC4NEMdQwKD70rYSD
 VUAoBvaM02mAaAZ0V04oFlkGetBXw+jWYWGcZPQf6oIFltJUNQ/klQJi9
 pU+adA/hdPfj03Cj4CJLEZ2Xx5fFcYzdPdIzODO9tWDrzoiw7LNVBGkYM
 ogchXEMrh7M8Y3IqcLvr9iNmoRYcCjycRbM/JtUFgPlFpiPaKf1N9gsCA
 lz8Dp8+/S/eQc1gizcLfqV6L6WbtSFchRQVdZ46FBAXfUexI44l75JwID
 HlhdSGN4qVYXwsh0nBKCkeXGlf3V35wpHbXp60cN/cJeO6JdFxDycHweI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="387495305"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="387495305"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="787141280"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="787141280"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 14:04:31 -0700
Date: Thu, 5 Oct 2023 23:04:28 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231005210428.7y4oba4ekhnezyym@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003091044.407965-13-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/9] lib/kunit: Be more verbose on
 errors
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
On 2023-10-03 at 11:10:47 +0200, Janusz Krzysztofik wrote:
> Use a more verbose variant of igt_fail() when failing a dynamic sub-
> subtest on kernel taint.  Also, print a debug message on string
> duplication failure.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 05ff178b27..df0e650d49 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -834,7 +834,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  			if (!pthread_tryjoin_np(modprobe_thread, NULL))
>  				igt_assert_eq(modprobe.err, 0);
>  
> -			igt_fail_on(igt_kernel_tainted(&taints));
> +			igt_assert_eq(igt_kernel_tainted(&taints), 0);
>  		}
>  
>  		free(result);
> @@ -861,7 +861,7 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  	 */
>  	if (!name) {
>  		name = strdup(module_name);
> -		if (name) {
> +		if (!igt_debug_on(!name)) {
>  			char *suffix = strstr(name, "_test");
>  
>  			if (!suffix)
> -- 
> 2.42.0
> 
