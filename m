Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CD560C239
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 05:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123AA10E08E;
	Tue, 25 Oct 2022 03:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC50710E08E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 03:23:49 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id c24so10115894pls.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 20:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=f9FEmbC5xpjHJg/2O8DNlMMB4H4G84Faq1RNdC5/70Y=;
 b=J6AoKAQCxSkBd/sowbwPCi6ub1mPxV0qlHWX0WF7X3NIlYQn4YHES82Srn6p4epgIr
 I/r34Cbt1RAn8twGDRZkfGNfzOPw/CE/lQ3d8KKm/xk0O0byOMZgfEBxXin8xMsH6Ae4
 OYdMDc09gEwKmklQ38eKDQ1EP/Ifp9975kI3vOWpMT2+B7APWMDg1HWdHh6RDm2IhmZp
 nFlQWBQ5LXCjatGUOm0Nssz0irDhTOK5bRfoLWDBGVjr3x7Zn+3TjCCDg34vvNahoMXf
 /GTBMcEoPm5pkxKRsBe/cZklokeE7OuhvhWmNxe9o2BV3Dg9u2aHkD+tP04uQVNOH6VR
 XDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=f9FEmbC5xpjHJg/2O8DNlMMB4H4G84Faq1RNdC5/70Y=;
 b=TxY8g5B6MMq/lWuoCEWDa9VrxxNmBzkmjHQKUbWfZzpuwl5UYKDcslqh9S3KQ3WO41
 ekeo9V+fJv/qTxBmO6uBmalVRtaHsK9XUwElmcQNG2vyD6E4loVP9O+cqEkz8tGFiEXe
 DL3/skLgoJu/+EHJWTTgewMYZHKHkhmuXhsLT1+sdnODBr3IjgrBrGfCIvPwWcCXpLVN
 BMN4/nE2eZaPefQ054EFPXP+2s5+/2QApmwQRo4UShYVgttVg9gptwjFKuyGZ6DirPes
 C+QZtjpoqHS8RHSwL/URgVmFPxCqR8hMxCJtrR6Aes7AsNf4iEnygKtWw+3fX4g8UWiW
 Anig==
X-Gm-Message-State: ACrzQf2vbBWM3IqRSYsrMSytBjt7WJrgtrBQTBh9jix96LrUjCsqdhuF
 1RzuQOopEX+LQGO6I1Ql7rFWKw==
X-Google-Smtp-Source: AMsMyM6T9pbgn5kWI4AmOtmghV7rd1u8oseHmlwr+2DnuT3VwNTxi88zyEHreGyjv+o07wkD42j/iQ==
X-Received: by 2002:a17:90b:4a47:b0:212:f7ef:1bd6 with SMTP id
 lb7-20020a17090b4a4700b00212f7ef1bd6mr13717346pjb.79.1666668229127; 
 Mon, 24 Oct 2022 20:23:49 -0700 (PDT)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 n16-20020a170903111000b001868d4600b8sm397270plh.158.2022.10.24.20.23.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 20:23:48 -0700 (PDT)
Message-ID: <8ed65e3e-e0b9-05ae-b113-db9d649a1e5a@daynix.com>
Date: Tue, 25 Oct 2022 12:23:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
 <60672af8-05d2-113c-12b9-d635608be0dd@redhat.com>
 <ea69242c-0bc8-c7bb-9602-c7489bb69684@daynix.com>
 <7373e258-f7cc-4416-9b1c-c8c9dab59ada@daynix.com>
 <ae3497ed-b68d-c36a-6b6f-f7b9771d9238@redhat.com>
 <78ad5d7b-4078-0b8e-f4aa-6c8113631359@daynix.com> <87o7u1drcz.fsf@intel.com>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <87o7u1drcz.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 2022/10/25 3:11, Jani Nikula wrote:
> On Tue, 25 Oct 2022, Akihiko Odaki <akihiko.odaki@daynix.com> wrote:
>> That aside, the first patch in this series can be applied without the
>> later patches so you may have a look at it. It's fine if you don't merge
>> it though since it does not fix really a pragmatic bug as its message says.
> 
> I think it's problematic because it needlessly ties i915 backlight
> operation to existence of backlight devices that may not be related to
> Intel GPU at all. The direction should be multiple supported backlight
> devices, across GPUs and connectors, but only one per display.
> 
> BR,
> Jani.
> 
> 

Unfortunately it is the current situation (even without this patch), and 
this patch is not meant to fix the particular issue.

This patch replaces the following expression:
acpi_video_get_backlight_type() == acpi_backlight_native

As you can see, acpi_video_get_backlight_type() doesn't take a parameter 
which represents the backlight currently being operated. The problem is 
known and documented in "Brightness handling on devices with multiple 
internal panels" section of Documentation/gpu/todo.rst.

The exiting solution is based on the assumption that no device with i915 
and multiple internal backlights.

Regards,
Akihiko Odaki
