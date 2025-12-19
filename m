Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A979CCF24F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 10:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26FCE10EF06;
	Fri, 19 Dec 2025 09:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZzLF2pvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5883610EF03;
 Fri, 19 Dec 2025 09:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766136694; x=1797672694;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EEu1ebT+K64Pfkk3AqMAKkFXQpXOG13itVXmmvoXdcc=;
 b=ZzLF2pvFuMIcazuMO60FG6IEFJcoib9HVuCPibsedslX+q1JgDFWNpD4
 CzZr7ZUJrWNg1kHIsahbr1bbew5GIoSfz8s+dsBp6jEdis3Ce6Oa12RwJ
 gSeLwDri/h9aaNO8VaJBclafDZfiYo7TetzSRjHB9fF7MLIWUS/KtdP2U
 lzpnrt7gmIhuNxPlCD2TPLn5AajJRYWp8HRyQkkPN+oQ+A98D7iGA1SLY
 IhVuPQ363YrllHZFXhMijoKgN1n7MhOvOHZUQ+MNe/9aRQPVf1m7n4Ksw
 qW/TTj6M/x0YT2vUS7oJ+0fQx1uJV4xgAWPtgiN2JodLtAiF6m4msM4XV g==;
X-CSE-ConnectionGUID: 7lKTkyiqTiKkzUJkuuJKvQ==
X-CSE-MsgGUID: WjHGiG31Sv2hZD3GD+jnPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67975599"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="67975599"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 01:31:33 -0800
X-CSE-ConnectionGUID: 84CyZKakSOuSsXWonvPBew==
X-CSE-MsgGUID: W0UECmvRTWmm35Ufll7Yng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="199641305"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 01:31:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Uma Shankar
 <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/colorop: do not include headers from headers
In-Reply-To: <c52a0666-d980-4462-bdf3-1e842fbf6c02@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251218141807.409751-1-jani.nikula@intel.com>
 <c52a0666-d980-4462-bdf3-1e842fbf6c02@intel.com>
Date: Fri, 19 Dec 2025 11:31:28 +0200
Message-ID: <82f5c0b326f8e956c1df515b6f77f866b7e28944@intel.com>
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

On Thu, 18 Dec 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.=
com> wrote:
> On 12/18/2025 7:48 PM, Jani Nikula wrote:
>> drm_colorop.h doesn't need the intel_display_types.h include for
>> anything. Don't include headers from headers if it can be avoided.
>>=20
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, pushed.

>
>> Fixes: 3e9b06559aa1 ("drm/i915: Add intel_color_op")
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_colorop.c | 2 ++
>>   drivers/gpu/drm/i915/display/intel_colorop.h | 4 +++-
>>   2 files changed, 5 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_colorop.c b/drivers/gpu/=
drm/i915/display/intel_colorop.c
>> index f2fc0d8780ce..1d84933f05aa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_colorop.c
>> +++ b/drivers/gpu/drm/i915/display/intel_colorop.c
>> @@ -2,7 +2,9 @@
>>   /*
>>    * Copyright =C2=A9 2025 Intel Corporation
>>    */
>> +
>>   #include "intel_colorop.h"
>> +#include "intel_display_types.h"
>>=20=20=20
>>   struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_colorop.h b/drivers/gpu/=
drm/i915/display/intel_colorop.h
>> index 21d58eb9f3d0..9276eee6e75a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_colorop.h
>> +++ b/drivers/gpu/drm/i915/display/intel_colorop.h
>> @@ -6,7 +6,9 @@
>>   #ifndef __INTEL_COLOROP_H__
>>   #define __INTEL_COLOROP_H__
>>=20=20=20
>> -#include "intel_display_types.h"
>> +enum intel_color_block;
>> +struct drm_colorop;
>> +struct intel_colorop;
>>=20=20=20
>>   struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop);
>>   struct intel_colorop *intel_colorop_alloc(void);
>

--=20
Jani Nikula, Intel
