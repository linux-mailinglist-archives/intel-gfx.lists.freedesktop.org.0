Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE07B834FD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 09:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32D410E1EF;
	Thu, 18 Sep 2025 07:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYn2hRU2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953C610E1EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 07:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758180363; x=1789716363;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wNI2nojtZxfuyOu5Bfpf6fzg3Edxu83K6Emo66+zQJI=;
 b=aYn2hRU2y0GKEOnSRDW7OIqfWShGX17ZNvV/XuiWqwjzIH0wVKbiD5Se
 Jl3xMjPEEGiyn3gZ7U07jQZxUWDUT+uiSrN1wvBEVhOhHms18iRUvK6l2
 /plxYE8QF91qrveMJY8CBXlJo55wjnBwbe91vcmiOfiQJjl/6dXSXFHHx
 JoMR7joF0/FVI6RVnVbI9Y0Rb2QsAXj1LoqnCdQrZiyOjWghfn7j7Cpkx
 W6OQjyyfH/ehnLj/giBF5yyVnmG9Ur2mfXT9ag7fqzF4xITQu2wifHk7u
 Y5SaXeOfxoySQUaSwFOJYfEzOqLhDlPLJXmMj0LuPxWHz6vNyMvDCZV3O g==;
X-CSE-ConnectionGUID: 65UJA/gzTCSQ383BXJf7yA==
X-CSE-MsgGUID: 6niHyaqqS22rwJCshgxIEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="64319453"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="64319453"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 00:25:59 -0700
X-CSE-ConnectionGUID: B2Ezgb2pR0i5VtSaJQjQHQ==
X-CSE-MsgGUID: o8R3pTA4QmyyWK4uYI6Uwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175041652"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 00:25:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: add note on VLV/CHV hpll_freq and czclk_freq
 caching
In-Reply-To: <aMq_1JGyQNylvdzm@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250917135200.1932903-1-jani.nikula@intel.com>
 <aMq_1JGyQNylvdzm@intel.com>
Date: Thu, 18 Sep 2025 10:25:54 +0300
Message-ID: <7604a54688611b4645784c90a829ac572721538c@intel.com>
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

On Wed, 17 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 17, 2025 at 04:52:00PM +0300, Jani Nikula wrote:
>> The caching at the initial read is a bit fragile in case, say, a further
>> refactoring starts reading the frequencies at a time where it's not
>> possible. Add a note about it.
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_clock.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/=
i915/display/vlv_clock.c
>> index 2c55083d8fdb..42c2837b32c1 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_clock.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_clock.c
>> @@ -8,6 +8,13 @@
>>  #include "vlv_clock.h"
>>  #include "vlv_sideband.h"
>>=20=20
>> +/*
>> + * FIXME: The caching of hpll_freq and czclk_freq relies on the first c=
alls
>> + * occurring at a time when they can actually be read. This appears to =
be the
>> + * case, but is somewhat fragile. Make the initialization explicit at a=
 point
>> + * where they can be reliably read.
>> + */
>> +
>>  /* returns HPLL frequency in kHz */
>>  int vlv_clock_get_hpll_vco(struct drm_device *drm)
>>  {
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
