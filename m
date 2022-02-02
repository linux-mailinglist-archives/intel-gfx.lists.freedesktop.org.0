Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221AA4A751D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 17:00:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2421D10E28D;
	Wed,  2 Feb 2022 16:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C07510E28D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 16:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643817603; x=1675353603;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Q0zEgGa2ogkAkgX/Vcre6OceD3l1b6/Wmc74ll1uim4=;
 b=Wx7XMpnDcDyWx9Bz9pKeDwTfv/ECrUlT3d/Uj+qTbvEaUAuUIC0BHy8A
 msdLoYxXksQSYSN5oAuYfDQFUSef/95sVK5SGOHvmvCo+1f/3uNO4Qs1O
 2Wr29jYQfooM/wnUb8gCxwPO3fBHg7X3l2K36cz19TNKk1ULeHy7mlheu
 Rs8oBiawM3Ucv5Hb1RXqjjOlh9skIUOUT0VBG6MOWNaT2cE05Rn2xNG85
 YZe3dZuU73qrw6QiFtWkVJ7mGudEJh66p9IVyJweU4AiOsU0KS0QAWlRR
 aiwuQCBfR8Gbb4phUojDitlfnCWPZKDe78cmrstzOwV6xbFmgCio+W4ll Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="231515955"
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; d="scan'208";a="231515955"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 08:00:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; d="scan'208";a="698937324"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 08:00:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YfprpC2XQSs7WbJu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220202112509.1886660-1-jani.nikula@intel.com>
 <YfprpC2XQSs7WbJu@intel.com>
Date: Wed, 02 Feb 2022 17:59:58 +0200
Message-ID: <87pmo5s1hd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 02, 2022 at 01:25:08PM +0200, Jani Nikula wrote:
>> The video/vga.h has macros for the VGA registers. Switch to use them.
>>=20
>> v2: Use direct 0x01 instead of the confusing VGA_SEQ_CLOCK_MODE (Ville)
>>=20
>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/=
i915/display/intel_vga.c
>> index fa779f7ea415..b5d058404c14 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>> @@ -7,6 +7,7 @@
>>  #include <linux/vgaarb.h>
>>=20=20
>>  #include <drm/i915_drm.h>
>> +#include <video/vga.h>
>>=20=20
>>  #include "i915_drv.h"
>>  #include "intel_de.h"
>> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_pr=
iv)
>>=20=20
>>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>> -	outb(SR01, VGA_SR_INDEX);
>> -	sr1 =3D inb(VGA_SR_DATA);
>> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
>> +	outb(0x01, VGA_SEQ_I);
>> +	sr1 =3D inb(VGA_SEQ_D);
>> +	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
>>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>>  	udelay(300);
>>=20=20
>> @@ -92,7 +93,7 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i=
915)
>>  	 * and error messages.
>>  	 */
>>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>> -	outb(inb(VGA_MSR_READ), VGA_MSR_WRITE);
>> +	outb(inb(VGA_MIS_R), VGA_MIS_W);
>>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>>  }
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
