Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E14324F7B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 12:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E4F6E14D;
	Thu, 25 Feb 2021 11:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3386E14D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 11:52:49 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id d8so8403329ejc.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 03:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=xYFRJdbykQZufXAHOGm3/zghW9U9hGWZT1MbZjeefDY=;
 b=bpC1e1Vo3T1oAoGtXdgQ43jHLz5GqueGRy6S9Q5d9//aojPRYZJI6Dp5YDBV5m3mH8
 LmIvJrR2h8+DYkztt29a0Eg6gbZRvzxWQWw4U12W4gKS23+GmRaj1eF4bFAJYx4X0h1S
 OmHkNlcgxLsE/wrhDy6ZtcYdiNkx8ZoFakheTjD0jmkPHmlSEzBFZ2CG6kmTnFHZOrDT
 DdxPyRexsZp9NU+1UAafXsok141PfaDotlrBHkt/JNvD81314kXUJj2FYmLj9sYre6ft
 +U1WyOuAJr2oraY/QMcYvABAXxGeeW0OF4UI586HmaASRD4+RZqeon7wyLCs1eg/9Ven
 t2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xYFRJdbykQZufXAHOGm3/zghW9U9hGWZT1MbZjeefDY=;
 b=Y0CbG1Rm6gIx/gkItvPlF7rCFoDJJdMhYxqO/Ga//ZEqfDalmZXfiElVLdkxH6maCu
 Q4uG3mo7NCyqyF3ExpkH9Bdt9vqVuYUT4EQ4cTIhtjuNbkYUyVTg2sGGza+1G9jyLnRy
 Osfj5FtEKH2/tcZtY/i+1TiMlTPbySh5w4v3YqIUNdxr6pxJRdSwJajb2Cz89W5BPMdQ
 3S8b8pJW0ij5gmcboCB4fe5Uivy4UHcQycqBlTtXyKN30DwTxcJr+N2NHrroVcqiAJw2
 A99O/cjwgUTDbqtNk6XugT7l83sYdteQzbfdO3rQXFwpP2Svphsrxxu1bHs463Wjyk0J
 zjSg==
X-Gm-Message-State: AOAM531WGmZp6o6nmon0lK4PO3VLv9npnqDBUnRtPyypGGDt2p04HR/u
 YFbOm1njiLfFMG1aYNVk2jM=
X-Google-Smtp-Source: ABdhPJxIKzEsmX0JflwlG1gXik2WcSvg8VxFw10f8KAo4X+3LE/ibjCm85hfXoDkbFDzbzKPALy1sw==
X-Received: by 2002:a17:906:46d9:: with SMTP id
 k25mr2291279ejs.387.1614253968300; 
 Thu, 25 Feb 2021 03:52:48 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.googlemail.com with ESMTPSA id q26sm3718740edt.19.2021.02.25.03.52.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Feb 2021 03:52:47 -0800 (PST)
From: Hans de Goede <j.w.r.degoede@gmail.com>
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
Message-ID: <02ab406e-d490-4e09-1856-9c5dc818a5c3@gmail.com>
Date: Thu, 25 Feb 2021 12:52:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161304059194.7731.17263409378570191651@build.alporthouse.com>
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

Hi Chris,

On 2/11/21 11:49 AM, Chris Wilson wrote:
> Quoting Hans de Goede (2021-02-11 10:36:13)
>> Hi,
>>
>> On 2/10/21 1:48 PM, Chris Wilson wrote:
>>> Quoting Hans de Goede (2021-02-10 10:37:19)
>>>> Hi,
>>>>
>>>> On 2/10/21 12:07 AM, Chris Wilson wrote:
>>>>> Quoting Hans de Goede (2021-02-09 11:46:46)
>>>>>> Hi,
>>>>>>
>>>>>> On 2/9/21 12:27 AM, Chris Wilson wrote:
>>>>>>> Quoting Hans de Goede (2021-02-08 20:38:58)
>>>>>>>> Hi All,
>>>>>>>>
>>>>>>>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>>>>>>>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>>>>>>>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
>>>>>>>
>>>>>>> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
>>>>>>> did not report any differences with and without mitigations. I have yet
>>>>>>> to test other platforms. So I don't yet have an alternative.
>>>>>>
>>>>>> Note the original / first reporter of:
>>>>>>
>>>>>> https://bugzilla.redhat.com/show_bug.cgi?id=1925346
>>>>>>
>>>>>> Is using hsw-gt2, so it seems that the problem is not just the enabling of
>>>>>> the mitigations on ivy-bridge / bay-trail but that there actually is
>>>>>> a regression on devices where the WA worked fine before...
>>>>>
>>>>> There have been 3 crashes uploaded related to v5.10.9, and in all 3
>>>>> cases the ACTHD has been in the first page. This strongly suggests that
>>>>> the w/a is scribbling over address 0. And there's then a very good
>>>>> chance that
>>>>>
>>>>> commit 29d35b73ead4e41aa0d1a954c9bfbdce659ec5d6
>>>>> Author: Chris Wilson <chris@chris-wilson.co.uk>
>>>>> Date:   Mon Jan 25 12:50:33 2021 +0000
>>>>>
>>>>>     drm/i915/gt: Always try to reserve GGTT address 0x0
>>>>>     
>>>>>     commit 489140b5ba2e7cc4b853c29e0591895ddb462a82 upstream.
>>>>>
>>>>> in v5.10.14 is sufficient to hide the issue.
>>>>
>>>> That one actually is already in v5.10.13 and the various reportes of these
>>>> issues have already tested 5.10.13. They did mention that it took longer
>>>> to reproduce with 5.10.13 then with 5.10.10, but that could also be due to:
>>>>
>>>> "drm/i915/gt: Clear CACHE_MODE prior to clearing residuals"
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.10.y&id=520d05a77b2866eb4cb9e548e1d8c8abcfe60ec5
>>>
>>> Started looking for scratch page overwrites, and found this little gem:
>>> https://patchwork.freedesktop.org/patch/420436/?series=86947&rev=1
>>>
>>> Looks promising wrt the cause of overwriting random addresses -- and
>>> I hope that is the explanation for the glitches/hangs. I have a hsw gt2
>>> with gnome shell, piglit is happy, but I suspect it is all due to
>>> placement and so will only occur at random.
>>
>> If you can give me a list of commits to cherry-pick then I can prepare
>> a Fedora 5.10.y kernel which those added for the group of Fedora users
>> who are hitting this to test.
> 
> e627d5923cae ("drm/i915/gt: One more flush for Baytrail clear residuals")
> d30bbd62b1bf ("drm/i915/gt: Flush before changing register state")
> 1914911f4aa0 ("drm/i915/gt: Correct surface base address for renderclear")

The bug reports for this keep coming in here is the full lists of bugs which I'm
aware of which all have this as root cause (the ones with out links are all
bugzilla.redhat.com bugs):

   1843274 - i915 GPU Hang with kernel 5.7 on Haswell (Acer C720P Chromebook)
   1922511 - Recent upgrades caused smearing/tearing
   1925346 - Screen glitches after updating to Kernel 5.10.10
   1925903 - Flickering UI elements, screen instability (Wayland)
   1931065 - Frequent i915 hangs
   https://gitlab.freedesktop.org/drm/intel/-/issues/3099

Testing by various reporters shows that this appears to be fully resolved for all
reporters except one by the quoted 3 commits from -next above.

For the one reporter who is still seeing some rendering glitches things are
much improved, so I think they are also hitting a different issue.

I wanted to send cherry-picks of the 3 quoted commits to stable@vger, but
2 of the 3 are not in Linus' master yet; and I'm also not seeing these
in any drm -fixes branches yet :(

Chris, can you please get d30bbd62b1bf and 1914911f4aa0 on their way to Linus?

Regards,

Hans
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
