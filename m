Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254F17D8220
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8528C10E7B9;
	Thu, 26 Oct 2023 12:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4B610E7B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698321646; x=1729857646;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=gD13Cx/Efc4TlmD9smJ6Y5teQPvKL6Bjf2qPAf72y2o=;
 b=R4ILiF0YBW/T4c0vbK54FsQYO7yujV9KDEqmOiR61Fi5BVoAgl2/6fkV
 kdHoYifd9mFIU7bEw8Dx8JVBUWKjIm1p8yZimN3tJYTckHCiUeB1Xj437
 GusE/OkH01Bk0hPFB7DpymuzAwYrSyRW/OG/kHmgA5DgvTB2cfBE4BTPf
 sAgETKv2qqS9HDkphl2rUbh5WW1JbVF26wMsCPRemAgXVGJEr78m9QFLY
 ZIgIwzt7cdxkYCEO37SvcEUV56PowEyWkRs0xWvD4fC9yCcL0Lfnwb4IY
 AIKNRDA+Vi+2UcxDAnJxfpWP5EgXUftbBtaITYkMQfDKFV5Syx4PhvY8y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451763701"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451763701"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:00:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="882784776"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="882784776"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:00:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231026114049.2013478-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026114049.2013478-1-jouni.hogander@intel.com>
Date: Thu, 26 Oct 2023 15:00:29 +0300
Message-ID: <87zg057fvm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Include drm_drv.h in
 intel_display_params.c
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

On Thu, 26 Oct 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> intel_display_params.c is accessing drm_drv->name. Due to this include
> drm_drv.h to avoid build problem with Xe.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 11e03cfb774d..cd1dd2fbd8a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -3,6 +3,8 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>=20=20
> +#include <drm/drm_drv.h>
> +
>  #include "intel_display_params.h"
>  #include "i915_drv.h"

--=20
Jani Nikula, Intel
