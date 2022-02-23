Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2B54C105E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 11:36:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E39E10E551;
	Wed, 23 Feb 2022 10:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D7E10E551
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 10:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645612567; x=1677148567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=brWvsKEp1td1EVLZCs5Vn3Hds5kisi10qTg36sRGghw=;
 b=FX+KqNtSJ7PEIf7WEL6skiWyz9mo0lQHCWrZccVGUc2kuS/8wIc+5BtN
 bxf+f3RrSZ0z4IoqGFbVt1/ALVcQOObG1IytuA8Fz/yGHEH72lFRDxK0/
 Eu/ivM6J0LyaYjWgWZMsZibjqIGiEBDTMyM7SCHQ2TqznL01eewDmn539
 SwBj6QInDWgLz7sDXkPIqr+NBBo4wNKpXK1HfhXXDnZqJmKIKtSyYN4df
 cs7+wVhacC4FLkifL9Pk/ajIY3fu+Wq+CkVEDIsmZuivOKNlXrdjdzPEl
 B2+yMA5/sgy6Y5hD7rbOGHjB3RxPNay0EfiaYLglf58SjwNSMDOcvjLSk A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="235442878"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="235442878"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 02:36:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548183595"
Received: from khagn-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.68])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2022 02:36:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YhYJvZ/Qb/uvGln5@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220223101023.626698-1-jani.nikula@intel.com>
 <YhYJvZ/Qb/uvGln5@intel.com>
Date: Wed, 23 Feb 2022 12:36:04 +0200
Message-ID: <87k0dl7tuz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wm: use REG_FIELD_PREP for
 PLANE_WM_BLOCKS_MASK
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

On Wed, 23 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 23, 2022 at 12:10:23PM +0200, Jani Nikula wrote:
>> Use REG_FIELD_PREP for completeness, and to avoid bitwise operations
>> with different sizes.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 5af16ca4dabd..3411ebaa767f 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -5930,7 +5930,7 @@ static void skl_write_wm_level(struct drm_i915_pri=
vate *dev_priv,
>>  		val |=3D PLANE_WM_EN;
>>  	if (level->ignore_lines)
>>  		val |=3D PLANE_WM_IGNORE_LINES;
>> -	val |=3D level->blocks;
>> +	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
>>  	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
>>=20=20
>>  	intel_de_write_fw(dev_priv, reg, val);a
>
> skl_wm_level_from_reg_val() could use similar treatment for symmetry.

Aye. v2 sent.

>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
