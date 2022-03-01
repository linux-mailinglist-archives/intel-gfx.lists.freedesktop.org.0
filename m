Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C71274C8BC5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 13:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857D710E953;
	Tue,  1 Mar 2022 12:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7C110E953
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646138255; x=1677674255;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kDtG26Cyq97IOYeZGwGsdaUnTRZI8p6SivpFoc966ms=;
 b=WDjAbgB4dRzVaKBuDaKD2OpjgJXjZ49F3nkMWGN7Vo5BPf7Gh7NyiPoG
 b5PZQDAp1PJBWszd+sKxwnE/jST3R8F8MZq23k3xB4J/qLEbrFxKyglcf
 JgMydh4GW6b5pZjhGTAaSF5FpVYc6YZe15lamNqenm2hVjG7ONSKSckpL
 SLfuJUr3WRgOiuiNh/Ft9f88TQyhdsT6W+8/bbQQqVHI0S1/vQmKEXcIj
 LgHByG+/IiMukxcNgc4z4WOL+RUAxx2FkaAlJrP9vpK0HTogKJMv1kkPn
 WFSMb21QxowcDJoeA2UzQxhUEHK6xDqcL5vzBgatjDoUicdOh9wSpMotx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="233092635"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233092635"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 04:37:34 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="550694331"
Received: from cklingan-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.189])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 04:37:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YhYPE+sYRBeGiAab@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220223101023.626698-1-jani.nikula@intel.com>
 <20220223103517.634229-1-jani.nikula@intel.com>
 <YhYPE+sYRBeGiAab@intel.com>
Date: Tue, 01 Mar 2022 14:37:30 +0200
Message-ID: <87r17l6e7p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/wm: use REG_FIELD_{PREP,
 GET} for PLANE_WM_BLOCKS_MASK
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
> On Wed, Feb 23, 2022 at 12:35:17PM +0200, Jani Nikula wrote:
>> Use REG_FIELD_{PREP,GET} for completeness, and to avoid bitwise
>> operations with different sizes.
>>=20
>> v2: Also use REG_FIELD_GET in skl_wm_level_from_reg_val() (Ville)
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed (yesterday), thanks for the review.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 5af16ca4dabd..f7fabcabf805 100644
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
>>  	intel_de_write_fw(dev_priv, reg, val);
>> @@ -6578,7 +6578,7 @@ static void skl_wm_level_from_reg_val(u32 val, str=
uct skl_wm_level *level)
>>  {
>>  	level->enable =3D val & PLANE_WM_EN;
>>  	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES;
>> -	level->blocks =3D val & PLANE_WM_BLOCKS_MASK;
>> +	level->blocks =3D REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
>>  	level->lines =3D REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
>>  }
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
