Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E7D7A1C60
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC23810E60F;
	Fri, 15 Sep 2023 10:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAAD10E60E;
 Fri, 15 Sep 2023 10:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694774192; x=1726310192;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SbqnyyZXmImrC88rNlc8BZrf6CDkHyNjzZIF/1GDL/g=;
 b=VMtn3hQ0ll6xnPAuYwm5VnjroV8FUcvIf+PhK4bGopaGmKqD+o/uxvJp
 mxKmjqiTfee4MZnujV3WIuyZa66xwLt0PvfNzWhc7LycKXD9XcsK2RuuK
 dHETpQX6MeTg/Ry2zfWhmtLcFxQbn871bzNEbL9c7vKRsPBUu6FMd4bXS
 wkc1hssyawbEnf4anO97f64jKhgOdiVu8Gdeil9iM3DZx1Ti5bhdqpz3B
 CPCTNYdWIpdR7IJ9shdCs7ytK6bTGwjS8BNC3fokLxK5BV9etWPkP4qef
 0kl2sVzWjYIjq0vC9GhB0q7VWfPiZTBEADLCGdcfy1WfpAEo7ONSdt2wf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381946955"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="381946955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="835169115"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="835169115"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:36:30 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0A1E1580DC7;
 Fri, 15 Sep 2023 03:36:28 -0700 (PDT)
Date: Fri, 15 Sep 2023 12:36:26 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915123626.2b46d1e6@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-21-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-21-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 02/17] lib/kunit: Stop
 loading kunit module explicitly
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
 Isabella Basso <isabbasso@riseup.net>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:36 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Since kmod functions we use for module loading can process module
> dependencies, there is no need to load the "kunit" module explicitly
> before loading a kunit test module.  For the same reason we already don't
> unload the "kunit" module explicitly on cleanup.  Drop the unnecessary
> operation.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM.

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_kmod.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 97667a896f..faf31afabc 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -789,12 +789,6 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  		goto unload;
>  	}
>  
> -	/* The KUnit module is required for running any KUnit tests */
> -	ret = igt_kmod_load("kunit", NULL);
> -	if (ret) {
> -		skip = ret;
> -		goto unload;
> -	}
>  	ret = kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod);
>  	if (ret) {
>  		igt_warn("Unable to load KUnit\n");
