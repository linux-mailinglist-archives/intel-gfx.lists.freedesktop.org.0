Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6876A5BC25
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F0110E544;
	Tue, 11 Mar 2025 09:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFx29B95";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B72210E548;
 Tue, 11 Mar 2025 09:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741685198; x=1773221198;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8b1Ge1xK+IC6CBwFuLqFQoKZx0vpZf8aGblpey7In20=;
 b=hFx29B95ZeysAn3trTjrAYr9Jio6hrY4U38sDRmSejwSqmYcUVsCwIZr
 ibG5+H5He6fJp0QAL15SLTCuQJFo9xSwAVnXQpr3IwjKQCVynmiEbZQGi
 TC3frJLKt8K/6ah1BJU5HlcUQbqb7GY5WFx5Aza6DlsDXjnqq94vCKBen
 g1fnDdnDymPFWzhdA4rcKfQiOHUni6EvfWhJ13bdbmVnOFavw5zUvfShy
 bWQhh1ft2ej/A4cnnA10T5b+pW4m82rORkx+oCcBC8JbsNTav9mUDGcYm
 rAPM656cPV+jtItXHsOb91cP1Q7O4eON5Sk0wLmyh8Vqg2KKZIlNfeV9p Q==;
X-CSE-ConnectionGUID: 9K4SNsoDTgutOgleHbAYvA==
X-CSE-MsgGUID: wJZ+J1zhSVOUZ7tKz/9I8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42432124"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42432124"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:26:37 -0700
X-CSE-ConnectionGUID: GAs5XjR0RJWclBdTHmF/AA==
X-CSE-MsgGUID: dldDg2Q1SnKclrnKEaHDmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120973786"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:26:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Matt
 Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 1/3] drm/i915/display: Convert intel_bw.c internally
 to intel_display
In-Reply-To: <174163322752.59796.9905613328560506890@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
 <20250307-xe3lpd-bandwidth-update-v3-1-58bbe81f65bf@intel.com>
 <Z88XvVp-rEzrsmzv@intel.com>
 <174163322752.59796.9905613328560506890@intel.com>
Date: Tue, 11 Mar 2025 11:26:32 +0200
Message-ID: <878qpbhq9j.fsf@intel.com>
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

On Mon, 10 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-03-10 13:47:57-03:00)
>>On Fri, Mar 07, 2025 at 04:25:11PM -0300, Gustavo Sousa wrote:
>>> Update intel_bw.c internally use intel_display. Conversion of the public
>>> interface will come as a follow-up.
>>>=20
>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bw.c | 416 +++++++++++++++++-------=
--------
>>>  1 file changed, 217 insertions(+), 199 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/=
i915/display/intel_bw.c
>>> index 048be287224774110d94fe2944daa580d8dc20a6..d71dc796f1793f546fe0414=
6e5987a9be56bae9b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>> @@ -11,6 +11,7 @@
>>>  #include "intel_atomic.h"
>>>  #include "intel_bw.h"
>>>  #include "intel_cdclk.h"
>>> +#include "intel_de.h"
>>>  #include "intel_display_core.h"
>>>  #include "intel_display_types.h"
>>>  #include "skl_watermark.h"
>>> @@ -39,14 +40,14 @@ struct intel_qgv_info {
>>>          u8 deinterleave;
>>>  };
>>>=20=20
>>> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev=
_priv,
>>> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *displa=
y,
>>>                                            struct intel_qgv_point *sp,
>>>                                            int point)
>>>  {
>>>          u32 dclk_ratio, dclk_reference;
>>>          u32 val;
>>>=20=20
>>> -        val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_=
0_0_MCHBAR_PC);
>>> +        val =3D intel_de_read(display, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
>>
>>Not entirely convinced we want to start using intel_de_*() on
>>mchbar registers.
>>
>>Apart from that the rest looks fine.
>
> Okay. I sent v4 with reverting this function to use intel_uncore_read().

The question becomes, *what* are we supposed to do with this stuff in
the future? Kind of want to get rid of all intel_uncore_* in display/.

BR,
Jani.


--=20
Jani Nikula, Intel
