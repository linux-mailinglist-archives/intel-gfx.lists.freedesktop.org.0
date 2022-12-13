Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF6A64B69D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 14:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B8010E319;
	Tue, 13 Dec 2022 13:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013AC10E319
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 13:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670939523; x=1702475523;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QJDvLzwR5jJL0HRTBep1UT27ddj2t7OHr1tnO62+yq4=;
 b=g8V9wySdK4pvz/+Ie3aJ2wn5zYOKhQe+qImVt0UWYGRk8UWx37cyz4+S
 Keln463wFR9Y53Fs9UU9oNd3KfASvcY0e3qRJm7jVWLeGm7gnlR6tCTO4
 Q/OEPM27kccjuts5Eb1RnqOFOPZSuO6LohX2iCur0d59Gz9CeJWdGpxQW
 ti2eYhDl947D6WmFXHTnygAGLUFzupAbkXl88uVnrNG45JW7R51axSyUR
 3ECCQtjbljNi8jfweFo3vhJumxw+EQFhVLAz5OQ3Z0AJY4MGcG6eE0TdG
 3ZKhcvEK+vVS0ufhPhgGkth34HTemyq9fTS75GqbTuehk5+eoBqELk6AW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="404389192"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="404389192"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 05:52:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679306732"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679306732"
Received: from saarniko-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 05:52:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y5H4cAEKzdxTwIaf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208142347.602726-1-jani.nikula@intel.com>
 <Y5H4cAEKzdxTwIaf@intel.com>
Date: Tue, 13 Dec 2022 15:51:57 +0200
Message-ID: <87mt7rwgw2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add new "soc" sub-directory and
 move PCH and DRAM code there
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Dec 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Dec 08, 2022 at 04:23:47PM +0200, Jani Nikula wrote:
>> Add a new sub-directory for things that aren't specifically about the
>> GPU and don't really belong in the i915 driver top level, but also don't
>> belong under any of the existing sub-directories either.
>>=20
>> Name it "soc", and move the PCH and DRAM code there.
>>=20
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> Naming, always the naming! soc? ext? offcore? In the Makefile I'm adding
>> comment "core peripheral code", which is also silly. *facepalm*
>> ---
>>  drivers/gpu/drm/i915/Makefile               | 7 +++++--
>>  drivers/gpu/drm/i915/i915_driver.c          | 3 ++-
>>  drivers/gpu/drm/i915/i915_drv.h             | 3 ++-
>>  drivers/gpu/drm/i915/{ =3D> soc}/intel_dram.c | 0
>>  drivers/gpu/drm/i915/{ =3D> soc}/intel_dram.h | 0
>>  drivers/gpu/drm/i915/{ =3D> soc}/intel_pch.c  | 0
>>  drivers/gpu/drm/i915/{ =3D> soc}/intel_pch.h  | 0
>>  7 files changed, 9 insertions(+), 4 deletions(-)
>>  rename drivers/gpu/drm/i915/{ =3D> soc}/intel_dram.c (100%)
>>  rename drivers/gpu/drm/i915/{ =3D> soc}/intel_dram.h (100%)
>>  rename drivers/gpu/drm/i915/{ =3D> soc}/intel_pch.c (100%)
>>  rename drivers/gpu/drm/i915/{ =3D> soc}/intel_pch.h (100%)
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 01974b82d205..7046e435a155 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -48,9 +48,7 @@ i915-y +=3D i915_driver.o \
>>  	  i915_sysfs.o \
>>  	  i915_utils.o \
>>  	  intel_device_info.o \
>> -	  intel_dram.o \
>>  	  intel_memory_region.o \
>> -	  intel_pch.o \
>>  	  intel_pcode.o \
>
> should pcode be moved as well?
>
>>  	  intel_pm.o \
>>  	  intel_region_ttm.o \
>> @@ -62,6 +60,11 @@ i915-y +=3D i915_driver.o \
>>  	  vlv_sideband.o \
>
> and also maybe the sideband?

Yeah, should be considered as a follow-up.

>
> anyway,
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


>
>>  	  vlv_suspend.o
>>=20=20
>> +# core peripheral code
>> +i915-y +=3D \
>> +	soc/intel_dram.o \
>> +	soc/intel_pch.o
>> +
>>  # core library code
>>  i915-y +=3D \
>>  	i915_memcpy.o \
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 4cc3ced83959..6c87cfa0d7c8 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -75,6 +75,8 @@
>>=20=20
>>  #include "pxp/intel_pxp_pm.h"
>>=20=20
>> +#include "soc/intel_dram.h"
>> +
>>  #include "i915_file_private.h"
>>  #include "i915_debugfs.h"
>>  #include "i915_driver.h"
>> @@ -93,7 +95,6 @@
>>  #include "i915_sysfs.h"
>>  #include "i915_utils.h"
>>  #include "i915_vgpu.h"
>> -#include "intel_dram.h"
>>  #include "intel_gvt.h"
>>  #include "intel_memory_region.h"
>>  #include "intel_pci_config.h"
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index a8a5bd426e78..b6d0c12ffeea 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -49,6 +49,8 @@
>>  #include "gt/intel_workarounds.h"
>>  #include "gt/uc/intel_uc.h"
>>=20=20
>> +#include "soc/intel_pch.h"
>> +
>>  #include "i915_drm_client.h"
>>  #include "i915_gem.h"
>>  #include "i915_gpu_error.h"
>> @@ -58,7 +60,6 @@
>>  #include "i915_utils.h"
>>  #include "intel_device_info.h"
>>  #include "intel_memory_region.h"
>> -#include "intel_pch.h"
>>  #include "intel_runtime_pm.h"
>>  #include "intel_step.h"
>>  #include "intel_uncore.h"
>> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/so=
c/intel_dram.c
>> similarity index 100%
>> rename from drivers/gpu/drm/i915/intel_dram.c
>> rename to drivers/gpu/drm/i915/soc/intel_dram.c
>> diff --git a/drivers/gpu/drm/i915/intel_dram.h b/drivers/gpu/drm/i915/so=
c/intel_dram.h
>> similarity index 100%
>> rename from drivers/gpu/drm/i915/intel_dram.h
>> rename to drivers/gpu/drm/i915/soc/intel_dram.h
>> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/soc=
/intel_pch.c
>> similarity index 100%
>> rename from drivers/gpu/drm/i915/intel_pch.c
>> rename to drivers/gpu/drm/i915/soc/intel_pch.c
>> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/soc=
/intel_pch.h
>> similarity index 100%
>> rename from drivers/gpu/drm/i915/intel_pch.h
>> rename to drivers/gpu/drm/i915/soc/intel_pch.h
>> --=20
>> 2.34.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
