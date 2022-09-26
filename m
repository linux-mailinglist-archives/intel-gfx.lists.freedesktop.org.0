Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA575E9CA9
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 10:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE57510E3E9;
	Mon, 26 Sep 2022 08:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D1910E281;
 Mon, 26 Sep 2022 08:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664182663; x=1695718663;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B7vK+1vq7WHlr/HWpc4B7bECxCQuKxrYz3Kly/cqyIs=;
 b=gUHAb3jw2bEHNxoQE+aMC7iOVm7xFpC/xHjWmBNtLmU+L5pQfD1g0fZa
 7ydsPRUHBGCpObwKw+xoi4Mk1kYWUG96FsoxLbGuRtqJ7jm/KdVJAjk/z
 mZMDyAGCoZ0bw5ceI7VPYJE6+LH8ItJXZla8v6IsTVO6FNIT2nUlgWcQ8
 uqOdAOZbgokSxqHZyr2X0bR18uDdmZY7qbXBwZ+Q3d6GUO3b2QU7yZ0Z1
 a9aJCh2ud8RUTXaLr55DyTHgWeEg/HoE62mtj+jdEZP13/gA3DhYFh0Ek
 D7ubouVCeM1PIPkdurAkJWejlcW/1UvMmFSgzR3HZaeMVSjvH37v62zVm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="298578748"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="298578748"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:57:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="949773966"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="949773966"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.20.190])
 ([10.252.20.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:57:41 -0700
Message-ID: <def33f55-4ce4-146d-590d-b68b9e130693@linux.intel.com>
Date: Mon, 26 Sep 2022 10:57:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org, 
 igt-dev@lists.freedesktop.org
References: <20220923160137.1991101-1-andrzej.hajda@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220923160137.1991101-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] gem_ctx_persistence: adjust
 reset timeout
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

On 9/23/2022 6:01 PM, Andrzej Hajda wrote:
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
> ---
>   tests/i915/gem_ctx_persistence.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 50196edb19f..a844439de19 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -1214,7 +1214,7 @@ static void do_test(void (*test)(int i915, const intel_ctx_cfg_t *cfg,
>   	if (timeout != -1) {
>   		igt_require(gem_engine_property_printf(i915, name,
>   						       ATTR, "%d", 50) > 0);
> -		reset_timeout_ms = 200;
> +		reset_timeout_ms = 700;
>   	}
>   
>   	test(i915, cfg, engine);
