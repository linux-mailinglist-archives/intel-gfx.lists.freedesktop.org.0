Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997A24206C9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 09:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91256E93D;
	Mon,  4 Oct 2021 07:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBEA6E93D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 07:45:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="205457518"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="205457518"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:45:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="543683963"
Received: from pmittal1-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.223.27])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:45:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211004003133.2279446-1-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211004003133.2279446-1-airlied@gmail.com>
Date: Mon, 04 Oct 2021 10:44:57 +0300
Message-ID: <87k0it2pza.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix regression with uncore
 refactoring.
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

On Mon, 04 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This was causing infinite recursion on snb/ivb.
>
> Fixes: 5716c8c6f4b6 ("drm/i915/uncore: split the fw get function into separate vfunc")
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 2dac69d92c1b..f1b816ebcdf6 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -346,7 +346,7 @@ static void __gen6_gt_wait_for_thread_c0(struct intel_uncore *uncore)
>  static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
>  					      enum forcewake_domains fw_domains)
>  {
> -	fw_domains_get(uncore, fw_domains);
> +	fw_domains_get_normal(uncore, fw_domains);

Pushed, thanks for the patch.

BR,
Jani.

>  
>  	/* WaRsForcewakeWaitTC0:snb,ivb,hsw,bdw,vlv */
>  	__gen6_gt_wait_for_thread_c0(uncore);

-- 
Jani Nikula, Intel Open Source Graphics Center
