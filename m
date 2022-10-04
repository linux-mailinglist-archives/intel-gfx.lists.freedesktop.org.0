Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00A45F4135
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B7D10E54E;
	Tue,  4 Oct 2022 10:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981E210E54E;
 Tue,  4 Oct 2022 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664881069; x=1696417069;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W9LxGGbR6fUealB6agrvMBk8krj7+IVqXg2dTd9lj6A=;
 b=T86zG1Kigcjqi0yPBLWu/2FQraY2xVUBjhmRaTXCUl4MgJWq/5ljMZor
 yi7V/wH6YqnWAS3le6Pjd6Kk7dF28sAUJhKtc8t2+co7URXNOmfpMIUKU
 OZp1xYgIwoY9bFel5hHZzs2k11T6yKiZ36ttyx5NhxKUv5QQCCoouJUGs
 JBRM+uNc6qeMvAgv3hHzmupIfnEdZpOqXDl/4gBpAeE8outsIU1rhEnnn
 JgFcLF5gy62v87AyddCHK35xo2KrRq8PiFszUZGegm7+03OUMwF3KWdHB
 iYjxj+IyxAGDTvHpFoWCAcde40zWO8oSsFdhOeg6/Yds0wOcr2H1dbp1T w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304424249"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304424249"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:57:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="766295527"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="766295527"
Received: from apiekarc-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.20.239])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:57:47 -0700
Date: Tue, 4 Oct 2022 12:57:45 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Message-ID: <YzwRqZbmTarI3D9e@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
References: <20220923160137.1991101-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220923160137.1991101-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_ctx_persistence: adjust reset
 timeout
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-09-23 at 18:01:37 +0200, Andrzej Hajda wrote:
> Tests on DG2 show that context cancel can take even 350ms,
> due to error state capturing in guc_handle_context_reset.
> Since it happens only in debug mode and tests runs in debug mode
> it should be fine to adjust the timeout.
> Let's double this value, to be on safe side.
> It should fix multiple test timeout failures.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/i915/gem_ctx_persistence.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 50196edb19f..a844439de19 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -1214,7 +1214,7 @@ static void do_test(void (*test)(int i915, const intel_ctx_cfg_t *cfg,
>  	if (timeout != -1) {
>  		igt_require(gem_engine_property_printf(i915, name,
>  						       ATTR, "%d", 50) > 0);
> -		reset_timeout_ms = 200;
> +		reset_timeout_ms = 700;
>  	}
>  
>  	test(i915, cfg, engine);
> -- 
> 2.34.1
> 
