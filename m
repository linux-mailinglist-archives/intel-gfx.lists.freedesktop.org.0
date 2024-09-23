Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C822597E820
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 11:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9221510E23B;
	Mon, 23 Sep 2024 09:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MoSFAxh8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A85410E23B;
 Mon, 23 Sep 2024 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727082385; x=1758618385;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9dqXj47DTLc5gtQ9DogHdXExSXK0lAo2SOBfokhmg44=;
 b=MoSFAxh8ndiTai7Q7jMQpXHqTT4R3su2pIeQaFirT0IaR3vBsIXkTX5R
 iT9MV/sNsPAztlX32Z21ytlH4zhZ18k/aB7tm43LEl52zqCZBfR3Trkxc
 ABzKj80PHXFReRvYGOEBGq5CYkDRIlVKRb5n0g4b4BGw3ZxksjraXbMYx
 Elsjv0fvODVkpRgShpeY1A2pxuxujFuWOBLhKfJqnRWuMr7n++UIn/CTt
 hvFpNPV8qA/aHMNmX/sdcUyXUJ8b4DE5HrEVra/igYNP1iMEcJEB/icMw
 YwMWwwOA0pQvMdiuF129T3pvUVQ5UzqIpYh/a0wUyo7W7q6hjdSdJVLQ9 A==;
X-CSE-ConnectionGUID: Vw/CGvwxSbCtJmK4NVykeQ==
X-CSE-MsgGUID: ztZ1w7IvQSyhJ+h2oALoSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="43537559"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="43537559"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:06:25 -0700
X-CSE-ConnectionGUID: lwOk9czCRj+Os8JWX2knAA==
X-CSE-MsgGUID: RN+H+ppVQJOOgzVLcFiFqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75948843"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:06:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/soc: stop using IS_GEN9_LP() and IS_GEN9_BC()
In-Reply-To: <ZusUOrwUYY3rpMW3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240918145042.1447857-1-jani.nikula@intel.com>
 <20240918145042.1447857-2-jani.nikula@intel.com>
 <ZusUOrwUYY3rpMW3@intel.com>
Date: Mon, 23 Sep 2024 12:06:20 +0300
Message-ID: <87ikum7n8z.fsf@intel.com>
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
> On Wed, Sep 18, 2024 at 05:50:42PM +0300, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915=
/soc/intel_pch.c
>> index 542eea50093c..f7e3745bb1dc 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> @@ -122,9 +122,12 @@ intel_pch_type(const struct drm_i915_private *dev_p=
riv, unsigned short id)
>>  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
>>  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
>>  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
>> -		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
>> -			    !IS_ROCKETLAKE(dev_priv) &&
>> -			    !IS_GEN9_BC(dev_priv));
>> +		drm_WARN_ON(&dev_priv->drm, !(IS_TIGERLAKE(dev_priv) ||
>> +					      IS_ROCKETLAKE(dev_priv) ||
>> +					      IS_SKYLAKE(dev_priv) ||
>> +					      IS_KABYLAKE(dev_priv) ||
>> +					      IS_COFFEELAKE(dev_priv) ||
>> +					      IS_COMETLAKE(dev_priv)));
>
> The !A&&!B form seems more popular in these, so I'd suggest
> using that. JSP looks to be the only one that had to do it
> differently for whatever reason...
>
> Either way
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, I'll need to rebase the series anyway, I'll switch to the more
common style.

BR,
Jani.


--=20
Jani Nikula, Intel
