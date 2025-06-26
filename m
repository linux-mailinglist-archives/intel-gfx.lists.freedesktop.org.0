Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C4CAEA1A5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 17:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1F110E8D0;
	Thu, 26 Jun 2025 14:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B77810E8D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 14:59:56 +0000 (UTC)
Received: by mail-ua1-f52.google.com with SMTP id
 a1e0cc1a2514c-87f25076697so313018241.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 07:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750949994; x=1751554794;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r88EEJAotUoVpruAcVJoQDPPsGCVaFlUVSarfnMZBus=;
 b=mP+mEmoiQLaC1OoyrieBM6lD5ROPpfoFVsNTFFVtQycWDQlcWcfjObrYNvv0uADGiF
 NBXym13nLHD/3l1p1Fwpu7ZakZu+VvnNenHs6a+ujtiTvy518iV9zDXLdupV/1wt1z9b
 b7ZT8LhCyj4qOYN/u4cQY76REMzrw6ctMyaKKQhSqzmN6tZKfhVsxV4gvjpYMtnKqm45
 /Q+d05ZSIryeWjmIGAtW+fJjED9Q6f6bzkbhMbrZlL6j0uAUgBQuAOMGWL+SQf/UqTrq
 jiqo7b4Ok46iUm1FymxlH/eN4anpdFGovtcJjO+kkyzCSqZozmA5Z6CmBtuh/XmaoIeo
 6YRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+LxuPRIpvJtBAcDCmmdntgGJb4NUo8rTU/7HIIAHtA6TR4Q81c7amFV0hSRsull5mwjF1i3EiyvQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxrFU9gbbrnMPCYSPirnu9CbUBiJ3A+Zkrsg8zcnvQh95gjrloG
 BaIPRHT/cSVb6shpqenv1NQBaYPs+x2qIHak8tt+isCnvVRuR8uhcy27qJmOxukJf90=
X-Gm-Gg: ASbGncsPgHAhve2PZnuEhX6U5L7MSnMKVCx3lCd2aj1uHiuzsd5f0KSmqQUCPL+Q7w9
 eYKy1Rzis6/GRTm98Qy2fXTQ7SjUbC5JVwhTQGWDIM1JihXR7pNq2hHtYimlUCSIIayjhfMtF+U
 Y15UST8yeJsqHRfAQ55oli6zFRXtEFRlUZ368E7Eawg3p5xZAu6qyt7Tnvd5yyJo+TATvNd8VcU
 Tm8BYdhBZVM3P5b4H1TrBap6Ks5b9YpxLWohRCkkiERewO4yIo6XyYnJf5JikOmTqB0lILCMFl4
 qtt443BpWnFkAF05tIB+ykw99JkL5E14HigopoSoU2exCE5LbnTpHwCCE1r607hOP69wYVOsdPz
 m6256lYSlx3kPZvnAjZFJeFMNzyL7
X-Google-Smtp-Source: AGHT+IGvmHvj34jn1x1NRWLdiS/COglBLmveXFfMmzV8PM9Kx49ZTZwKDlln57mUv7bY1loPKq+Rug==
X-Received: by 2002:a05:6122:80ac:b0:530:7bd4:1761 with SMTP id
 71dfb90a1353d-532ef4e31d3mr5543704e0c.11.1750949994323; 
 Thu, 26 Jun 2025 07:59:54 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com.
 [209.85.221.171]) by smtp.gmail.com with ESMTPSA id
 71dfb90a1353d-533092159c5sm15626e0c.45.2025.06.26.07.59.53
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Jun 2025 07:59:54 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id
 71dfb90a1353d-532d498eb95so344985e0c.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 07:59:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVfVKvAW91TwY6Aimstgcayn3LksEi/cgHBMctezm3QDkFHdx8nvxeTISpoX3p1jOk2YxbYDKoSBf0=@lists.freedesktop.org
X-Received: by 2002:a05:6122:3985:b0:531:2afc:461b with SMTP id
 71dfb90a1353d-532ef3b9108mr6081914e0c.4.1750949993756; Thu, 26 Jun 2025
 07:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <20250626145119.2048423-1-jani.nikula@intel.com>
In-Reply-To: <20250626145119.2048423-1-jani.nikula@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Jun 2025 16:59:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+tgMqHcU8Fwr_XVE9RfNEGHnbEYHQ1DraE=YRvQxJuw@mail.gmail.com>
X-Gm-Features: Ac12FXx-6bz0nK_P8UsF2VW3B2ShhCuX5ocsE3wCLtJQXSrU2FWYjeTIxhmMFs0
Message-ID: <CAMuHMdU+tgMqHcU8Fwr_XVE9RfNEGHnbEYHQ1DraE=YRvQxJuw@mail.gmail.com>
Subject: Re: [PATCH] iopoll: use fsleep() instead of usleep_range()
To: Jani Nikula <jani.nikula@intel.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
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

Hi Jani,

Thanks for your patch!

On Thu, 26 Jun 2025 at 16:51, Jani Nikula <jani.nikula@intel.com> wrote:
> Sometimes it's necessary to poll with long sleeps, and the accuracy of
> usleep_range() is overkill. Use the flexible sleep helper fsleep() for
> sleeping in the read_poll_timeout() family of macros to automatically
> choose the appropriate method of waiting.
>
> Functionally there are a few consequences for existing users:
>
> - 10 us and shorter sleeps will use usleep() instead of

s/usleep/udelay/.

>   usleep_range(). Presumably this will not be an issue.

Note that udelay() does not sleep, but loops.

>
> - When it leads to a slack of less than 25%, msleep() will be used
>   instead of usleep_range(). Presumably this will not be an issue, given
>   the sleeps will be longer in this case.
>
> - Otherwise, the usleep_range() slack gets switched from the begin of
>   the range to the end of the range, i.e. [sleep/2+1..sleep] ->
>   [sleep..sleep+sleep/2]. In theory, this could be an issue in some
>   cases, but difficult to determine before this hits the real world.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

> Not really sure who to Cc, given MAINTAINERS doesn't match this. Adding
> some past committers.

Oh well ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
