Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5D79E365F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BA810E2C6;
	Wed,  4 Dec 2024 09:21:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3lSNOFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A5510E2C6;
 Wed,  4 Dec 2024 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304093; x=1764840093;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UNbmFM/HnvK51OmxTpXNhEDiUgYfjylSDnx8bTqRB4E=;
 b=B3lSNOFfKltyByu1WiFDC4beHpMhjfYzjsBNEL3QpQHuA5uBGMjuUUTI
 M3ACfXzEVbUhsKK2tcB32hJF0rW0pSGroBXZ8QuyqBKNR1v55oqqI8OF4
 QM7rfxyIh8URk5P1MQzwikya0SvBC74S1ZI1jCfKPOvMsoge6JaDRv6pw
 n96trBfZXb4KkXeAiAKPXOuiTigsYtt/5JCeH1ps+JLyOKVZEIzI3TjG+
 bkAwCBkZpGnUhceTdnXYZocsdQ8Yepu8cBCX6/3gZpJlDRK57aM+Q46en
 EU9eO+YfUyoZtl6PhjYsk5oD60EhPeO944loJI+zZnz7VYTVkrPm4d3U+ g==;
X-CSE-ConnectionGUID: NvRU8C7HStOTnVrSaSD5aA==
X-CSE-MsgGUID: igPaEFttQg2nTY6VrM1sFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="37498740"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="37498740"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:21:32 -0800
X-CSE-ConnectionGUID: ljrALvL/RFCqI54abriVKg==
X-CSE-MsgGUID: XGBMtb2aSvCNSYiDqYdbMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93894226"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:21:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/cx0: split out mtl_get_cx0_buf_trans() to c10
 and c20 variants
In-Reply-To: <MW4PR11MB7054E2FC4DA3275E9FF14F42EF372@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241129114158.486418-1-jani.nikula@intel.com>
 <MW4PR11MB7054E2FC4DA3275E9FF14F42EF372@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Wed, 04 Dec 2024 11:21:28 +0200
Message-ID: <87plm73isn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 04 Dec 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, 29 November 2024 13.42
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Kahola, Mika <mika.kahola@intel.com>
>> Subject: [PATCH] drm/i915/cx0: split out mtl_get_cx0_buf_trans() to c10 and c20
>> variants
>>
>> The PHY is either c10 or c20, there's no need to check at runtime and complicate
>> the conditions in mtl_get_cx0_buf_trans().
>>
>> While at it, replace the direct port clock check with intel_dp_is_uhbr().
>>
>> Cc: Mika Kahola <mika.kahola@intel.com>
>
> The change is reasonable and solid.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 23 +++++++++++++------
>>  1 file changed, 16 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index 4d21ce734343..9389b295036e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -1687,18 +1687,24 @@ dg2_get_snps_buf_trans(struct intel_encoder
>> *encoder,  }
>>
>>  static const struct intel_ddi_buf_trans * -mtl_get_cx0_buf_trans(struct
>> intel_encoder *encoder,
>> +mtl_get_c10_buf_trans(struct intel_encoder *encoder,
>>                     const struct intel_crtc_state *crtc_state,
>>                     int *n_entries)
>>  {
>> -     if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock >=
>> 1000000)
>> +     return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries); }
>> +
>> +static const struct intel_ddi_buf_trans * mtl_get_c20_buf_trans(struct
>> +intel_encoder *encoder,
>> +                   const struct intel_crtc_state *crtc_state,
>> +                   int *n_entries)
>> +{
>> +     if (intel_crtc_has_dp_encoder(crtc_state) &&
>> +intel_dp_is_uhbr(crtc_state))
>>               return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>> -     else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
>> !(intel_encoder_is_c10phy(encoder)))
>> +     else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>>               return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
>> -     else if (!intel_encoder_is_c10phy(encoder))
>> -             return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>>       else
>> -             return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
>> +             return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>>  }
>>
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder) @@ -1706,7
>> +1712,10 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>>       struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>
>>       if (DISPLAY_VER(i915) >= 14) {
>> -             encoder->get_buf_trans = mtl_get_cx0_buf_trans;
>> +             if (intel_encoder_is_c10phy(encoder))
>> +                     encoder->get_buf_trans = mtl_get_c10_buf_trans;
>> +             else
>> +                     encoder->get_buf_trans = mtl_get_c20_buf_trans;
>>       } else if (IS_DG2(i915)) {
>>               encoder->get_buf_trans = dg2_get_snps_buf_trans;
>>       } else if (IS_ALDERLAKE_P(i915)) {
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
