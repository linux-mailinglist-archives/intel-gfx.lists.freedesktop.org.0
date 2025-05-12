Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43207AB31F8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 10:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0DDB10E0D6;
	Mon, 12 May 2025 08:44:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egVIvZlP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E6010E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 08:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747039448; x=1778575448;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=++b5UInet6TdzGSwezNQ+Lu9uD6r/LM7AP7eCCvnvkE=;
 b=egVIvZlPXwA3VrXC+2TDr67DydcM2r7zQSFUCdWnjY94/OnDYPU6FS0t
 FRks3KEsJ3+PyA10ejfU5/5RsHRuA2Sul7WaAO/GsIS2GJpft9wBaEhCd
 xn3LI5+gxF3+gU/nNLpBhNKNPEvZDW1c2XgimsooocZREoo6S/+6q5/k/
 8raX6PqqCepYJCGbggCmx7A7IQLkgDypp9BP0DYljLAAb2t/5PEcFWHyQ
 APgrReBYcmFRuRsamBHS9j9gn9YfH6mkuzqv4/2bhPIXQxF8uOMzZHmOX
 XnyeOf//E2YWCsQwr/eh1Kpjkh1rmKxZKjA2/PnUG5FqLjt2gu2IK3vMM w==;
X-CSE-ConnectionGUID: n8TYTTL1R7OIAwXJXQwf4A==
X-CSE-MsgGUID: kGhPfGbeSSS0KaeX067Aug==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="48725253"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="48725253"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 01:44:08 -0700
X-CSE-ConnectionGUID: VBIGOnOuTVuzR7u1qMLi0A==
X-CSE-MsgGUID: JFf3+AwwQ9iVpWPxJW7DeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="137775324"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 01:44:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/irq: stop using HAS_GMCH()
In-Reply-To: <SJ0PR11MB5072EBF3E1FD471F0C82C6A88F8BA@SJ0PR11MB5072.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250502120725.439800-1-jani.nikula@intel.com>
 <SJ0PR11MB5072EBF3E1FD471F0C82C6A88F8BA@SJ0PR11MB5072.namprd11.prod.outlook.com>
Date: Mon, 12 May 2025 11:44:05 +0300
Message-ID: <87ikm6jk16.fsf@intel.com>
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

On Thu, 08 May 2025, "Grzelak, Michal" <michal.grzelak@intel.com> wrote:
> Hi Jani,
>
> -----Original Message-----
>> Right or wrong, HAS_GMCH() has become a display only thing. The last thr=
ee users outside of display are in irq code. Reorder the if ladders to stop=
 > using HAS_GMCH().
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_irq.c | 105 +++++++++++++++-----------------
>>  1 file changed, 48 insertions(+), 57 deletions(-)
>
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c index d06694d6531e..1a3b504252c7 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -1175,71 +1175,62 @@ void intel_irq_fini(struct drm_i915_private *i91=
5)
>>=20=20
>>  static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_pri=
v)  {
>> -	if (HAS_GMCH(dev_priv)) {
>> -		if (IS_CHERRYVIEW(dev_priv))
>> -			return cherryview_irq_handler;
>> -		else if (IS_VALLEYVIEW(dev_priv))
>> -			return valleyview_irq_handler;
>> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> -			return i965_irq_handler;
>> -		else
>> -			return i915_irq_handler;
>> -	} else {
>> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> -			return dg1_irq_handler;
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> -			return gen11_irq_handler;
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> -			return gen8_irq_handler;
>> -		else
>> -			return ilk_irq_handler;
>> -	}
>> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> +		return dg1_irq_handler;
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> +		return gen11_irq_handler;
>> +	else if (IS_CHERRYVIEW(dev_priv))
>> +		return cherryview_irq_handler;
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> +		return gen8_irq_handler;
>> +	else if (IS_VALLEYVIEW(dev_priv))
>> +		return valleyview_irq_handler;
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
>> +		return ilk_irq_handler;
>> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> +		return i965_irq_handler;
>> +	else
>> +		return i915_irq_handler;
>>  }
>>=20=20
>>  static void intel_irq_reset(struct drm_i915_private *dev_priv)  {
>> -	if (HAS_GMCH(dev_priv)) {
>> -		if (IS_CHERRYVIEW(dev_priv))
>> -			cherryview_irq_reset(dev_priv);
>> -		else if (IS_VALLEYVIEW(dev_priv))
>> -			valleyview_irq_reset(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> -			i965_irq_reset(dev_priv);
>> -		else
>> -			i915_irq_reset(dev_priv);
>> -	} else {
>> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> -			dg1_irq_reset(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> -			gen11_irq_reset(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> -			gen8_irq_reset(dev_priv);
>> -		else
>> -			ilk_irq_reset(dev_priv);
>> -	}
>> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> +		dg1_irq_reset(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> +		gen11_irq_reset(dev_priv);
>> +	else if (IS_CHERRYVIEW(dev_priv))
>> +		cherryview_irq_reset(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> +		gen8_irq_reset(dev_priv);
>> +	else if (IS_VALLEYVIEW(dev_priv))
>> +		valleyview_irq_reset(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
>> +		ilk_irq_reset(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> +		i965_irq_reset(dev_priv);
>> +	else
>> +		i915_irq_reset(dev_priv);
>>  }
>>=20=20
>>  static void intel_irq_postinstall(struct drm_i915_private *dev_priv)  {
>> -	if (HAS_GMCH(dev_priv)) {
>> -		if (IS_CHERRYVIEW(dev_priv))
>> -			cherryview_irq_postinstall(dev_priv);
>> -		else if (IS_VALLEYVIEW(dev_priv))
>> -			valleyview_irq_postinstall(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> -			i965_irq_postinstall(dev_priv);
>> -		else
>> -			i915_irq_postinstall(dev_priv);
>> -	} else {
>> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> -			dg1_irq_postinstall(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> -			gen11_irq_postinstall(dev_priv);
>> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> -			gen8_irq_postinstall(dev_priv);
>> -		else
>> -			ilk_irq_postinstall(dev_priv);
>> -	}
>> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
>> +		dg1_irq_postinstall(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
>> +		gen11_irq_postinstall(dev_priv);
>> +	else if (IS_CHERRYVIEW(dev_priv))
>> +		cherryview_irq_postinstall(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
>> +		gen8_irq_postinstall(dev_priv);
>> +	else if (IS_VALLEYVIEW(dev_priv))
>> +		valleyview_irq_postinstall(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
>> +		ilk_irq_postinstall(dev_priv);
>> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
>> +		i965_irq_postinstall(dev_priv);
>> +	else
>> +		i915_irq_postinstall(dev_priv);
>>  }
>
> Best regards,
> Micha=C5=82

--=20
Jani Nikula, Intel
