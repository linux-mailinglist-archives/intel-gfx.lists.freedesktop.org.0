Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1431925BFEE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044E86E1D2;
	Thu,  3 Sep 2020 11:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3381C6E1BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 11:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599131558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=efREBgpIuAxc+bnBJ5R3S/pFsZS/Ey21En4F0jCEO9A=;
 b=amK9U2EPOmKWszV5JlhjqcikvtYYztT+vE283iaLSpxyVsCWdq/CTOwmlot/RUXOnPkpPX
 kEpLO+5dBaoKiTzN9xgKFVdfu30xDvN/Dp9zHZxR5oYvApcWH4mD8+aiw3NuvRUBjoixQJ
 mwGw8/IDCeg4ZzHZU6nk45OICzGr+yM=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-TUeN7Xx7Nx-51g88hSYHtA-1; Thu, 03 Sep 2020 07:12:34 -0400
X-MC-Unique: TUeN7Xx7Nx-51g88hSYHtA-1
Received: by mail-ej1-f70.google.com with SMTP id i21so1088032ejj.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Sep 2020 04:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=efREBgpIuAxc+bnBJ5R3S/pFsZS/Ey21En4F0jCEO9A=;
 b=qxAPRVPPyuS2GJYalxfoVVB2OUpxGgSVUj5TZs5dEhPel3GLwMaId+h+Xhjy2FcJfU
 nxb/iecbHuu5mDb+4/52lhO+8xUOThOYvjb//pBwboN2wHU5oidNGiXsZRsgc/xeT6TP
 U5H5Mi7hYo0CxWhn11jUs1kLhao14EaXzTCWL5wlLyqmlJUnt3ibB4VSzkoShLLI48Yh
 MGuqE4SOLaYTEPv2pAS8iDucNG2B4VfdqgRZB9eH3OaHWC9Pp3CCqn3ORp6n/SD3JLDJ
 L4BZhueGpFKFiWT3QIstAZc7ycEFtI3w3fJkCMJw26u3H5RcETurz4gLpEG4XRY1RLjK
 0xNg==
X-Gm-Message-State: AOAM531JXOs1ANLrOXHAhV66uTpgK8nmjc8nypa/NVR/0iY/kOHHTXPR
 qSHmbUjPWGmxwpH4XjH2dAifQh7A10XSmCgi15teFf1CWIBr5OxG6ICLqPLCYQjYqcTwLTYoV5+
 Cihj54HD/eh/BvALoGbNH7crSFJ71
X-Received: by 2002:a17:906:c7da:: with SMTP id
 dc26mr1490805ejb.491.1599131553463; 
 Thu, 03 Sep 2020 04:12:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwz45IHe95vEABByf1/DSG38NFHvqU3XHec96U37Ufe0eGhD/vOjFiqWQ2lkLsAJDGyIGIi4Q==
X-Received: by 2002:a17:906:c7da:: with SMTP id
 dc26mr1490775ejb.491.1599131553140; 
 Thu, 03 Sep 2020 04:12:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id r16sm2909233ejb.110.2020.09.03.04.12.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Sep 2020 04:12:32 -0700 (PDT)
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200903105114.9969-1-hdegoede@redhat.com>
 <20200903105114.9969-7-hdegoede@redhat.com> <20200903105909.GA3756465@ulmo>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e342aee0-c7a6-62db-e4b7-9d72554fd55c@redhat.com>
Date: Thu, 3 Sep 2020 13:12:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903105909.GA3756465@ulmo>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v9 06/17] pwm: lpss: Make pwm_lpss_apply()
 not rely on existing hardware state
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 9/3/20 12:59 PM, Thierry Reding wrote:
> On Thu, Sep 03, 2020 at 12:51:03PM +0200, Hans de Goede wrote:
>> Before this commit pwm_lpss_apply() was making 2 assuming
>> 2 pre-conditions were met by the existing hardware state:
> 
> I think that "making 2" is too much.

You're right at first the sentence had something about making
2 assumptions, then I added pre-conditions in there for it
to better describe the problem...

>> 1. That the base-unit and on-time-div read back from the
>> control register are those actually in use, so that it
>> can skip setting the update bit if the read-back value
>> matches the desired values.
>>
>> 2. That the controller is enabled when the cached
>> pwm_state.enabled says that the controller is enabled.
>>
>> As the long history of fixes for subtle (often suspend/resume)
>> lpss-pwm issues shows, this assumptions are not necessary
>> always true.
>>
>> 1. Specifically is not true on some (*) Cherry Trail devices
>> with a nasty GFX0._PS3 method which: a. saves the ctrl reg value.
>> b. sets the base-unit to 0 and writes the update bit to apply/commit
>> c. restores the original ctrl value without setting the update bit,
>> so that the 0 base-unit value is still in use.
>>
>> 2. Assumption 2. currently is true, but only because of the code which
>> saves/restores the state on suspend/resume. By convention restoring the
>> PWM state should be done by the PWM consumer and the presence of this
>> code in the pmw-lpss driver is a bug. Therefor the save/restore code will
>> be dropped in the next patch in this series, after which this assumption
>> also is no longer true.
>>
>> This commit changes the pwm_lpss_apply() to make any assumptions about the
> 
> Did you mean to say "... to _not_ make any assumptions ..."?

Yes, oops. That is a small but important difference.

I'll do a v10 with your 2 Acked-by's added and both commit msg issues fixed.

Hopefully that will be the last version.

>> state the hardware is in. Instead it makes pwm_lpss_apply() always fully
>> program the PWM controller, making it much less fragile.
>>
>> *) Seen on the Acer One 10 S1003, Lenovo Ideapad Miix 310 and 320 models
>> and various Medion models.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/pwm/pwm-lpss.c | 21 +++++++++------------
>>   1 file changed, 9 insertions(+), 12 deletions(-)
> 
> Other than the two small nits, this looks much more idiomatic and true
> to the atomic API, so:
> 
> Acked-by: Thierry Reding <thierry.reding@gmail.com>

Thank you.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
