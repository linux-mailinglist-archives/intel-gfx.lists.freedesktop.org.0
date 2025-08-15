Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1EFB27D7B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 11:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C746010E900;
	Fri, 15 Aug 2025 09:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTd+so7r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3893710E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 09:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755251397; x=1786787397;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SOvqmZO3X93LV6+gLfogKqu0KOahRqcDOI3Q95l2q8s=;
 b=gTd+so7rNwgmuPvsqTdVzP/32eVCDy23mQV+4cL8NpfYZFuDiTjuSvbh
 bff3vC7nMcZsScvb0xKudS8uoBD6lzlWRCvQ1+b4wFkKJDaPJPMPWl0g7
 IDm7p9Zm/+KBmIsmpW1cT62SmdM0bi4Rji0Kzy5fK1uiVBBeG+rFMTh+X
 7cOwMRWcHQaCZgsnWx5NxOgprQ9bbVh/1j7aqkAbveB1IQEdcVTdMe07x
 vHnqD8v9y3olCg8Lb4P/MXpgFt/crbQe+N2VLHWVpfAYkcNjjPEtHUuzr
 5wahCwUiIh5YlJ4LddkSozS+4S+kD8+bLi5zji8H4YYcvvUlwsM92ZEgN g==;
X-CSE-ConnectionGUID: J5A5V9+lRymL/d9NplIBrg==
X-CSE-MsgGUID: b6jmjQ0ARh2eSRYtUILHgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="68176417"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="68176417"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 02:49:57 -0700
X-CSE-ConnectionGUID: lhnZs88ARwWT0NVg8L50mA==
X-CSE-MsgGUID: P/AsZDD/Qm+Ynoam8Z4Stg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="190693314"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.142])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 02:49:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/audio: drop irq enabled check from LPE audio
 setup
In-Reply-To: <c57df0ed79c0bf22e92a69f5c0a302ad64b1447e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250801122832.249985-1-jani.nikula@intel.com>
 <c57df0ed79c0bf22e92a69f5c0a302ad64b1447e.camel@intel.com>
Date: Fri, 15 Aug 2025 12:49:52 +0300
Message-ID: <b48ba86f74a4ef0ad1d5e97b183fdbc3ea741553@intel.com>
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

On Thu, 14 Aug 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Fri, 2025-08-01 at 15:28 +0300, Jani Nikula wrote:
>> There shouldn't be anything requiring irqs to be enabled at the point of
>> LPE audio setup. Regardless, we've never hit the warning, as irqs are
>> always enabled at the time LPE audio is initialized. Drop the
>> superfluous warning, and the dependency on i915_drv.h.
>>=20
>> Fix style a bit while at it.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_lpe_audio.c | 11 ++++-------
>> =C2=A01 file changed, 4 insertions(+), 7 deletions(-)
>>=20
>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> index 666148a14522..42284e9928f2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> @@ -68,9 +68,9 @@
>> =C2=A0#include <linux/platform_device.h>
>> =C2=A0#include <linux/pm_runtime.h>
>> =C2=A0
>> +#include <drm/drm_print.h>
>> =C2=A0#include <drm/intel/intel_lpe_audio.h>
>> =C2=A0
>> -#include "i915_drv.h"
>> =C2=A0#include "i915_irq.h"
>> =C2=A0#include "intel_audio_regs.h"
>> =C2=A0#include "intel_de.h"
>> @@ -170,14 +170,11 @@ static struct irq_chip lpe_audio_irqchip =3D {
>> =C2=A0
>> =C2=A0static int lpe_audio_irq_init(struct intel_display *display)
>> =C2=A0{
>> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>> =C2=A0	int irq =3D display->audio.lpe.irq;
>> =C2=A0
>> -	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>> -	irq_set_chip_and_handler_name(irq,
>> -				&lpe_audio_irqchip,
>> -				handle_simple_irq,
>> -				"hdmi_lpe_audio_irq_handler");
>> +	irq_set_chip_and_handler_name(irq, &lpe_audio_irqchip,
>> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 handle_simple_irq,
>> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "hdmi_lpe_audio_irq_handler");
>> =C2=A0
>> =C2=A0	return 0;
>> =C2=A0}
>

--=20
Jani Nikula, Intel
