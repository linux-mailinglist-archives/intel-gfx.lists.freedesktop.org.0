Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C3F46F3C9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 20:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD0810E235;
	Thu,  9 Dec 2021 19:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B302C10E235
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 19:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639077434; x=1670613434;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wmBt0ZqJpzuWTVajKrRoG1Jhbjc5cz6YtlRHQCynCmU=;
 b=EZlacM1RHdjtPTEoDb3qVXFHM2O0DUhHjxOocPSD7xCXoyAyIhEMXyEn
 ba6yeHdh8dMup0TKGiOP+W9ppnrtZ/Ilp/5Gx8Mpt/fs0dtX/zoUB0cp8
 rwkl8Xsb97BKA9zANTvRGnLS+aBpHndRueLVxkMqYll4J8J13TvHmnZHI
 60Gudpqj81GQS6ouZ1Ed7hi2Wk2fJkYtMt+UFKc+Dz+7l8FJKlekMNBPl
 Za8sQQ+PTpM0ly0D171LnPoZ6vaFGQqUzYZkiPuLlAr6Bv2aTJKWxYV6C
 hb4A0U/0F1i4h4rg8zZb6RXv/JYjrFBOD4rmggpRFKT0u3KiNIxTYpuuK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225055752"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="225055752"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:17:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="601671238"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:17:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YbI88n/N1Fq3nD2z@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1639057801.git.jani.nikula@intel.com>
 <488179aa90110d979e61104973b255161ec36057.1639057801.git.jani.nikula@intel.com>
 <YbI88n/N1Fq3nD2z@intel.com>
Date: Thu, 09 Dec 2021 21:17:08 +0200
Message-ID: <87czm537wr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/reset: remove useless
 intel_display_types.h include
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

On Thu, 09 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Dec 09, 2021 at 03:50:56PM +0200, Jani Nikula wrote:
>> Not needed.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_reset.c | 1 -
>>  1 file changed, 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i91=
5/gt/intel_reset.c
>> index 63199f0550e6..b8ac454f2d96 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -6,7 +6,6 @@
>>  #include <linux/sched/mm.h>
>>  #include <linux/stop_machine.h>
>>=20=20
>> -#include "display/intel_display_types.h"
>
> intel_display_{prepare,finish}_reset() are in intel_display.h
> so I'm thinking that is what we want to include here. I guess
> atm it gets included via some more circuitous route?

Mmmh, all roads lead to i915_drv.h...

We should trim the includes in i915_drv.h a *lot* too. Make it purely
about defining struct drm_i915_private, not about including the world.

It's just that especially the gem/gt headers include just about
everything.

BR,
Jani.


>
>>  #include "display/intel_overlay.h"
>>=20=20
>>  #include "gem/i915_gem_context.h"
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
