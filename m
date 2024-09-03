Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B9C96A0BB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 16:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B526510E5C3;
	Tue,  3 Sep 2024 14:33:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCUFoSRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482AA10E5C2;
 Tue,  3 Sep 2024 14:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725373993; x=1756909993;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=a8RKAI1W6Ua/G5LlLPHzuhfapELVP9g5b0GjBj+Z4DI=;
 b=UCUFoSRoe6xSKE/b31fZxgmCWOzsaO+0QmA8Cw6dqnr2FWjrt3LcI4Uc
 Wu2zogXmkfozCix4IonbD7jc+5wIkUZmlxnE4yTB3FkC5ZCATsQnc5oY+
 /jeWnCtJ0MwTCm9cvc1mC8NuX23Er4RAlDrn7jT434ExBZun81lDMz2is
 jLUeOTOFumO6eAebnchLgGoKFP93g2aUlLN7aYjGXP+Ms9S0+jeFV0krP
 melgk97ROu6RieIBjbRiz6wfYCuU0Be++XqVxtta27kIJscx5uwQZ3f2R
 m03/q5TWVN8Rxjwf4Zo2gBx47f1m49oy3ag/X6U30BFal1cTW/JauX7XA Q==;
X-CSE-ConnectionGUID: tOaTnELwTfawI6HesNOW+g==
X-CSE-MsgGUID: rtTlxRrRTQ2gKjVra4S4jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23542522"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="23542522"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:32:53 -0700
X-CSE-ConnectionGUID: QbX3PToxSg29nM0Xwz/6vQ==
X-CSE-MsgGUID: dJKjf0s4Sy+q3u5ImDerVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="65663287"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:32:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/11] drm/i915/pps: pass intel_dp to pps_name()
In-Reply-To: <ZtcCKQrGqjCMRl62@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725012870.git.jani.nikula@intel.com>
 <f2a7fec4a2ff1f09cb73e6734604fae99ab6b11a.1725012870.git.jani.nikula@intel.com>
 <ZtcCKQrGqjCMRl62@intel.com>
Date: Tue, 03 Sep 2024 17:32:35 +0300
Message-ID: <87le08u7ss.fsf@intel.com>
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

On Tue, 03 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Aug 30, 2024 at 01:15:44PM +0300, Jani Nikula wrote:
>> Currently all of intel_pps.c passes struct intel_dp around. Do the same
>> with pps_name() instead of passing both struct drm_i915_private and
>> struct intel_pps.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 61 +++++++++++++-----------
>>  1 file changed, 32 insertions(+), 29 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index 68141af4da54..1e87ce95c85d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -24,9 +24,12 @@ static void vlv_steal_power_sequencer(struct drm_i915=
_private *dev_priv,
>>  static void pps_init_delays(struct intel_dp *intel_dp);
>>  static void pps_init_registers(struct intel_dp *intel_dp, bool force_di=
sable_vdd);
>>=20=20
>> -static const char *pps_name(struct drm_i915_private *i915,
>> -			    struct intel_pps *pps)
>> +static const char *pps_name(struct intel_dp *intel_dp)
>>  {
>> +	struct intel_display *display =3D to_intel_display(intel_dp);
>> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +	struct intel_pps *pps =3D &intel_dp->pps;
>> +
>
> I've been thinking that we'd eventually turn intel_pps into some kind of
> proper object with a 1:1 relationship to the corresponding hw block.
> This is sort of going in the opposite direction, but looks trivial
> enough to deal with if/when we get to reworking intel_pps.

Right. I think there are more problematic cases than this one.

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, appreciated. Pushed the lot to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel
