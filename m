Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E78345A1E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 09:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9B26E0B8;
	Tue, 23 Mar 2021 08:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1BD6E85C;
 Tue, 23 Mar 2021 08:53:39 +0000 (UTC)
IronPort-SDR: Odoaq877JkJkhD0o9F1HE2+xNJRQW2LK6t7w9AxG3qQHDc0zYqmNoX+Emjr02QAqPX+jF0RF8B
 6iLdpugpboVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="275535569"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="275535569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 01:53:38 -0700
IronPort-SDR: t+oiGgHPJCqHwAq8+rSN/RDWKIGZmRczwfRj/GoCOhzU1tWK+Oq7+4XqAwmZMmVM7uLzFsbWnr
 X4EKQEPaHWUw==
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="414883545"
Received: from wjlloyd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.53.124])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 01:53:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch, imre.deak@intel.com,
 ville.syrjala@linux.intel.com, lucas.demarchi@intel.com,
 matthew.d.roper@intel.com, tejaskumarx.surendrakumar.upadhyay@intel.com,
 unixbhaskar@gmail.com, aditya.swarup@intel.com, anusha.srivatsa@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20210323011607.182803-1-unixbhaskar@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210323011607.182803-1-unixbhaskar@gmail.com>
Date: Tue, 23 Mar 2021 10:53:31 +0200
Message-ID: <87blba5jzo.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: A typo fix
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
Cc: rdunlap@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Mar 2021, Bhaskar Chowdhury <unixbhaskar@gmail.com> wrote:
> s/nothign/nothing/
>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

You've sent the same patch before? I've already pushed it.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f6ad257a260e..14d784a6fae5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4185,7 +4185,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  	/*
>  	 * DVFS pre sequence would be here, but in our driver the cdclk code
>  	 * paths should already be setting the appropriate voltage, hence we do
> -	 * nothign here.
> +	 * nothing here.
>  	 */
>
>  	val = intel_de_read(dev_priv, enable_reg);
> --
> 2.31.0
>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
