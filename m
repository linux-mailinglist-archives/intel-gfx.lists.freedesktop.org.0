Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3643248A9F1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 09:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6421D11AF9B;
	Tue, 11 Jan 2022 08:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D0111AF92
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 08:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641891348; x=1673427348;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aIG0HjOnoU7V+kL6Y8yF0t5aC0v0v1bWQQLuqXTizU0=;
 b=SBn6/75Sp8qUOjSNmEj1mdruoHDeO2Nc9tVWKyP7Gx1dWahfxOqwxo7+
 azbSd9kDiTOwMVfGZldU/W9oZ9vgmQqLbVrTevQgtx96LAndgAQMEcWuc
 v26o1kB2iL2TfBDD+l5+sXyUvvB4NHF/LDQN1dQLDdrRDUEQuPjxVszII
 /X68quko+9uIrQltPbOM5QlNXP6AxU5Z8SD2ozv7SURxGlOZuysJaiZWD
 J0Hhz34AlhzP69s34sf8Ns6I8qyKJBQwh+601nqPCMXXyp8BtmNaxTXzU
 zB/scNin5rFvfxo75/AAwlHuVsD3ireTHPOoImprtXa4/ShhSjxPUtkb+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="304176651"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="304176651"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:55:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="623001826"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:55:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YdxYvXfkOgTFFg+s@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com>
Date: Tue, 11 Jan 2022 10:55:44 +0200
Message-ID: <87pmoy8xdb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
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

On Mon, 10 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
>> The video/vga.h has macros for the VGA registers. Switch to use them.
>>=20
>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/=
i915/display/intel_vga.c
>> index fa779f7ea415..43c12036c1fa 100644
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
>> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
>
> Not a huge fan of some of these defines since now I have
> no idea what register this is selecting.

It's a bit silly that we have our own macros for this stuff, but I get
the point. Took me a while to figure the changes out because the macros
in video/vga.h aren't even grouped in a helpful way.

I guess you'd prefer patch [1] over patches 3-4 in this series then? For
me the main goal is to just reduce the size of i915_reg.h.

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20220107094951.96181-2-ja=
ni.nikula@intel.com


>
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
