Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226243F62AB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 18:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC33E6E063;
	Tue, 24 Aug 2021 16:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6602D6E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 16:27:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217380116"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="217380116"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:27:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526685039"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:27:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YSUZ1keUjJJk4yy4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210823093645.10464-1-jani.nikula@intel.com>
 <YSUZ1keUjJJk4yy4@intel.com>
Date: Tue, 24 Aug 2021 19:27:48 +0300
Message-ID: <87lf4qg64b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdi: make intel_fdi_link_freq()
 return int
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

On Tue, 24 Aug 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Aug 23, 2021 at 12:36:45PM +0300, Jani Nikula wrote:
>> The unsigned doesn't help us here.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fdi.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_fdi.h | 4 +---
>>  2 files changed, 2 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/=
i915/display/intel_fdi.c
>> index 970a57369b05..13f8ba4c9188 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>> @@ -95,7 +95,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev,=
 enum pipe pipe,
>>  	}
>>  }
>>=20=20
>> -u32 intel_fdi_link_freq(struct drm_i915_private *i915,
>> +int intel_fdi_link_freq(struct drm_i915_private *i915,
>>  			const struct intel_crtc_state *pipe_config)
>>  {
>>  	if (HAS_DDI(i915))
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/=
i915/display/intel_fdi.h
>> index fd63a6a53fca..2c8ffd9ceaed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
>> @@ -6,15 +6,13 @@
>>  #ifndef _INTEL_FDI_H_
>>  #define _INTEL_FDI_H_
>>=20=20
>> -#include <linux/types.h>
>> -
>>  struct drm_i915_private;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>>  struct intel_encoder;
>>=20=20
>>  #define I915_DISPLAY_CONFIG_RETRY 1
>> -u32 intel_fdi_link_freq(struct drm_i915_private *i915,
>> +int intel_fdi_link_freq(struct drm_i915_private *i915,
>>  			const struct intel_crtc_state *pipe_config);
>>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>>  			   struct intel_crtc_state *pipe_config);
>> --=20
>> 2.20.1

--=20
Jani Nikula, Intel Open Source Graphics Center
