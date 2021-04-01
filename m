Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A953511FE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 11:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7913D6EC80;
	Thu,  1 Apr 2021 09:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617CB6EC80
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 09:26:27 +0000 (UTC)
IronPort-SDR: Iit+YWg6JrYWtTDkmj8GAbD970D1MZBwP5PbX2opH4LWEWyMAup/heP+tg3msg2bTpqyofO4Bu
 T8gIR448JQ3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="172234579"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="172234579"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 02:26:25 -0700
IronPort-SDR: 0Q5gQkUXUUXxbPQuEbXXIvft5nJ1JBbOIwpneExjlB+FOqWZ0y5NKjciYkmfRoawanZWXtvXQU
 3Uvsp4us1fJA==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="610849231"
Received: from chinchil-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.231.48])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 02:26:24 -0700
Date: Thu, 1 Apr 2021 05:26:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YGWRv7o5yNusTqnB@intel.com>
References: <20210330150118.1105079-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330150118.1105079-1-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix docbook header for
 __intel_runtime_pm_get_if_active()
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 30, 2021 at 06:01:18PM +0300, Imre Deak wrote:
> Fix the
> 
> Documentation/gpu/i915:22: /drivers/gpu/drm/i915/intel_runtime_pm.c:423: WARNING: Inline strong start-string without end-string.
> 
> warning from the htmldocs build.
> 
> Fixes: 9d58aa46291d ("drm/i915: Fix the GT fence revocation runtime PM logic")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index dba8df1ff5a9e..eaf7688f517d0 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -420,7 +420,7 @@ intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm)
>   * already active and ensures that it is powered up. It is illegal to try
>   * and access the HW should intel_runtime_pm_get_if_active() report failure.
>   *
> - * If @ignore_usecount=true, a reference will be acquired even if there is no
> + * If @ignore_usecount is true, a reference will be acquired even if there is no
>   * user requiring the device to be powered up (dev->power.usage_count == 0).
>   * If the function returns false in this case then it's guaranteed that the
>   * device's runtime suspend hook has been called already or that it will be
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
