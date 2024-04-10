Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E75F89F101
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 13:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B822C10E11F;
	Wed, 10 Apr 2024 11:38:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9CQCMR+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2258E10E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 11:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749115; x=1744285115;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2qnl7yEm6G69DEDdSa/5iIZ6A2cI9IExUYSvG48X2QI=;
 b=i9CQCMR+zx/KYmlMMywaOd/bhx4veB/7kkDMhLilmflGy99jamXiOUen
 QyFv0mpzzZIXSGcSvuMhmsKfZD11Wa5B6xtJ4EdafnE5Qp9Z7T9WuCMw3
 acBF7O567YPb4brtk1C2XFmbPEN4d95dail+lD8mfpQ+K2Coz3MUW3eQB
 ESkV31cETn0bwUjOC45gZT2KzGFVQrfdSXgyYN9lKYYmu/2lvWHGVLoP3
 xmkw09qbBjM8ecUVE/Jok5oyuJ06FJtVZ1WPfURJ5KTNi0SQv30AvxcLu
 /Julmed0AffgNkaxtnCzofaxbbEfYP74m84ZH/2WJwOMASabmJYeFxbks g==;
X-CSE-ConnectionGUID: 5LxhoHbCQ1SMFHMdEFGNog==
X-CSE-MsgGUID: SYFzTro1R7eBOXN/YyKAag==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25547374"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25547374"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:38:34 -0700
X-CSE-ConnectionGUID: NTk0CG8ERDi7mHMybLtBsw==
X-CSE-MsgGUID: M3kyA9LTQHeMi9+7ckuqlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25044384"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:38:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pps: move pps debugfs file to intel_pps.c
In-Reply-To: <ZhPfgmnCtHql8VXL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408094357.3085319-1-jani.nikula@intel.com>
 <ZhPfgmnCtHql8VXL@intel.com>
Date: Wed, 10 Apr 2024 14:38:30 +0300
Message-ID: <87zfu178i1.fsf@intel.com>
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

On Mon, 08 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Apr 08, 2024 at 12:43:57PM +0300, Jani Nikula wrote:
>> Continue with placing debugfs next to the implementation.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_debugfs.c  | 27 ++--------------
>>  drivers/gpu/drm/i915/display/intel_pps.c      | 32 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_pps.h      |  2 ++
>>  3 files changed, 36 insertions(+), 25 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 5235f8758ef1..0feffe8d4e45 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -31,6 +31,7 @@
>>  #include "intel_hdmi.h"
>>  #include "intel_hotplug.h"
>>  #include "intel_panel.h"
>> +#include "intel_pps.h"
>>  #include "intel_psr.h"
>>  #include "intel_psr_regs.h"
>>  #include "intel_wm.h"
>> @@ -1095,27 +1096,6 @@ void intel_display_debugfs_register(struct drm_i9=
15_private *i915)
>>  	intel_display_debugfs_params(i915);
>>  }
>>=20=20
>> -static int i915_panel_show(struct seq_file *m, void *data)
>> -{
>> -	struct intel_connector *connector =3D m->private;
>> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>> -
>> -	if (connector->base.status !=3D connector_status_connected)
>> -		return -ENODEV;
>> -
>> -	seq_printf(m, "Panel power up delay: %d\n",
>> -		   intel_dp->pps.panel_power_up_delay);
>> -	seq_printf(m, "Panel power down delay: %d\n",
>> -		   intel_dp->pps.panel_power_down_delay);
>> -	seq_printf(m, "Backlight on delay: %d\n",
>> -		   intel_dp->pps.backlight_on_delay);
>> -	seq_printf(m, "Backlight off delay: %d\n",
>> -		   intel_dp->pps.backlight_off_delay);
>> -
>> -	return 0;
>> -}
>> -DEFINE_SHOW_ATTRIBUTE(i915_panel);
>> -
>>  static int i915_hdcp_sink_capability_show(struct seq_file *m, void *dat=
a)
>>  {
>>  	struct intel_connector *connector =3D m->private;
>> @@ -1560,12 +1540,9 @@ void intel_connector_debugfs_add(struct intel_con=
nector *connector)
>>  		return;
>>=20=20
>>  	intel_drrs_connector_debugfs_add(connector);
>> +	intel_pps_connector_debugfs_add(connector);
>>  	intel_psr_connector_debugfs_add(connector);
>>=20=20
>> -	if (connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
>> -		debugfs_create_file("i915_panel_timings", 0444, root,
>> -				    connector, &i915_panel_fops);
>> -
>>  	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
>>  	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
>>  	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index b5d9920f8341..88a44d93f82b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1670,6 +1670,38 @@ void intel_pps_setup(struct drm_i915_private *i91=
5)
>>  		i915->display.pps.mmio_base =3D PPS_BASE;
>>  }
>>=20=20
>> +static int intel_pps_show(struct seq_file *m, void *data)
>> +{
>> +	struct intel_connector *connector =3D m->private;
>> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>> +
>> +	if (connector->base.status !=3D connector_status_connected)
>> +		return -ENODEV;
>
> That check seems completely pointless. Could be removed as a
> followup.
>
> Hmm. The other question that comes to mind is whether anyone has
> ever used this file? I for sure have not. So I'm wondering if we
> could just nuke the whole thing?

Good question. In the mean time, with this patch at hand, pushed to din.

>
> Anyways
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

BR,
Jani.

--=20
Jani Nikula, Intel
