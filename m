Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F45012079F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 14:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD7E6E578;
	Mon, 16 Dec 2019 13:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97B86E578
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576504319;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YkuN1jFur4hgvFXZ4obcZkV1FJ+NVdJ6TKVTQc2CORY=;
 b=H/3CRvgG9jen/aIAQOBPjXp0eK2U+bcvTDFqGHQ9BEpo3na5SCaJG1//IOxmh3Nq0EeI4o
 vn5ClgbxI4oWkN7u4DntTSJp3uNWYSMGNnopDNj7LYHkUbA/YM18Trwgc864aHDdQscJMD
 /bpMGDAvdz5UOYkHFbsSMhrEcAvUk7Q=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-wVcLwrNpNjOXDMYsApUwMg-1; Mon, 16 Dec 2019 08:51:58 -0500
Received: by mail-wm1-f72.google.com with SMTP id l11so1082034wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 05:51:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=92SYUSBikdk3xyYnFqKeAftGqF8EgbhEnCGGofd5R5U=;
 b=rNvOwMMeuGZgLQVNlmgU3M7btFpJWSz5pnwMu7oqgQBkyg0WUzvlaYUGR3mQ5G2H2t
 aX7EWeN+3m1bbJUgL0psIbb8XiDkYCWJFWjjbtl1o+2iX7O8khpOlBWY0SKpBOAB0Rzt
 XsQzrPg0E3rjr8An+76FY2jyasUBslWzTnx3e1B8brABcxdCezb52F0QWcvV87gNRpkY
 Cv6d7Uvrt1wMDBnta/3EQJBC6Ffalf4cq9D4y/qLp2oIVHIn43WoZC5G9C61WSbnsaJ6
 +YbOkaXFtJfiG3rjdHJEDMLa0No3nyV1UXKv2bhTeGdNfaGB4srVjLmJzn0EvZzBt0Pi
 oTog==
X-Gm-Message-State: APjAAAVz0YC2MaS9qrLgG7E8iign09oUlbUUvxXOgjfBnmj492qXXuV/
 Zy2ZPg/kcuGT1E896bAFt7uaY8CN0Lg8S7AOlf0aEY2xOkTsoJRldpSZmOA8sA43O/xy3cLTqc1
 5bHn2V86naJRbRTRFfnrZTdGPpOm0
X-Received: by 2002:a05:600c:224d:: with SMTP id
 a13mr31393744wmm.57.1576504316481; 
 Mon, 16 Dec 2019 05:51:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwyxMC8rOEm3cQf/zGU6nzBkVtCLQ2bPDjiwI95jk9Cscpkz7pIDerHyRW1DrZwA6GRaoPVeQ==
X-Received: by 2002:a05:600c:224d:: with SMTP id
 a13mr31393720wmm.57.1576504316212; 
 Mon, 16 Dec 2019 05:51:56 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id o66sm17703254wmo.20.2019.12.16.05.51.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 05:51:55 -0800 (PST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <20191215163810.52356-4-hdegoede@redhat.com>
 <20191216134551.GQ1208@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c7fe3911-be20-33dd-96c1-58eccd0f323f@redhat.com>
Date: Mon, 16 Dec 2019 14:51:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216134551.GQ1208@intel.com>
Content-Language: en-US
X-MC-Unique: wVcLwrNpNjOXDMYsApUwMg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dsi: Init panel-enable GPIO to
 low when the LCD is initially off
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Lee Jones <lee.jones@linaro.org>, intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Thank you for the reviews.

On 16-12-2019 14:45, Ville Syrj=E4l=E4 wrote:
> On Sun, Dec 15, 2019 at 05:38:08PM +0100, Hans de Goede wrote:
>> When the LCD has not been turned on by the firmware/GOP, because e.g. the
>> device was booted with an external monitor connected over HDMI, we should
>> not turn on the panel-enable GPIO when we request it.
>>
>> Turning on the panel-enable GPIO when we request it, means we turn it on
>> too early in the init-sequence, which causes some panels to not correctly
>> light up.
>>
>> This commits adds a panel_is_on parameter to intel_dsi_vbt_gpio_init()
>> and makes intel_dsi_vbt_gpio_init() set the initial GPIO value according=
ly.
>>
>> This fixes the panel not lighting up on a Thundersoft TST168 tablet when
>> booted with an external monitor connected over HDMI.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsi.h     | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 7 +++----
>>   drivers/gpu/drm/i915/display/vlv_dsi.c       | 2 +-
>>   3 files changed, 5 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/=
i915/display/intel_dsi.h
>> index de7e51cd3460..675771ea91aa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
>> @@ -203,7 +203,7 @@ void bxt_dsi_reset_clocks(struct intel_encoder *enco=
der, enum port port);
>>   =

>>   /* intel_dsi_vbt.c */
>>   bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
>> -void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi);
>> +void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is=
_on);
>>   void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
>>   void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
>>   				 enum mipi_seq seq_id);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.c
>> index 5352e8c9eca5..027970348b22 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -688,17 +688,16 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_ds=
i, u16 panel_id)
>>    * On some BYT/CHT devs some sequences are incomplete and we need to m=
anually
>>    * control some GPIOs.
>>    */
>> -void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi)
>> +void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is=
_on)
>>   {
>>   	struct drm_device *dev =3D intel_dsi->base.base.dev;
>>   	struct drm_i915_private *dev_priv =3D to_i915(dev);
>>   	struct mipi_config *mipi_config =3D dev_priv->vbt.dsi.config;
>> +	enum gpiod_flags flags =3D panel_is_on ? GPIOD_OUT_HIGH : GPIOD_OUT_LO=
W;
> =

> Can't we just tell it not to change the current setting?

We could use GPIOD_ASIS for that, but with the SoC pins (when the PMIC is
not used for backlight control) things get a bit muddy, I've seen several
instances of this message from drivers/pinctrl/intel/pinctrl-baytrail.c
trigger when the GOP did not init the panel:

dev_warn(vg->dev, FW_BUG "pin %u forcibly re-configured as GPIO\n", offset);

And in that case with GPIOD_ASIS I have no idea which we initially get,
so this approach, where we clearly define which initial value we want,
seems better.

Regards,

Hans

p.s.

The intel-gfx CI seems to seriously dislike my patches lately, almost
always failing them; and usually on what at least seem to be unrelated
test-cases. Any advice on how to deal with this?




> =

>>   =

>>   	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
>>   	    (mipi_config->pwm_blc =3D=3D PPS_BLC_PMIC)) {
>> -		intel_dsi->gpio_panel =3D
>> -			gpiod_get(dev->dev, "panel", GPIOD_OUT_HIGH);
>> -
>> +		intel_dsi->gpio_panel =3D gpiod_get(dev->dev, "panel", flags);
>>   		if (IS_ERR(intel_dsi->gpio_panel)) {
>>   			DRM_ERROR("Failed to own gpio for panel control\n");
>>   			intel_dsi->gpio_panel =3D NULL;
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i9=
15/display/vlv_dsi.c
>> index 178d0fffba5b..e86e4a11e199 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1910,7 +1910,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_pri=
v)
>>   =

>>   	vlv_dphy_param_init(intel_dsi);
>>   =

>> -	intel_dsi_vbt_gpio_init(intel_dsi);
>> +	intel_dsi_vbt_gpio_init(intel_dsi, current_mode !=3D NULL);
>>   =

>>   	drm_connector_init(dev, connector, &intel_dsi_connector_funcs,
>>   			   DRM_MODE_CONNECTOR_DSI);
>> -- =

>> 2.23.0
> =


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
