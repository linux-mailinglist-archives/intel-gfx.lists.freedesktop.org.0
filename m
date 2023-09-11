Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A30B79A688
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051F710E07C;
	Mon, 11 Sep 2023 09:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417B610E07C;
 Mon, 11 Sep 2023 09:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422966; x=1725958966;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UtKQwGTi4UCuCrA4rvgVFkrbA53BV2tomlUEh5ycfiw=;
 b=VgBkmAZe+uh9I/brlK9kMKSQN2KzjRzshroNuhRfVfc40N/KWU5fNMqd
 nilhevjDVoYKLUql+RbVZgFUg6b5Om5TFoc1wEEnx715lNHISd3otIiVh
 GqF900yoIjmgwPiJGANAjBFZ7oaFneNj0f9/dJKstPxQNigM2NAWCu/90
 Q37A1zOeEaFQGFj3TdZqpV9toSFEsy21MczODEI0zDwJ6f1pIkcfsGYyd
 mKzHf2VetG3TgN3ZJOa7ihwIhqyx3SiLwOAoPZc8Rd/sAsnzkT5v/Bmc+
 1IROMDSWA1TVD2LAJx7wqYF7dbPr8JzZJk70vOHkuszCVk9zATb5rlZSt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="363056507"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="363056507"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="778318450"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="778318450"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:02:45 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B966C580DC7;
 Mon, 11 Sep 2023 02:02:43 -0700 (PDT)
Date: Mon, 11 Sep 2023 11:02:41 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911110241.156b3259@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-27-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-27-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 08/17] lib/kunit: Cancel KTP parser
 on module load failure
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:42 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> For our KTAP parser to be running in parallel with kunit test module
> loading, we now start it in a separate thread before we load the module.
> If the module loading fails then we join the KTAP parser thread right
> after that failure.  If the KTAP thread sleeps for some reason then we
> can fail to break the test immediately.
> 
> Cancel the KTAP parser thread right after module load error and before
> joining it.

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 1 +
>  lib/igt_ktap.c | 6 ++++++
>  lib/igt_ktap.h | 1 +
>  3 files changed, 8 insertions(+)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 78b8eb8f53..fb0bd21ee5 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -773,6 +773,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  	results = ktap_parser_start(tst->kmsg, is_builtin);
>  
>  	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
> +		ktap_parser_cancel();
>  		igt_ignore_warn(ktap_parser_stop());
>  		igt_skip("Unable to load %s module\n", tst->module_name);
>  	}
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 3cfb55ec97..1e75b2ec23 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -602,6 +602,12 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
>  	return &results;
>  }
>  
> +void ktap_parser_cancel(void)
> +{
> +	ktap_args.is_running = false;
> +	pthread_cancel(ktap_parser_thread);
> +}
> +
>  int ktap_parser_stop(void)
>  {
>  	ktap_args.is_running = false;
> diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
> index ea57c2bb9b..991800e912 100644
> --- a/lib/igt_ktap.h
> +++ b/lib/igt_ktap.h
> @@ -45,6 +45,7 @@ struct ktap_test_results {
>  
>  
>  struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin);
> +void ktap_parser_cancel(void);
>  int ktap_parser_stop(void);
>  
>  #endif /* IGT_KTAP_H */
