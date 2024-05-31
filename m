Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0114B8D6188
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F17810E7A8;
	Fri, 31 May 2024 12:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYNptTOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E9210E65A;
 Fri, 31 May 2024 12:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157885; x=1748693885;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6EeB0jUCQAhiJsR3zcqpWE1FOYLrYdIkiJL9VwQ3ENE=;
 b=LYNptTOKz8qKu88wisbLatU76oTKNnDxtY8m3l1a7772LWsd2wg45R9n
 3BYKeRmxWPyRKsXnVFVXNJK0yF0tvZ0l+rSbyKzz8S8JaM0qFKCwlhpDh
 5A6ITrp9iBg6D4qpfgZzgIaIg0ZK7YnFz6yhiJ/3gI850qkr01isKFVcn
 lkPV9Fl52RpKzB7H0WcwJTsykt626kMQqvdHqxi7lbe7StL9QWEki+3H+
 N2c+H8sNecQB5vbdmNnbTqFzEPPwrmtGJYgEeY/NaB3CsFzUV24bTPF0v
 Pde/Sh1DYrDutcOKocvWQp0/gjlW9DSa3gxBLAeRw9XBHu2L9vRXSlsRy A==;
X-CSE-ConnectionGUID: bSmBSq05Swi6JFXzW9RtPw==
X-CSE-MsgGUID: vnj6OV7tT+6GwEWQSzTANA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13543749"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13543749"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:18:04 -0700
X-CSE-ConnectionGUID: TmtS0lwoTR+URZp/TEMslQ==
X-CSE-MsgGUID: u5phrE3PSTahkhtzJx8Ktg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36174446"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:18:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 03/10] drm/i915/display: include i915_gpu_error.h where
 needed
In-Reply-To: <87ikyufamz.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717004739.git.jani.nikula@intel.com>
 <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
 <Zlm1__e57Bt11mAM@intel.com> <87ikyufamz.fsf@intel.com>
Date: Fri, 31 May 2024 15:17:57 +0300
Message-ID: <87cyp2fa4q.fsf@intel.com>
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

On Fri, 31 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 31 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Wed, May 29, 2024 at 08:48:07PM +0300, Jani Nikula wrote:
>>> Include what you use. With this, we can drop the include from xe compat
>>> i915_drv.h.
>>>=20
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>>>  2 files changed, 1 insertion(+), 1 deletion(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm=
/i915/display/intel_dmc.c
>>> index 63fccdda56c0..b5ebb0f5b269 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>> @@ -26,6 +26,7 @@
>>>  #include <linux/firmware.h>
>>>=20=20
>>>  #include "i915_drv.h"
>>> +#include "i915_gpu_error.h"
>>
>> Someone should probably convert intel_dmc_print_error_state()
>> to use the drm_printer interface instead, assuming that is the
>> only thing that needs this header in intel_dmc.c.
>
> I don't disagree, but kind of wanted to keep this series focused on just
> rearranging the headers. And this serves a purpose: now you can look at
> the files under display to have a better grasp at what's needed from
> outside of display. i915_gpu_error.h include flags one case.

Seems straightforward, I can do it on top.

--=20
Jani Nikula, Intel
