Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA27318849
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 11:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BAA6E417;
	Thu, 11 Feb 2021 10:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9003B6E417
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613039781;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K4TyYFTb4qYAXnHONGoRPfAk/JxWPnPyrzeUa2221vY=;
 b=L7gLUREWQxvo3tBiNt4UuNV36ROqKIKhpPv5fmLM+uGkj48AKbweVaHh2pE0BBYeXeYPR4
 jsaID17Fiouiye6VDUa80Y/7PIHafD9eVEUqoa8p2chq9Y8ntu2/poPJkYBLqk5pYGXNdZ
 +R7mP03f5pcNQPenT+CQkSPu3d5Yh24=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-RJVtEsBoM9Kkw150cVRLgQ-1; Thu, 11 Feb 2021 05:36:16 -0500
X-MC-Unique: RJVtEsBoM9Kkw150cVRLgQ-1
Received: by mail-ej1-f70.google.com with SMTP id h24so2821352ejl.16
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 02:36:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K4TyYFTb4qYAXnHONGoRPfAk/JxWPnPyrzeUa2221vY=;
 b=U2keGxdYAWJniaX+bVWq/R6icy2/6TICDfIEFatj9TLL/ELDzU4ZXmZqshwBHJfEaz
 IH10S8fEE9zj1mfIzbRkvMtWfqPJSB9C9EuK7Sc5GMb7a1GEavhxXB4OdKBi3nEBV3J/
 YGAaa9dlpAcU4BdKlaLPU13hVkroMiQ/zJ0r5vflYf3wOYM+jgViu+JqtKj+8+/pU6E4
 gfXf/nqZhyHm1EDxwYvZHiTvsDLp9LQlLBV7d+I7RSDYN/tlluqTEQW7P5WFcjeTcxU/
 CFTTM7wxHmj53uUi8kA85H7rlf5T/v5j7KC8F8ZZ+dpP5zBCun6kAC2bME79t0miaktx
 nQGA==
X-Gm-Message-State: AOAM533sinQ2UIbf+s2FnNd2qy01Lv4KzemwM3hg28LE2v7Xqeg3+cL4
 Afn2OGKUFzZiUW2X9MrWBNYAkwY651tqHlAk7cQpKc7VOfTyDWzYE3irf5+xA9qmcC0N/L5+XMz
 y656bwa5lsuhnBN4bg6mQ3QrW3NPJ
X-Received: by 2002:a17:907:d25:: with SMTP id
 gn37mr7861639ejc.303.1613039774997; 
 Thu, 11 Feb 2021 02:36:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyNpewJ9GFjfHuDXH3ImebaC7FsSdv7MCis2DkSYUUYVvJrhXo1cRCIuP0FuOQfYwHUJQRg3w==
X-Received: by 2002:a17:907:d25:: with SMTP id
 gn37mr7861623ejc.303.1613039774828; 
 Thu, 11 Feb 2021 02:36:14 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id ks16sm3959611ejb.30.2021.02.11.02.36.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 02:36:14 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
 <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
 <161291205642.6673.10994709665368036431@build.alporthouse.com>
 <02fd493c-957f-890d-d0ad-ebd4119f55f2@redhat.com>
 <161296131275.7731.862746142230006325@build.alporthouse.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8f550b67-2c7c-c726-09d1-dc8842152974@redhat.com>
Date: Thu, 11 Feb 2021 11:36:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161296131275.7731.862746142230006325@build.alporthouse.com>
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

On 2/10/21 1:48 PM, Chris Wilson wrote:
> Quoting Hans de Goede (2021-02-10 10:37:19)
>> Hi,
>>
>> On 2/10/21 12:07 AM, Chris Wilson wrote:
>>> Quoting Hans de Goede (2021-02-09 11:46:46)
>>>> Hi,
>>>>
>>>> On 2/9/21 12:27 AM, Chris Wilson wrote:
>>>>> Quoting Hans de Goede (2021-02-08 20:38:58)
>>>>>> Hi All,
>>>>>>
>>>>>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>>>>>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>>>>>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
>>>>>
>>>>> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
>>>>> did not report any differences with and without mitigations. I have yet
>>>>> to test other platforms. So I don't yet have an alternative.
>>>>
>>>> Note the original / first reporter of:
>>>>
>>>> https://bugzilla.redhat.com/show_bug.cgi?id=1925346
>>>>
>>>> Is using hsw-gt2, so it seems that the problem is not just the enabling of
>>>> the mitigations on ivy-bridge / bay-trail but that there actually is
>>>> a regression on devices where the WA worked fine before...
>>>
>>> There have been 3 crashes uploaded related to v5.10.9, and in all 3
>>> cases the ACTHD has been in the first page. This strongly suggests that
>>> the w/a is scribbling over address 0. And there's then a very good
>>> chance that
>>>
>>> commit 29d35b73ead4e41aa0d1a954c9bfbdce659ec5d6
>>> Author: Chris Wilson <chris@chris-wilson.co.uk>
>>> Date:   Mon Jan 25 12:50:33 2021 +0000
>>>
>>>     drm/i915/gt: Always try to reserve GGTT address 0x0
>>>     
>>>     commit 489140b5ba2e7cc4b853c29e0591895ddb462a82 upstream.
>>>
>>> in v5.10.14 is sufficient to hide the issue.
>>
>> That one actually is already in v5.10.13 and the various reportes of these
>> issues have already tested 5.10.13. They did mention that it took longer
>> to reproduce with 5.10.13 then with 5.10.10, but that could also be due to:
>>
>> "drm/i915/gt: Clear CACHE_MODE prior to clearing residuals"
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.10.y&id=520d05a77b2866eb4cb9e548e1d8c8abcfe60ec5
> 
> Started looking for scratch page overwrites, and found this little gem:
> https://patchwork.freedesktop.org/patch/420436/?series=86947&rev=1
> 
> Looks promising wrt the cause of overwriting random addresses -- and
> I hope that is the explanation for the glitches/hangs. I have a hsw gt2
> with gnome shell, piglit is happy, but I suspect it is all due to
> placement and so will only occur at random.

If you can give me a list of commits to cherry-pick then I can prepare
a Fedora 5.10.y kernel which those added for the group of Fedora users
who are hitting this to test.

FWIW those users have reported back that the 3 reverts which I mentioned
earlier do indeed restore normal functionality (without glitches) for them.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
