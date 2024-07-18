Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB41934CF8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 14:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C183810E7CE;
	Thu, 18 Jul 2024 12:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YS0/jwYK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 810C210E7CD;
 Thu, 18 Jul 2024 12:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721304695; x=1752840695;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YoYiLIi5b+KRMNthyoHAgZrpudHBPFOAlcITszxoRmk=;
 b=YS0/jwYKu5CyhRwyZvymqTnnxTkUJH/i80KADbzEPbnTcryiCaLitnIN
 r1OAH2yPXOz51K2OYg0DKjqv7DgzSP6ivk3DE40a/UxUQJ6u9Gq74Qgxo
 7G8JXXqeTJx0xGLqL7npNsJVWxzgszYfI8PMz4s+EEDNxA93muBdTwkF3
 md0TMQrnn1GE0LulJFQSKezlb/31Vd9HJ18CaYemX8W588096srNR0q9P
 EeDr4MSfQhzyVAafla8XdPNBGNktg95/rUM1bgWv8B4G60dNbtTnLL8/F
 tBwpPcy0ah3Tzln06bWTT0c9Lo9uXpzPGgEIOH+UlzSLKE+enE2AdN6Ru w==;
X-CSE-ConnectionGUID: za4J8HgITOiHsPl64s281w==
X-CSE-MsgGUID: U41PsYmlSxO2kEbEF26/Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30276435"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30276435"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:11:35 -0700
X-CSE-ConnectionGUID: YQa/Jiw7RVyF6zGBd0eq6w==
X-CSE-MsgGUID: v8PlZ6gPQmOEmcAZp3vX0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50605693"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2024 05:11:34 -0700
Date: Thu, 18 Jul 2024 14:11:31 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v4 3/5] lib/gem_engine_topology: Fix premature
 break from primary find loop
Message-ID: <20240718121131.jxzttuwmlcsvponi@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
 <20240718085912.15434-10-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240718085912.15434-10-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-07-18 at 10:55:14 +0200, Janusz Krzysztofik wrote:
> When looking for a primary counterpart of a render device, we try to open
> each primary minor.  When one fails, we should continue rather then break,
> since contiguity of minor numbers assigned to devices is not guaranteed.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/i915/gem_engine_topology.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index c878e95f08..8589af5c1a 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -479,7 +479,7 @@ static int __open_primary(int dir)
>  		sprintf(buf, "/sys/dev/char/%d:%d", major, minor);
>  		dir = openat(fd, buf, O_RDONLY);
>  		if (dir < 0)
> -			break;
> +			continue;

Good catch!

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

>  
>  		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
>  		    !strcmp(device, target))
> -- 
> 2.45.2
> 
