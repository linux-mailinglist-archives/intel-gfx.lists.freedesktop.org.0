Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04E764C5A8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7097810E39F;
	Wed, 14 Dec 2022 09:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1EE10E3A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671009311; x=1702545311;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CYV4KQK2RDTm10OnW5Z2Lf1/nsPblS+t3PZ+XyxxJw0=;
 b=lc0rvnjwK3hikpCi1cIJqNiQM12iao5M/zH9fwp6QuYrtbtAorek4bRY
 KqSb234B4SGISu2DKkZLV6y25VEoxTzD2i5DxClp7EjyYlQ0hHkL19VBU
 XoCH87JZoCRXmtpEulWHEaTK1Ie/8Xd4gvVTTAYjhpy/EI/v0RH7h52q7
 irypOB49lRkmgl+yVhGjraiWRUmU1U3oQN4vONnyLNPOxxivv7M5h5R3q
 Fx1Ciytj2klagPW8fCrWbVNaV3F0r1uNOI/COEoihNwCH55nDT+ECytjt
 tDgKmI5cL/QyPd/chiy2FUaGas3pQKt4Vj/Cr78kahKmz1v4OmJwNoH8V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="298038003"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="298038003"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:15:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="755826012"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="755826012"
Received: from adineen-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.60.111])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:15:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Date: Wed, 14 Dec 2022 11:15:07 +0200
Message-ID: <87k02uwdlw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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

On Wed, 14 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani
>> Nikula
>> Sent: Monday, December 12, 2022 7:59 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
>> functions to intel_vblank.[ch]
>>
>> Reduce clutter in intel_display.c by moving the scanline moving/stopped =
wait
>> functions to intel_vblank.[ch].
>>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 36 +-------------------
>> drivers/gpu/drm/i915/display/intel_vblank.c  | 35 +++++++++++++++++++
>> drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
>>  3 files changed, 38 insertions(+), 35 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 6cdfdae2c712..0cdb514d7ee0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -115,6 +115,7 @@
>>  #include "intel_quirks.h"
>>  #include "intel_sprite.h"
>>  #include "intel_tc.h"
>> +#include "intel_vblank.h"
>>  #include "intel_vga.h"
>>  #include "i9xx_plane.h"
>>  #include "skl_scaler.h"
>> @@ -386,41 +387,6 @@ struct intel_crtc *intel_master_crtc(const struct
>> intel_crtc_state *crtc_state)
>>               return to_intel_crtc(crtc_state->uapi.crtc);
>>  }
>>
>> -static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>> -                                 enum pipe pipe)
>> -{
>> -     i915_reg_t reg =3D PIPEDSL(pipe);
>> -     u32 line1, line2;
>> -
>> -     line1 =3D intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> -     msleep(5);
>> -     line2 =3D intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> -
>> -     return line1 !=3D line2;
>> -}
>> -
>> -static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool=
 state)
>> -{
>> -     struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> -     enum pipe pipe =3D crtc->pipe;
>> -
>> -     /* Wait for the display line to settle/start moving */
>> -     if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) =3D=3D state,=
 100))
>> -             drm_err(&dev_priv->drm,
>> -                     "pipe %c scanline %s wait timed out\n",
>> -                     pipe_name(pipe), str_on_off(state));
>> -}
>> -
>> -static void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crt=
c) -{
>> -     wait_for_pipe_scanline_moving(crtc, false);
>> -}
>> -
>> -static void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc=
) -{
>> -     wait_for_pipe_scanline_moving(crtc, true);
>> -}
>> -
>>  static void
>>  intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state) =
 { diff --
>> git a/drivers/gpu/drm/i915/display/intel_vblank.c
>> b/drivers/gpu/drm/i915/display/intel_vblank.c
>> index 78a579496ad1..f25ec643a0a3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>> @@ -417,3 +417,38 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>>
>>       return position;
>>  }
>> +
>> +static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>> +                                 enum pipe pipe)
>> +{
>> +     i915_reg_t reg =3D PIPEDSL(pipe);
>> +     u32 line1, line2;
>> +
>> +     line1 =3D intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> +     msleep(5);
>> +     line2 =3D intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> +
>> +     return line1 !=3D line2;
>> +}
>> +
>> +static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool
>> +state) {
>> +     struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> +     enum pipe pipe =3D crtc->pipe;
>> +
>> +     /* Wait for the display line to settle/start moving */
>> +     if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) =3D=3D state,=
 100))
>> +             drm_err(&dev_priv->drm,
>> +                     "pipe %c scanline %s wait timed out\n",
>> +                     pipe_name(pipe), str_on_off(state)); }
>> +
>> +void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc) {
>> +     wait_for_pipe_scanline_moving(crtc, false); }
>> +
> Is this wrapper function required, since nothing else is being other
> than calling the function wait_for_pipe_scanline_moving, can this be
> replaced?

Well, first, this patch is only about code *movement*. Any changes like
that would have to be separate.

And how would you propose to drop the wrapper? The wrappers are all
about readability in the caller side:

intel_wait_for_pipe_scanline_stopped(crtc)

vs.=20

intel_wait_for_pipe_scanline_moving(crtc, false)

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>> +void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc) {
>> +     wait_for_pipe_scanline_moving(crtc, true); }
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h
>> b/drivers/gpu/drm/i915/display/intel_vblank.h
>> index 9c0034d7454d..54870cabd734 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
>> @@ -17,5 +17,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
>> bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_err=
or,
>>                                    ktime_t *vblank_time, bool in_vblank_=
irq);
>> int intel_get_crtc_scanline(struct intel_crtc *crtc);
>> +void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
>> +void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
>>
>>  #endif /* __INTEL_VBLANK_H__ */
>> --
>> 2.34.1
>

--=20
Jani Nikula, Intel Open Source Graphics Center
