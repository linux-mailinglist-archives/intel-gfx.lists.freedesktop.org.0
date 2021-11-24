Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF2C45B79F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 10:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A326EC46;
	Wed, 24 Nov 2021 09:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03BA6EC46
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 09:42:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="259129745"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="259129745"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:42:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509810142"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:42:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <821c3bee-0b70-45fe-5d66-dcfca9437fa7@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211122111504.223248-1-jani.nikula@intel.com>
 <821c3bee-0b70-45fe-5d66-dcfca9437fa7@redhat.com>
Date: Wed, 24 Nov 2021 11:42:28 +0200
Message-ID: <87k0gxnb3v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi: split out intel_dsi_vbt.h
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

On Mon, 22 Nov 2021, Hans de Goede <hdegoede@redhat.com> wrote:
> Hi,
>
> On 11/22/21 12:15, Jani Nikula wrote:
>> Follow the convention of corresponding .h for .c.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> This series looks good to me:
>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
>
> For the series.

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.


>
> Regards,
>
> Hans
>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c       |  1 +
>>  drivers/gpu/drm/i915/display/intel_dsi.h     |  9 --------
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c |  1 +
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.h | 22 ++++++++++++++++++++
>>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  1 +
>>  5 files changed, 25 insertions(+), 9 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dsi_vbt.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i9=
15/display/icl_dsi.c
>> index edc38fbd2545..2f15b322d78f 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -36,6 +36,7 @@
>>  #include "intel_ddi.h"
>>  #include "intel_de.h"
>>  #include "intel_dsi.h"
>> +#include "intel_dsi_vbt.h"
>>  #include "intel_panel.h"
>>  #include "intel_vdsc.h"
>>  #include "skl_scaler.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/=
i915/display/intel_dsi.h
>> index fbc40ffdc02e..e3571ca7db5c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
>> @@ -210,13 +210,4 @@ void bxt_dsi_reset_clocks(struct intel_encoder *enc=
oder, enum port port);
>>  void assert_dsi_pll_enabled(struct drm_i915_private *i915);
>>  void assert_dsi_pll_disabled(struct drm_i915_private *i915);
>>=20=20
>> -/* intel_dsi_vbt.c */
>> -bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
>> -void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is=
_on);
>> -void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
>> -void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
>> -				 enum mipi_seq seq_id);
>> -void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec);
>> -void intel_dsi_log_params(struct intel_dsi *intel_dsi);
>> -
>>  #endif /* _INTEL_DSI_H */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.c
>> index f241bedb8597..c29a13619224 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -41,6 +41,7 @@
>>  #include "i915_drv.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dsi.h"
>> +#include "intel_dsi_vbt.h"
>>  #include "vlv_sideband.h"
>>=20=20
>>  #define MIPI_TRANSFER_MODE_SHIFT	0
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.h b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.h
>> new file mode 100644
>> index 000000000000..dc642c1fe7ef
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2021 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DSI_VBT_H__
>> +#define __INTEL_DSI_VBT_H__
>> +
>> +#include <linux/types.h>
>> +
>> +enum mipi_seq;
>> +struct intel_dsi;
>> +
>> +bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
>> +void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is=
_on);
>> +void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
>> +void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
>> +				 enum mipi_seq seq_id);
>> +void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec);
>> +void intel_dsi_log_params(struct intel_dsi *intel_dsi);
>> +
>> +#endif /* __INTEL_DSI_VBT_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i9=
15/display/vlv_dsi.c
>> index 59ebfbd46e6f..be070a1afcd0 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -38,6 +38,7 @@
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dsi.h"
>> +#include "intel_dsi_vbt.h"
>>  #include "intel_fifo_underrun.h"
>>  #include "intel_panel.h"
>>  #include "skl_scaler.h"
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
