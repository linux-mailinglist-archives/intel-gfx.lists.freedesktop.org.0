Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B735A4A6DA6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 10:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABAC10EFDB;
	Wed,  2 Feb 2022 09:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E186310EFD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 09:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643793436; x=1675329436;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pa/sW4dLN2UX4c1ObaqEvQ/Kcx0VkutgvINT3acM3jo=;
 b=OmR0oLseoHwxAQXQSOpCR63c6RNOxxs2EtbgnisRc/u+6+8Nd4z7VnHv
 alWIvwv7rUKm96jhYFPIQGm6Hfj3SzEcNxDvmUA6dzeW5v/vSNdTL017Q
 ozEsWPqDO3SPajSCRi6i97ytCCYWnor4+OzVyiebyJUd+Yn9G+0Yrs8YW
 jjgH17nF7mXDCdRyJwKHhzbCRlVTdinnG5P8HqNpWrMcjwEzsoXn1PK8g
 C8oRdiEfgPCbRG27Z0jPn979cILOTHgLAJPcuDnxAk7+kwf3SDEi2KOv/
 CNhT/DXKwl1boatpcr+WINGl5LB3AfiTZ93ty6FZ4cP2e8cKNKn/FV7tz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="248098570"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="248098570"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 01:17:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="599482980"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 01:17:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yd7WmT4naDadKVoh@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com> <87pmoy8xdb.fsf@intel.com>
 <Yd7WmT4naDadKVoh@intel.com>
Date: Wed, 02 Feb 2022 11:17:11 +0200
Message-ID: <87iltxtyp4.fsf@intel.com>
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

On Wed, 12 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jan 11, 2022 at 10:55:44AM +0200, Jani Nikula wrote:
>> On Mon, 10 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
>> >> The video/vga.h has macros for the VGA registers. Switch to use them.
>> >>=20
>> >> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>> >>  1 file changed, 5 insertions(+), 4 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/d=
rm/i915/display/intel_vga.c
>> >> index fa779f7ea415..43c12036c1fa 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>> >> @@ -7,6 +7,7 @@
>> >>  #include <linux/vgaarb.h>
>> >>=20=20
>> >>  #include <drm/i915_drm.h>
>> >> +#include <video/vga.h>
>> >>=20=20
>> >>  #include "i915_drv.h"
>> >>  #include "intel_de.h"
>> >> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev=
_priv)
>> >>=20=20
>> >>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>> >>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>> >> -	outb(SR01, VGA_SR_INDEX);
>> >> -	sr1 =3D inb(VGA_SR_DATA);
>> >> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
>> >> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
>> >
>> > Not a huge fan of some of these defines since now I have
>> > no idea what register this is selecting.
>>=20
>> It's a bit silly that we have our own macros for this stuff, but I get
>> the point. Took me a while to figure the changes out because the macros
>> in video/vga.h aren't even grouped in a helpful way.
>>=20
>> I guess you'd prefer patch [1] over patches 3-4 in this series then? For
>> me the main goal is to just reduce the size of i915_reg.h.
>
> I guess another option is to go with this and just
> s/VGA_SEQ_CLOCK_MODE/0x01/ or something. I think the rest
> of the defines are probably clear enough.

I dropped the ball here a bit. If I respin the same patches, but with
the above line changed to one of these, is it okay? Which do you prefer?

1)	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I); /* SR01 */

2)	#define SR01 VGA_SEQ_CLOCK_MODE
	outb(SR01, VGA_SEQ_I);

3)	outb(0x01, VGA_SEQ_I);


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
