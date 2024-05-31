Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BF38D6233
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053E810E467;
	Fri, 31 May 2024 12:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDMCQ4iY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78C010E694
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160023; x=1748696023;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7BIZiXa1W2puM35hSgtxGDCtMon6+IgSiLLERthlLIE=;
 b=IDMCQ4iYuwDxONreobOeUM5geF8+iT80Mgxf0JS3y+AMs1PSHm281uO7
 9UNDlWyyarxIoToqxhMNd5Fd4COKOuAAlG07ZbgWlkeOzitrSXetTOafP
 z/PGpmD3Xq7BKVvHHuocGvbYTaphBeyXkTr7NraaS3timITw+e5NTihzB
 BvJJM4cc7casIJwR/VTcpWqo2aiN8hl5xCUo2S8duGGqH0+0rTxXfp7Bg
 gwyJb+JsobHkU/+h9UJgcsi5llppBCOW4W73++S7iFeHAIELdIIVUkbw/
 jpfPeLLNn/L6d2hnscGSJHyPzq5btd7Ey0Zd3vBf7klX4RCO+RwKCdHQ3 w==;
X-CSE-ConnectionGUID: ztzHtHMhSe6XnD/LU5kcbw==
X-CSE-MsgGUID: qyzL/8R9QPu4ZL9uUjRzkA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13461179"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13461179"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:53:42 -0700
X-CSE-ConnectionGUID: qx/p6QkdR2yX7IqHCzSfLg==
X-CSE-MsgGUID: uFCuWFytT/uLTpohaW3gnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41226185"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:53:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: drop unnecessary i915_reg.h includes
In-Reply-To: <Zlm8kqh3kwN9NLCm@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240530100747.328631-1-jani.nikula@intel.com>
 <Zlm8kqh3kwN9NLCm@intel.com>
Date: Fri, 31 May 2024 15:53:37 +0300
Message-ID: <877cfaf8ha.fsf@intel.com>
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

On Fri, 31 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, May 30, 2024 at 01:07:46PM +0300, Jani Nikula wrote:
>> With the register header refactoring, some of the includes of i915_reg.h
>> have become unnecessary. Remove.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/dvo_ns2501.c         | 1 -
>>  drivers/gpu/drm/i915/display/intel_atomic.c       | 1 -
>>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 1 -
>>  drivers/gpu/drm/i915/display/intel_dkl_phy.c      | 1 -
>>  drivers/gpu/drm/i915/display/intel_dsb.c          | 1 -
>>  drivers/gpu/drm/i915/display/intel_sprite.c       | 1 -
>>  drivers/gpu/drm/i915/display/intel_vdsc.c         | 1 -
>>  7 files changed, 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm=
/i915/display/dvo_ns2501.c
>> index 1df212fb000e..21486008dae9 100644
>> --- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
>> +++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
>> @@ -27,7 +27,6 @@
>>   */
>>=20=20
>>  #include "i915_drv.h"
>> -#include "i915_reg.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dvo_dev.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/d=
rm/i915/display/intel_atomic.c
>> index 7a77ae3dc394..76aa10b6f647 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>> @@ -35,7 +35,6 @@
>>  #include <drm/drm_fourcc.h>
>>=20=20
>>  #include "i915_drv.h"
>> -#include "i915_reg.h"
>>  #include "intel_atomic.h"
>>  #include "intel_cdclk.h"
>>  #include "intel_display_types.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers=
/gpu/drm/i915/display/intel_atomic_plane.c
>> index a2a827070c33..a4ce39a7f265 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -39,7 +39,6 @@
>>  #include <drm/drm_fourcc.h>
>>=20=20
>>  #include "i915_config.h"
>> -#include "i915_reg.h"
>
> That has sure spread into some weird places.
>
> As it seems to build, the series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.



>
>>  #include "i9xx_plane_regs.h"
>>  #include "intel_atomic_plane.h"
>>  #include "intel_cdclk.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/=
drm/i915/display/intel_dkl_phy.c
>> index a001232ad445..b146b4c46943 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
>> @@ -4,7 +4,6 @@
>>   */
>>=20=20
>>  #include "i915_drv.h"
>> -#include "i915_reg.h"
>>=20=20
>>  #include "intel_de.h"
>>  #include "intel_display.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/=
i915/display/intel_dsb.c
>> index 4baaa92ceaec..bcc9de047fac 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -6,7 +6,6 @@
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i915_irq.h"
>> -#include "i915_reg.h"
>>  #include "intel_crtc.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/d=
rm/i915/display/intel_sprite.c
>> index 36a253a19c74..e1c907f601da 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>> @@ -39,7 +39,6 @@
>>  #include <drm/drm_rect.h>
>>=20=20
>>  #include "i915_drv.h"
>> -#include "i915_reg.h"
>>  #include "i9xx_plane.h"
>>  #include "intel_atomic_plane.h"
>>  #include "intel_de.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm=
/i915/display/intel_vdsc.c
>> index 17d6572f9d0a..d76e70846a8c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -10,7 +10,6 @@
>>  #include <drm/display/drm_dsc_helper.h>
>>=20=20
>>  #include "i915_drv.h"
>> -#include "i915_reg.h"
>>  #include "intel_crtc.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
