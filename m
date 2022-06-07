Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25131540D0D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 20:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EFA10EFD3;
	Tue,  7 Jun 2022 18:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C4B10EFD3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 18:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654627581; x=1686163581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=p3MJ+B/ZW9LarskyD8u1xsRsPHQ/2wSy5ffosToddWg=;
 b=g2GvIW5J/C0CglihNBR45CKJiuq4Lby7nOOdZRt2iD6NssGxZp4qMkE4
 oxW3Go/dLbYAp8ChnC1ouV6nAH3WHVC2Rut4FvsRCJ8UM4Lgzsjqe2H2l
 2hCoUIrdM51m8oDg8CXDwhyc5uFGlQqr2GxnfB+1QEhjiL3TeZtBZIVNc
 OGToOP7PZj/VMY9sbeas74djE8cuitU6khHHKgXj0AXcL+BZJDWuL2vaU
 kT5sFoOrEKyLuYMRoFvfZnUxY0STA7tpjlDxIZ9ku8HjAOtxU9jn2D3g7
 T1mPRoLfEWFBxHE63Vn3vIs9OkUiQJxadydXxhYFOGorotnQoGJbl9O0t Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="363078748"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="363078748"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 11:46:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="636272657"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 11:46:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20220607092207.476653-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220607092207.476653-1-jani.nikula@intel.com>
Date: Tue, 07 Jun 2022 21:46:16 +0300
Message-ID: <87czfkpb0n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [CI] drm/i915/client: only include what's needed
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

On Tue, 07 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> Only the uapi header is required.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Pushed to drm-intel-gt-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/i915_drm_client.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index f796c5e8e060..69496af996d9 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -11,7 +11,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/xarray.h>
>  
> -#include "gt/intel_engine_types.h"
> +#include <uapi/drm/i915_drm.h>
>  
>  #define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE

-- 
Jani Nikula, Intel Open Source Graphics Center
