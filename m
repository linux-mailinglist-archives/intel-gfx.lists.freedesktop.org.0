Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851225A14CA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 16:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8465E10E239;
	Thu, 25 Aug 2022 14:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD45910E239
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 14:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661438893; x=1692974893;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Bxcfj15EA4On+ZizYl/NclYUnSWZECFeKGUNGdK+YL8=;
 b=mTVZsg0mkPLQAYhzQ8HBPjAhvCtVxAUzonJ5ypDJz9h4Zu5th1NLN77G
 eQesZVLcMyT/AOIclG8ZAsNVEttvEP97sEm65RWkq3Sw2AdmMM0qlqMZo
 vRGV1pE/UvV7MdakxD8tXUoFSq0ebE3VAP77VsZ+3eNmACjzcxQIUvsTd
 aWiiRIqq61oUyLu6fwtKL62oqgrqv9WxrOJY6gQE1JRe9utHzHhiQEwlF
 Xa/pyCywL2h2XNhXdFBogxvhACKXiIW/pPoKJVSMbpeKviFiekeBI0Q8m
 0DGcj33PRMPmjPZQsblIUYfDCMOx5P6PW95hKEynuqOIkKbgAfbj5FAa5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="277272164"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="277272164"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 07:48:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="678485667"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.149])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 07:48:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Ywdd+7ifzC7AknS7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220616124137.3184371-1-jani.nikula@intel.com>
 <Ywdd+7ifzC7AknS7@intel.com>
Date: Thu, 25 Aug 2022 17:48:07 +0300
Message-ID: <87sflkgz14.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/glk: ECS Liva Q2 needs GLK HDMI
 port timing quirk
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
Cc: intel-gfx@lists.freedesktop.org,
 Diego Santa Cruz <Diego.SantaCruz@spinetix.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 25 Aug 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jun 16, 2022 at 03:41:37PM +0300, Jani Nikula wrote:
>> From: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
>>=20
>> The quirk added in upstream commit 90c3e2198777 ("drm/i915/glk: Add
>> Quirk for GLK NUC HDMI port issues.") is also required on the ECS Liva
>> Q2.
>>=20
>> Note: Would be nicer to figure out the extra delay required for the
>> retimer without quirks, however don't know how to check for that.
>>=20
>> Cc: stable@vger.kernel.org
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1326
>> Signed-off-by: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Seems fine. Although I do wonder whether we could directly identify the
> bogus retimer chip via the dual mode adapter registers. I've asked for
> that in the bug.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-intel-next. Let's follow up with cleanups if the
folks in the bug ever reply.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_quirks.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/d=
rm/i915/display/intel_quirks.c
>> index c8488f5ebd04..e415cd7c0b84 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -191,6 +191,9 @@ static struct intel_quirk intel_quirks[] =3D {
>>  	/* ASRock ITX*/
>>  	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
>>  	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
>> +	/* ECS Liva Q2 */
>> +	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>> +	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>>  };
>>=20=20
>>  void intel_init_quirks(struct drm_i915_private *i915)
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
