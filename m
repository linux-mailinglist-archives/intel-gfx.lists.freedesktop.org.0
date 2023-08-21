Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D18DF7835E3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 00:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332E910E100;
	Mon, 21 Aug 2023 22:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B9110E100;
 Mon, 21 Aug 2023 22:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692657840; x=1724193840;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eUcLYc0J7HowPfeJ9TjzTc9ALeAmarKJjBj1No+r/5M=;
 b=dkJ53OgkMx8BUXiRTXdT3T1ZiReZc825FrcvwhI3J5prmZx5m/bbAlKZ
 reIkIAY+uOExzPeB/041SrEoQwnjmMTbcII9SeNrXN/oTlG0imMeiIjgy
 qBvNmreXuC8JPkJVRdLQinVPIxTmj87aKit4gLQvF30Svfe+wE6dpeOxF
 eJYHKuwfCO0guZhvPxkKNTU5uoulLlZgmU3aWTaX+MBTfPfSTltYtDmTf
 5mkinWS6UeonBE3onlHf0WxQVw+lPePVEA5Xuj3bj4B6cbBpA+TMe+B2T
 ippDOGIPJ9pnn2xsei/EpPlwV8WX2YowZJRQ13nUcwMVh6fR3+RqnaFAR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358702729"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="358702729"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="859659922"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="859659922"
Received: from hpabst-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:43:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nikita B <n2h9z4@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@gmail.com,
 daniel@ffwll.ch, daniele.ceraolospurio@intel.com,
 John.C.Harrison@Intel.com, alan.previn.teres.alexis@intel.com,
 gregkh@linuxfoundation.org, harshit.m.mogalapalli@oracle.com,
 michal.wajdeczko@intel.com, skhan@linuxfoundation.org
In-Reply-To: <20230821192718.504357-1-n2h9z4@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230821192718.504357-1-n2h9z4@gmail.com>
Date: Tue, 22 Aug 2023 01:43:52 +0300
Message-ID: <87fs4c6mon.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v1] drivers: gpu: drm: i915: intel_huc: fix
 formatting warnings
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
Cc: Nikita B <n2h9z4@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Aug 2023, Nikita B <n2h9z4@gmail.com> wrote:
> Fix formatting warnings when run "make htmldocs":
> ./drivers/gpu/drm/i915/gt/uc/intel_huc.c:29: WARNING: Unexpected indentation.
> ./drivers/gpu/drm/i915/gt/uc/intel_huc.c:30: WARNING: Block quote ends without a blank line; unexpected unindent.
> ./drivers/gpu/drm/i915/gt/uc/intel_huc.c:35: WARNING: Bullet list ends without a blank line; unexpected unindent.
>
> Signed-off-by: Nikita B <n2h9z4@gmail.com>

Already fixed by commit 175b036472f6 ("drm/i915: fix Sphinx indentation
warning") in drm-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index ddd146265beb..fa70defcb5b2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -26,6 +26,7 @@
>   * The kernel driver is only responsible for loading the HuC firmware and
>   * triggering its security authentication. This is done differently depending
>   * on the platform:
> + *
>   * - older platforms (from Gen9 to most Gen12s): the load is performed via DMA
>   *   and the authentication via GuC
>   * - DG2: load and authentication are both performed via GSC.
> @@ -33,6 +34,7 @@
>   *   not-DG2 older platforms), while the authentication is done in 2-steps,
>   *   a first auth for clear-media workloads via GuC and a second one for all
>   *   workloads via GSC.
> + *
>   * On platforms where the GuC does the authentication, to correctly do so the
>   * HuC binary must be loaded before the GuC one.
>   * Loading the HuC is optional; however, not using the HuC might negatively

-- 
Jani Nikula, Intel Open Source Graphics Center
