Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 036D52352C2
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Aug 2020 16:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577866EB90;
	Sat,  1 Aug 2020 14:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437F66EB92
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Aug 2020 14:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596292702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rPMJouJ664IpIpYWMWyBiWUEHfHruXWhEFW6i4OWc6U=;
 b=FeJ3Xm2gkjHQYWHqkYt1paF+/2NAQZI8ekmuMWZdhsi1odwET8gxDphM9xx1mjleN3ta0j
 sLdUt0RTtxo2JRYzVXLLv3dXGDWos7+mYsjcGCL2EXsOkyw76fa6bqreK6Pk3zNhGHwV0U
 K4f8iLDXCXwpAkp9uDtzmSYncBeJwbw=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-AhDboYtRMaO5bvUUnYUVJQ-1; Sat, 01 Aug 2020 10:38:20 -0400
X-MC-Unique: AhDboYtRMaO5bvUUnYUVJQ-1
Received: by mail-ej1-f72.google.com with SMTP id q9so12327895ejr.21
 for <intel-gfx@lists.freedesktop.org>; Sat, 01 Aug 2020 07:38:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rPMJouJ664IpIpYWMWyBiWUEHfHruXWhEFW6i4OWc6U=;
 b=sihfDqOimdy3AfsbwS+BAOzmIH22gphwl9qrl5RJ2KiMfqdXtyIBMHgEFqMAfZRlge
 WVpk4k3lQ8zFKOg2jW79qw6FPwVTK6r0ZdHmOSvqsma0BZQPmoWNAgbcWCssvB8BHM1y
 o1NLVML9/AonwAfNxoQeomHuqkgaTcQMOh6RNotUPFKQYC9jCm3ApNFlUYGh1dpRcoBD
 NlwYjjhjBVzoHgVuAxZEipRXUI8JaPDKcoiNPWh8JCX5tNnML2FGclIM2B0/7ks6C5rj
 b3hnFdlD/VCtx6ywl0+IpkAfYtCk7vu1RC28DBfIh/Fjx2DyODdS2jNMT9D2WM2il4M9
 CudA==
X-Gm-Message-State: AOAM530yTymwcO/wRpTAb7ayVVPde74S1T1S3X9f75pvTBtFNGdVQ6hA
 Yz+MHUFh4rhwXjhb7SPUzDW6UgTFjMj7TA3ei4BpWAzX+YqDDtpwu0aP64AxXsvFH8VN66FwfHC
 lelVx6gkH1oZg3JcjIPJoKiyduQ5J
X-Received: by 2002:a17:906:25c4:: with SMTP id n4mr8776588ejb.3.1596292699670; 
 Sat, 01 Aug 2020 07:38:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjPcX/bFiAUHtXwuAaF05a6ZsFXjiF7gt7+jMKXpyprGcBXZ8zklO4Fxg9U+zmr2eCv0rfuA==
X-Received: by 2002:a17:906:25c4:: with SMTP id n4mr8776564ejb.3.1596292699441; 
 Sat, 01 Aug 2020 07:38:19 -0700 (PDT)
Received: from x1.localdomain ([109.38.137.213])
 by smtp.gmail.com with ESMTPSA id o9sm11813057edz.81.2020.08.01.07.38.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 01 Aug 2020 07:38:18 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200729105436.GT3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e8f93474-1775-b20c-f9f2-e33592a02028@redhat.com>
Date: Sat, 1 Aug 2020 16:38:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200729105436.GT3703480@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v5 00/16] acpi/pwm/i915: Convert pwm-crc and
 i915 driver's PWM code to use the atomic PWM API
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/29/20 12:54 PM, Andy Shevchenko wrote:
> On Fri, Jul 17, 2020 at 03:37:37PM +0200, Hans de Goede wrote:
>> Hi All,
>>
>> Here is v5 of my patch series converting the i915 driver's code for
>> controlling the panel's backlight with an external PWM controller to
>> use the atomic PWM API. See below for the changelog.
>>
>> This series consists of 4 parts:
>>
>> 1. acpi_lpss fixes workarounds for Cherry Trail DSTD nastiness
>> 2. various fixes to the pwm-lpss driver
>> 3. convert the pwm-crc driver to support the atomic PWM API and
>> 4. convert the i915 driver's PWM code to use the atomic PWM API
>>
>> The involved acpi_lpss and pwm drivers do not see a whole lot of churn,
>> so the plan is to merge this all through drm-intel-next-queued (dinq)
>> once all the patches are reviewed / have acks.
>>
>> Specifically patches 5-9, 11 still need an Acked- / Reviewed-by
>>
>> Andy, can you please take a look at the unreviewed patches? Specifically
>> patches 5-6 should address your review remarks from v4 of this set
>> and I've addressed your review remarks on patches 7-9 in v3 already.
>> A review of patch 11 would also be welcome
> 
> Done. Sorry for a delay.
> 
> One comment to consider, though. There are three channels in that PWM AFAIU.
> One of them is backlight control, another one can be attached to haptics. The
> concern is how this series may (or may not?) affect haptics behaviour.

When you say "in that PWM" do you mean the LPSS one or the CRC one ?

The LPSS patches are all fixes, they don't change behavior, so those
should be fine for the haptics.

The CRC PWM driver patches do make it honor the requested output frequency,
where before, because of a bug, it would stick with the out frequency
setup by the firmware (or the power-on-reset value if no value is set
by the firmware). This fix causing this is very clearly correct, but
it could have unexpected side-effects.

However I guess that you are talking about the LPSS PWM controllers
and there I expect no impact on haptic or other non backlight users
from these changes.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
