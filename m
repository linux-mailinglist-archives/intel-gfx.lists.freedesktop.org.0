Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5AC89A5A2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF98010E160;
	Fri,  5 Apr 2024 20:28:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClQSQI/p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CEDC10E38F;
 Fri,  5 Apr 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712348903; x=1743884903;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oAvEG4pXTo7WKoJUYYf165AGWweRcM8u4KtBHwCdbQ0=;
 b=ClQSQI/p6htafDJQd9CwKnhcvjT0NP8gQpZj7njJAGdE7tuGjAGgYpfY
 HqY8NPMgiiwPaIg6cyvMruOdl28jPe7tO/BJgpyWm9WkWqHuyk56cJzel
 mXXSddJcFESu6XlhFAhISBxKwv3SCsei/OsStJKApockzzoandETegkzN
 3kDDtME3ffdQ2EGei/2IQsaHcy3jwxW6EyPVcl+N6SL9RqvvHZMvboLwS
 zoiDYEaBhPjUUqF3eocGVhlZisZ3iSryMg3WgQeYD3a2m5qjOCPLZF9QU
 DL4NEvGwmSavLSfm3aEIYoTLGjSuD3dbUSDHQH4gfIeKxBhU8l7o668eV A==;
X-CSE-ConnectionGUID: DVBSFuX/QuSC/yPu/QGbGw==
X-CSE-MsgGUID: 6s0lmoolSdKOpmCalvorKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18835686"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="18835686"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:28:22 -0700
X-CSE-ConnectionGUID: YwbZBH1/RVuUGQeEALiy+Q==
X-CSE-MsgGUID: 59hp0t19S9edn1o9HJa0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="23996734"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:28:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi
 <lucas.demarchi@intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/xe/display: Fix double mutex initialization
In-Reply-To: <20240405200711.2041428-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240405200711.2041428-1-lucas.demarchi@intel.com>
Date: Fri, 05 Apr 2024 23:28:17 +0300
Message-ID: <87msq7bllq.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 05 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> All of these mutexes are already initialized by the display side since
> commit 3fef3e6ff86a ("drm/i915: move display mutex inits to display
> code"), so the xe shouldn=C2=B4t initialize them.
>
> Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Yeah, whether they should be initialized with drmm_* is another matter.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index e4db069f0db3..6ec375c1c4b6 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -108,11 +108,6 @@ int xe_display_create(struct xe_device *xe)
>  	xe->display.hotplug.dp_wq =3D alloc_ordered_workqueue("xe-dp", 0);
>=20=20
>  	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>  	xe->enabled_irq_mask =3D ~0;
>=20=20
>  	err =3D drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);

--=20
Jani Nikula, Intel
