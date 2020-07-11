Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9386321C481
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 15:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19F36E2C7;
	Sat, 11 Jul 2020 13:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DD46E2BE
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 13:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594475529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=URGSQn+0WXXw4ye5HAAAGszu8xJmwcfMECBJ9T5pHuE=;
 b=hU5T6OPgrVTjtJmz7au3mwMfLV4clor5YO+/OYYW8VPHTVt3obPnDxDPe++K24rfuTps+G
 HhEknG4wqIGWniAGwwu1RgQR4InRvFBcrSbuqmj1CzNo+W4rW4IvYnna0X9HAoOHpWUA2/
 ZX4UrN8GBHcMPq3sDn8YLob0nqP0ajw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-ZMdAPSXLPkWwxlOAn2FmGQ-1; Sat, 11 Jul 2020 09:52:05 -0400
X-MC-Unique: ZMdAPSXLPkWwxlOAn2FmGQ-1
Received: by mail-ed1-f70.google.com with SMTP id a4so11374517edr.18
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 06:52:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3VM5x9KFQSTgZtGGj8AsglFvy9klf+aR0vF9T8W6eBI=;
 b=aCNSaKZvK+oODryWj+bKj0RDX8RGyfyO1x10CHWE6nd/LR6X+yh672uFW4swvLgs+D
 RQZFH0SZL5rQmtpepvO7seg9EyalVql2lO8F/AIdOSyRf5G1VMcHrNcn+ctlSYDAcWri
 AzkaqZ9cAPR5IuVO4WQms+gi9CjU+lwd64M3Qzt72lgIsY64s96o+scqJnTRCv4Z4hHu
 lechC4AA/dCLSxPS7WKP9Dx89HrOwEkvekCQqPLbG8Fs6aYKbHmkuCxC73wmwA+2UZt7
 5LhgWv7YWZE57wsQRcBgpHsz2IwxmCf3tBVyYPhw5O3rT3Zzn1UfT6R9rlhgPlNX3sN/
 Opaw==
X-Gm-Message-State: AOAM532GJCdVa5rnrsTh6BK2cyaRW/2Dr5HL8S+HsLbHuMjacTo5K2N+
 3Cuam4mkMoilGobDJ2LNT76+ob6eE0dMiP9Aa6cVWRZwW/eKh0KldAq6WmM+AiMLP2WEauajgPQ
 oGAtoebZX5s28I+X8aVEoN9FH35wk
X-Received: by 2002:a50:ee8a:: with SMTP id f10mr62382522edr.383.1594475519069; 
 Sat, 11 Jul 2020 06:51:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHQOteQJHm7x9NTl3vAhuNXd8O6zdA6ws/dNJAvLTs3sZZWACd+VQRxrDZ40zmgI8MPBVppw==
X-Received: by 2002:a50:ee8a:: with SMTP id f10mr62382507edr.383.1594475518772; 
 Sat, 11 Jul 2020 06:51:58 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id ce19sm5622572ejb.24.2020.07.11.06.51.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jul 2020 06:51:58 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200708211432.28612-17-hdegoede@redhat.com>
 <20200711063223.czly2ftjraomuxz6@pengutronix.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0fdcf465-3981-390f-7af4-235c7a48e438@redhat.com>
Date: Sat, 11 Jul 2020 15:51:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200711063223.czly2ftjraomuxz6@pengutronix.de>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v4 16/16] drm/i915: panel: Use atomic PWM
 API for devs with an external PWM controller
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
Cc: linux-pwm@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/11/20 8:32 AM, Uwe Kleine-K=C3=B6nig wrote:
> On Wed, Jul 08, 2020 at 11:14:32PM +0200, Hans de Goede wrote:
>> Now that the PWM drivers which we use have been converted to the atomic
>> PWM API, we can move the i915 panel code over to using the atomic PWM AP=
I.
>>
>> The removes a long standing FIXME and this removes a flicker where
>> the backlight brightness would jump to 100% when i915 loads even if
>> using the fastset path.
>>
>> Note that this commit also simplifies pwm_disable_backlight(), by droppi=
ng
>> the intel_panel_actually_set_backlight(..., 0) call. This call sets the
>> PWM to 0% duty-cycle. I believe that this call was only present as a
>> workaround for a bug in the pwm-crc.c driver where it failed to clear the
>> PWM_OUTPUT_ENABLE bit. This is fixed by an earlier patch in this series.
>>
>> After the dropping of this workaround, the usleep call, which seems
>> unnecessary to begin with, has no useful effect anymore, so drop that to=
o.
>>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>> Changes in v4:
>> - Add a note to the commit message about the dropping of the
>>    intel_panel_actually_set_backlight() and usleep() calls from
>>    pwm_disable_backlight()
>> - Use the pwm_set/get_relative_duty_cycle() helpers instead of using DIY=
 code
>>    for this
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  3 +-
>>   drivers/gpu/drm/i915/display/intel_panel.c    | 71 +++++++++----------
>>   2 files changed, 34 insertions(+), 40 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index de32f9efb120..4bd9981e70a1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -28,6 +28,7 @@
>>   =

>>   #include <linux/async.h>
>>   #include <linux/i2c.h>
>> +#include <linux/pwm.h>
>>   #include <linux/sched/clock.h>
>>   =

>>   #include <drm/drm_atomic.h>
>> @@ -223,7 +224,7 @@ struct intel_panel {
>>   		bool util_pin_active_low;	/* bxt+ */
>>   		u8 controller;		/* bxt+ only */
>>   		struct pwm_device *pwm;
>> -		int pwm_period_ns;
>> +		struct pwm_state pwm_state;
>>   =

>>   		/* DPCD backlight */
>>   		u8 pwmgen_bit_count;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/dr=
m/i915/display/intel_panel.c
>> index cb28b9908ca4..3d97267c8238 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -592,10 +592,10 @@ static u32 bxt_get_backlight(struct intel_connecto=
r *connector)
>>   static u32 pwm_get_backlight(struct intel_connector *connector)
>>   {
>>   	struct intel_panel *panel =3D &connector->panel;
>> -	int duty_ns;
>> +	struct pwm_state state;
>>   =

>> -	duty_ns =3D pwm_get_duty_cycle(panel->backlight.pwm);
>> -	return DIV_ROUND_UP(duty_ns * 100, panel->backlight.pwm_period_ns);
>> +	pwm_get_state(panel->backlight.pwm, &state);
>> +	return pwm_get_relative_duty_cycle(&state, 100);
> =

> Here you introduce a slight difference: pwm_get_relative_duty_cycle uses
> round-closest while you replace a round-up. Is this relevant?

Yes I'm aware of the change in rounding and I do not believe that it is
relevant. One of the advantages of switching to the helpers is not having
to worry about the rounding and letting the helpers figure that out :)

>>   }
>>   =

>>   static void lpt_set_backlight(const struct drm_connector_state *conn_s=
tate, u32 level)
>> @@ -669,10 +669,9 @@ static void bxt_set_backlight(const struct drm_conn=
ector_state *conn_state, u32
>>   static void pwm_set_backlight(const struct drm_connector_state *conn_s=
tate, u32 level)
>>   {
>>   	struct intel_panel *panel =3D &to_intel_connector(conn_state->connect=
or)->panel;
>> -	int duty_ns =3D DIV_ROUND_UP(level * panel->backlight.pwm_period_ns, 1=
00);
>>   =

>> -	pwm_config(panel->backlight.pwm, duty_ns,
>> -		   panel->backlight.pwm_period_ns);
>> +	pwm_set_relative_duty_cycle(&panel->backlight.pwm_state, level, 100);
>> +	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
> =

> Similar here: The function used to use round-up but
> pwm_set_relative_duty_cycle() used round-closest.

Idem.


>>   }
>>   =

>>   static void
>> @@ -841,10 +840,8 @@ static void pwm_disable_backlight(const struct drm_=
connector_state *old_conn_sta
>>   	struct intel_connector *connector =3D to_intel_connector(old_conn_sta=
te->connector);
>>   	struct intel_panel *panel =3D &connector->panel;
>>   =

>> -	/* Disable the backlight */
>> -	intel_panel_actually_set_backlight(old_conn_state, 0);
>> -	usleep_range(2000, 3000);
>> -	pwm_disable(panel->backlight.pwm);
>> +	panel->backlight.pwm_state.enabled =3D false;
>> +	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
>>   }
>>   =

>>   void intel_panel_disable_backlight(const struct drm_connector_state *o=
ld_conn_state)
>> @@ -1176,9 +1173,12 @@ static void pwm_enable_backlight(const struct int=
el_crtc_state *crtc_state,
>>   {
>>   	struct intel_connector *connector =3D to_intel_connector(conn_state->=
connector);
>>   	struct intel_panel *panel =3D &connector->panel;
>> +	int level =3D panel->backlight.level;
>>   =

>> -	pwm_enable(panel->backlight.pwm);
>> -	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
>> +	level =3D intel_panel_compute_brightness(connector, level);
>> +	pwm_set_relative_duty_cycle(&panel->backlight.pwm_state, level, 100);
>> +	panel->backlight.pwm_state.enabled =3D true;
>> +	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
>>   }
>>   =

>>   static void __intel_panel_enable_backlight(const struct intel_crtc_sta=
te *crtc_state,
>> @@ -1897,8 +1897,7 @@ static int pwm_setup_backlight(struct intel_connec=
tor *connector,
>>   	struct drm_i915_private *dev_priv =3D to_i915(dev);
>>   	struct intel_panel *panel =3D &connector->panel;
>>   	const char *desc;
>> -	u32 level, ns;
>> -	int retval;
>> +	u32 level;
>>   =

>>   	/* Get the right PWM chip for DSI backlight according to VBT */
>>   	if (dev_priv->vbt.dsi.config->pwm_blc =3D=3D PPS_BLC_PMIC) {
>> @@ -1916,36 +1915,30 @@ static int pwm_setup_backlight(struct intel_conn=
ector *connector,
>>   		return -ENODEV;
>>   	}
>>   =

>> -	panel->backlight.pwm_period_ns =3D NSEC_PER_SEC /
>> -					 get_vbt_pwm_freq(dev_priv);
>> -
>> -	/*
>> -	 * FIXME: pwm_apply_args() should be removed when switching to
>> -	 * the atomic PWM API.
>> -	 */
>> -	pwm_apply_args(panel->backlight.pwm);
>> -
>>   	panel->backlight.max =3D 100; /* 100% */
>>   	panel->backlight.min =3D get_backlight_min_vbt(connector);
>> -	level =3D intel_panel_compute_brightness(connector, 100);
>> -	ns =3D DIV_ROUND_UP(level * panel->backlight.pwm_period_ns, 100);
>>   =

>> -	retval =3D pwm_config(panel->backlight.pwm, ns,
>> -			    panel->backlight.pwm_period_ns);
>> -	if (retval < 0) {
>> -		drm_err(&dev_priv->drm, "Failed to configure the pwm chip\n");
>> -		pwm_put(panel->backlight.pwm);
>> -		panel->backlight.pwm =3D NULL;
>> -		return retval;
>> +	if (pwm_is_enabled(panel->backlight.pwm) &&
>> +	    pwm_get_period(panel->backlight.pwm)) {
> =

> What would pwm_is_enabled(panel->backlight.pwm) =3D=3D true &&
> pwm_get_period(panel->backlight.pwm) =3D=3D 0 mean? I hope this doesn't
> happen?!

It shouldn't happen this code uses only 2 PWM controller drivers,
pwm-crc and pwm-lpss and the get_state of neither ever sets
period tto 0. This check is just here for extra safety, since getting it
wrong would lead to a divide by 0. Which I see has been fixed by the
helper now (which does its own period=3D=3D0 check). So I guess I can
(and I will) just drop this extra check for the next version.

>> +		/* PWM is already enabled, use existing settings */
>> +		pwm_get_state(panel->backlight.pwm, &panel->backlight.pwm_state);
>> +
>> +		level =3D pwm_get_relative_duty_cycle(&panel->backlight.pwm_state,
>> +						    100);
>> +		level =3D intel_panel_compute_brightness(connector, level);
>> +		panel->backlight.level =3D clamp(level, panel->backlight.min,
>> +					       panel->backlight.max);
>> +		panel->backlight.enabled =3D true;
>> +
>> +		drm_dbg_kms(&dev_priv->drm, "PWM already enabled at freq %ld, VBT fre=
q %d, level %d\n",
>> +			    NSEC_PER_SEC / panel->backlight.pwm_state.period,
> =

> .period becomes a u64 soon, so be prepared to fixup here.
> =

>> +			    get_vbt_pwm_freq(dev_priv), level);
>> +	} else {
>> +		/* Set period from VBT frequency, leave other settings at 0. */
>> +		panel->backlight.pwm_state.period =3D
>> +			NSEC_PER_SEC / get_vbt_pwm_freq(dev_priv);
>>   	}
>>   =

>> -	level =3D DIV_ROUND_UP(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
>> -			     panel->backlight.pwm_period_ns);
>> -	level =3D intel_panel_compute_brightness(connector, level);
>> -	panel->backlight.level =3D clamp(level, panel->backlight.min,
>> -				       panel->backlight.max);
>> -	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
>> -
>>   	drm_info(&dev_priv->drm, "Using %s PWM for LCD backlight control\n",
>>   		 desc);
>>   	return 0;
> =

> Best regards
> Uwe



Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
