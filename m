Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC054E6166
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 10:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81E110E78D;
	Thu, 24 Mar 2022 09:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6834610E78D;
 Thu, 24 Mar 2022 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648115902; x=1679651902;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GpKEE2QTesoO89Aioo+z0+/n7ZOxg8pX8kUhvD7a9S0=;
 b=T8M6skPWAbWOGGz3ICa9w8C1qYPj8v/QYu1xuxHKT7PRJQpp2w1HIbc1
 A1P0ehsQKs2rKspvwxhSWiXf6yojMgylT5Tq2sHGDvDVNl1fD2AerXUby
 Q/PTWLN+a3KpltB34wLUxee7rB9850BcNlYMXJShAJeKiCsvhnCoApVsV
 3oUMdL6XQo4QMAShJfSCUZe66IQTIAXJ2+BLN3c6ecvOxSohXiie8K8Do
 94fk8pd9UrcTvhh3OxkWJ/tORvByK64iw9uI/8xKceB2nzPfdScMia7Je
 nk6lfwKZgvckBd19UwybjaUqt+7WStSg/QQZKZIjU6wyhItQbbisbSHmN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283192592"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283192592"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:58:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="519719819"
Received: from cnalawad-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.37.131])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:58:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yjs4E5gl3KZoUOBR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323100438.1757295-1-jani.nikula@intel.com>
 <Yjs4E5gl3KZoUOBR@intel.com>
Date: Thu, 24 Mar 2022 11:58:17 +0200
Message-ID: <87tubnhdty.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/edid: fix CEA extension byte #3 parsing
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 23, 2022 at 12:04:38PM +0200, Jani Nikula wrote:
>> Only an EDID CEA extension has byte #3, while the CTA DisplayID Data
>> Block does not. Don't interpret bogus data for color formats.
>
> I think what we might want eventually is a cleaner split between
> the CTA data blocks vs. the rest of the EDID CTA ext block. Only
> the former is relevant for DisplayID.
>
> But for a bugfix we want to keep it simple.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-misc-next-fixes.

BR,
Jani.

>
>>=20
>> For most displays it's probably an unlikely scenario you'd have a CTA
>> DisplayID Data Block without a CEA extension, but they do exist.
>>=20
>> Fixes: e28ad544f462 ("drm/edid: parse CEA blocks embedded in DisplayID")
>> Cc: <stable@vger.kernel.org> # v4.15
>> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> commit e28ad544f462 was merged in v5.3, but it has Cc: stable for v4.15.
>>=20
>> This is also fixed in my CEA data block iteration series [1], but we'll
>> want the simple fix for stable first.
>>=20
>> Hum, CTA is formerly CEA, I and the code seem to use both, should we use
>> only one or the other?
>
> And before CEA it was called EIA (IIRC). Dunno if we also use that name
> somewhere.
>
> If someone cares enough I guess we could rename everything to "cta".
>
>>=20
>> [1] https://patchwork.freedesktop.org/series/101659/
>> ---
>>  drivers/gpu/drm/drm_edid.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
>> index 561f53831e29..ccf7031a6797 100644
>> --- a/drivers/gpu/drm/drm_edid.c
>> +++ b/drivers/gpu/drm/drm_edid.c
>> @@ -5187,10 +5187,14 @@ static void drm_parse_cea_ext(struct drm_connect=
or *connector,
>>=20=20
>>  	/* The existence of a CEA block should imply RGB support */
>>  	info->color_formats =3D DRM_COLOR_FORMAT_RGB444;
>> -	if (edid_ext[3] & EDID_CEA_YCRCB444)
>> -		info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR444;
>> -	if (edid_ext[3] & EDID_CEA_YCRCB422)
>> -		info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR422;
>> +
>> +	/* CTA DisplayID Data Block does not have byte #3 */
>> +	if (edid_ext[0] =3D=3D CEA_EXT) {
>> +		if (edid_ext[3] & EDID_CEA_YCRCB444)
>> +			info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR444;
>> +		if (edid_ext[3] & EDID_CEA_YCRCB422)
>> +			info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR422;
>> +	}
>>=20=20
>>  	if (cea_db_offsets(edid_ext, &start, &end))
>>  		return;
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
