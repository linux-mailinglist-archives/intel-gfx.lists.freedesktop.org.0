Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBEB425176
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE786F3FE;
	Thu,  7 Oct 2021 10:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDBA6F3FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 10:49:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206339550"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="206339550"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:49:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488927989"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:49:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211007031318.3088987-5-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007031318.3088987-1-airlied@gmail.com>
 <20211007031318.3088987-5-airlied@gmail.com>
Date: Thu, 07 Oct 2021 13:48:57 +0300
Message-ID: <87h7dtyusm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/display: refactor initial
 plane config to a separate file
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

On Thu, 07 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> new file mode 100644
> index 000000000000..63f7b9b9c278
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -0,0 +1,283 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#include "display/intel_display_types.h"
> +#include "display/intel_plane_initial.h"
> +#include "display/intel_atomic_plane.h"
> +#include "display/intel_display.h"
> +#include "display/intel_fb.h"

The display/ prefixes are unnecessary in the same directory.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
