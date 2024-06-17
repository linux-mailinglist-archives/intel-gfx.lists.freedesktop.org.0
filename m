Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3230490A8C4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 10:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0873710E2FB;
	Mon, 17 Jun 2024 08:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VN/aPI21";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933A810E216;
 Mon, 17 Jun 2024 08:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718614223; x=1750150223;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LmtJFs5U0H0MHRB7Sc+aeWxh+Em43v/yWk9NqtJAg+k=;
 b=VN/aPI21CoHN5NAjEgueotE3rOvLm/pHujuIC4jQuCHNpiaEdIz8m/q9
 buNVirduCzEjKwjuzb/QvA61S8TUaKolUdfFN644EUPTeRvTh9RCxc6sf
 jEVc3XbSgobcu2Aw/agNwx20fx39A+LC8I4Ame111sLrkcdheeM/y9OOd
 +A7UsYIFzFVV2r4B7aQme/PBxyGlgKnc54wf5iRJVNSFvM9wIRYfH21mt
 LQuA+TE0KQpTm9nruXH0vl4/McK9D3Zu+nES9q4v8tsMGWUnppsQbquFL
 3kMejqcQolVLLIqmk9eI82ttcZzRJxKw0LOadaqADO4S1eATKX7f5GwW0 g==;
X-CSE-ConnectionGUID: XY20NB8qRg6OCu+KqyqTgA==
X-CSE-MsgGUID: yGC2kEXbSvuVjc+wKXzPtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="32972301"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="32972301"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 01:50:23 -0700
X-CSE-ConnectionGUID: jdK0h3yUR5+gTl6YaRjp2A==
X-CSE-MsgGUID: AmOFWqcEQKGx2DN0GD2KPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41828741"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 01:50:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/mso: using joiner is not possible with eDP MSO
In-Reply-To: <ZmxWKyz8RcqjQ0Mg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240614142311.589089-1-jani.nikula@intel.com>
 <ZmxWKyz8RcqjQ0Mg@intel.com>
Date: Mon, 17 Jun 2024 11:50:17 +0300
Message-ID: <87sexcgdh2.fsf@intel.com>
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

On Fri, 14 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 14, 2024 at 05:23:11PM +0300, Jani Nikula wrote:
>> It's not possible to use the joiner at the same time with eDP MSO. When
>> a panel needs MSO, it's not optional, so MSO trumps joiner.
>>=20
>> v3: Only change intel_dp_has_joiner(), leave debugfs alone (Ville)
>>=20
>> Cc: stable@vger.kernel.org
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din with

    Fixes: bc71194e8897 ("drm/i915/edp: enable eDP MSO during link training=
")
    Cc: <stable@vger.kernel.org> # v5.13+

BR,
Jani.

>
>>=20
>> ---
>>=20
>> Just the minimal fix for starters to move things along.
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 9a9bb0f5b7fe..ab33c9de393a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -465,6 +465,10 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>>  	struct intel_encoder *encoder =3D &intel_dig_port->base;
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>=20=20
>> +	/* eDP MSO is not compatible with joiner */
>> +	if (intel_dp->mso_link_count)
>> +		return false;
>> +
>>  	return DISPLAY_VER(dev_priv) >=3D 12 ||
>>  		(DISPLAY_VER(dev_priv) =3D=3D 11 &&
>>  		 encoder->port !=3D PORT_A);
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
