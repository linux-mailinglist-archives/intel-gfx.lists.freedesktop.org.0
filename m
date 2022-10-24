Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FBF60A9D4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C1910E703;
	Mon, 24 Oct 2022 13:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2B610E701
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 13:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666617843;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=;
 b=QvuTAiZVFixqbJ9gwNFoP9sAfSIoneqpSNpmGv1Ar7w/4k9V/iG9AhwdmW/veoq8LBlRSJ
 9nwhfeKT+/mVnIsNARZvjjIGGizZ0fLDLtiD37Fhg+OYHmubCfHbsw+VxidcbjGnt6ixRz
 k7bbQmi4o2ZGATU+HqlCO94nHsVmVjI=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-554-eCLbnAFOOtKL_KzTJJR2CA-1; Mon, 24 Oct 2022 09:24:01 -0400
X-MC-Unique: eCLbnAFOOtKL_KzTJJR2CA-1
Received: by mail-lf1-f72.google.com with SMTP id
 13-20020ac2484d000000b004a22f42201eso2715446lfy.17
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 06:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=;
 b=zHuAZT5DJLEN2tzLy0ynG8tSJcBjAlYnV+Ze98/KSWz3Jpo/MmK5sUABCTpuKQDWV9
 tWQWNDnRLBC8DyGmhYIZUNemkrIAFx/PxarkN1mvuOedV0M+5inVTxiR7WLTflE6cO9W
 fH8TBQuS6/KqnbtC7fO5JHKGny9gCNUMfUXvmSWNksAB+x6ghVnsTblDgwZVZ4CzXRAw
 +ZerRRMAgEKm3R2L2SDRja2aDxlgvA3ugknyZW8SwumPld5Yy1ZJwvGD7BILcE3XiutN
 3Csnqwc0PxDs0/jljUz/uXKO6GEM382PfXs39aWp/30ZwL5HScZSA3+0sAOELcv53uxH
 JV3w==
X-Gm-Message-State: ACrzQf2cBx4tFJ9DSrfxDFWHp+OwZHRyWYzNtbSjpTKpW5VM1qEEMy31
 RpSFrdwIqKOLunNEZBmIxX51QGW8bcmG1qYGKHXlGlyQuqr764zst/97Q5kwzLNIMlQLnkD+anQ
 krPhU6gBhY36031r/nAf81o6wFmDu
X-Received: by 2002:a2e:7314:0:b0:26e:be8:7f6 with SMTP id
 o20-20020a2e7314000000b0026e0be807f6mr11643889ljc.176.1666617839177; 
 Mon, 24 Oct 2022 06:23:59 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6nRpfOUd7fXfaQxZAoL/YNjVZG4I1hOQtgleKwhNKXvtlVx02RUh+6naoowPVHW1NVhRqxQg==
X-Received: by 2002:a17:906:8a6a:b0:79e:2efe:e0 with SMTP id
 hy10-20020a1709068a6a00b0079e2efe00e0mr12680099ejc.401.1666617828842; 
 Mon, 24 Oct 2022 06:23:48 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 b27-20020a17090630db00b0073dbaeb50f6sm15619252ejb.169.2022.10.24.06.23.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 06:23:48 -0700 (PDT)
Message-ID: <84d86b61-7694-2e22-3593-b11b3ce33cf8@redhat.com>
Date: Mon, 24 Oct 2022 15:23:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
 <20221024131451.lvkesdg3kvyvbi7n@pali>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221024131451.lvkesdg3kvyvbi7n@pali>
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
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/24/22 15:14, Pali Rohár wrote:
> On Monday 24 October 2022 21:58:57 Akihiko Odaki wrote:
>> Regarding the second limitation, I don't even understand the difference
>> between vendor and native. My guess is that a vendor backlight device uses
>> vendor-specific ACPI interface, and a native one directly uses hardware
>> registers. If my guess is correct, the difference between vendor and native
>> does not imply that both of them are likely to exist at the same time. As
>> the conclusion, there is no more motivation to try to de-duplicate the
>> vendor/native combination than to try to de-duplicate combination of devices
>> with a single type.
> 
> Hello! I just want to point one thing. On some Dell laptops there are
> 3 different ways (= 3 different APIs) how to control display backlight.
> There is ACPI driver (uses ACPI), GPU/DRM driver (i915.ko; uses directly
> HW) and platform vendor driver (dell-laptop.ko; uses vendor BIOS or
> firmware API).

Right and that is just one example of laptops which can register both
vendor + native backlight devices, which is why this whole series is
a bad idea.

Regards,

Hans



> Just every driver has different pre-calculated scaling
> values. So sometimes user wants to choose different driver just because
> it allows to set backlight level with "better" granularity. Registering
> all 3 device drivers is bad as user does not want to see 3 display
> panels and forcing registration of specific one without runtime option
> is also bad (some of those drivers do not have to be suitable or has
> worse granularity as other).

