Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5C0818C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 17:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F5C10E19D;
	Tue, 19 Dec 2023 16:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8CD10E19D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 16:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703002948; x=1734538948;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Tr6kStpv3WaCcmP4L+cEuF3TESrr75nhRNEeYk0o4SY=;
 b=dPGyZyRheaPyvpH/C9e9qS2lYtQw4AV3/Gdg2bqy+cYxDu/Z+m696+je
 QZw5wr01E9q+izJjNgVojthyXC+r3HdcUr+iRPnaPh4PQRYL6KdO5h5Kt
 fHRM7OjH9ktsOX3j1EeLwpWvskVU2UVkzOQkyilopGLBTyQ6J+RLuo+ID
 zFF0Hw8p8yHPyVr7doXuqqo6bxmJVIhytU6XnWllwuxyrrKx3An1FoovY
 4pzI8VXMoCus+p4yr4/7M0OP7wXflKEw7VmQxybo2lgMDW8m3OIn4nxQG
 nEYHrHKVcNwxXCEKk+BDkBjge2AP9mJB8+/SuVwJtETOWNX/MSe3v5VBP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2511779"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; 
   d="scan'208";a="2511779"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 08:22:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949216071"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="949216071"
Received: from alexeyze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.118])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 08:22:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/hdcp: fix intel_hdcp_get_repeater_ctl()
 error return value
In-Reply-To: <ZYGSLNMf8y00wFOo@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231219104746.1065431-1-jani.nikula@intel.com>
 <20231219104746.1065431-2-jani.nikula@intel.com>
 <ZYGSLNMf8y00wFOo@intel.com>
Date: Tue, 19 Dec 2023 18:22:24 +0200
Message-ID: <87cyv2tb5r.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Dec 19, 2023 at 12:47:46PM +0200, Jani Nikula wrote:
>> intel_hdcp_get_repeater_ctl() is supposed to return unsigned register
>> contents. Returning negative error values is unexpected, and none of the
>> callers check for that.
>>=20
>> Sort of fix the error cases by returning 0. I don't think we should hit
>> these cases anyway, and using 0 for the registers is safer than
>> 0xffffffea (-EINVAL).
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_hdcp.c
>> index f9010094ff29..ee29fcb860e4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -347,7 +347,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_priv=
ate *i915,
>>  		default:
>>  			drm_err(&i915->drm, "Unknown transcoder %d\n",
>>  				cpu_transcoder);
>
> These should probably be MISSING_CASE() as well.

Yeah, maybe. For another day...

>
> Anyways,
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, both pushed.

BR,
Jani.

>
>> -			return -EINVAL;
>> +			return 0;
>>  		}
>>  	}
>>=20=20
>> @@ -364,7 +364,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_priv=
ate *i915,
>>  		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
>>  	default:
>>  		drm_err(&i915->drm, "Unknown port %d\n", port);
>> -		return -EINVAL;
>> +		return 0;
>>  	}
>>  }
>>=20=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
