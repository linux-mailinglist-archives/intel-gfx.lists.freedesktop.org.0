Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76AABA2FF3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 10:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1774F89226;
	Fri, 26 Sep 2025 08:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ji+o9oy9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A1389226;
 Fri, 26 Sep 2025 08:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758876359; x=1790412359;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/o9XuHmMoGK5r8Iyjln9ia0VlL66NZem9Yd2h2lTIqU=;
 b=Ji+o9oy9+53XVuMr3uK3tmmuT/9XKeEIB8c+jjFAyfIXPRVVMPl+z3Ti
 q1NuLGCdXSy66yClI6zg2/PFNBn8JnA6rPQjz4I/EZMD7XGrfSdNMzZkZ
 Dq3NOG4rauD4YKRmeilu51YcDH3a2uhjo1Jmb3KlC5hQCgknWTEJyK+XE
 EeP572OIJlQrM7O9ARqU4fVX9xqGOJp67x9sZjqkoulemwDOGZpr2u+k5
 eHVTtUQhmjDKbRYDg0wss3glC/IE5oJv1NCQbf6YhXiCxS+q7n+LfqR50
 1AusEplNl5wqIGJuiJXfacrVOWFLDbqho7p6lzGTl+1k/X1eaM8GNrxSg w==;
X-CSE-ConnectionGUID: Pz5cbJSHSB6gk1sgHiyX9w==
X-CSE-MsgGUID: k2OsggzoROmRGq+wOLWCXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="48768756"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="48768756"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 01:45:58 -0700
X-CSE-ConnectionGUID: amMFhJJeQauhDT9Q8KgvkA==
X-CSE-MsgGUID: gtm9D50oQ++1MM+H6/boQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="176838687"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 01:45:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Khaled
 Almahallawy <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/display: Extend i915_display_info with Type-C
 port details
In-Reply-To: <aNZNqOni0az7GUqK@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
 <aNZNqOni0az7GUqK@intel.com>
Date: Fri, 26 Sep 2025 11:45:52 +0300
Message-ID: <ca0a2b05c577d368cdf296685bda2dc9bcba9cfe@intel.com>
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

On Fri, 26 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 25, 2025 at 04:51:53PM -0700, Khaled Almahallawy wrote:
>> Expose key Type-C port data in i915_display_info to make it easier to
>> understand the port configuration and active mode, especially whether
>> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
>>=20
>> Tested in DP-Alt, TBT-Alt, SST, and MST.
>>=20
>> Expected output:
>>=20
>> [CONNECTOR:290:DP-2]: status: connected
>> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
>> 	physical dimensions: 600x340mm
>> ...
>> [CONNECTOR:263:DP-5]: status: connected
>> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
>> 	physical dimensions: 610x350mm
>>=20
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++++
>>  drivers/gpu/drm/i915/display/intel_tc.c              | 10 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_tc.h              |  3 +++
>>  3 files changed, 17 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 10dddec3796f..6687fc18e1f5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -47,6 +47,7 @@
>>  #include "intel_psr_regs.h"
>>  #include "intel_vdsc.h"
>>  #include "intel_wm.h"
>> +#include "intel_tc.h"
>>=20=20
>>  static struct intel_display *node_to_intel_display(struct drm_info_node=
 *node)
>>  {
>> @@ -254,6 +255,9 @@ static void intel_connector_info(struct seq_file *m,
>>  	if (connector->status =3D=3D connector_status_disconnected)
>>  		return;
>>=20=20
>> +	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
>> +		intel_tc_info(m, intel_attached_dig_port(intel_connector));
>> +
>>  	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
>>  		   connector->display_info.width_mm,
>>  		   connector->display_info.height_mm);
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index c4a5601c5107..4cd7ccac28b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -1703,6 +1703,16 @@ void intel_tc_port_sanitize_mode(struct intel_dig=
ital_port *dig_port,
>>  	mutex_unlock(&tc->lock);
>>  }
>>=20=20
>> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_=
port)
>
> Please use drm_printer instead of seq_file so this can be reused
> elsewhere.

Yeah.

I'm also really not a big fan of throwing everything into
i915_display_info. The general idea of debugfs is to have individual
files for individual things, not to have one massive thing that includes
everything, in a loop across crtcs and connectors.

I get that one file is a convenience, but at some point we have to say
too much is just too much. I think so far we've just added everything
indiscriminately.

I think it's a bit wild that we don't even have per crtc debugfs file
for intel_crtc_info, or per connector file for intel_connector_info, or
most of the individual parts in them.

Anyway, it's a bit difficult to claim this is the straw that breaks the
camel's back, but I think at some point this whole thing needs an
overhaul.


BR,
Jani.


>
>> +{
>> +	struct intel_tc_port *tc =3D to_tc_port(dig_port);
>> +
>> +	seq_printf(m, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d=
\n", tc->port_name,
>> +		   tc_port_mode_name(tc->mode),
>> +		   pin_assignment_name(tc->pin_assignment),
>> +		   tc->max_lane_count);
>> +}
>> +
>>  /*
>>   * The type-C ports are different because even when they are connected,=
 they may
>>   * not be available/usable by the graphics driver: see the comment on
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i=
915/display/intel_tc.h
>> index fff8b96e4972..3e983d1cc0b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
>> @@ -7,6 +7,7 @@
>>  #define __INTEL_TC_H__
>>=20=20
>>  #include <linux/types.h>
>> +#include <linux/seq_file.h>
>>=20=20
>>  struct intel_crtc_state;
>>  struct intel_digital_port;
>> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port=
 *dig_port);
>>=20=20
>>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>>=20=20
>> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_=
port);
>> +
>>  #endif /* __INTEL_TC_H__ */
>> --=20
>> 2.43.0

--=20
Jani Nikula, Intel
