Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B074DCD7D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC1510E489;
	Thu, 17 Mar 2022 18:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F1510E489
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647541387; x=1679077387;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F8sVzxqaf4ND6LVcGkU71OxLiFZI+kGo9l6P91PxKLU=;
 b=GHkSNy+DYcghoca3GDdLK921uOmcE5YCyMjofY9RNNMO7WIRL2ZJzEg9
 T9wkGKExzJMrLxfd7i8HCVixU3Fq0E0gWHL6kamVZ18rkxPsDcJkV9Han
 8JNjD38w6OX9o2C5O3ObXwmGC0hj+bduby0AODBankbAzNA/YZmIpCnwX
 jFWba9k48Pb9yDkLU0GlyTWDSULREAXrMrsACE5MNp5aGU26SdtBrIZkc
 SJSBR02YD7E0QbQJ9Pk3h+5LCgqVVrfHLVenbjWy+XFP5BQQDlhv+WmXc
 xPQaqxaW2I6rC0nUmxeryZeAnpkwVQVQSnZP3AY99gt/yS8sahs5daTtP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="254505502"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="254505502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:23:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558051484"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:23:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YjN02ff81NR8EPFI@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311100639.114685-1-jani.nikula@intel.com>
 <20220311100639.114685-2-jani.nikula@intel.com>
 <YjN02ff81NR8EPFI@intel.com>
Date: Thu, 17 Mar 2022 20:23:01 +0200
Message-ID: <87mthomoai.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: include uapi/drm/i915_drm.h
 directly where needed
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 11, 2022 at 12:06:39PM +0200, Jani Nikula wrote:
>> Remove the uapi/drm/i915_drm.h include from drm/i915_drm.h, and stop
>> being a proxy for uapi/drm/i915_drm.h. Include uapi/drm/i915_drm.h and
>> drm/i915_drm.h only where needed.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Looks sensible to me. Series is=20
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review, pushed to drm-intel-next, with Bjorn's ack.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c     | 2 ++
>>  drivers/gpu/drm/i915/gem/i915_gem_region.c   | 2 ++
>>  drivers/gpu/drm/i915/intel_memory_region.c   | 2 ++
>>  drivers/gpu/drm/i915/intel_memory_region.h   | 2 +-
>>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 2 --
>>  include/drm/i915_drm.h                       | 2 +-
>>  6 files changed, 8 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_lmem.c
>> index 444f8268b9c5..ede084f36ca9 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> @@ -3,6 +3,8 @@
>>   * Copyright =C2=A9 2019 Intel Corporation
>>   */
>>=20=20
>> +#include <uapi/drm/i915_drm.h>
>> +
>>  #include "intel_memory_region.h"
>>  #include "gem/i915_gem_region.h"
>>  #include "gem/i915_gem_lmem.h"
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_region.c
>> index c9b2e8b91053..f4fbae2f9dcc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
>> @@ -3,6 +3,8 @@
>>   * Copyright =C2=A9 2019 Intel Corporation
>>   */
>>=20=20
>> +#include <uapi/drm/i915_drm.h>
>> +
>>  #include "intel_memory_region.h"
>>  #include "i915_gem_region.h"
>>  #include "i915_drv.h"
>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/dr=
m/i915/intel_memory_region.c
>> index 1c841f68169a..ded78b83e0b5 100644
>> --- a/drivers/gpu/drm/i915/intel_memory_region.c
>> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
>> @@ -5,6 +5,8 @@
>>=20=20
>>  #include <linux/prandom.h>
>>=20=20
>> +#include <uapi/drm/i915_drm.h>
>> +
>>  #include "intel_memory_region.h"
>>  #include "i915_drv.h"
>>  #include "i915_ttm_buddy_manager.h"
>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/dr=
m/i915/intel_memory_region.h
>> index 21dcbd620758..bbc35ec5c090 100644
>> --- a/drivers/gpu/drm/i915/intel_memory_region.h
>> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
>> @@ -10,7 +10,7 @@
>>  #include <linux/mutex.h>
>>  #include <linux/io-mapping.h>
>>  #include <drm/drm_mm.h>
>> -#include <drm/i915_drm.h>
>> +#include <uapi/drm/i915_drm.h>
>>=20=20
>>  struct drm_i915_private;
>>  struct drm_i915_gem_object;
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/=
drm/i915/pxp/intel_pxp_session.c
>> index 598840b73dfa..92b00b4de240 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -3,8 +3,6 @@
>>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>>   */
>>=20=20
>> -#include <drm/i915_drm.h>
>> -
>>  #include "i915_drv.h"
>>=20=20
>>  #include "intel_pxp.h"
>> diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
>> index afbf3ef5643e..7adce327c1c2 100644
>> --- a/include/drm/i915_drm.h
>> +++ b/include/drm/i915_drm.h
>> @@ -26,7 +26,7 @@
>>  #ifndef _I915_DRM_H_
>>  #define _I915_DRM_H_
>>=20=20
>> -#include <uapi/drm/i915_drm.h>
>> +#include <linux/types.h>
>>=20=20
>>  /* For use by IPS driver */
>>  unsigned long i915_read_mch_val(void);
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
