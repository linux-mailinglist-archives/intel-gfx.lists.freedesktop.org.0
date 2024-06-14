Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3054908CEA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D0410ED55;
	Fri, 14 Jun 2024 14:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4pW/QOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793A910ED55;
 Fri, 14 Jun 2024 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718373726; x=1749909726;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wYfq+JJno1w5kVXYZyuHtTOzgW5vH8ZiVp73LqeBpj8=;
 b=n4pW/QOURCbqr0j2pDeJjMEH9xXO1j1jTt6yx2uVRUZuOx/hxxIme/J2
 zT5aPjH5Q38ZBzQ7LgK6buB8VBgzQAJnP4J+MsIbDNFcgURXN1PDZ/pCY
 x/IjdXIAPSxvbNj1XhxqvYjuyjDKqr1NjXthqQRihuaDy9YqJokXg/5Eg
 b3ZU1yErJ63c62sFJg1NAV2FucFXXhGVqztW4NMBw33X5WYeJYxj6fNR2
 t+60UtIDY0pxzWf7f0s84zWauOwVahyLqQ5CaaKKcIX/UEJqRU+Y6QeAU
 8YxVDks5w2BQUhdNbG7NnsnN/DqV7WuuZE5bm3UC40UV7qEZxsHscKnrb Q==;
X-CSE-ConnectionGUID: Rhqy4UwBQQarEWQ/QTaXtQ==
X-CSE-MsgGUID: sgVQ1kOWTnGJwEIUvuxT8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="25833638"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25833638"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:02:01 -0700
X-CSE-ConnectionGUID: HskYjzKlQ8G1z95B647H4w==
X-CSE-MsgGUID: B9C5qgrgTZyYI91FBBYc0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40612017"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:02:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/i915/mso: using joiner is not possible with
 eDP MSO
In-Reply-To: <ZmwsZCkP6mobS7ki@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718360103.git.jani.nikula@intel.com>
 <137a010815ab8ba8f266fea7a85fe14d7bfb74cd.1718360103.git.jani.nikula@intel.com>
 <ZmwsZCkP6mobS7ki@intel.com>
Date: Fri, 14 Jun 2024 17:01:15 +0300
Message-ID: <871q4zipxw.fsf@intel.com>
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
> On Fri, Jun 14, 2024 at 01:16:03PM +0300, Jani Nikula wrote:
>> It's not possible to use the joiner at the same time with eDP MSO. When
>> a panel needs MSO, it's not optional, so MSO trumps joiner.
>>=20
>> While just reporting false for intel_dp_has_joiner() should be
>> sufficient, also skip creation of the joiner force enable debugfs to
>> better handle this in testing.
>>=20
>> Cc: stable@vger.kernel.org
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++--
>>  drivers/gpu/drm/i915/display/intel_dp.c              | 4 ++++
>>  2 files changed, 10 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 91757fed9c6d..5eb31404436c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1546,8 +1546,12 @@ void intel_connector_debugfs_add(struct intel_con=
nector *connector)
>>  	if (DISPLAY_VER(i915) >=3D 11 &&
>>  	    (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
>>  	     connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) {
>> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>> -				    &connector->force_bigjoiner_enable);
>> +		struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>
> That won't give you anything on MST.

Gah!

> Dunno if there's any point in
> trying to do anything here anyway. We don't account for the other
> intel_dp_has_joiner() restrictions here either.

The only point would be skipping a bunch of IGT tests. With the debugfs
in place, kms_big_joiner thinks it enables joiner, and runs extra joiner
tests for nothing.

Thoughts? I guess the simplest fix for stable could be just the last
hunk here.

BR,
Jani.


>
>> +
>> +		/* eDP MSO is not compatible with joiner */
>> +		if (!intel_dp->mso_link_count)
>> +			debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>> +					    &connector->force_bigjoiner_enable);
>>  	}
>>=20=20
>>  	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
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
>
> This part looks fine.
>
>>  	return DISPLAY_VER(dev_priv) >=3D 12 ||
>>  		(DISPLAY_VER(dev_priv) =3D=3D 11 &&
>>  		 encoder->port !=3D PORT_A);
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
