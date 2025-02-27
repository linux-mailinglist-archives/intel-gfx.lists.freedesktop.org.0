Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 334E6A479FC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF78910EAA4;
	Thu, 27 Feb 2025 10:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCyrB4Cp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C2D10EAA6;
 Thu, 27 Feb 2025 10:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651537; x=1772187537;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YxMiEOGB4/4hNsdQ8e1dMTscyibUnF1djDeulq5C0iA=;
 b=eCyrB4Cp90NpcMpxWRI25jBuGc3Dl6f6yswBTclbXQWX7No1BuMjvdsc
 IloJOFjwJd/8YjoAtu73pi4DiHGDlZprY7uKKelJiPjjqAQ55joYRp6iA
 HS/bKw10HUgCAqQV4FPBZwnEqeKP/TbUyGUj6I0kamcSMMdN2pEyTtnqI
 yFo8cJgjejZkOsd5iq35bjsajfUITYqjx1fXCyAbSzBFEQq+Lo0voWcQy
 Gp5KyeWbn8KAwXYfwqDVS4/GRc/FFOLpVsEK9KtTsYJT0TYYwcHNhLU0S
 WM8CjdoYt0ywPWZSWNdnk4TCPGk+3V4F2CdEMJm/DeN2y/qnDwC9FjIY3 Q==;
X-CSE-ConnectionGUID: RdyySKgNRROHGVOr6+8J9A==
X-CSE-MsgGUID: VxvJun7eT8i6LK9PXNu0bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40710888"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="40710888"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:18:57 -0800
X-CSE-ConnectionGUID: b4lpNRuPSxSCV0OjfHumog==
X-CSE-MsgGUID: hC4ckOJkTx+D+CqXAspI4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="117623688"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.181])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:18:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/mst: update max stream count to match number
 of pipes
In-Reply-To: <Z782CKSDNBjlmjct@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250226135626.1956012-1-jani.nikula@intel.com>
 <Z782CKSDNBjlmjct@intel.com>
Date: Thu, 27 Feb 2025 12:18:51 +0200
Message-ID: <871pvj4rn8.fsf@intel.com>
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

On Wed, 26 Feb 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 26, 2025 at 03:56:26PM +0200, Jani Nikula wrote:
>> We create the stream encoders and attach connectors for each pipe we
>> have. As the number of pipes has increased, we've failed to update the
>> topology manager maximum number of payloads to match that. Bump up the
>> max stream count to match number of pipes, enabling the fourth stream on
>> platforms that support four pipes.
>>=20
>> Cc: stable@vger.kernel.org
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/d=
rm/i915/display/intel_dp_mst.c
>> index 167e4a70ab12..822218d8cfd4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1896,7 +1896,8 @@ intel_dp_mst_encoder_init(struct intel_digital_por=
t *dig_port, int conn_base_id)
>>  	/* create encoders */
>>  	mst_stream_encoders_create(dig_port);
>>  	ret =3D drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, display->drm,
>> -					   &intel_dp->aux, 16, 3, conn_base_id);
>> +					   &intel_dp->aux, 16,
>> +					   INTEL_NUM_PIPES(display), conn_base_id);
>>  	if (ret) {
>>  		intel_dp->mst_mgr.cbs =3D NULL;
>>  		return ret;
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
