Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA055A0DAC
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 12:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFBC10F6B5;
	Thu, 25 Aug 2022 10:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42A010FDC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 10:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661422518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zQ3qZtEYF9kIZvb5A1H9IxOTwvdPfHqi1+4CI8j2JWY=;
 b=bbzYhp7uYcqHKBc/qC2rD/yg6wDQQbbWk/8CFOmpH5fuSCV0aAWNMlII44t1a2YSvjj+Fz
 fSfqB2bTMne7JEAtBxRMDvdAjkoVFC+VUOLGrJNJG9L+dPw3whye52R4mY7fI29xHQbt7G
 n7m4WE1nlKF3AjallLbQmEwx1j8wFxQ=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-670-xTxwzBhYPk600_PZ2KOu_w-1; Wed, 24 Aug 2022 14:12:18 -0400
X-MC-Unique: xTxwzBhYPk600_PZ2KOu_w-1
Received: by mail-qk1-f197.google.com with SMTP id
 n15-20020a05620a294f00b006b5768a0ed0so15215999qkp.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 11:12:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=zQ3qZtEYF9kIZvb5A1H9IxOTwvdPfHqi1+4CI8j2JWY=;
 b=cLXdy+v+f6Iie8zsolskEQvNPc5Po8QMiljS6luSLio25ZoATD5aGk5aa4/j/W9zEW
 h+3uiFKc8Ayg+FQBe40u/vxck5d41XIcpnCghOiW/uqYrrcQx/wp9bHz1fXJDa/RNCer
 kvpUMfqi4/8wzA/GF/FB0HpfaOqRypeS0eCWGiO3kLJq5HSrqeUSozBUWWgi8jodowr7
 GjlGVYPRn8qGGn5xaBfs28rDSCBwAEyxEJM3IQIGjp/iDsa04r9Wbj85odPe/LvBgnPh
 IGZZ2vLiI0ZoKkzcdJpf3A0cJ7jBLXehHhj8Gmg66Pw+NWvd4rEq2MLh0/6TZ1JVpBpU
 aGyg==
X-Gm-Message-State: ACgBeo21HzKVu/01Jpry/ZLqWxKLMP2vBhgexW2xCyDYQyHF2FkeDJye
 AGl5Wmun0SMnNEblypuyPl/upOMKcaQbbidQ74ttQB3m+jG8rRSYHb3kZf6T1Zf6RtRYHHz5nUz
 19vkezu5zcWmaHEHFAWeC7vqlOgHO
X-Received: by 2002:a05:6214:27ee:b0:496:f17b:7459 with SMTP id
 jt14-20020a05621427ee00b00496f17b7459mr338523qvb.101.1661364737696; 
 Wed, 24 Aug 2022 11:12:17 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4SOi3GajklItGmlUgJlLLhtanN0frscFinRBtNfwg/Jh8eIC0ruh9bVuC+aRmJv5zCKqZZxQ==
X-Received: by 2002:a05:6214:27ee:b0:496:f17b:7459 with SMTP id
 jt14-20020a05621427ee00b00496f17b7459mr338488qvb.101.1661364737427; 
 Wed, 24 Aug 2022 11:12:17 -0700 (PDT)
Received: from [192.168.8.139] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 u4-20020a05620a454400b006bbe7ded98csm12598653qkp.112.2022.08.24.11.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Aug 2022 11:12:16 -0700 (PDT)
Message-ID: <341368d96c5c3bdbcab48d48a0d9b702a930ea05.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, 
 Karol Herbst <kherbst@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Pan Xinhui <Xinhui.Pan@amd.com>, "Rafael J .
 Wysocki" <rafael@kernel.org>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Lukas Wunner <lukas@wunner.de>, Mark
 Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
Date: Wed, 24 Aug 2022 14:12:15 -0400
In-Reply-To: <20220824121523.1291269-32-hdegoede@redhat.com>
References: <20220824121523.1291269-1-hdegoede@redhat.com>
 <20220824121523.1291269-32-hdegoede@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 31/31] drm/todo: Add entry about dealing
 with brightness control on devices with > 1 panel
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>, amd-gfx@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Wed, 2022-08-24 at 14:15 +0200, Hans de Goede wrote:
> Add an entry summarizing the discussion about dealing with brightness
> control on devices with more then 1 internal panel.
> 
> The original discussion can be found here:
> https://lore.kernel.org/dri-devel/20220517152331.16217-1-hdegoede@redhat.com/
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  Documentation/gpu/todo.rst | 68 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 7634c27ac562..393d218e4a0c 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -679,6 +679,74 @@ Contact: Sam Ravnborg
>  
>  Level: Advanced
>  
> +Brightness handling on devices with multiple internal panels
> +============================================================
> +
> +On x86/ACPI devices there can be multiple backlight firmware interfaces:
> +(ACPI) video, vendor specific and others. As well as direct/native (PWM)
> +register programming by the KMS driver.
> +
> +To deal with this backlight drivers used on x86/ACPI call
> +acpi_video_get_backlight_type() which has heuristics (+quirks) to select
> +which backlight interface to use; and backlight drivers which do not match
> +the returned type will not register themselves, so that only one backlight
> +device gets registered (in a single GPU setup, see below).
> +
> +At the moment this more or less assumes that there will only
> +be 1 (internal) panel on a system.
> +
> +On systems with 2 panels this may be a problem, depending on
> +what interface acpi_video_get_backlight_type() selects:
> +
> +1. native: in this case the KMS driver is expected to know which backlight
> +   device belongs to which output so everything should just work.
> +2. video: this does support controlling multiple backlights, but some work
> +   will need to be done to get the output <-> backlight device mapping
> +
> +The above assumes both panels will require the same backlight interface type.
> +Things will break on systems with multiple panels where the 2 panels need
> +a different type of control. E.g. one panel needs ACPI video backlight control,
> +where as the other is using native backlight control. Currently in this case
> +only one of the 2 required backlight devices will get registered, based on
> +the acpi_video_get_backlight_type() return value.
> +
> +If this (theoretical) case ever shows up, then supporting this will need some
> +work. A possible solution here would be to pass a device and connector-name
> +to acpi_video_get_backlight_type() so that it can deal with this.
> +
> +Note in a way we already have a case where userspace sees 2 panels,
> +in dual GPU laptop setups with a mux. On those systems we may see
> +either 2 native backlight devices; or 2 native backlight devices.
> +
> +Userspace already has code to deal with this by detecting if the related
> +panel is active (iow which way the mux between the GPU and the panels
> +points) and then uses that backlight device. Userspace here very much
> +assumes a single panel though. It picks only 1 of the 2 backlight devices
> +and then only uses that one.
> +
> +Note that all userspace code (that I know off) is currently hardcoded
> +to assume a single panel.
> +
> +Before the recent changes to not register multiple (e.g. video + native)
> +/sys/class/backlight devices for a single panel (on a single GPU laptop),
> +userspace would see multiple backlight devices all controlling the same
> +backlight.
> +
> +To deal with this userspace had to always picks one preferred device under
> +/sys/class/backlight and will ignore the others. So to support brightness
> +control on multiple panels userspace will need to be updated too.
> +
> +There are plans to allow brightness control through the KMS API by adding
> +a "display brightness" property to drm_connector objects for panels. This
> +solves a number of issues with the /sys/class/backlight API, including not
> +being able to map a sysfs backlight device to a specific connector. Any
> +userspace changes to add support for brightness control on devices with
> +multiple panels really should build on top of this new KMS property.
> +
> +Contact: Hans de Goede
> +
> +Level: Advanced
> +
>  Outside DRM
>  ===========
>  

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

