Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30EC6A6F3B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 16:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C67510E060;
	Wed,  1 Mar 2023 15:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9A610E060
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 15:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677684075; x=1709220075;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ObkgyVFpjKyW7cpXAnptf8J7scBIUb+NDdvwCJrUh1M=;
 b=CB8bgfk+bRfuwexRMsEl68GAWT//tbHaR+jvsZWR+FTMaiz4Py+iOscc
 VOcqxOZYuEjGSqMXdF6cSb/YQrAE9RK/ANrIe4rfRhui5Zqw+DXh4MfLP
 1RPuPveeCgAl2KBXX+rCj1jhZHwp4BoX99fAleHtA7H6GAy+VPsjmzXO2
 Bpgz+TyeYLJkj2WKmZXon4LdKkySBRonWrmuMkmAlX+On/umdYMB2n7x/
 X8jyR97scs9elbw0UaPKLMx9a08lEiBdp90ISVNnEUSKS6lzrUYT8Hpdm
 hwOo0py2CF0gEkUmA701EnV2cwkZtS5ScdojXjVKRsG89jayUHfW3prfI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="397003413"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="397003413"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 07:21:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="652049127"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="652049127"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 07:21:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <be14b11efdafb5ae249d81e318d5d81d1d403a8e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
 <be14b11efdafb5ae249d81e318d5d81d1d403a8e.camel@intel.com>
Date: Wed, 01 Mar 2023 17:21:10 +0200
Message-ID: <878rggwl95.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
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

On Wed, 01 Mar 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Mon, 2023-02-20 at 18:47 +0200, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Grab the HDR DPCD refresh timeout (time we need to wait after
>> writing the sourc OUI before the HDR DPCD registers are ready)
>> from the VBT.
>>=20
>> Windows doesn't even seem to have any default value for this,
>> which is perhaps a bit weird since the VBT value is documented
>> as TGL+ and I thought the HDR backlight stuff might already be
>> used on earlier platforms. To play it safe I left the old
>> hardcoded 30ms default in place. Digging through some internal
>> stuff that seems to have been a number given by the vendor for
>> one particularly slow TCON. Although I did see 50ms mentioned
>> somewhere as well.
>>=20
>> Let's also include the value in the debug print to ease
>> debugging, and toss in the customary connector id+name as well.
>>=20
>> The TGL Thinkpad T14 I have sets this to 0 btw. So the delay
>> is now gone on this machine:
>> =C2=A0[CONNECTOR:308:eDP-1] Detected Intel HDR backlight interface versi=
on
>> 1
>> =C2=A0[CONNECTOR:308:eDP-1] Using Intel proprietary eDP backlight contro=
ls
>> =C2=A0[CONNECTOR:308:eDP-1] SDR backlight is controlled through PWM
>> =C2=A0[CONNECTOR:308:eDP-1] Using native PCH PWM for backlight control
>> (controller=3D0)
>> =C2=A0[CONNECTOR:308:eDP-1] Using AUX HDR interface for backlight control
>> (range 0..496)
>> =C2=A0[CONNECTOR:308:eDP-1] Performing OUI wait (0 ms)
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Cc: stable@vger.kernel.org

?

>
>>=20
>> Cc: Lyude Paul <lyude@redhat.com>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_bios.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 6 ++++++
>> =C2=A0drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>> =C2=A0drivers/gpu/drm/i915/display/intel_dp.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 9 +++++++--
>> =C2=A03 files changed, 14 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index f35ef3675d39..f16887aed56d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1084,6 +1084,12 @@ parse_lfp_backlight(struct drm_i915_private
>> *i915,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0panel->vbt.backlight.min_brightness =3D entry-
>> >min_brightness;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (i915->display.vbt.version=
 >=3D 239)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0panel->vbt.backlight.hdr_dpcd_refresh_timeout =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DIV_RO=
UND_UP(backlight_data-
>> >hdr_dpcd_refresh_timeout[panel_type], 100);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0panel->vbt.backlight.hdr_dpcd_refresh_timeout =3D 30;
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dbg_kms(&i915->drm,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "VBT backlight PWM modulation fr=
equency %u Hz, "
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "active %s, min brightness %u, l=
evel %u,
>> controller %u\n",
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 748b0cd411fa..76f47ba3be45 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -326,6 +326,7 @@ struct intel_vbt_panel_data {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0u16 pwm_freq_hz;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0u16 brightness_precision_bits;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0u16 hdr_dpcd_refresh_timeout;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0bool present;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0bool active_low_pwm;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0u8 min_brightness;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0/* min_brightness/255 of max
>> */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index b77bd4565864..3734e7567230 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2293,10 +2293,15 @@ intel_edp_init_source_oui(struct intel_dp
>> *intel_dp, bool careful)
>> =C2=A0
>> =C2=A0void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
>> =C2=A0{
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_connector *conne=
ctor =3D intel_dp-
>> >attached_connector;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_private =
*i915 =3D dp_to_i915(intel_dp);
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dbg_kms(&i915->drm, "Perf=
orming OUI wait\n");
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wait_remaining_ms_from_jiffie=
s(intel_dp->last_oui_write, 30);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dbg_kms(&i915->drm, "[CON=
NECTOR:%d:%s] Performing OUI
>> wait (%u ms)\n",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 connector->base.base.id, connector-=
>base.name,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 connector-
>> >panel.vbt.backlight.hdr_dpcd_refresh_timeout);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wait_remaining_ms_from_jiffie=
s(intel_dp->last_oui_write,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 connector-
>> >panel.vbt.backlight.hdr_dpcd_refresh_timeout);
>> =C2=A0}
>> =C2=A0
>> =C2=A0/* If the device supports it, try to set the power state
>> appropriately */
>

--=20
Jani Nikula, Intel Open Source Graphics Center
