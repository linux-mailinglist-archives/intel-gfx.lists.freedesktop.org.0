Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC22031B112
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Feb 2021 17:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C14E89FD9;
	Sun, 14 Feb 2021 16:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FFE89FD9
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Feb 2021 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613318452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zJnCD65xbRWMUMjLE2t5rjUv7RyeHohz4SCngFSrsYU=;
 b=GdDR7NTthrWxCv1Q7KBs6OeyB7JKUXhX/4G55YrAVWyJ5DZvztYL0sru0Pzutv1D3jJ8/+
 vV4+Aq8Y9Op4dwtaTvOXvI4UbnZCrLGsejnB46CxAl5AyAAoGdAx4dqlbK6Q8pMCv8mm71
 nhNQOu91UkrkRDDwamVNr6AxhurpaLk=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-eh1gn8ggMH6dJF45y0uQYA-1; Sun, 14 Feb 2021 11:00:47 -0500
X-MC-Unique: eh1gn8ggMH6dJF45y0uQYA-1
Received: by mail-ej1-f72.google.com with SMTP id 7so3120199ejh.10
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Feb 2021 08:00:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zJnCD65xbRWMUMjLE2t5rjUv7RyeHohz4SCngFSrsYU=;
 b=XvGY7uqCrsgP6Z/QxuSnJOdtV+qkRM1/szLzTbc5cIWDAX84qJ/8SiDPCOAAyBNGRu
 Dmy6sXexUOQjiivAVGGYWHqt5ch440NXWSwPCTngxhseXMgpPTyyYtRCDAqPnhMHLjTj
 NnYj0BF6N6FKrBQVb28lAxbzNYE5IApzD189eYEdYvQ8WloMnAShwLXOerAypyCV7VpT
 qqj+lR9tmWNf4hk9SOOLWs85ZY0Hf6bEJQAZE08mXm7jmzvoO/PxRrBM8pSZk5Rf0HWc
 4k2ch4khSfi8DQ5XlkWh0tb1KxnLWXtm3hsiFD19pLDWVD9BRUFNhv1bTx1Ko1YxmvUB
 JcDQ==
X-Gm-Message-State: AOAM532/W2/RCXGjXGosw2O4q9Wa0Swbc09GI+cl/5IU4X8NEszRrQqt
 viRmtchk6sLYKK+AFjZTzkUUO7IvJ9MN4mc3vCTG5PzB8CXWSoSZwbNqTgkmsdO94KD3Z22OCy6
 jdLFRhu8gpG7b10KIl3ooYOfYtm3v
X-Received: by 2002:a17:906:33c5:: with SMTP id
 w5mr12025819eja.319.1613318446562; 
 Sun, 14 Feb 2021 08:00:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzDn4q+tUxPm+eyE2w8xwHUQPqEK3mZPRTE2swFRpEF2RA0C9I0NzGmfqVGZ8PDW0uSv2oWjg==
X-Received: by 2002:a17:906:33c5:: with SMTP id
 w5mr12025801eja.319.1613318446337; 
 Sun, 14 Feb 2021 08:00:46 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q13sm9482813ejy.20.2021.02.14.08.00.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Feb 2021 08:00:45 -0800 (PST)
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
Message-ID: <96614fc1-c92d-1532-fd92-beb19e490075@redhat.com>
Date: Sun, 14 Feb 2021 17:00:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <e00f5813-37c6-52e7-4fd3-691be9d062d9@redhat.com>
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

On 2/11/21 1:26 PM, Hans de Goede wrote:
> Hi,
> 
> On 2/11/21 11:49 AM, Chris Wilson wrote:
>> Quoting Hans de Goede (2021-02-11 10:36:13)
>>> Hi,
>>>
>>> On 2/10/21 1:48 PM, Chris Wilson wrote:
>>>> Quoting Hans de Goede (2021-02-10 10:37:19)
>>>>> Hi,
>>>>>
>>>>> On 2/10/21 12:07 AM, Chris Wilson wrote:
>>>>>> Quoting Hans de Goede (2021-02-09 11:46:46)
>>>>>>> Hi,
>>>>>>>
>>>>>>> On 2/9/21 12:27 AM, Chris Wilson wrote:
>>>>>>>> Quoting Hans de Goede (2021-02-08 20:38:58)
>>>>>>>>> Hi All,
>>>>>>>>>
>>>>>>>>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>>>>>>>>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>>>>>>>>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
>>>>>>>>
>>>>>>>> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
>>>>>>>> did not report any differences with and without mitigations. I have yet
>>>>>>>> to test other platforms. So I don't yet have an alternative.
>>>>>>>
>>>>>>> Note the original / first reporter of:
>>>>>>>
>>>>>>> https://bugzilla.redhat.com/show_bug.cgi?id=1925346
>>>>>>>
>>>>>>> Is using hsw-gt2, so it seems that the problem is not just the enabling of
>>>>>>> the mitigations on ivy-bridge / bay-trail but that there actually is
>>>>>>> a regression on devices where the WA worked fine before...
>>>>>>
>>>>>> There have been 3 crashes uploaded related to v5.10.9, and in all 3
>>>>>> cases the ACTHD has been in the first page. This strongly suggests that
>>>>>> the w/a is scribbling over address 0. And there's then a very good
>>>>>> chance that
>>>>>>
>>>>>> commit 29d35b73ead4e41aa0d1a954c9bfbdce659ec5d6
>>>>>> Author: Chris Wilson <chris@chris-wilson.co.uk>
>>>>>> Date:   Mon Jan 25 12:50:33 2021 +0000
>>>>>>
>>>>>>     drm/i915/gt: Always try to reserve GGTT address 0x0
>>>>>>     
>>>>>>     commit 489140b5ba2e7cc4b853c29e0591895ddb462a82 upstream.
>>>>>>
>>>>>> in v5.10.14 is sufficient to hide the issue.
>>>>>
>>>>> That one actually is already in v5.10.13 and the various reportes of these
>>>>> issues have already tested 5.10.13. They did mention that it took longer
>>>>> to reproduce with 5.10.13 then with 5.10.10, but that could also be due to:
>>>>>
>>>>> "drm/i915/gt: Clear CACHE_MODE prior to clearing residuals"
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.10.y&id=520d05a77b2866eb4cb9e548e1d8c8abcfe60ec5
>>>>
>>>> Started looking for scratch page overwrites, and found this little gem:
>>>> https://patchwork.freedesktop.org/patch/420436/?series=86947&rev=1
>>>>
>>>> Looks promising wrt the cause of overwriting random addresses -- and
>>>> I hope that is the explanation for the glitches/hangs. I have a hsw gt2
>>>> with gnome shell, piglit is happy, but I suspect it is all due to
>>>> placement and so will only occur at random.
>>>
>>> If you can give me a list of commits to cherry-pick then I can prepare
>>> a Fedora 5.10.y kernel which those added for the group of Fedora users
>>> who are hitting this to test.
>>
>> e627d5923cae ("drm/i915/gt: One more flush for Baytrail clear residuals")
>> d30bbd62b1bf ("drm/i915/gt: Flush before changing register state")
>> 1914911f4aa0 ("drm/i915/gt: Correct surface base address for renderclear")
> 
> Thanks, the test-kernel is building now. I will let you know when I have
> heard back from the Fedora users (this will likely take 1-2 days).

I've heard back from 2 of the reporters who were seeing issues with 5.10.9+

And I'm happy to report 5.10.15 + the 3 commits mentioned above cherry-picked
on top fixes the graphics glitches for them.

So if we can get these 3 commits into 5.10.y and 5.11.y then this should be
resolved.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
