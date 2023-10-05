Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA99A7B9C80
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 12:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED8A10E1D9;
	Thu,  5 Oct 2023 10:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB3F10E1D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 10:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696501661; x=1728037661;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HW22TrkpTXN3dZmb9W8qJ5bcrePFAcKLQh55nfeWeqY=;
 b=U4cvPgTBRHw15FlZt94TlFFeyI4b1vyUYypvQxhx8xeE4gJzVvXzLYhB
 eC5od6ZvhYypqrCiitsOAAFRYvM4HMqUAiwxii1LBVH8l2i3V9QBBwZ4+
 aPJwrSaok0MNGTMP16HeUOwXeyeZtjs/4xOU27Q7Jaasv/o9n6jeF/r8y
 OOkabMaEoPxffkR8v3Eq3tqmNaQZfnV+PW8aQFSCfbg+Vr0kMeU8eGc8X
 KGGmpEpupK60mh9zjK5wrbg2+Bx8aNPBaOGUfV8bEHjgyGHhzl0H/omfi
 Gqh7spw1rQEhPexYlTrHejpFm9UbEhQtSgtDG8UnKcMqu4fTqHPCdGuzY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="447646871"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="447646871"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 03:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="925542662"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="925542662"
Received: from icoveix-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 03:27:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Suraj
 Kandpal <suraj.kandpal@intel.com>
In-Reply-To: <ZR6E9jqTJzVWFwqi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
 <ZR6E9jqTJzVWFwqi@intel.com>
Date: Thu, 05 Oct 2023 13:27:36 +0300
Message-ID: <87r0m9cqjr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

On Thu, 05 Oct 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 05, 2023 at 12:12:58PM +0530, Suraj Kandpal wrote:
>> i2c_adapter is being assigned using intel_connector even before the
>> NULL check occurs and even though it shouldn't be a problem
>> lets just clean this up as logically it does not make sense to check
>> the connector for NULL but dereference it before that.
>>=20
>> Fixes: e046d1562491 ("drm/i915/hdmi: Use connector->ddc everwhere")
>>=20
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 4668de45d6fe..6b658faf1fc3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -4326,7 +4326,7 @@ static int intel_hdmi_reset_link(struct intel_enco=
der *encoder,
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
>>  	struct intel_connector *connector =3D hdmi->attached_connector;
>> -	struct i2c_adapter *ddc =3D connector->base.ddc;
>> +	struct i2c_adapter *ddc;
>>  	struct drm_connector_state *conn_state;
>>  	struct intel_crtc_state *crtc_state;
>>  	struct intel_crtc *crtc;
>> @@ -4336,6 +4336,8 @@ static int intel_hdmi_reset_link(struct intel_enco=
der *encoder,
>>  	if (!connector || connector->base.status !=3D connector_status_connect=
ed)
>>  		return 0;
>
> The connector is never NULL here. So the check is just nonsense.

Yeah I'd rather remove that. Leaving it in makes people (and static
analyzers, apprently) think it could be NULL, and that leads to more
what ifs.

BR,
Jani.

>
>>=20=20
>> +	ddc =3D connector->base.ddc;
>> +
>>  	ret =3D drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
>>  			       ctx);
>>  	if (ret)
>> --=20
>> 2.25.1

--=20
Jani Nikula, Intel
