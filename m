Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6889A5DF90
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 15:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8C310E189;
	Wed, 12 Mar 2025 14:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4jj4FXj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E1A10E70F;
 Wed, 12 Mar 2025 14:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741791508; x=1773327508;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=k/cXpySpg4/sLLnNCGR/NvjcKZeRr2JPvvDBbHCBeoE=;
 b=S4jj4FXjXIGWZQ5bV5DZpfDxUWnPp2xee0ifcfCZYwfQa6fmYij4VP01
 m2vfrNrQutOUKkAz5YtaMWLUuoglC6jOq2Z5LMzJlm7x1PeZS+vm1A+TC
 0m/yDcIGgbVOnDXgwx8mqL/SrGrX38MgD2ULhCsd4E7fPERydtrRWtrKF
 1AcUl5AVP3x0sx4Voou7pdBnC9Jb+E2THPjt8f53cE7psu0Cz30V/5ceV
 sWFh65LxzG8YppFHfWzNhvrGGLlB+QjHhUz86GTjdpzkLcKr0N1dfGltt
 gjv6N3gLKNsYZxCMBBJPI06WyNNTdhvYa4bZWl7GbrFKU3FmbdVdVrB/+ w==;
X-CSE-ConnectionGUID: sVhgdxqASIS6YGq6PgNCMQ==
X-CSE-MsgGUID: lEXIol2rQu+Qlo2d52BzzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="46784883"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="46784883"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 07:58:27 -0700
X-CSE-ConnectionGUID: B2W5RfmGQNOHaCXuH0ZaZg==
X-CSE-MsgGUID: mrGlaaN6RPSprfJWA/v0UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125726568"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 07:58:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v5 5/8] drm/i915/lobf: Add debug interface for lobf
In-Reply-To: <dc8add2f89e5680d4bac347164ac73bc78c50db2.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250303083522.845224-1-animesh.manna@intel.com>
 <20250303083522.845224-6-animesh.manna@intel.com>
 <dc8add2f89e5680d4bac347164ac73bc78c50db2.camel@intel.com>
Date: Wed, 12 Mar 2025 16:58:21 +0200
Message-ID: <87r032e1o2.fsf@intel.com>
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

On Fri, 07 Mar 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Mon, 2025-03-03 at 14:05 +0530, Animesh Manna wrote:
>> Add an interface in debugfs which will help in debugging LOBF
>> feature.
>>
>> v1: Initial version.
>> v2:
>> - Remove FORCE_EN flag. [Jouni]
>> - Change prefix from I915 to INTEL. [Jani]
>> - Use u8 instead of bool for lobf-debug flag. [Jani]
>> v3:
>> - Use intel_connector instead of display. [Jani]
>> - Remove edp connector check as it was already present
>> in caller function. [Jani]
>> - Remove loop of searching edp encoder which is directly
>> accessible from intel_connector. [Jani]
>>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_alpm.c     | 32
>> +++++++++++++++++++
>>  .../drm/i915/display/intel_display_types.h    |  5 +++
>>  2 files changed, 37 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index f4586c76a7b7..245364d031c1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>>       int waketime_in_lines, first_sdp_position;
>>       int context_latency, guardband;
>>
>> +     if (intel_dp->alpm_parameters.lobf_debug &
>> INTEL_LOBF_DEBUG_DISABLE)
>> +             return;
>> +
>>       if (!intel_dp_is_edp(intel_dp))
>>               return;
>>
>> @@ -451,6 +454,32 @@ static int i915_edp_lobf_info_show(struct
>> seq_file *m, void *data)
>>
>>  DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
>>
>> +static int
>> +i915_edp_lobf_debug_get(void *data, u64 *val)
>> +{
>> +     struct intel_connector *connector =3D data;
>> +     struct intel_dp *intel_dp =3D enc_to_intel_dp(connector-
>> >encoder);
>> +
>> +     *val =3D READ_ONCE(intel_dp->alpm_parameters.lobf_debug);
>> +
>> +     return 0;
>> +}
>> +
>> +static int
>> +i915_edp_lobf_debug_set(void *data, u64 val)
>> +{
>> +     struct intel_connector *connector =3D data;
>> +     struct intel_dp *intel_dp =3D enc_to_intel_dp(connector-
>> >encoder);
>> +
>> +     intel_dp->alpm_parameters.lobf_debug =3D val;
>
> I think you should do some sanity check with the value from user space.

I don't understand why we're doing some bitmask stuff here in the first
place, when it's actually just a true/false thing.

BR,
Jani.


>
>> +     return 0;
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
>> @@ -460,6 +489,9 @@ void intel_alpm_lobf_debugfs_add(struct
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
>> index b78721c451b8..b6ec9a8fadd9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1808,6 +1808,11 @@ struct intel_dp {
>>               u8 aux_less_wake_lines;
>>               u8 silence_period_sym_clocks;
>>               u8 lfps_half_cycle_num_of_syms;
>> +
>> +#define INTEL_LOBF_DEBUG_MODE_MASK           0x0f
>
> 0x1?
>
> BR,
>
> Jouni H=C3=B6gander
>
>> +#define INTEL_LOBF_DEBUG_DEFAULT             0x00
>> +#define INTEL_LOBF_DEBUG_DISABLE             0x01
>> +             u8 lobf_debug;
>>       } alpm_parameters;
>>
>>       u8 alpm_dpcd;
>

--=20
Jani Nikula, Intel
