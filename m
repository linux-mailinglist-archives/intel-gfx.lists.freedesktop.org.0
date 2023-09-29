Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C97B315E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 13:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C098C10E11B;
	Fri, 29 Sep 2023 11:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C212610E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695986914; x=1727522914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=07FDGrvxDVbBOhbMp8buO/8aWcVEppJ408aRlRrHkSs=;
 b=eDglFjSwggLnCYFjKRLxvzvsiUut1Kf6/mhO10jNVdo2llr5aWzkgjVG
 9cezN2nrMGTmjE8bFko9V9zcQjbxYLF09JKbCGadHxS263GgXzchOmS9e
 21fjCbn0RLcDthmLvkYCdY1jMp7s/qjRgkWNEt+v+pGKD7rk5r5OchDxK
 dwpKxKhWymdNjQTAGKxHIYcqwYsZwAe8R9UfMJ87fX7UoUTRqeYdbIE4B
 ujJVaJFlS+j6Fz9qhfAqBUNhn8yMdWpUi6MrlIX9fmuYWcSelo/BAMwme
 tDzviF4hbgKmsprOqs/cwQjiCz8EZWyOV1CYh/zfnrfC7suVFakV9trnd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="880695"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; 
   d="scan'208";a="880695"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:28:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="753354630"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="753354630"
Received: from osalyk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.237])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:28:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230929112047.1151914-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230929112047.1151914-1-jouni.hogander@intel.com>
Date: Fri, 29 Sep 2023 14:28:29 +0300
Message-ID: <87fs2xi5gi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Include i915_active
 header in frontbuffer tracking code
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

On Fri, 29 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Intel frontbuffer tracking code is using i915_active functions -> include
> i915_active.h directly instead of relying getting indirectly included.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 412a19a888a2..ec46716b2f49 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -56,6 +56,7 @@
>   */
>=20=20
>  #include "gem/i915_gem_object_frontbuffer.h"
> +#include "i915_active.h"
>  #include "i915_drv.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"

--=20
Jani Nikula, Intel
