Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6021B19D62
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 10:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAA410E416;
	Mon,  4 Aug 2025 08:11:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRplPhN7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7878810E418
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 08:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754295078; x=1785831078;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HK2Paoc5qfEJPkNSOEYMachBl2ktL+acYXkBiEjV7A0=;
 b=WRplPhN74MUB0/l/iWgM5FEoaFAPjoyeOgnaPtiK6l8DF+iuZeIMxpBB
 Tqy2GBEaTuHSMqk26/oN18JKhYfK1lcsIL4PbrsiBRTHqu0qW22IQStHP
 QFgVx7r0gsPZUi/sygmIyo5NwCMw7dsyye5uE6QazyxP80FD6/TqKeTGl
 hEam7ljXH+R1C4cmDmdpT0eSt9KDn6bii7ZFOyPFi94V6nBOp4Ift6Cj0
 RFa/JdIULkldK4pb4y1rBlt3L3ybzpJqLo0UjbiB2AODnkNbXBQCIZsIN
 +rAJteFJqKhn7XGOg9fSydBY8rNxFfiBoK8vfRV5ZkYVnkiNb06BV/kbM Q==;
X-CSE-ConnectionGUID: LCYqSMXhQyaKOxCWUKDzUg==
X-CSE-MsgGUID: xztGU7ffSQKdCPZ2gzeAAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="68000389"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="68000389"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:11:18 -0700
X-CSE-ConnectionGUID: IW8iik1vS5qa7giF+T3iVQ==
X-CSE-MsgGUID: ecZUGvKjQDyo4IBMAczK7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="169475826"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.215])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:11:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
In-Reply-To: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
Date: Mon, 04 Aug 2025 11:11:11 +0300
Message-ID: <a6b018f7cf2b68d01e193ff3b9666358a40d7aac@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 04 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
>
> Protect from overflowing the variable with additional count > 0
> check.
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index f057c16410e7..cc0798dd30d5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,8 +904,10 @@ static void active_engine(struct kthread_work *work)
>  			arg->result = PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			while (--count)
> -				intel_context_put(ce[count]);
> +			if (likely(count > 0)) {

Please don't throw around likely/unlikely lightly.

BR,
Jani.

> +				while (--count)
> +					intel_context_put(ce[count]);
> +			}
>  			return;
>  		}
>  	}
> -- 
> 2.34.1

-- 
Jani Nikula, Intel
