Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B01B37C709B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3365610E174;
	Thu, 12 Oct 2023 14:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B484910E174;
 Thu, 12 Oct 2023 14:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697121994; x=1728657994;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HYuhoXW/mXezx9iTtKpDqF8H0nSgOk/I80pR477wTsc=;
 b=g/lbSjrgcU/04jdUPRUsEROegY0C1eAhNYWOKQc1SxizFeFWbsecbLq2
 we1GT4VJdrjI3So124V1z9So5vzYsO4fflR+A8mQUhU5kb5bl4LWVcIJi
 7CQ1F9TVGherbm7ZHVivTSnwV1EEpMw4o2e1csxfzyL9jaOn5kYz3hSkT
 iEcF3TRuk9R1QArPQbjNygt21sGPxWj6JvfaGfr+u0S5bpByxwce31eSa
 c+k8XZh2jmY73t5ENQaNjnoJnydoV/Py1K5jBwmOnTESm3WqXL3FF0OiJ
 3EotwFBKE4iA4GoRRfM1FlmVqW+ACmgm40mPiMbTBhoRZjdFOWeW4JR+i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="365206263"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="365206263"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="783730580"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="783730580"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:46:33 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.15.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 34F0A5807A3;
 Thu, 12 Oct 2023 07:46:31 -0700 (PDT)
Date: Thu, 12 Oct 2023 16:46:29 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20231012164629.71f9a91b@maurocar-mobl2>
In-Reply-To: <20231011141734.590321-15-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
 <20231011141734.590321-15-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 02/11] lib/kunit: Fix handling of
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Oct 2023 16:17:37 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Function fcntl(..., F_GETFL, ...) that returns file status flags may also
> return a negative error code.  Handle that error instead of blindly using
> the returned value as flags.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Reviewed-by: Mauro Carvaho Chehab <mchehab@kernel.org>

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
