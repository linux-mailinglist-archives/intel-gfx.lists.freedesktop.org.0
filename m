Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DF4697997
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 11:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F91810EA9F;
	Wed, 15 Feb 2023 10:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E825610EAAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 10:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676456103; x=1707992103;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=oBwzhNQW7RMbkcyeZopJwmYgVH6NB3hDLzGn8nQ2hFg=;
 b=MN3clDnQCdermqQg+RPL3zEn+D8Nm67+ehrDvOhENLbh8XvMssPCio30
 8Ut9aJtoYEyg1E8eBEQUcb5oulg7PL6TCLkK0D97UpPQfmdm2SXr6Movh
 /7O2uQ3ukyZZDnD9HWCyQvUpJ5iiArqOB0B7JLLcw0oZ/I0d6L5RaH4zo
 OM4AV3WOMK1WYc2MlJoBtz87OsuigBFzkPU38wcG5Y9u0PxgeM0/IFYrg
 lrAymVcn/ik7oAVXkKAEEhOWAr6lgCWTPOI1KyGlxDFF0UH20AKnQlLEF
 /U/IKrANDQW6t+JF1EMYHAvSkM2cT7lnxqQpsoYALrilb/Gy1AxvRKnw5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="330022241"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="330022241"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:15:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="915099662"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="915099662"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:15:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 12:14:59 +0200
Message-ID: <873577s09o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Make backlight setup debugs
 consistent
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> It's confusing to debug backlight issues when one can't
> easily even tell what kind of backlight control was
> selected. Sprinkle uniform debug messages to all the
> backlight setup functions.
>
> Also the one that was already there (ext_pwm) was
> using drm_info() for some reason. I don't think that's
> warranted so switch it to drm_dbg_kms() as well.

Maybe add similar in intel_dp_aux_backlight.c to the two setup functions
there? Also the message in intel_backlight_setup() could use some
tweaking.

> @@ -1392,6 +1408,10 @@ static int vlv_setup_backlight(struct intel_connec=
tor *connector, enum pipe pipe
>=20=20
>  	panel->backlight.pwm_enabled =3D ctl2 & BLM_PWM_ENABLE;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name);

Maybe log the pipe here similar to controller in bxt/cnp?

Otherwise, LGTM.


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
