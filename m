Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1879C31EAB2
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 15:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB226E1F9;
	Thu, 18 Feb 2021 14:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577FF6E1F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 14:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613657089;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DameG4NN+XhJX2cINYFl0XGxWm6k+VvwqQIKiHlU8pk=;
 b=MwdD9vQwzWg9YISI1MhRwgUi63pogcx2wPb8uEBhANFZBsxH320NuuafR12DmaBeUE93r+
 SBdzHFO6n6rjfkG/Od+T6BVpLVS2aKJ2/dxU2pAgIpKm9Sk13AzH+QjUicUZilimbwtjDm
 9TITNEZloKwYGQeAUuWPQn78UWe/GIo=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-fW7S7SgpNIiRXtlktu28Bg-1; Thu, 18 Feb 2021 09:04:20 -0500
X-MC-Unique: fW7S7SgpNIiRXtlktu28Bg-1
Received: by mail-ej1-f71.google.com with SMTP id gv53so717827ejc.19
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 06:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DameG4NN+XhJX2cINYFl0XGxWm6k+VvwqQIKiHlU8pk=;
 b=ouatIuyctaV3/fBeBt/q+EapRpBYxdYPq9lL9qwf+PXCIwamFu975U0pVohCJn1I7R
 0erCWbKQD/TyP8gVI0hSW1v6j8u5WZRjrfNcjYgk0y4735Gb/0Hkv4EPCOtV57fX43Lx
 4oFKt5D6AqtGEHmNdRaDlKCeR3AQBdJKF2lDwhWGgLXXpQyp12xR/kAXhlMokNlXpaPT
 HGh1A244yaN57BjlgcCxsFVwrS+w9vqISX+E3ZtiO8xZ7xV+N5B4AiY4otHDZflu+OiB
 0DDD0Se15YYwHNP9Z860ABF6JeiIAywIlIJtNr7TrPkaAF3kotMtsXTdP78VB4UbFHYT
 l+4w==
X-Gm-Message-State: AOAM533ZHBIRrgnlQ3quZnOPwKnfjUi7uf7QP7qTp2VLTiwO9ojk5EOS
 WLJRtc+bIDdq84lgprbE7u3gPGLKuRmm+WUNwNrUSIvkHkbSDX2fhFOHtFTCra4SQmq8qrY96oc
 tPJGwREyQI3NcjYgcB2dlPiMmiMuh
X-Received: by 2002:a17:906:7697:: with SMTP id
 o23mr4310529ejm.292.1613657059148; 
 Thu, 18 Feb 2021 06:04:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzP/zABQrXHdJhOBKCVdZ9S02vMhPi1HVFijw+J9omB3IY9JVoV3G4Wp1LvT7/TrAr9/f4RJg==
X-Received: by 2002:a17:906:7697:: with SMTP id
 o23mr4310513ejm.292.1613657058956; 
 Thu, 18 Feb 2021 06:04:18 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id o8sm2814226edj.79.2021.02.18.06.04.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 06:04:18 -0800 (PST)
From: Hans de Goede <hdegoede@redhat.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
 <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
 <161291205642.6673.10994709665368036431@build.alporthouse.com>
 <02fd493c-957f-890d-d0ad-ebd4119f55f2@redhat.com>
 <161296131275.7731.862746142230006325@build.alporthouse.com>
 <8f550b67-2c7c-c726-09d1-dc8842152974@redhat.com>
 <161304059194.7731.17263409378570191651@build.alporthouse.com>
 <e00f5813-37c6-52e7-4fd3-691be9d062d9@redhat.com>
 <96614fc1-c92d-1532-fd92-beb19e490075@redhat.com>
Message-ID: <a20993b8-5877-b501-56f1-4048c3457b1a@redhat.com>
Date: Thu, 18 Feb 2021 15:04:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <96614fc1-c92d-1532-fd92-beb19e490075@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation
 is causing gfx issues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/14/21 5:00 PM, Hans de Goede wrote:
> Hi,
> 
> On 2/11/21 1:26 PM, Hans de Goede wrote:
>> Hi,
>>
>> On 2/11/21 11:49 AM, Chris Wilson wrote:

<snip>

>>>>> Started looking for scratch page overwrites, and found this little gem:
>>>>> https://patchwork.freedesktop.org/patch/420436/?series=86947&rev=1
>>>>>
>>>>> Looks promising wrt the cause of overwriting random addresses -- and
>>>>> I hope that is the explanation for the glitches/hangs. I have a hsw gt2
>>>>> with gnome shell, piglit is happy, but I suspect it is all due to
>>>>> placement and so will only occur at random.
>>>>
>>>> If you can give me a list of commits to cherry-pick then I can prepare
>>>> a Fedora 5.10.y kernel which those added for the group of Fedora users
>>>> who are hitting this to test.
>>>
>>> e627d5923cae ("drm/i915/gt: One more flush for Baytrail clear residuals")
>>> d30bbd62b1bf ("drm/i915/gt: Flush before changing register state")
>>> 1914911f4aa0 ("drm/i915/gt: Correct surface base address for renderclear")
>>
>> Thanks, the test-kernel is building now. I will let you know when I have
>> heard back from the Fedora users (this will likely take 1-2 days).
> 
> I've heard back from 2 of the reporters who were seeing issues with 5.10.9+
> 
> And I'm happy to report 5.10.15 + the 3 commits mentioned above cherry-picked
> on top fixes the graphics glitches for them.
> 
> So if we can get these 3 commits into 5.10.y and 5.11.y then this should be
> resolved.

Unfortunately I just got a report that 5.10.15 + the 3 extra fixes mentioned
above is still causing issues for one user with a
"thinkpad x230 with i5-3320M (HD Graphics 4000)"

The user descibes the problem as: "still have some minor black squares popping
up while scrolling on Firefox."

I've asked this user to test 5.10.14 + the 3 reverts mentioned earlier in the
thread and that kernel does not have this issue.

Chris, any ideas / more fixes to cherry pick for testing ?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
