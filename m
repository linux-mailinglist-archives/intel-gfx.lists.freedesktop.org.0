Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3AA712BB0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C330110E1DF;
	Fri, 26 May 2023 17:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E271E10E1DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685121779; x=1716657779;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uhTErQM7M6OR4li49P/i5gHsHFZLgB3kMrfwLA62gAA=;
 b=TEWBcuvafNPLoeKUA4kf+eVUl9yXM334Pt1Szzrlq5joGMKYykF4zVBO
 hmT0VgPbFHg1Ianz07VTorf9bazT50Q5EtlRjiyjbMq/xwBhnlXnxfiTQ
 Ng77vDnRTRzGG1LLvCr4LDv1yyIQMTqKHqIG9kO6O3ZPkqpk7SNH06ptD
 2qirNKPMn/KM6LI0NVuDM6lMMsw8J8+1NCwYzmP7RYrfE8iG/OrHXdvb2
 Zwa8fedN5fCcrXTjNXVvY2la5AUjNefQKfdy3GxCIF36ru9wCihO9LN4Q
 FKZpDSkFoz8rUPlXofwWO7zsYbc9i5VkOpzNBnVLezcPscicPXBJcniH9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="382504300"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="382504300"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="699481527"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="699481527"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:22:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZHDjIbKT8-X5m5VW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1685119006.git.jani.nikula@intel.com>
 <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
 <ZHDjIbKT8-X5m5VW@intel.com>
Date: Fri, 26 May 2023 20:22:54 +0300
Message-ID: <87h6rzhus1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero
 plane offset
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

On Fri, 26 May 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, May 26, 2023 at 07:37:54PM +0300, Jani Nikula wrote:
>> We assume the plane offset is 0. Warn if it's not. This also fixes a
>> warn on unused but set variable offset.
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 ++
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
>>  2 files changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm=
/i915/display/i9xx_plane.c
>> index 616654adbfb8..b52a681ca85e 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>> @@ -1037,6 +1037,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *c=
rtc,
>>  	}
>>  	plane_config->base =3D base;
>>=20=20
>> +	drm_WARN_ON(&dev_priv->drm, offset !=3D 0);
>> +
>
> The gen2/3 codepath doesn't appear to initialize offset at all.

Right. I wonder why I didn't get a warning about using an uninitialized
variable.

>
> With that fixed this is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, v2 sent.


>
>>  	val =3D intel_de_read(dev_priv, PIPESRC(pipe));
>>  	fb->width =3D REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
>>  	fb->height =3D REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driver=
s/gpu/drm/i915/display/skl_universal_plane.c
>> index 36070d86550f..6b01a0b68b97 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2529,6 +2529,7 @@ skl_get_initial_plane_config(struct intel_crtc *cr=
tc,
>>  	plane_config->base =3D base;
>>=20=20
>>  	offset =3D intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
>> +	drm_WARN_ON(&dev_priv->drm, offset !=3D 0);
>>=20=20
>>  	val =3D intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
>>  	fb->height =3D REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel Open Source Graphics Center
