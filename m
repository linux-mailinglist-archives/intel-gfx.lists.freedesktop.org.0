Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A355A60ADBA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1504610E7CC;
	Mon, 24 Oct 2022 14:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4413010E7CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:31:26 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id jo13so4994887plb.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 07:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wkknqfE8N8iJl5XEQQmyIBiDl6R0jV4HGlicMSZl2gQ=;
 b=L0/1RRlkmYmA8CLIifUuUlVJ74Kz+AS0tmR8KIQvxLhzv2mfq4GRaFSzf6y7ExNPMt
 0JMZA7nNRAT//74v5qJU7bQBu9l+wJClqFc6pDeSKQ+AYJN+EOAUDDNv6XD3AjR9AOaH
 woTW5Wvk4jghdUjKZn0Szj7uOj8nN2IpQjXF9jr/bA963Cnftma2v/vygHFtKVZjQRh8
 2nGaht+ZSPBBxljf4ve53oU6E/u+s0bGvW8WQ+rw1qYeRn33wNMm3GPyocuKQd6eLN0X
 tvkX/rZlb+YA+EpML8EgckKck+AwIrn6gKUISkLAzey62Co2gw5l77imQVOsx3pNb9sY
 BwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wkknqfE8N8iJl5XEQQmyIBiDl6R0jV4HGlicMSZl2gQ=;
 b=3hRyNjAuQlQRAnkQ5CE/WGDdJWzv/SQ3ORPS4FsgfJpNApJ7LmAKOaql03U7Q+Mfzq
 Gmpmy+9EkKKURCQzfAwLmXKiZX+H+boEXGtzW76Fm38UYnNViObGQ1kRT6etwGOCC6hW
 gZEOgjrDk2PWCHZwQP/4OZHSgGNP0m2nFH6JtknlcpxiWtA7oRFiSIoYKUT/UaPGssEG
 C9t1DR8UO/r9Lx9zrwOObWXnIESVuKMjS78ctf5eMXs+goNB4GJSF2LXuWA6H2TRY3xO
 lcfOjkwRmJ4guVOr3bliJUsHcgE/zIH5yMURzjFIj/89lsI0I7Xlul2KJQ8jQgWpjWkG
 vDVQ==
X-Gm-Message-State: ACrzQf1tfay7ckbtj1xWRf26hNJEEDQtj9LkYBvfcoMp+6OX9aFK8bwI
 YK1VMem3WFUhGu6yBFf8Rl2olQ==
X-Google-Smtp-Source: AMsMyM6L4EimJuPN+RegX8YJLfERy+lfPY4csYLFUl7zZWPrHXhB+m+qxFaDBRxxyqG4MIlhTWivBg==
X-Received: by 2002:a17:90a:b28d:b0:20d:6790:19fa with SMTP id
 c13-20020a17090ab28d00b0020d679019famr73827828pjr.68.1666621885509; 
 Mon, 24 Oct 2022 07:31:25 -0700 (PDT)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 l3-20020a170903244300b00174f7d107c8sm19771856pls.293.2022.10.24.07.31.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 07:31:24 -0700 (PDT)
Message-ID: <7373e258-f7cc-4416-9b1c-c8c9dab59ada@daynix.com>
Date: Mon, 24 Oct 2022 23:31:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: Hans de Goede <hdegoede@redhat.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
 <60672af8-05d2-113c-12b9-d635608be0dd@redhat.com>
 <ea69242c-0bc8-c7bb-9602-c7489bb69684@daynix.com>
In-Reply-To: <ea69242c-0bc8-c7bb-9602-c7489bb69684@daynix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 00/22] Fallback to native backlight
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Azael Avalos <coproscefalo@gmail.com>, Mattia Dongili <malattia@linux.it>,
 Daniel Dadap <ddadap@nvidia.com>, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 David Airlie <airlied@gmail.com>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net, Maxime Ripard <mripard@kernel.org>,
 Mark Gross <markgross@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, platform-driver-x86@vger.kernel.org,
 devel@acpica.org, ibm-acpi-devel@lists.sourceforge.net,
 Jingoo Han <jingoohan1@gmail.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022/10/24 23:06, Akihiko Odaki wrote:
> On 2022/10/24 22:21, Hans de Goede wrote:
>> Hi,
>>
>> On 10/24/22 14:58, Akihiko Odaki wrote:
>>> On 2022/10/24 20:53, Hans de Goede wrote:
>>>> Hi Akihiko,
>>>>
>>>> On 10/24/22 13:34, Akihiko Odaki wrote:
>>>>> Commit 2600bfa3df99 ("ACPI: video: Add 
>>>>> acpi_video_backlight_use_native()
>>>>> helper") and following commits made native backlight unavailable if
>>>>> CONFIG_ACPI_VIDEO is set and the backlight feature of ACPI video is
>>>>> unavailable, which broke the backlight functionality on Lenovo 
>>>>> ThinkPad
>>>>> C13 Yoga Chromebook. Allow to fall back to native backlight in such
>>>>> cases.
>>>>
>>>> I appreciate your work on this, but what this in essence does is
>>>> it allows 2 backlight drivers (vendor + native) to get registered
>>>> for the same panel again. While the whole goal of the backlight 
>>>> refactor
>>>> series landing in 6.1 was to make it so that there always is only
>>>> *1* backlight device registered instead of (possibly) registering
>>>> multiple and letting userspace figure it out. It is also important
>>>> to only always have 1 backlight device per panel for further
>>>> upcoming changes.
>>>>
>>>> So nack for this solution, sorry.
>>>>
>>>> I am aware that this breaks backlight control on some Chromebooks,
>>>> this was already reported and I wrote a long reply explaining why
>>>> things are done the way they are done now and also suggesting
>>>> 2 possible (much simpler) fixes, see:
>>>> https://lore.kernel.org/linux-acpi/42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com/
>>>>
>>>> Unfortunately the reported has not followed-up on this and
>>>> I don't have the hardware to test this myself.
>>>>
>>>> Can you please try implementing 1 of the fixes suggested there
>>>> and then submit that upstream ?
>>>>
>>>> Regards,
>>>>
>>>> Hans
>>>>
>>>
>>> Hi Hans,
>>>
>>> Thanks for reviewing and letting me know the prior attempt.
>>>
>>> In this case, there is only a native backlight device and no vendor 
>>> backlight device so the duplication of backlight devices does not 
>>> happen. I think it is better to handle such a case without quirks.
>>
>> Adding a single heuristic for all chromebooks is something completely 
>> different
>> then adding per model quirks which indeed ideally should be avoided 
>> (but this
>> is not always possible).
>>
>>> I understand it is still questionable to cover the case by allowing 
>>> duplication when both of a vendor backlight device and native one. To 
>>> explain my understanding and reasoning for *not* trying to apply the 
>>> de-duplication rule to the vendor/native combination, let me first 
>>> describe that the de-duplication which happens in 
>>> acpi_video_get_backlight_type() is a heuristics and limited.
>>>
>>> As the background of acpi_video_get_backlight_type(), there is an 
>>> assumption that it should be common that both of the firmware, 
>>> implementing ACPI, and the kernel have code to drive backlight. In 
>>> the case, the more reliable one should be picked instead of using 
>>> both, and that is what the statements in `if (video_caps & 
>>> ACPI_VIDEO_BACKLIGHT)` does.
>>>
>>> However, the method has two limitations:
>>> 1. It does not cover the case where two backlight devices with the 
>>> same type exist.
>>
>> This only happens when there are 2 panels; or 2 gpus driving a single 
>> panel
>> which are both special cases where we actually want 2 backlight devices.
>>
>>> 2. The underlying assumption does not apply to vendor/native 
>>> combination.
>>>
>>> Regarding the second limitation, I don't even understand the 
>>> difference between vendor and native. My guess is that a vendor 
>>> backlight device uses vendor-specific ACPI interface, and a native 
>>> one directly uses hardware registers. If my guess is correct, the 
>>> difference between vendor and native does not imply that both of them 
>>> are likely to exist at the same time. As the conclusion, there is no 
>>> more motivation to try to de-duplicate the vendor/native combination 
>>> than to try to de-duplicate combination of devices with a single type.
>>>
>>> Of course, it is better if we could also avoid registering two 
>>> devices with one type for one physical device. Possibly we can do so 
>>> by providing a parameter to indicate that it is for the same 
>>> "internal" backlight to devm_backlight_device_register(), and let the 
>>> function check for the duplication. However, this rule may be too 
>>> restrict, or may have problems I missed.
>>>
>>> Based on the discussion above, we can deduce three possibilities:
>>> a. There is no reason to distinguish vendor and native in this case, 
>>> and we can stick to my current proposal.
>>> b. There is a valid reason to distinguish vendor and native, and we 
>>> can adopt the same strategy that already adopted for ACPI 
>>> video/vendor combination.
>>> c. We can implement de-duplication in devm_backlight_device_register().
>>> d. The other possible options are not worth, and we can just 
>>> implement quirks specific to Chromebook/coreboot.
>>>
>>> In case b, it should be noted that vendor and native backlight device 
>>> do not require ACPI video, and CONFIG_ACPI_VIDEO may not be enabled. 
>>> In the case, the de-duplication needs to be implemented in backlight 
>>> class device.
>>
>> I have been working on the ACPI/x86 backlight detection code since 
>> 2015, please trust
>> me when I say that allowing both vendor + native backlight devices at 
>> the same time
>> is a bad idea.
>>
>> I'm currently in direct contact with the ChromeOS team about fixing 
>> the Chromebook
>> backlight issue introduced in 6.1-rc1.
>>
>> If you wan to help, please read:
>>
>> https://lore.kernel.org/linux-acpi/42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com/
>>
>> And try implementing 1 if the 2 solutions suggested there.
>>
>> Regards,
>>
>> Hans
> 
> Hi,
> 
> I just wanted to confirm your intention that we should distinguish 
> vendor and native. In the case I think it is better to modify 
> __acpi_video_get_backlight_type() and add "native_available" check in 
> case of no ACPI video as already done for the ACPI video/native 
> combination.
> 
> Unfortunately this has one pitfall though: it does not work if 
> CONFIG_ACPI_VIDEO is disabled. If it is, acpi_video_get_backlight_type() 
> always return acpi_backlight_vendor, and 
> acpi_video_backlight_use_native() always returns true. It is not a 
> regression but the current behavior. Fixing it requires also refactoring 
> touching both of ACPI video and backlight class driver so I guess I'm 
> not an appropriate person to do that, and I should just add 
> "native_available" check to __acpi_video_get_backlight_type().
> 
> Does that sound good?

Well, it would not be that easy since just adding native_available 
cannot handle the case where the vendor driver gets registered first. 
Checking with "native_available" was possible for ACPI video/vendor 
combination because ACPI video registers its backlight after some delay. 
I still think it does not overcomplicate things to modify 
__acpi_video_get_backlight_type() so that it can use both of vendor and 
native as fallback while preventing duplicate registration.

Regards,
Akihiko Odaki

> 
> Regards,
> Akihiko Odaki
> 
>>  >
>>
>>>>> Akihiko Odaki (22):
>>>>>     drm/i915/opregion: Improve backlight request condition
>>>>>     ACPI: video: Introduce acpi_video_get_backlight_types()
>>>>>     LoongArch: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: nvidia-wmi-ec-backlight: Use
>>>>>       acpi_video_get_backlight_types()
>>>>>     platform/x86: panasonic-laptop: Use 
>>>>> acpi_video_get_backlight_types()
>>>>>     platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
>>>>>     platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
>>>>>     ACPI: video: Remove acpi_video_get_backlight_type()
>>>>>     ACPI: video: Fallback to native backlight
>>>>>
>>>>>    Documentation/gpu/todo.rst                    |  8 +--
>>>>>    drivers/acpi/acpi_video.c                     |  2 +-
>>>>>    drivers/acpi/video_detect.c                   | 54 
>>>>> ++++++++++---------
>>>>>    drivers/gpu/drm/i915/display/intel_opregion.c |  3 +-
>>>>>    drivers/platform/loongarch/loongson-laptop.c  |  4 +-
>>>>>    drivers/platform/x86/acer-wmi.c               |  2 +-
>>>>>    drivers/platform/x86/asus-laptop.c            |  2 +-
>>>>>    drivers/platform/x86/asus-wmi.c               |  4 +-
>>>>>    drivers/platform/x86/compal-laptop.c          |  2 +-
>>>>>    drivers/platform/x86/dell/dell-laptop.c       |  2 +-
>>>>>    drivers/platform/x86/eeepc-laptop.c           |  2 +-
>>>>>    drivers/platform/x86/fujitsu-laptop.c         |  4 +-
>>>>>    drivers/platform/x86/ideapad-laptop.c         |  2 +-
>>>>>    drivers/platform/x86/intel/oaktrail.c         |  2 +-
>>>>>    drivers/platform/x86/msi-laptop.c             |  2 +-
>>>>>    drivers/platform/x86/msi-wmi.c                |  2 +-
>>>>>    .../platform/x86/nvidia-wmi-ec-backlight.c    |  2 +-
>>>>>    drivers/platform/x86/panasonic-laptop.c       |  2 +-
>>>>>    drivers/platform/x86/samsung-laptop.c         |  2 +-
>>>>>    drivers/platform/x86/sony-laptop.c            |  2 +-
>>>>>    drivers/platform/x86/thinkpad_acpi.c          |  4 +-
>>>>>    drivers/platform/x86/toshiba_acpi.c           |  2 +-
>>>>>    drivers/video/backlight/backlight.c           | 18 +++++++
>>>>>    include/acpi/video.h                          | 21 ++++----
>>>>>    include/linux/backlight.h                     |  1 +
>>>>>    25 files changed, 85 insertions(+), 66 deletions(-)
>>>>>
>>>>
>>>
>>
