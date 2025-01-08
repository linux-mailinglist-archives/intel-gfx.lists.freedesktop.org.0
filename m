Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8C9A05DDD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69F110E8A0;
	Wed,  8 Jan 2025 14:03:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IL+h7Iyk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5369010E8A0;
 Wed,  8 Jan 2025 14:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736344983; x=1767880983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1nNlY30ugUeHk8TKvg2DGJBwqKrNaJfK5znfTug4h1E=;
 b=IL+h7IykJqMnvZizdcYNrM04CaWCEu/NtbOAp2nHOLi5S3HdLnmt5GcU
 c6kPE05F6kdqIExYhuZOcHt5Cl8huBja+Ni7bUhI1OyK1RlMCl2Gy4GlP
 TNjiHmF0C8J1sZM2/4YWum+yPJMAJr8NLdG8GI2EmNrDMz3TDRoOeU8hA
 YzJwojFaQzPSU4Wbu1f5Kr1KOLi4tqkT/idNMU9O1HtbO0MN4cZRA+f3s
 qZ/eJeboXyuJ0h0Ces4zTcvIU5wpjpv8KAw/HIWoJA+7h3wFyhR7QceNp
 Rx+b5Gwfe5Zc4gkWA1YdAVcKPHj16WUQCyEs7B0mU3q42zKj2xuhCSae2 A==;
X-CSE-ConnectionGUID: M2C5XMmsT5qxwitx5cko+Q==
X-CSE-MsgGUID: tP+MCv8tRzu5ZhoQJuGkeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="24175508"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="24175508"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:03:02 -0800
X-CSE-ConnectionGUID: IA2A5eWXTOOz2PG1Z0j8LA==
X-CSE-MsgGUID: F7po2wkXQ/WfQCmXILPChQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134004368"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:02:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v3 4/6] drm/i915/lobf: Add debug interface for lobf
In-Reply-To: <bf625a3b03eb355c37f5b2816c1046e1566aaa85.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250106041516.924101-1-animesh.manna@intel.com>
 <20250106041516.924101-5-animesh.manna@intel.com>
 <bf625a3b03eb355c37f5b2816c1046e1566aaa85.camel@intel.com>
Date: Wed, 08 Jan 2025 16:02:56 +0200
Message-ID: <87o70hl7xr.fsf@intel.com>
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

On Wed, 08 Jan 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Mon, 2025-01-06 at 09:45 +0530, Animesh Manna wrote:
>> Add an interface in debugfs which will help in debugging LOBF
>> feature.
>>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_alpm.c     | 51
>> +++++++++++++++++++
>>  .../drm/i915/display/intel_display_types.h    |  6 +++
>>  2 files changed, 57 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 197c67363f0e..1cc0e5ed3f74 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>>       int waketime_in_lines, first_sdp_position;
>>       int context_latency, guardband;
>>
>> +     if (intel_dp->alpm_parameters.lobf_debug &
>> I915_LOBF_DEBUG_DISABLE)
>> +             return;
>> +
>>       if (!intel_dp_is_edp(intel_dp))
>>               return;
>>
>> @@ -448,6 +451,51 @@ static int i915_edp_lobf_info_show(struct
>> seq_file *m, void *data)
>>
>>  DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
>>
>> +static int
>> +i915_edp_lobf_debug_get(void *data, u64 *val)
>> +{
>> +     struct intel_display *display =3D data;
>> +     struct intel_encoder *encoder;
>> +     int ret =3D -ENODEV;
>> +
>> +     for_each_intel_dp(display->drm, encoder) {
>> +             struct intel_dp *intel_dp =3D
>> enc_to_intel_dp(encoder);
>> +
>> +             if (!intel_dp_is_edp(intel_dp))
>> +                     return ret;
>> +
>> +             // TODO: split to each edp transcoder.
>> +             *val =3D READ_ONCE(intel_dp-
>> >alpm_parameters.lobf_debug);
>> +             ret =3D 0;
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>> +static int
>> +i915_edp_lobf_debug_set(void *data, u64 val)
>> +{
>> +     struct intel_display *display =3D data;
>> +     struct intel_encoder *encoder;
>> +     int ret =3D -ENODEV;
>> +
>> +     for_each_intel_dp(display->drm, encoder) {
>> +             struct intel_dp *intel_dp =3D
>> enc_to_intel_dp(encoder);
>> +
>> +             if (!intel_dp_is_edp(intel_dp))
>> +                     return ret;
>> +
>> +             // TODO: split to each edp transcoder.
>> +             intel_dp->alpm_parameters.lobf_debug =3D val;
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>> +DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
>> +                     i915_edp_lobf_debug_get,
>> i915_edp_lobf_debug_set,
>> +                     "%llu\n");
>> +
>>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>>  {
>>       struct intel_display *display =3D to_intel_display(connector);
>> @@ -457,6 +505,9 @@ void intel_alpm_lobf_debugfs_add(struct
>> intel_connector *connector)
>>           connector->base.connector_type !=3D
>> DRM_MODE_CONNECTOR_eDP)
>>               return;
>>
>> +     debugfs_create_file("i915_edp_lobf_debug", 0644, root,
>> +                         connector, &i915_edp_lobf_debug_fops);
>> +
>>       debugfs_create_file("i915_edp_lobf_info", 0444, root,
>>                           connector, &i915_edp_lobf_info_fops);
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index f230163226d1..37f061acb204 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1800,6 +1800,12 @@ struct intel_dp {
>>               u8 aux_less_wake_lines;
>>               u8 silence_period_sym_clocks;
>>               u8 lfps_half_cycle_num_of_syms;
>> +
>> +#define I915_LOBF_DEBUG_MODE_MASK            0x0f
>> +#define I915_LOBF_DEBUG_DEFAULT                      0x00
>> +#define I915_LOBF_DEBUG_DISABLE                      0x01
>> +#define I915_LOBF_DEBUG_FORCE_EN             0x02
>
> FORCE_EN is not needed. You can achieve LOBF (if it's possible) by
> disabling PSR/PR.

To be honest, I don't like adding these debug mode masks at all. Don't
make it so complicated. Moreover, the only user of any of these is

	intel_dp->alpm_parameters.lobf_debug & I915_LOBF_DEBUG_DISABLE

but lobf_debug is *boolean*!

Keep it simple.

And "i915" naming in display code is discouraged, unless it's in
reference to i915 as the platform.

BR,
Jani.


>
> BR,
>
> Jouni H=C3=B6gander
>
>> +             bool lobf_debug;
>>       } alpm_parameters;
>>
>>       u8 alpm_dpcd;
>

--=20
Jani Nikula, Intel
