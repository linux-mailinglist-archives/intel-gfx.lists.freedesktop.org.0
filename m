Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8731F0DA3
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 20:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370D76E169;
	Sun,  7 Jun 2020 18:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BBE6E172
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591553752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9tV0sc3/5YMNSjozidZETTw4qiF+7h3IC9IbudBHo9g=;
 b=GuIVzGlVKzTKlkQUi+fVHDt03j6WjoxXHxeUAFiHmw0FeIn8vlDX9r97UZ8JZustuOACpi
 COUnv7VGPPoemSFrSbtBLTnZTZPj4+FnlbxDazH8EdW/lxJZZOM9FGklpY3DcCzhhVNtfj
 LEgI14F+EBhN3RQFVrWL/UNh+vx1sAg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-HqErgbDgOI-o8qi4ZWrhQw-1; Sun, 07 Jun 2020 14:15:48 -0400
X-MC-Unique: HqErgbDgOI-o8qi4ZWrhQw-1
Received: by mail-wm1-f71.google.com with SMTP id h6so3442872wmb.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jun 2020 11:15:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9tV0sc3/5YMNSjozidZETTw4qiF+7h3IC9IbudBHo9g=;
 b=rXmCfjbTLDUHuyEjUWGWS4pZG0zPrX0FmeeYSg3ui2ZNLz/5k90Z3sVu0C2jB+Z3I9
 ZE6bBUlYwAmyMGYJWEwCGL0/jgg3rSyNefu8/qnk7BdvEQ2z4kk9kP6KOvKXXf8pmX7z
 Ul1z2NZaGGbYyWkINXFlzjibNYOYuFOjlpVFuzWXCUMx0YWX2i8sQrjPqjnHNA1ZsZbc
 X4UtTFAthbCu8ODaKzQ/Yxyn7zEsLmiqDHeAPU/YlGPXHittkx41SoNoPgzWZlLeVyic
 ceb+Mb3WpA7ShodhigmOcSHalN3JPDzaOzehwDsx1x1WwKws6X7w2zcocuV2v2luJ9Uh
 J7RQ==
X-Gm-Message-State: AOAM530uHXhbomYLr/DRPngXxepWBFKMyAdXmcecUjsuwre3Noz0B5U9
 /2ctX+rkYpyQGNDn5oo6IM3GCzSliYcFxxzHc1oBZpcK8gsCqlecGf4Dq8s5qS83ziKl6fPZVYQ
 E1iru4ZeDMNRwMLtmBe7lHBu+HyP3
X-Received: by 2002:a5d:66c3:: with SMTP id k3mr19583038wrw.401.1591553747559; 
 Sun, 07 Jun 2020 11:15:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtMJG8U/xRqsGWMK/X6uJ6kAHwVq+/SqfPqHWjteOKKkHd9bjINVe1zY0JZ46Ljwl1tR73lA==
X-Received: by 2002:a5d:66c3:: with SMTP id k3mr19583025wrw.401.1591553747365; 
 Sun, 07 Jun 2020 11:15:47 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id z132sm21677650wmc.29.2020.06.07.11.15.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 11:15:46 -0700 (PDT)
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
References: <20200606202601.48410-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <606dd687-f560-3798-afec-fbab8418d212@redhat.com>
Date: Sun, 7 Jun 2020 20:15:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200606202601.48410-1-hdegoede@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] pwm/i915: Convert pwm-crc and i915 driver's PWM
 code to use the atomic PWM API
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
Cc: linux-pwm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

I forgot the [PATCH 0/16] part of the subject here and I accidentally
left a patch adding some debugging printk-s in the series. I will
send out a v2 addressing this.

Regards,

Hans

On 6/6/20 10:25 PM, Hans de Goede wrote:
> Hi All,
> 
> This patch series converts the i915 driver's cpde for controlling the
> panel's backlight with an external PWM controller to use the atomic PWM API.
> 
> Initially the plan was for this series to consist of 2 parts:
> 1. convert the pwm-crc driver to support the atomic PWM API and
> 2. convert the i915 driver's PWM code to use the atomic PWM API.
> 
> But during testing I've found a number of bugs in the pwm-lpss and I
> found that the acpi_lpss code needs some special handling because of
> some ugliness found in most Cherry Trail DSDTs.
> 
> So now this series has grown somewhat large and consists of 4 parts:
> 
> 1. acpi_lpss fixes workarounds for Cherry Trail DSTD nastiness
> 2. various fixes to the pwm-lpss driver
> 3. convert the pwm-crc driver to support the atomic PWM API and
> 4. convert the i915 driver's PWM code to use the atomic PWM API
> 
> So we need to discuss how to merge this (once it passes review).
> Although the inter-dependencies are only runtime I still think we should
> make sure that 1-3 are in the drm-intel-next-queued (dinq) tree before
> merging the i915 changes. Both to make sure that the intel-gfx CI system
> does not become unhappy and for bisecting reasons.
> 
> The involved acpi_lpss and pwm drivers do not see a whole lot of churn,
> so we could just merge everything through dinq, or we could use immutable
> branch and merge those into dinq.
> 
> So Rafael and Thierry, can I either get your Acked-by for directly merging
> this into dinq, or can you provide an immutable branch with these patches?
> 
> This series has been tested (and re-tested after adding various bug-fixes)
> extensively. It has been tested on the following devices:
> 
> -Asus T100TA		BYT + CRC-PMIC PWM
> -Toshiba WT8-A		BYT + CRC-PMIC PWM
> -Thundersoft TS178	BYT + CRC-PMIC PWM, inverse PWM
> -Asus T100HA		CHT + CRC-PMIC PWM
> -Terra Pad 1061		BYT + LPSS PWM
> -Trekstor Twin 10.1	BYT + LPSS PWM
> -Asus T101HA		CHT + CRC-PMIC PWM
> -GPD Pocket		CHT + CRC-PMIC PWM
> 
> Regards,
> 
> Hans
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
