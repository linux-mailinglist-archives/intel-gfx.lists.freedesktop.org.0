Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C730F666CC4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 09:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FED10E5CE;
	Thu, 12 Jan 2023 08:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCD510E5CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 08:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673513091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5a4BjVGA5+VS7280a0HZ27tLyRrI18llQE1bUBA8/1A=;
 b=C3l1GUuQQshmNX7JLjxqU4zgH5008d2GCHSnLh0+SjHYdLG5LikAeYNLs6DKTyzVtLBHG5
 2qJJyZKesdlWtr/OcSbbpXqSTu2UunxYg5CCgLD2P1AqVmolg5WXXOvDipwCz0727dWW7+
 zAo+HE6GTJ9RjiubBU94L5UOeidDd04=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-423-vvGXt211MvyWh4Cfdbq6uQ-1; Thu, 12 Jan 2023 03:44:50 -0500
X-MC-Unique: vvGXt211MvyWh4Cfdbq6uQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 bi18-20020a05600c3d9200b003d991844dbcso12127370wmb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 00:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5a4BjVGA5+VS7280a0HZ27tLyRrI18llQE1bUBA8/1A=;
 b=EG7LhN86LkZW8qeOe9y5qFXp0ksWD1722YQ8ezD2d5xWimhI1hhNTUs2P3H99nGaxt
 uBR3CMnEBBjvbk0oqvUZjvUqCiG7TCips3xuWf23KuI6OVPkfbwJPT0Rn6O3Ylvv+9Qj
 GW3Z9pyGQzfS11CaWKl670zllqLfpmZQwPEqtBfwii7Jp7hdMRl2IN0VfhIeaXPw2MM/
 WThUp8KBLEBnTsDBAJNtHRlQ5BMbygsIv5l3qmZ3b6Mid+u4E1PtKfj2Cp0WHQozjsGz
 GrCNPD2/OdOo342GFSLEtNLJlIWnyYVBsqLenf02l8p+CPRJk/9hevNTsIySV40aXdtt
 rJJQ==
X-Gm-Message-State: AFqh2kppFIiJsYlJsSzq2FFGaKxOZiaUnGX5wPsrHZc50xCHgA+VgDKF
 CPqY/2BEXhM0VTBYVqnsKkRWZLwaSAd+8yfF9YtbIVpayRGTR5DsDb9Og1FSciic0Kcnp/vYidN
 UzY2HxO7p82UnpjVOEFnrGR7JRiKo
X-Received: by 2002:a05:6000:705:b0:267:e918:d1e6 with SMTP id
 bs5-20020a056000070500b00267e918d1e6mr47978590wrb.51.1673513089194; 
 Thu, 12 Jan 2023 00:44:49 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsBcz+NOewCErJTagdikvQUga/n6zRME4ChBTvTDSkbfqsCpMEvFJRtoH3xbPIha9jKtsWTZw==
X-Received: by 2002:a05:6000:705:b0:267:e918:d1e6 with SMTP id
 bs5-20020a056000070500b00267e918d1e6mr47978578wrb.51.1673513088989; 
 Thu, 12 Jan 2023 00:44:48 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 k9-20020a5d66c9000000b002bdd7ce63b2sm526804wrw.38.2023.01.12.00.44.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Jan 2023 00:44:48 -0800 (PST)
Message-ID: <733eb41e-a296-47bb-ce06-18dff755723c@redhat.com>
Date: Thu, 12 Jan 2023 09:44:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Aaron Plattner <aplattner@nvidia.com>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, DRI Development <dri-devel@lists.freedesktop.org>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
 <20230111154112.90575-11-daniel.vetter@ffwll.ch>
 <fb72e067-3f5f-1bac-dc9b-3abd9d7739a2@redhat.com>
 <ad725823-f4ef-904f-c04c-90a6aad43323@nvidia.com>
 <7b00e592-345f-4dd5-3452-7f6f70fc608a@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <7b00e592-345f-4dd5-3452-7f6f70fc608a@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 11/11] video/aperture: Only remove sysfb on
 the default vga pci device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/12/23 08:55, Thomas Zimmermann wrote:

[...]

>> Thanks Daniel and Javier!
>>
>> I wasn't able to reproduce the original problem on my hybrid laptop 
>> since it refuses to boot with the console on an external display, but I 
>> was able to reproduce it by switching the configuration around: booting 
>> with i915.modeset=0 and with an experimental version of nvidia-drm that 
>> registers a framebuffer console. I verified that loading nvidia-drm 
> 
> Thank you for testing.
> 
> One thing I'd like to note is that using DRM's fbdev emulation is the 
> correct way to support a console. Nvidia-drm's current approach of 
> utilizing efifb is fragile and requires workarounds from distributions 
> (at least here at SUSE). Steps towards fbdev emulation are much appreciated.
>
 
I was meaning to mention the same. Fedora also is carrying a workaround just
for the Nvidia proprietary driver since all other drivers provide a emulated
fbdev device.

So getting this finally fixed will be indeed highly appreciated.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

