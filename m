Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B311308DB
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 16:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB1889BFD;
	Sun,  5 Jan 2020 15:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5002989BFD
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Jan 2020 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578239226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=alExKLVeqd6bzgsM2blojQwdgRKVwTy+LtsVOW7ce9Q=;
 b=QNyrPMu9pzIBIPbrHNc0rXlOBht2HpxzpHtAV27rB7LQ2huWN/tuoy1E46EYz6Ij0RPHpO
 Ir9xuhnWhdPOGRrVS/fT7z1igIB9ej8GvQAYKZJdUIhD6OW5ns21MahqChQkbD5MNIRz81
 Bvq/WISsPFD87bFS8jHH6H0JBbCA85A=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-DsEj9uOpNzG6EJmoEwpO2g-1; Sun, 05 Jan 2020 10:47:01 -0500
Received: by mail-wr1-f69.google.com with SMTP id f17so11885141wrt.19
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Jan 2020 07:47:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=alExKLVeqd6bzgsM2blojQwdgRKVwTy+LtsVOW7ce9Q=;
 b=Y+dezNov3+ttFkbGcUXRy1+x6PRjIGDtkef9zaz+2KH1n0wwXtjjZ4bf39S0b41V01
 fK0vblNfEdDEMguxwmadgBJ3nkbLvAa4L7jze2msp98vxQSwusgU92mnwYJzkcf5kgPq
 MWooyVcHdMxdwhIYi58RoQZr1jWHCGsZGfJjtGptnQsqPXUeFUGqBV7UWYPRco/Qkym0
 Mxl8ihZkbXB7lAxSNz7ktwpjQtZYhs21i+yZFQFdQ3TGdoW7grTM0ZVRLWKtFySW7pMP
 3MhMdu89LBb6O+FWmS1KLGvTSn6esEE0u/kB5afaACWWjl3lDzEsgoaBGZTJZbDBhVER
 PanA==
X-Gm-Message-State: APjAAAUNeboVnM0yxyX2+UmMmMy5LpEAKQmkf4eCZIXndk7E1RUYrcxF
 dRRkmM2nYTS792gtx1hUhYVS4T7eZVyxiSuM1pYItcSvuFwWOYms+h6R1HW8yt2DB6mTvLdOYkI
 UBj7YtIWGIEYYQkMU4rHWjjh0/Fif
X-Received: by 2002:adf:f311:: with SMTP id i17mr98241632wro.81.1578239220354; 
 Sun, 05 Jan 2020 07:47:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqwH4c8uZP28szpE3q7oOFYe7bo6EB0wGY8A83cQmcOJdNzjqTDjCk0FzvCFXWKoPM+AOD/Hbg==
X-Received: by 2002:adf:f311:: with SMTP id i17mr98241621wro.81.1578239220148; 
 Sun, 05 Jan 2020 07:47:00 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id d12sm68041734wrp.62.2020.01.05.07.46.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jan 2020 07:46:59 -0800 (PST)
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20191216115158.862404-1-hdegoede@redhat.com>
 <20191216115158.862404-3-hdegoede@redhat.com>
 <20200103193829.GD11904@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b30d75a4-31ee-37c3-30c6-225a1251a652@redhat.com>
Date: Sun, 5 Jan 2020 16:46:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200103193829.GD11904@intel.com>
Content-Language: en-US
X-MC-Unique: DsEj9uOpNzG6EJmoEwpO2g-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH resend 2/2] drm/connector: Hookup the new
 drm_cmdline_mode panel_orientation member
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
Cc: dri-devel@lists.freedesktop.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 03-01-2020 20:38, Rodrigo Vivi wrote:
> On Mon, Dec 16, 2019 at 12:51:58PM +0100, Hans de Goede wrote:
>> If the new video=... panel_orientation option is set for a connector, honor
>> it and setup a matching "panel orientation" property on the connector.
>>
>> BugLink: https://gitlab.freedesktop.org/plymouth/plymouth/merge_requests/83
>> Acked-by: Maxime Ripard <mripard@kernel.org>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/gpu/drm/drm_connector.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
>> index f4fa5c59717d..d9d7fef26275 100644
>> --- a/drivers/gpu/drm/drm_connector.c
>> +++ b/drivers/gpu/drm/drm_connector.c
>> @@ -140,6 +140,13 @@ static void drm_connector_get_cmdline_mode(struct drm_connector *connector)
>>   		connector->force = mode->force;
>>   	}
>>   
>> +	if (mode->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN) {
>> +		DRM_INFO("setting connector %s panel_orientation to %d\n",
>> +			 connector->name, mode->panel_orientation);
> 
> Since this overrides the standard behavior should this deserve a debug that
> is a bit more clear that we are forcing the mode with the cmdline?

Sure, I will send a v2 of this series with this fixed up right away.

Regards,

Hans


> 
>> +		drm_connector_set_panel_orientation(connector,
>> +						    mode->panel_orientation);
>> +	}
>> +
>>   	DRM_DEBUG_KMS("cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\n",
>>   		      connector->name, mode->name,
>>   		      mode->xres, mode->yres,
>> -- 
>> 2.23.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
