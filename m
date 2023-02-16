Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1615A6998AD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 16:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE0610EDD4;
	Thu, 16 Feb 2023 15:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A1F10EDD4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 15:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676560831; x=1708096831;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ofx5ZI9RfRqzdPzznRlt2bl/SDqDV6PSNN2olAyr2kg=;
 b=XaXTmGuw6HCTFb9+jbZHMps7mNjdqxL7cLOa8BPuXn8t6G3sa6315tSb
 atO8KRlM456kWyx/Jg1ohF7a935aQS8MfRXl+Sl7Rx1w7z02mdfCAT/lK
 9wN2wUsTBBXeuT9U+BXni/csNGNeT9hnVIEjxu1g2Su2vGfzDZhYo+xFt
 Vd6KSICMo8z74Pt9ux7BZslReaNfifsweAulJEdknL3vAj91WUpnklCId
 Hra2gAAhkpB468KPGtLZQsPzbPlOjqcZsM66wTp45t7PMXM9Y4e2mnWrx
 qKYyFqMR5CSlAP0XL5KCjloeFujXcJE5jLbq8E+LkFpP2PhJIa7Wh6R0z A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="330379317"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="330379317"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 07:19:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="915692670"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="915692670"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 07:19:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+zsDqPXDf7J/vTk@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215141910.433043-1-jani.nikula@intel.com>
 <20230215141910.433043-2-jani.nikula@intel.com>
 <Y+zsDqPXDf7J/vTk@intel.com>
Date: Thu, 16 Feb 2023 17:19:09 +0200
Message-ID: <87y1oxzlhu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/wm: warn about
 ilk_wm_sanitize() on display ver 9+
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

On Wed, 15 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 15, 2023 at 04:19:07PM +0200, Jani Nikula wrote:
>> The sanitization should be limited to PCH split platforms up to display
>> version 8. Warn and bail out otherwise.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i9=
15/display/i9xx_wm.c
>> index f76ac64ebd71..50cdfe11192e 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -3437,6 +3437,9 @@ void ilk_wm_sanitize(struct drm_i915_private *dev_=
priv)
>>  	if (!dev_priv->display.funcs.wm->optimize_watermarks)
>>  		return;
>>=20=20
>> +	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) >=3D 9))
>> +		return;
>> +
>
> Oh you put it here. I guess that works too, though still
> a bit confusing that we call an ilk_ thing on skl+.
>
> Whatever you decide

Decided to push the lot as-is.

Thanks,
Jani.

> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>>  	state =3D drm_atomic_state_alloc(&dev_priv->drm);
>>  	if (drm_WARN_ON(&dev_priv->drm, !state))
>>  		return;
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
