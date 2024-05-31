Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 834928D6148
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D41410E6FE;
	Fri, 31 May 2024 12:07:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPgUaWa4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9B110E54B;
 Fri, 31 May 2024 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157228; x=1748693228;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4kUf/JZLG5PFY7KoQJWB13VjaKCUsJCz6Q6gfXFXCw8=;
 b=MPgUaWa4OrFOF7zMqTyo82NmlTCa16OO7F7DUP8Dp29+ihk/NhPhwA2a
 du9pP8y+p/hKrxioSBcBtEL+Z9g3On7VXOejVE4GHahP7xvd4hUx312nX
 X/6+N1/aThzn62DbeKOwFKXn/W1P4jPPURY4UwM9GFChIvE1OKm14XHnm
 ihZlw3sUzmpD1/7KqwGqzMK0LTzWy4LU4c16HCSDWVU6cZgj6vd9mENTm
 i/B+KF4NJ6dnjKVNxWRTBzPlbcVduwryWrBF9INN0mH+5KszB0IZsq1y2
 khz5O7Twn+WO9pCOK3oq4W29AQd0YBgJuZhSCkiYFYqTrPdnTaare31ZZ g==;
X-CSE-ConnectionGUID: yP9pN4tLQOOxHC1FVRVmug==
X-CSE-MsgGUID: 8XsLRjPeRGugtdvhm9A7pA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24819180"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24819180"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:07:07 -0700
X-CSE-ConnectionGUID: rSvnl+FJT66T/XptfUVWYw==
X-CSE-MsgGUID: 1PEZ4C5ZTC63dPx4ZlZfEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="40597926"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:07:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 03/10] drm/i915/display: include i915_gpu_error.h where
 needed
In-Reply-To: <Zlm1__e57Bt11mAM@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717004739.git.jani.nikula@intel.com>
 <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
 <Zlm1__e57Bt11mAM@intel.com>
Date: Fri, 31 May 2024 15:07:00 +0300
Message-ID: <87ikyufamz.fsf@intel.com>
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
> On Wed, May 29, 2024 at 08:48:07PM +0300, Jani Nikula wrote:
>> Include what you use. With this, we can drop the include from xe compat
>> i915_drv.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>>  2 files changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>> index 63fccdda56c0..b5ebb0f5b269 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -26,6 +26,7 @@
>>  #include <linux/firmware.h>
>>=20=20
>>  #include "i915_drv.h"
>> +#include "i915_gpu_error.h"
>
> Someone should probably convert intel_dmc_print_error_state()
> to use the drm_printer interface instead, assuming that is the
> only thing that needs this header in intel_dmc.c.

I don't disagree, but kind of wanted to keep this series focused on just
rearranging the headers. And this serves a purpose: now you can look at
the files under display to have a better grasp at what's needed from
outside of display. i915_gpu_error.h include flags one case.

BR,
Jani.

--=20
Jani Nikula, Intel
