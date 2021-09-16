Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F840D63C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 11:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798856EB2B;
	Thu, 16 Sep 2021 09:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDED6EB28
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 09:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631784608;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aoHaC2vU32EKiSePDnHIK0vg2sZi4RSQcdvPjZic5Kg=;
 b=epS6I7cYS5t7DR5UqaoksTD6n2PzXkUPKEdMAMq+HGEDNzKqaSONSbl2UugJKDtZkhWM+D
 UJcC5m8tuOQk7I1Uoc9jiTxa2BuXWfcO9RWrQEXClmzzFucEklL0oY6GcA4ZUNszFBQHVj
 CJhCPCUNK2wPSPG7aYxBUned4w7UZKs=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-tCgJUMLwP1y1_xagMSkdQw-1; Thu, 16 Sep 2021 05:30:04 -0400
X-MC-Unique: tCgJUMLwP1y1_xagMSkdQw-1
Received: by mail-ed1-f71.google.com with SMTP id
 y21-20020a056402359500b003cd0257fc7fso4756052edc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 02:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aoHaC2vU32EKiSePDnHIK0vg2sZi4RSQcdvPjZic5Kg=;
 b=YDnsBASidsadf2m7ZZGCjUsAOiDeFFgPJVJ4GjKQESU2b1nkJ+GRU8YKGBI2XCwAEQ
 gZieyU8UpBqLOm/rel4mAhGNdd+stQ9yV9S95f5YeHaK9O2yD6pwC52c3dd4WK481ta1
 /ji5Oz4zqx7iA2MpGBhljKFU80Gc7usOZQ2RbS3Xe+8AkV/YQTi43XO3ssm2OWTlP9Ad
 ZAbBcZQmr0LVsM/ZB5LkdRf3sQqWf6JC5Y7SQiigok77fVHDec+Tn5piFi6+tLor0BU1
 C5OS1LV5lgSwn2yu8LMNwfCrSddzLEti1rnv8Ek4AtNhwbkQcLzPBwiEZxDG4XKlMWpg
 K0Tw==
X-Gm-Message-State: AOAM533jT09YvB9C1MPRZ02pRa8P8kCQRMzkNmdLKIAXfNV+tQSQfyld
 U/a1+QspeNsLCu1geRnwFB+ScpIhStYkoy7loaAbuexuvlAHHMO4r5hqZAGM6EdHzDpioI3ARKW
 tujGVNvgqDHFPw0k3YN9iTxn7d5+f
X-Received: by 2002:a05:6402:40e:: with SMTP id
 q14mr5497050edv.11.1631784603592; 
 Thu, 16 Sep 2021 02:30:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypvTXP6sz3HeAjo8791dourC3k5Ua3O2L6yI2Wxc3+R5VGnPICh0Q66RyO9UuWqag7ERu57Q==
X-Received: by 2002:a05:6402:40e:: with SMTP id
 q14mr5497020edv.11.1631784603353; 
 Thu, 16 Sep 2021 02:30:03 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id di4sm1173999edb.34.2021.09.16.02.30.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Sep 2021 02:30:03 -0700 (PDT)
To: Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rajat Jain <rajatja@google.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>, Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <ddd8ba1e22adb6fd536c9d72384a30bb9c945997.camel@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ddd05009-49dd-c61e-f966-e28d42eb7ef8@redhat.com>
Date: Thu, 16 Sep 2021 11:30:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ddd8ba1e22adb6fd536c9d72384a30bb9c945997.camel@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/9] drm: Add privacy-screen class and
 connector properties
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

Hi,

On 9/15/21 11:12 PM, Lyude Paul wrote:
> OK! Looked over all of these patches. Patches 2 and 4 have some comments that
> should be addressed, but otherwise this series is:
> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>

Thank you!

> Let me know when/if you need help pushing this upstream

My plan was to just straight forward push the entire series to
drm-misc-next. The only non drm bits are the drivers/platform/x86/thinkpad_acpi.c
changes and I'm the drivers/platform/x86 subsys-maintainer and this
plan has my blessing :)

That only leaves the last patch in the series:
"drm/i915: Add privacy-screen support" 

As something which could potentially be troublesome. I can also
leave that out, while pushing the test to drm-misc-next and then
push the i915 patch after a drm-misc-next merge into drm-intel-next.

Jani, how would you like to handle the single i915 patch in this
series?

Regards,

Hans





> 
> On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
>> Hi all,
>>
>> Here is the privacy-screen related code which I last posted in April 2021
>> To the best of my knowledge there is consensus about / everyone is in
>> agreement with the new userspace API (2 connector properties) this
>> patch-set add (patch 1 of the series).
>>
>> This is unchanged (except for a rebase on drm-tip), what has changed is
>> that the first userspace consumer of the new properties is now fully ready
>> for merging (it is just waiting for the kernel bits to land first):
>>
>>  -
>> https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
>>  - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
>>  - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032
>>
>> Having a userspace-consumer of the API fully ready for merging, clears the
>> last blocker for this series. It has already has been reviewed before
>> by Emil Velikov, but it could really do with another review.
>>
>> The new API works as designed and add the following features to GNOME:
>>
>> 1. Showing an OSD notification when the privacy-screen is toggled on/off
>>    through hotkeys handled by the embedded-controller
>> 2. Allowing control of the privacy-screen from the GNOME control-panel,
>>    including the on/off slider shown there updating to match the hw-setting
>>    when the setting is changed with the control-panel open.
>> 3. Restoring the last user-setting at login
>>
>> This series consists of a number of different parts:
>>
>> 1. A new version of Rajat's privacy-screen connector properties patch,
>> this adds new userspace API in the form of new properties
>>
>> 2. Since on most devices the privacy screen is actually controlled by
>> some vendor specific ACPI/WMI interface which has a driver under
>> drivers/platform/x86, we need some "glue" code to make this functionality
>> available to KMS drivers. Patches 2-4 add a new privacy-screen class for
>> this, which allows non KMS drivers (and possibly KMS drivers too) to
>> register a privacy-screen device and also adds an interface for KMS drivers
>> to get access to the privacy-screen associated with a specific connector.
>> This is modelled similar to how we deal with e.g. PWMs and GPIOs in the
>> kernel, including separate includes for consumers and providers(drivers).
>>
>> 3. Some drm_connector helper functions to keep the actual changes needed
>> for this in individual KMS drivers as small as possible (patch 5).
>>
>> 4. Make the thinkpad_acpi code register a privacy-screen device on
>> ThinkPads with a privacy-screen (patches 6-8)
>>
>> 5. Make the i915 driver export the privacy-screen functionality through
>> the connector properties on the eDP connector.
>>
>> I believe that it would be best to merge the entire series, including
>> the thinkpad_acpi changes through drm-misc in one go. As the pdx86
>> subsys maintainer I hereby give my ack for merging the thinkpad_acpi
>> changes through drm-misc.
>>
>> There is one small caveat with this series, which it is good to be
>> aware of. The i915 driver will now return -EPROBE_DEFER on Thinkpads
>> with an eprivacy screen, until the thinkpad_acpi driver is loaded.
>> This means that initrd generation tools will need to be updated to
>> include thinkpad_acpi when the i915 driver is added to the initrd.
>> Without this the loading of the i915 driver will be delayed to after
>> the switch to real rootfs.
>>
>> Regards,
>>
>> Hans
>>
>>
>> Hans de Goede (8):
>>   drm: Add privacy-screen class (v3)
>>   drm/privacy-screen: Add X86 specific arch init code
>>   drm/privacy-screen: Add notifier support
>>   drm/connector: Add a drm_connector privacy-screen helper functions
>>   platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey()
>>     helper
>>   platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI
>>     handles only once
>>   platform/x86: thinkpad_acpi: Register a privacy-screen device
>>   drm/i915: Add privacy-screen support
>>
>> Rajat Jain (1):
>>   drm/connector: Add support for privacy-screen properties (v4)
>>
>>  Documentation/gpu/drm-kms-helpers.rst        |  15 +
>>  Documentation/gpu/drm-kms.rst                |   2 +
>>  MAINTAINERS                                  |   8 +
>>  drivers/gpu/drm/Kconfig                      |   4 +
>>  drivers/gpu/drm/Makefile                     |   1 +
>>  drivers/gpu/drm/drm_atomic_uapi.c            |   4 +
>>  drivers/gpu/drm/drm_connector.c              | 214 +++++++++
>>  drivers/gpu/drm/drm_drv.c                    |   4 +
>>  drivers/gpu/drm/drm_privacy_screen.c         | 468 +++++++++++++++++++
>>  drivers/gpu/drm/drm_privacy_screen_x86.c     |  86 ++++
>>  drivers/gpu/drm/i915/display/intel_display.c |   5 +
>>  drivers/gpu/drm/i915/display/intel_dp.c      |  10 +
>>  drivers/gpu/drm/i915/i915_pci.c              |  12 +
>>  drivers/platform/x86/Kconfig                 |   2 +
>>  drivers/platform/x86/thinkpad_acpi.c         | 131 ++++--
>>  include/drm/drm_connector.h                  |  56 +++
>>  include/drm/drm_privacy_screen_consumer.h    |  65 +++
>>  include/drm/drm_privacy_screen_driver.h      |  84 ++++
>>  include/drm/drm_privacy_screen_machine.h     |  46 ++
>>  19 files changed, 1175 insertions(+), 42 deletions(-)
>>  create mode 100644 drivers/gpu/drm/drm_privacy_screen.c
>>  create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
>>  create mode 100644 include/drm/drm_privacy_screen_consumer.h
>>  create mode 100644 include/drm/drm_privacy_screen_driver.h
>>  create mode 100644 include/drm/drm_privacy_screen_machine.h
>>
> 

