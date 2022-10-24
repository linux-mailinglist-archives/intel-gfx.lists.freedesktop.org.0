Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C4F60A3C4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 14:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0904A10E3E8;
	Mon, 24 Oct 2022 12:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A544B10E3E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 12:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666612818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=;
 b=eJr1Snv2+aJ/wul1E8s7+l6A39VGMUiV5KaN/gBOVo+n4K2mTHAHAizV13ZLnx5aTn1V7F
 1hz4sW6ZYP2Zq2w7CiEs/OPDT+AXB2E2GtLGIoJbxwPm+SsGtKBElZlPCwETGEAR/uFrOK
 oq8eFwvOuY/p2yD8iUtjcWZ09ANd2Eg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-81-0_WGK7TmMEqQ1tHSTP5MMA-1; Mon, 24 Oct 2022 08:00:18 -0400
X-MC-Unique: 0_WGK7TmMEqQ1tHSTP5MMA-1
Received: by mail-ed1-f72.google.com with SMTP id
 c9-20020a05640227c900b0045d4a88c750so9322662ede.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 05:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=;
 b=3jrfk2axTShR8LNFFmuFPCEvmqo2UP6c9lZ/cxMz/7W8jrQFXQRCNNdwGataqYL/lL
 yMgSJ5INA1YpUSJNUu1wTny27ZLpPpepG8ph4BpvRllvyjvBx/nJHblKYh4Mz5/zFLIB
 X4okg0ZRPSg7YEcakYi6NoLt/OS8TsJaHo6XFO46+VhSUNXvNZTxPNkOpqC4w2NEX/52
 JzvDlGRDXduuyRQXLumTsw+fMPUeaav+HMFjZIsAxFJUt5TZoVIaHjc/B4KnNrBnoEpb
 HFSvPS5rd74jIH0+Vf/FwVbozWup/O1gSYQp3X5NNrqfgQbCOyxAAJc54S5ZNBt/nBhv
 fO6Q==
X-Gm-Message-State: ACrzQf1wtZf8i2zP3kLVewQO2cZZRCWPFwhYsI9cffVm5++cXjwCYlSg
 YAQxjbJUrfJehQ63gPOTkB0DJ8GQEXvsd0YDWUr+Z5bNr8IrZy/MpV2E/eNs+26D4yPuuLH6fU9
 DLtyjucRbqXBsDBtcigRw9sXb+kDW
X-Received: by 2002:a17:906:3852:b0:78d:b3d2:97a9 with SMTP id
 w18-20020a170906385200b0078db3d297a9mr26035924ejc.565.1666612816668; 
 Mon, 24 Oct 2022 05:00:16 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4tdZDsl2pNG3Zoy+jU7SoBTHTkz51iCC/iggC9kztg6HWE+mkD8tnuNENa1Jj/GJlMZnu9qg==
X-Received: by 2002:a17:907:6e24:b0:791:905f:7881 with SMTP id
 sd36-20020a1709076e2400b00791905f7881mr27267484ejc.120.1666612806299; 
 Mon, 24 Oct 2022 05:00:06 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 u20-20020a17090626d400b0078907275a44sm15446126ejc.42.2022.10.24.05.00.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 05:00:05 -0700 (PDT)
Message-ID: <bec2bb19-392d-0a69-f8f7-66bb1f8d9495@redhat.com>
Date: Mon, 24 Oct 2022 14:00:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Akihiko Odaki <akihiko.odaki@daynix.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <87tu3te92n.fsf@intel.com> <18478739-625b-0c16-cd5a-e05c5372a74a@daynix.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <18478739-625b-0c16-cd5a-e05c5372a74a@daynix.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
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

Hi,

On 10/24/22 13:56, Akihiko Odaki wrote:
> On 2022/10/24 20:48, Jani Nikula wrote:
>> On Mon, 24 Oct 2022, Akihiko Odaki <akihiko.odaki@daynix.com> wrote:
>>> Commit 2600bfa3df99 ("ACPI: video: Add acpi_video_backlight_use_native()
>>> helper") and following commits made native backlight unavailable if
>>> CONFIG_ACPI_VIDEO is set and the backlight feature of ACPI video is
>>> unavailable, which broke the backlight functionality on Lenovo ThinkPad
>>> C13 Yoga Chromebook. Allow to fall back to native backlight in such
>>> cases.
>>
>> Where's the bug report with relevant logs, kconfigs, etc?
> 
> I haven't filed one. Should I? Please tell me where to report and what information you would need (to bugzilla.kernel.org with things mentioned in Documentation/admin-guide/reporting-issues.rst?)

As mentioned in my other email this is a known issue, and your effort
to fix this is appreciated very much, but I don't believe your solution
to be the right one.

See: https://lore.kernel.org/linux-acpi/42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com/
for more details and possible solutions. Please try implementing one of
those solutions for your Chromebook. I unfortunately do not have hw to
test this myself.

Regards,

Hans



> 
> Regards,
> Akihiko Odaki
> 
>>
>> BR,
>> Jani.
>>
>>>
>>> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
>>>
>>> Akihiko Odaki (22):
>>>    drm/i915/opregion: Improve backlight request condition
>>>    ACPI: video: Introduce acpi_video_get_backlight_types()
>>>    LoongArch: Use acpi_video_get_backlight_types()
>>>    platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
>>>    platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
>>>    platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
>>>    platform/x86: nvidia-wmi-ec-backlight: Use
>>>      acpi_video_get_backlight_types()
>>>    platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
>>>    platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
>>>    platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
>>>    platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
>>>    ACPI: video: Remove acpi_video_get_backlight_type()
>>>    ACPI: video: Fallback to native backlight
>>>
>>>   Documentation/gpu/todo.rst                    |  8 +--
>>>   drivers/acpi/acpi_video.c                     |  2 +-
>>>   drivers/acpi/video_detect.c                   | 54 ++++++++++---------
>>>   drivers/gpu/drm/i915/display/intel_opregion.c |  3 +-
>>>   drivers/platform/loongarch/loongson-laptop.c  |  4 +-
>>>   drivers/platform/x86/acer-wmi.c               |  2 +-
>>>   drivers/platform/x86/asus-laptop.c            |  2 +-
>>>   drivers/platform/x86/asus-wmi.c               |  4 +-
>>>   drivers/platform/x86/compal-laptop.c          |  2 +-
>>>   drivers/platform/x86/dell/dell-laptop.c       |  2 +-
>>>   drivers/platform/x86/eeepc-laptop.c           |  2 +-
>>>   drivers/platform/x86/fujitsu-laptop.c         |  4 +-
>>>   drivers/platform/x86/ideapad-laptop.c         |  2 +-
>>>   drivers/platform/x86/intel/oaktrail.c         |  2 +-
>>>   drivers/platform/x86/msi-laptop.c             |  2 +-
>>>   drivers/platform/x86/msi-wmi.c                |  2 +-
>>>   .../platform/x86/nvidia-wmi-ec-backlight.c    |  2 +-
>>>   drivers/platform/x86/panasonic-laptop.c       |  2 +-
>>>   drivers/platform/x86/samsung-laptop.c         |  2 +-
>>>   drivers/platform/x86/sony-laptop.c            |  2 +-
>>>   drivers/platform/x86/thinkpad_acpi.c          |  4 +-
>>>   drivers/platform/x86/toshiba_acpi.c           |  2 +-
>>>   drivers/video/backlight/backlight.c           | 18 +++++++
>>>   include/acpi/video.h                          | 21 ++++----
>>>   include/linux/backlight.h                     |  1 +
>>>   25 files changed, 85 insertions(+), 66 deletions(-)
>>
> 

