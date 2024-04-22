Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFFF8ACC12
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 13:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E5E112A04;
	Mon, 22 Apr 2024 11:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rher6Qnv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1916B112A04
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 11:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713785632; x=1745321632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YZnl395twEM751kN+7jsPq46qGOB/0+CQEkmWo/AVJM=;
 b=Rher6Qnv3lWIOPxm62vXVIaj8jw8gTnulWKIHw2N9nGZNBtHcbka2H11
 EvD89Fm41tgmLv9Pc8JCWXFaim3Hnudhoy6Fl3s5j7MsFwL86DjrgVtbU
 prmHnEjU00cOdMps/b3TkxsNHmzSQlgW2Xodp8hLP1DoazQ1lH+chPWex
 E9yBIZB8lZl+/Gy5dLCnhAf73PfDjYn8xiEvWnT+Q72Alc2KS5toAzu7c
 4/cEfZ4KgHOqlikcp90/5Jwnt31rBLeK9qa3vwGiLiEBOqg/GTiw7A6tF
 rJQweGDhqgdesdfQ/mo684r07lDHLwO4HaXh4hVlvhWUdFH1iYhuS0KCu w==;
X-CSE-ConnectionGUID: HVwT3MPVSgKYXwNlAkNscA==
X-CSE-MsgGUID: GG5YFa+JS8KcNTsE2pEMsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="19870391"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="19870391"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 04:33:51 -0700
X-CSE-ConnectionGUID: nPQhAX1+TqmhdSBb1XTk0Q==
X-CSE-MsgGUID: C22g8EUTTzOrbpcUzG2+gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="61434450"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 04:33:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed HDMI can't show up behind a
 USB-C dock station
In-Reply-To: <87o7a1tz89.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422063300.1459712-1-gareth.yu@intel.com>
 <20240422094451.1566990-1-gareth.yu@intel.com> <87o7a1tz89.fsf@intel.com>
Date: Mon, 22 Apr 2024 14:33:46 +0300
Message-ID: <87le55tyw5.fsf@intel.com>
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

On Mon, 22 Apr 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 22 Apr 2024, gareth.yu@intel.com wrote:
>> From: Gareth Yu <gareth.yu@intel.com>
>>
>> Re-train the main link once HPD happens without link status
>
> Please address review before sending more versions.

And, in the general case, do not send three versions of a patch in the
span of a few hours. Give review some time.

>
> Please include a patch changelog, and indicate patch version with git
> send-email/format-patch -vN option because otherwise we have no clue.
>
> BR,
> Jani.
>
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10902
>> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>> Cc : Matt Roper <matthew.d.roper@intel.com>
>> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index e05e25cd4a94..52ab549e6d08 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5849,8 +5849,13 @@ intel_dp_detect(struct drm_connector *connector,
>>  	/* Can't disconnect eDP */
>>  	if (intel_dp_is_edp(intel_dp))
>>  		status =3D edp_detect(intel_dp);
>> -	else if (intel_digital_port_connected(encoder))
>> +	else if (intel_digital_port_connected(encoder)) {
>>  		status =3D intel_dp_detect_dpcd(intel_dp);
>> +		if (status =3D=3D connector_status_connected && intel_dp->is_mst &&
>> +		    !intel_dp_mst_link_status(intel_dp))
>> +			if (intel_dp_retrain_link(encoder, ctx))
>> +				status =3D connector_status_disconnected;
>> +	}
>>  	else
>>  		status =3D connector_status_disconnected;

--=20
Jani Nikula, Intel
