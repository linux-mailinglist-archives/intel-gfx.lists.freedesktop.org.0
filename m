Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBB7121977
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C656E863;
	Mon, 16 Dec 2019 18:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1236E862
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 18:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576522475;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rDiqRkTeRtFMtu4eNUvCbfH7qXI9mN4i/vc6AaqgnJs=;
 b=DHeENqRjZYLk6SA69Jn1SEKbg4+5HzArfUwF4elzSi3YQny8ESyDH3h1IJm4OvLfjus9M2
 OmH8KUodpChUklCS+0Fo8LDEtvuIZxulZnCv00VXVzNHqOpHkW+1cmeaOfUVL5ZZKWz+fw
 raGxZT3yj11j5J88QEtAnRN7zlOlf98=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-kEX_UfGvOxGQ8k8wxKqSnQ-1; Mon, 16 Dec 2019 13:54:33 -0500
Received: by mail-wr1-f70.google.com with SMTP id h30so4167980wrh.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:54:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yYpZZXiivZKPcqxmiEtI5uFBlGK1FTwvcmnzcL0aUgw=;
 b=khlBcvhKpQaywom8m4knQNW9tNIU8KuNzb1yG89DqmX7c316eJJM3/fgNY0PQvF5jR
 6gaPaludPqT1hoHvO0iFbAxq1WYG1T1bd49fvjkoi+BeqSi0CYotG6j8jIcEfp2fIrK9
 SOoq7Npsq20oqUNLp1FnSMNdExSrFZh1aMKL/thLm6ts0QzIBA6GThFSBPyfU+LozFF9
 iPkpXGn4Ro8XEKek4OVQFPJyqpCQ67PHL8QD61szjA97K/81rdh/vePhs5lfggWKR3FH
 GReiH8St5tcDdsX7Q3MZyCgulnVJDfE1MmWSgYAEeEXX3o2jC8UPrriUyrCzR8myiPXo
 /iLA==
X-Gm-Message-State: APjAAAUBsuuMmXpfnYJUeotHOUxXCWWuNU9rW8zWrHUm4ZZTfGnnLZQW
 8whSF24XpDteL4/f5gBehJV/XXZNK4bD/Cmivd1oL/lEFCb3r8z5j0/tEtgckzJRWfjKWgb6WRk
 6fdU4vPwvsmjwMYyOvWH/yoBaRff8
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr33832398wrt.100.1576522472367; 
 Mon, 16 Dec 2019 10:54:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqy3cBORYT/PwX61iCv7HqfYVodzu0ByMHIhDSbSjYxGkuhkD9kkYOh8t6xU5WbcnDUoLh+SWQ==
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr33832384wrt.100.1576522472169; 
 Mon, 16 Dec 2019 10:54:32 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x10sm22750966wrv.60.2019.12.16.10.54.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 10:54:31 -0800 (PST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191215213307.689830-1-hdegoede@redhat.com>
 <20191215213307.689830-2-hdegoede@redhat.com>
 <20191216133904.GP1208@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a9732acb-df62-7f58-138b-fde64ebd8569@redhat.com>
Date: Mon, 16 Dec 2019 19:54:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216133904.GP1208@intel.com>
Content-Language: en-US
X-MC-Unique: kEX_UfGvOxGQ8k8wxKqSnQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use BDB_GENERAL_FEATURES
 VBT block info for builtin panel-orientation
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 16-12-2019 14:39, Ville Syrj=E4l=E4 wrote:
> On Sun, Dec 15, 2019 at 10:33:07PM +0100, Hans de Goede wrote:
>> Some devices with a builtin panel have the panel mounted upside down,
>> this is indicated by the rotate_180 bit in the BDB_GENERAL_FEATURES VBT
>> block.
>>
>> We store this info in dev_priv->vbt.orientation, use this to set the
>> connector's orientation property so that fbcon and userspace will show
>> the image the right way up on devices with an upside-down mounted panel.
>>
>> This fixes the image being upside-down on a Teclast X89 tablet.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index b05b2191b919..d31c04a22976 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7350,9 +7350,12 @@ static bool intel_edp_init_connector(struct intel=
_dp *intel_dp,
>>   	intel_connector->panel.backlight.power =3D intel_edp_backlight_power;
>>   	intel_panel_setup_backlight(connector, pipe);
>>   =

>> -	if (fixed_mode)
>> +	if (fixed_mode) {
>> +		connector->display_info.panel_orientation =3D
>> +			dev_priv->vbt.orientation;
> =

> Do we want to set this to UNKNOWN when the VBT didn't supply the
> information? IIRC the DSI code sets it to NORMAL in that case.

It is true that the DSI code sets it to normal where-as the
code filling dev_priv->vbt.orientation will set it to unknown if the
info is missing from the VBT.

Note that drm_connector_init_panel_orientation_property() will simply
omit the property if the value is unknown (and userspace treats
the property no being there as "normal").

Omitting the property when we do not know is what we have been doing
sofar for eDP panels and that does feel like the right thing to do,
I would prefer to continue doing that, as that seems the most correct
behavior, if we do not know, do not advertise any specific orientation.

Regards,

Hans



> =

>>   		drm_connector_init_panel_orientation_property(
>>   			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
>> +	}
>>   =

>>   	return true;
>>   =

>> -- =

>> 2.23.0
> =


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
