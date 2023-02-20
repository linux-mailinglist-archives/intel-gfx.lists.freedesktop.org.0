Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DED0469D529
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 21:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8505710E7B5;
	Mon, 20 Feb 2023 20:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A447510E7B5;
 Mon, 20 Feb 2023 20:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676926192; x=1708462192;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=w+mzFH93tOb0n7apPrrPQoVnDbqC2N32/ABgHoOo73Y=;
 b=Niu5UV24szK5YxCawWampGUeDAKAnkMmNPPpwPVs+jMSJMfjOxUZaJOx
 IldbNLLuVfzCKZokkw1YaN5KaVax0V1ZO56WF4nYA83aAHnQWVqIzNUua
 W3tq5whZsk0JaFu3rmSDIoh07yBJJWgDPOtikAjBc4lbB3XFDoPFnRJqU
 VUHUU1Uo42ZRViWZbP904TS6ScrBRu8dh/02Tqh3uxBhZYFwIdthfw1hT
 wNoXg1HF/ao8OVeQkcUlgcn7TKeTVxeh0cwbQaco4eP3BbRGjACIwu8Su
 IUksrJ9a0ciXdmgShljvnYwJgCN6WdS5ayiHwadqZG/Hf39imCl22MDTM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="320613730"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="320613730"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 12:49:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="1000374775"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="1000374775"
Received: from mariuszg-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.6.15])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 12:49:49 -0800
Date: Mon, 20 Feb 2023 21:49:46 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230220204946.7uy5krqzfb5qc4oz@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20230220132445.32129-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230220132445.32129-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_barrier_race: Extend
 support over compute engines
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-02-20 at 14:24:45 +0100, Janusz Krzysztofik wrote:
> This test can work not only on render engines, as its current code
> suggests, but also on compute class engines.  Add them to the set of
> engine classes supported by the test, in case a future platform has only
> those and no RCS available.

Lgtm,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

--
Kamil

> 
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/i915/gem_barrier_race.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_barrier_race.c b/tests/i915/gem_barrier_race.c
> index 484fef85ac..053fa2069e 100644
> --- a/tests/i915/gem_barrier_race.c
> +++ b/tests/i915/gem_barrier_race.c
> @@ -142,7 +142,8 @@ igt_main
>  		struct intel_execution_engine2 *e;
>  
>  		for_each_physical_engine(fd, e) {
> -			if (e->class != I915_ENGINE_CLASS_RENDER)
> +			if (e->class != I915_ENGINE_CLASS_RENDER &&
> +			    e->class != I915_ENGINE_CLASS_COMPUTE)
>  				continue;
>  
>  			igt_dynamic(e->name)
> -- 
> 2.25.1
> 
