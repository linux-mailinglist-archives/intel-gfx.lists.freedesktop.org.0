Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358808453BA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 10:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE3810EAA3;
	Thu,  1 Feb 2024 09:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BD810EAA3;
 Thu,  1 Feb 2024 09:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706779344; x=1738315344;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=m/uKLiUM+HFN71t8qYSGfgHAqnpAxXuR7KnjoXsP0JQ=;
 b=ivdaHqKnNd3wmav0fYDuwf++fU51Ql9dZKKlPP0B3A2Vfmq/WKFfFTE3
 h4ZMhezwXusnUKqDGHlvIBrCKGLsTlMB5iHqR3qswyl78ODdOz1X+MMIZ
 wgBX/KYBBTZ/jrrxjoaxgxB3SEJZ3ubQatx6leCQsTAeqZPHWDLmskALC
 hH24kQLd+AUzTj8fxxfw8mca/c0BIPgNScqHEurQbMGRlWIHbesGJRTS0
 j2Tdjn771VJwUQKyCeZPUXDjNafUQmsX9jOwWXtddxZ31k1xeHveoE42i
 CNxUd9M5JG/01ELVbwA2Gy0hYHFmfM0ZhzkPLafAH8kZpdBmzdlT2fSl0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22352778"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="22352778"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 01:22:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="24198"
Received: from aragners-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.111])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 01:22:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Paz Zcharya <pazz@chromium.org>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: Re: [PATCH] drm/i915/display: Include debugfs.h in
 intel_display_debugfs_params.c
In-Reply-To: <20240131204658.795278-1-pazz@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240131204658.795278-1-pazz@chromium.org>
Date: Thu, 01 Feb 2024 11:22:16 +0200
Message-ID: <87o7d0h73r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Cc: Subrata Banik <subratabanik@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Marcin Wojtas <mwojtas@chromium.org>,
 Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 Jan 2024, Paz Zcharya <pazz@chromium.org> wrote:
> Commit 8015bee0bfec ("drm/i915/display: Add framework to add parameters
> specific to display") added the file intel_display_debugfs_params.c,
> which calls the functions "debugfs_create_{bool, ulong, str}" -- all of
> which are defined in <linux/debugfs.h>. The missing inclusion of this
> header file is breaking the ChromeOS build -- add an explicit include
> to fix that.
>

Thanks for the patch, apparently in our configs some paths lead to
debugfs.h. Just goes on to show how interdependent the kernel headers
are.

Out of curiousity, what value do you have for CONFIG_DEBUG_FS kconfig?

Fixes: 8015bee0bfec ("drm/i915/display: Add framework to add parameters spe=
cific to display")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

BR,
Jani.


> Signed-off-by: Paz Zcharya <pazz@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs_params.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c =
b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> index b7e68eb62452..f35718748555 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>=20=20
> +#include <linux/debugfs.h>
>  #include <linux/kernel.h>
>=20=20
>  #include <drm/drm_drv.h>

--=20
Jani Nikula, Intel
