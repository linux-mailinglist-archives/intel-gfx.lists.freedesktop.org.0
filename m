Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 227F77BABC5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 23:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7146310E19D;
	Thu,  5 Oct 2023 21:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACA210E19D;
 Thu,  5 Oct 2023 21:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696539941; x=1728075941;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hZp9HrE0X0o0Mlmo93VxPsAAc1SWES9+q/sebpIC05M=;
 b=NOqDHRlemA8ZoF5C6rUHKHeWMUfRDfayEMD/thOmHzNs3mZYRnWLkl9O
 o0e/Ec3c1yWGV2eKgKDGXFn333/GqXEQJXA6DsVvPXJOZQWOulNR0knKH
 Pa57n+Xtms1C3z5Lq/u4dqEG78qDNzno1Bbh1b7YZ0/eC1wgmFqPBDP+Z
 S46GfcDdwBoNd+ovDliF7C0yz9TFYQSne2LJfeKiUTIHisT7teT4L8SFj
 pC2h4HsxUSG9v+i1WMxnljN4S5Y/ktAdZvYeP5SCj5XqV80qWTgCNM/Xa
 DPsMKd6Ikn3O77X9UKe/zumPG6aMyM1jRQn8DpIT/gp5GIVoYDBb33Hqc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382492577"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382492577"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="755616150"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="755616150"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 14:05:39 -0700
Date: Thu, 5 Oct 2023 23:05:36 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231005210536.t2sf6njpzxi4fvrr@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-14-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003091044.407965-14-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/9] lib/kunit: Fix misplaced
 igt_kunit() doc
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
On 2023-10-03 at 11:10:48 +0200, Janusz Krzysztofik wrote:
> When igt_kunit() was converted to a helper and wrapped with a new function
> promoted to take the name and role of the library API, related
> documentation was left unchanged and still placed in front the demoted
> function.  Update that documentation and move it to where it now belongs.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index df0e650d49..426ae5b26f 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -762,15 +762,6 @@ static void *modprobe_task(void *arg)
>  	return NULL;
>  }
>  
> -/**
> - * igt_kunit:
> - * @module_name: the name of the module
> - * @opts: options to load the module
> - *
> - * Loads the test module, parses its (k)tap dmesg output, then unloads it
> - *
> - * Returns: IGT default codes
> - */
>  static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  {
>  	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
> @@ -849,6 +840,14 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
> +/**
> + * igt_kunit:
> + * @module_name: the name of the module
> + * @name: the name of subtest, if different from that derived from module name
> + * @opts: options to load the module
> + *
> + * Loads the test module, parses its (k)tap dmesg output, then unloads it
> + */
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
>  {
>  	struct igt_ktest tst = { .kmsg = -1, };
> -- 
> 2.42.0
> 
