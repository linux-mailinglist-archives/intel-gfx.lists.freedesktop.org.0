Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B7751BD8C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD8B10EF07;
	Thu,  5 May 2022 10:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E62B10EFD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 10:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651748013; x=1683284013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wzopR/EPIV5lz8aO1ws5T+inYDNZLjsh8ouRexx+PeY=;
 b=bDCmWApIxrx5ZCWE2zjQtOKpK/Eqc3ZR9iFaExyAqM8lEINRKToY5LsL
 V3Sb2+Bst5a7Au5gZxagBuwtNgN7wRU6N/OK2g8oIeYZzyd4LlmFDno6X
 JhoUenXPf3I7ucaQI9TvUVx1+rqQPtUS5hsU4lfPNaA3buhpCnk9t++9f
 UvsMasW4CSqc8Oeei1yomTtQ/2uD+Wl8/lLNL+DqnWsXO1cR1JfOoOZqs
 jfVRcjruxRFrSWS4FW6o6Pzhzz8epOEYvBqN8BiHzWWNN96Yaj1Tq6uwt
 pd7/r2jnJ/3TTMDgb7A5knaJH6wutKciPiBEqLBn4yIY5Ln8+e9aznPQz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="265667441"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="265667441"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:53:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="734845772"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:53:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YnL6CGr+RqDiLr1A@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1651569697.git.jani.nikula@intel.com>
 <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
 <YnL6CGr+RqDiLr1A@intel.com>
Date: Thu, 05 May 2022 13:53:26 +0300
Message-ID: <87pmksl07t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 18/20] drm/edid: detect color formats and
 CTA revision in all CTA extensions
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

On Thu, 05 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 03, 2022 at 12:24:03PM +0300, Jani Nikula wrote:
>> Convert drm_find_cea_extension() to EDID block iterator in color format
>> and CTA revision detection. Detect them in all CTA extensions.
>>=20
>> Also parse CTA Data Blocks in DisplayID even if there's no CTA EDID
>> extension.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/drm_edid.c | 24 ++++++++++++++++--------
>>  1 file changed, 16 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
>> index 3b18a6e501df..41f24f4c2d23 100644
>> --- a/drivers/gpu/drm/drm_edid.c
>> +++ b/drivers/gpu/drm/drm_edid.c
>> @@ -5447,32 +5447,40 @@ static void drm_parse_cea_ext(struct drm_connect=
or *connector,
>>  			      const struct edid *edid)
>>  {
>>  	struct drm_display_info *info =3D &connector->display_info;
>> +	struct drm_edid_iter edid_iter;
>>  	const struct cea_db *db;
>>  	struct cea_db_iter iter;
>>  	const u8 *edid_ext;
>>=20=20
>> -	edid_ext =3D drm_find_cea_extension(edid);
>> -	if (!edid_ext)
>> -		return;
>> +	drm_edid_iter_begin(edid, &edid_iter);
>> +	drm_edid_iter_for_each(edid_ext, &edid_iter) {
>> +		if (edid_ext[0] !=3D CEA_EXT)
>> +			continue;
>>=20=20
>> -	info->cea_rev =3D edid_ext[1];
>> +		if (!info->cea_rev)
>> +			info->cea_rev =3D edid_ext[1];
>>=20=20
>> -	/* The existence of a CEA block should imply RGB support */
>> -	info->color_formats =3D DRM_COLOR_FORMAT_RGB444;
>> +		if (info->cea_rev !=3D edid_ext[1])
>> +			DRM_DEBUG_KMS("CEA extension version mismatch %u !=3D %u\n",
>> +				      info->cea_rev, edid_ext[1]);
>>=20=20
>> -	/* CTA DisplayID Data Block does not have byte #3 */
>> -	if (edid_ext[0] =3D=3D CEA_EXT) {
>> +		/* The existence of a CTA extension should imply RGB support */
>> +		info->color_formats =3D DRM_COLOR_FORMAT_RGB444;
>>  		if (edid_ext[3] & EDID_CEA_YCRCB444)
>>  			info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR444;
>>  		if (edid_ext[3] & EDID_CEA_YCRCB422)
>>  			info->color_formats |=3D DRM_COLOR_FORMAT_YCBCR422;
>>  	}
>> +	drm_edid_iter_end(&edid_iter);
>>=20=20
>>  	cea_db_iter_edid_begin(edid, &iter);
>>  	cea_db_iter_for_each(db, &iter) {
>>  		/* FIXME: convert parsers to use struct cea_db */
>>  		const u8 *data =3D (const u8 *)db;
>>=20=20
>> +		/* The existence of a CTA block should imply RGB support */
>> +		info->color_formats =3D DRM_COLOR_FORMAT_RGB444;
>
> This part seems a bit iffy. DisplayID has its own way to specify the
> supported color depths/encodings. So I think eventually we'll just
> want to split this into three logical parts: parse CTA ext block,
> parse DispID color stuff, parse CTA data blocks.

Right. Sent a new version with the above hunk dropped.

BR,
Jani.

>
>> +
>>  		if (cea_db_is_hdmi_vsdb(db))
>>  			drm_parse_hdmi_vsdb_video(connector, data);
>>  		if (cea_db_is_hdmi_forum_vsdb(db) ||
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
