Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03F49B7B53
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 14:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C74210E88A;
	Thu, 31 Oct 2024 13:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZeSqaoyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE80110E888;
 Thu, 31 Oct 2024 13:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730379981; x=1761915981;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7W1lgWgm64FvSUcF1YciB9bIYGUT9WfT8bwxW/O3Mls=;
 b=ZeSqaoyGAPE/Z1VMt1lt+RuYT4xo8DaLFWZrzZJSnJ4Zy+JOkZjL2M22
 ey9/89Qlc/hBlW2p2pHtLWlTuwP5nECH5oTUkjOi9jtUbAI2Zw7FyrFYD
 0t7Avw87BfamK6hlox+WfaczhahKjCPzJWLR+eladrogsNQZPoX0UyKlU
 qHZo20hjTNg6xns4upGWzbPK57G1w4WTDIJp50uqeRTblYlDON/6J3Ilx
 7pLY2b9OpTnwGWw6XhOCEq+nJeWLQbWh09MmBSUq5dew/R2T2i65ziw4W
 eFyE8grfgh6Sp4ClCM9LMppcW8+3NMCWXFL0IkfUmawEzKfvadQ7zPnzG g==;
X-CSE-ConnectionGUID: El9M78I/RT+6DZfD5nw8Wg==
X-CSE-MsgGUID: SiT+pL5XTJuEvEXsicTnnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="30327778"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30327778"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 06:06:21 -0700
X-CSE-ConnectionGUID: D1cCEpS7SlmIht3h5kcIPQ==
X-CSE-MsgGUID: HoP+P11yQjKMIXfT3KMAMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="83046160"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 06:06:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_conversion.c to
 hide stuff better
In-Reply-To: <ZyN9LdA6yGjtWuQy@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730374470.git.jani.nikula@intel.com>
 <f08d3740e464b52bffd80b344e8abf5b1fda975c.1730374470.git.jani.nikula@intel.com>
 <ZyN9LdA6yGjtWuQy@black.fi.intel.com>
Date: Thu, 31 Oct 2024 15:06:16 +0200
Message-ID: <87plngjubb.fsf@intel.com>
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

On Thu, 31 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Thu, Oct 31, 2024 at 01:38:33PM +0200, Jani Nikula wrote:
>> The __to_intel_display() generics require the definition of struct
>> drm_i915_private i.e. inclusion of i915_drv.h. Add
>> intel_display_conversion.c with a __i915_to_display() function to do the
>> conversion without the intel_display_conversion.h having an implicit
>> dependency on i915_drv.h.
>>=20
>> The long term goal is to remove __to_intel_display() and the
>> intel_display_conversion.[ch] files altoghether, and this is merely a
>> transitional step to make the dependencies on i915_drv.h explicit.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                           | 1 +
>>  drivers/gpu/drm/i915/display/intel_display_conversion.c | 9 +++++++++
>>  drivers/gpu/drm/i915/display/intel_display_conversion.h | 9 +++++++--
>>  drivers/gpu/drm/xe/Makefile                             | 1 +
>>  4 files changed, 18 insertions(+), 2 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversio=
n.c
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index ac47d7e988fc..43686d843ef7 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -237,6 +237,7 @@ i915-y +=3D \
>>  	display/intel_crtc_state_dump.o \
>>  	display/intel_cursor.o \
>>  	display/intel_display.o \
>> +	display/intel_display_conversion.o \
>>  	display/intel_display_driver.o \
>>  	display/intel_display_irq.o \
>>  	display/intel_display_params.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/d=
rivers/gpu/drm/i915/display/intel_display_conversion.c
>> new file mode 100644
>> index 000000000000..bdd947f5ccd8
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
>> @@ -0,0 +1,9 @@
>> +// SPDX-License-Identifier: MIT
>> +/* Copyright =C2=A9 2024 Intel Corporation */
>> +
>> +#include "i915_drv.h"
>> +
>> +struct intel_display *__i915_to_display(struct drm_i915_private *i915)
>> +{
>> +	return &i915->display;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/d=
rivers/gpu/drm/i915/display/intel_display_conversion.h
>> index ad8545c8055d..790d0be698dc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
>> @@ -8,14 +8,19 @@
>>  #ifndef __INTEL_DISPLAY_CONVERSION__
>>  #define __INTEL_DISPLAY_CONVERSION__
>>=20=20
>> +struct drm_i915_private;
>> +struct intel_display;
>> +
>> +struct intel_display *__i915_to_display(struct drm_i915_private *i915);
>> +
>>  /*
>>   * Transitional macro to optionally convert struct drm_i915_private * t=
o struct
>>   * intel_display *, also accepting the latter.
>>   */
>>  #define __to_intel_display(p)						\
>>  	_Generic(p,							\
>> -		 const struct drm_i915_private *: (&((const struct drm_i915_private *=
)(p))->display), \
>> -		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->displ=
ay), \
>> +		 const struct drm_i915_private *: __i915_to_display((struct drm_i915_=
private *)(p)), \
>> +		 struct drm_i915_private *: __i915_to_display((struct drm_i915_privat=
e *)(p)), \
>>  		 const struct intel_display *: (p),			\
>>  		 struct intel_display *: (p))
>
> Perhaps,
>
> #define TYPE_ENTRY(type, x)	\
> 	const type: x,		\
> 	type: x
>
> May snip the duplication.

Yeah I don't really care because this is supposed to go away soon.

See to_intel_display() in intel_display_types.h for what the nicer
implementation is, for the more permanent stuff.

BR,
Jani.

>
> Raag

--=20
Jani Nikula, Intel
