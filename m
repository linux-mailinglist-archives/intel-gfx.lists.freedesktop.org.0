Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A3C1F108
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268B210E90B;
	Thu, 30 Oct 2025 08:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HpM3kSJW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DE710E915;
 Thu, 30 Oct 2025 08:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761814130; x=1793350130;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7Q+m9+8QD/sx4zuscPwXJxeDu17lGmn5brVwWDfu7ys=;
 b=HpM3kSJWd/eC1NcHVhh/S96xI/cP7vt+LX/jrKMx+D+jlU+LPn7blC42
 1zhpYi2gq0y9pMOShqLIfBFXf0cB+uzY1b3Qly9Cevg5l19jDE4IAh+7p
 8WLSPU7sdHCV6Yhch4jZlEvDzGuw3rGybLh1OdmExcCIrMtF6zZ1CEl6G
 tMqfA753YB4dMA8ymcRjL1OhIdsDqmrfV8g35lEjIHHpwqpfu6E5WmGQD
 T4TcXUX5saefXrgxkj6H2SGNdLAZ7X/SAegbB1EOZhuwIogMc6ZKamDNs
 Q5inLccjR+rD65tJvCEO/1SOT0XuHWqxtKEfq7btjmPForMLWPYckNsMe w==;
X-CSE-ConnectionGUID: 6sKOzq9NTACU+OEoNp6BAA==
X-CSE-MsgGUID: vOyRLatBRpeIap+d7OeAVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67783638"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67783638"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:48:50 -0700
X-CSE-ConnectionGUID: spjAN0bCSr20QjoeVh9JtA==
X-CSE-MsgGUID: SKKASgCiSw6LXthAfZOpdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="216751581"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.223])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:48:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_run_as_guest()
In-Reply-To: <309c3611169c5362c132ee8496150c74faf22497.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1761146196.git.jani.nikula@intel.com>
 <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
 <309c3611169c5362c132ee8496150c74faf22497.camel@coelho.fi>
Date: Thu, 30 Oct 2025 10:48:45 +0200
Message-ID: <b16635eefb68dfe22ba9c8550cde3f8d4e2ec575@intel.com>
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

On Thu, 30 Oct 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
>> Add intel_display_utils.c for display utilities that need more than a
>> header.
>>=20
>> Start off with intel_display_run_as_guest(). The implementation is
>> intentional duplication of the i915_utils.h i915_run_as_guest(), with
>> the idea that it's small enough to not matter.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
>
>
>>  drivers/gpu/drm/i915/Makefile                  |  1 +
>>  .../gpu/drm/i915/display/intel_display_utils.c | 18 ++++++++++++++++++
>>  .../gpu/drm/i915/display/intel_display_utils.h |  6 ++++++
>>  drivers/gpu/drm/i915/display/intel_pch.c       |  4 ++--
>>  drivers/gpu/drm/xe/Makefile                    |  1 +
>>  5 files changed, 28 insertions(+), 2 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.c
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 47bac9b2c611..046f9282fb65 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -255,6 +255,7 @@ i915-y +=3D \
>>  	display/intel_display_rpm.o \
>>  	display/intel_display_rps.o \
>>  	display/intel_display_snapshot.o \
>> +	display/intel_display_utils.o \
>>  	display/intel_display_wa.o \
>>  	display/intel_dmc.o \
>>  	display/intel_dmc_wl.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/driver=
s/gpu/drm/i915/display/intel_display_utils.c
>> new file mode 100644
>> index 000000000000..13d3999dd580
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
>> @@ -0,0 +1,18 @@
>> +// SPDX-License-Identifier: MIT
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifdef CONFIG_X86
>> +#include <asm/hypervisor.h>
>> +#endif
>> +
>> +#include "intel_display_utils.h"
>> +
>> +bool intel_display_run_as_guest(struct intel_display *display)
>> +{
>> +#if IS_ENABLED(CONFIG_X86)
>> +	return !hypervisor_is_type(X86_HYPER_NATIVE);
>> +#else
>> +	/* Not supported yet */
>> +	return false;
>> +#endif
>> +}
>
> Why can't this be an inline in the header file?

I'll turn it around. I think there needs to be a rationale for inlining,
not the other way around. A regular function should be the default.

I think the primary reason for inlining would be performance, but I'll
accept small "superfluous" static inlines that don't require pulling in
other headers.

I don't think either is true here.

Additionally the static inline exposes all of that ifdef mess and the
implementation details in the header too. A change in asm/hypervisor.h
leads to a rebuild of everything that includes intel_display_utils.h,
making the header dependencies worse. (Maybe a change in
asm/hypervisor.h leads to a rebuild of everything anyway, but you get
the general point.)


BR,
Jani.


--=20
Jani Nikula, Intel
