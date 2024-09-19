Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8547E97C6B2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 11:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106C710E6B0;
	Thu, 19 Sep 2024 09:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePOuJtpK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC42910E1C6;
 Thu, 19 Sep 2024 09:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726737232; x=1758273232;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AAHKYo2xqlS5QDr7EsW1MvQT5h+QFZ71xaQMSh1Dug4=;
 b=ePOuJtpKywgPv3wMOClE7SuXgEAcKT55PIgL6GyCMIAfRGid6jCyYUl/
 UEHwpk7lC7wrcem9BtdiBVia3le3dj4MvfQW+9ky815Csb3ew+hy81egg
 /qBskNy9BAgUjI6vfU+NwDhaZtkfSWzSAcKebwy224MQWyzWJ/s7rmUQ+
 cjFIXQBcVZr99nugnjenPqLwCpll7iZGI1qevICjmzK2zMr5SwBB2mq8e
 iox6ZcD7BCPSgMN9o8fRuI/YdsZ5wdxxclxna5lPG2sQVY+WjKkr3Opbv
 tiDDX40ZIlNEmQmcJ4I2m0tcW59P10vU2GsrXdaoPy7kGcgLdEXTynrmC A==;
X-CSE-ConnectionGUID: A8R2BkgSTZi457c4KnuopA==
X-CSE-MsgGUID: YGX5h7I4R6uL7ArgDJYShA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36817493"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="36817493"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 02:13:51 -0700
X-CSE-ConnectionGUID: QxZLjtygTCKbA9m+g2a59A==
X-CSE-MsgGUID: FJHqK2IwRHqjRHU6VH5CBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74662641"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.59])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 02:13:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 3/9] drm/i915/pps: only touch the vlv_ members on
 VLV/CHV
In-Reply-To: <ZusmX8cRJHIKRAx8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726681620.git.jani.nikula@intel.com>
 <158c7b30e56d22aa3f9c9e51e87b9d89687d74d5.1726681620.git.jani.nikula@intel.com>
 <ZusmX8cRJHIKRAx8@intel.com>
Date: Thu, 19 Sep 2024 12:13:46 +0300
Message-ID: <87jzf89fat.fsf@intel.com>
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

On Wed, 18 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 18, 2024 at 08:47:43PM +0300, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index 2d8d911988ab..649dc6ad2278 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -472,16 +472,17 @@ void intel_pps_reset_all(struct intel_display *dis=
play)
>>  	for_each_intel_dp(display->drm, encoder) {
>>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>=20=20
>> -		drm_WARN_ON(display->drm,
>> -			    intel_dp->pps.vlv_active_pipe !=3D INVALID_PIPE);
>> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +			drm_WARN_ON(display->drm,
>> +				    intel_dp->pps.vlv_active_pipe !=3D INVALID_PIPE);
>
> Might make sense to just split this whole function
> into vlv/chv vs. bxt/glk versions. It's called from
> platform specific code only so each caller knows
> which one it wants.

Agreed. Patch on the list [1].

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Many thanks, pushed to din.

BR,
Jani.


[1] https://lore.kernel.org/r/20240919090427.1859032-1-jani.nikula@intel.com


--=20
Jani Nikula, Intel
