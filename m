Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5F15A8271
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CDC10E474;
	Wed, 31 Aug 2022 15:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9C010E469
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661961356; x=1693497356;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6rAuC5KZU13GTNhn2xWFlcXTNQeLRMbSYg1a0MaaXkk=;
 b=KtOia0gHi+7cePR+nBBcS8pcXacY23Nfcm4GLdLC6PL25Yhq5rvNg03z
 edn1Ybhi4NwpxCfpvj7v+KO5Ama1PVaHBugWKLFYti4d/5oFnHDYywuX7
 sCJU9HmXuQDdz67oglW42MCLpdl7Jni0UN2UZkjdnEPvGS8vG2Xb0lr8M
 CqpOM1FLOO8XcdyDSudEVchG3FpYZWnx1r+X51Jo6P6y4W7S95DMZUk6q
 of3RjrSGlfMtv1kKR34+psI7qOQriRcKEjfBpPjEosfIzVhjUAXY1DKz0
 rUno1SZJa/+XdbG622bvqGYSP3UUplhoHUohkLZ4aFzBmgRJsmEqoNC9G Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278495494"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="278495494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:55:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="673406426"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.15])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:55:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <3745e576-3c2c-e643-67a5-d84f3a66c3d6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220830093411.1511040-1-jani.nikula@intel.com>
 <20220830093411.1511040-2-jani.nikula@intel.com>
 <3745e576-3c2c-e643-67a5-d84f3a66c3d6@intel.com>
Date: Wed, 31 Aug 2022 18:55:46 +0300
Message-ID: <87edwwcsql.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/dpll: replace BUG_ON() with
 drm_WARN_ON()
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

On Wed, 31 Aug 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 30.08.2022 11:34, Jani Nikula wrote:
>> Avoid BUG_ON(). Actually check the dpll count and bail out loudly with
>> drm_WARN_ON() from the loop before overflowing
>> i915->dpll.shared_dplls[].
>>=20
>> v2: Rebase
>>=20
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu=
/drm/i915/display/intel_dpll_mgr.c
>> index bbe142056c7c..ed267c918009 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> @@ -4199,6 +4199,10 @@ void intel_shared_dpll_init(struct drm_i915_priva=
te *dev_priv)
>>   	dpll_info =3D dpll_mgr->dpll_info;
>>=20=20=20
>>   	for (i =3D 0; dpll_info[i].name; i++) {
>> +		if (drm_WARN_ON(&dev_priv->drm,
>> +				i >=3D ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
>> +			break;
>> +
>
> Shouldn't this check be replaced by some compile time checker.

Can't do that because the dpll_info arrays are null terminated.

> Anyway:
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks, but I just pushed the series as Ville already reviewed it.

BR,
Jani.


>
> Regards
> Andrzej
>
>
>>   		drm_WARN_ON(&dev_priv->drm, i !=3D dpll_info[i].id);
>>   		dev_priv->display.dpll.shared_dplls[i].info =3D &dpll_info[i];
>>   	}
>> @@ -4206,8 +4210,6 @@ void intel_shared_dpll_init(struct drm_i915_privat=
e *dev_priv)
>>   	dev_priv->display.dpll.mgr =3D dpll_mgr;
>>   	dev_priv->display.dpll.num_shared_dpll =3D i;
>>   	mutex_init(&dev_priv->display.dpll.lock);
>> -
>> -	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);
>>   }
>>=20=20=20
>>   /**
>

--=20
Jani Nikula, Intel Open Source Graphics Center
