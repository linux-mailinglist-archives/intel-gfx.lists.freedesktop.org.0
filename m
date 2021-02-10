Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CAC3163FC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 11:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F04D6E203;
	Wed, 10 Feb 2021 10:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0BD6E203
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 10:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612953444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o8iGso9jVG/QE/Y6DGWdnH2N4lrc1WDwbChE2ORvJ5o=;
 b=IgH5G9uuCAUyxd/0I31CgY5T6r+/0/LOsLE1ed2IL0PXTmTJJUqn4Dedo2rhcgg+39iTwo
 0pCSqDv5xsQoCE+gtVQdVL/dJichudVBnJ24dWC61jvOlvDKzs3xrzxs+l20eF3xBhiwfh
 sX5BxQ/keic4krY4/CQZvwJ8WH0B57I=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-LbSsGr5SNC6jqHBrZa7KDA-1; Wed, 10 Feb 2021 05:37:22 -0500
X-MC-Unique: LbSsGr5SNC6jqHBrZa7KDA-1
Received: by mail-ej1-f71.google.com with SMTP id gv53so2221772ejc.19
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 02:37:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o8iGso9jVG/QE/Y6DGWdnH2N4lrc1WDwbChE2ORvJ5o=;
 b=JqJz6CBoMrlic20lWGaiks6zMe4fdj1eGRe0ilLOS9JoVBEX4fJSjG6pnUbxbrBWTN
 kKl3SWMZEtW1AuxYFIADsXPIWgyVwwRkUb1/svfH0B4bxDBaOmwE+2SiZ6crq7YwB9l1
 SGBjvT+GmUDZwD3S146SSJvLmrWHqTpxVMPnJohkKPt/2cnoWNkqBtDF7VBHe78Sb853
 Gx0kZgpQ6UYw+6MJWHzuHyTQl6WaXbdpE9Q+hqFDGwIoq0h+gnpeue3i4A/zA50/WG+q
 nFJHTXsof5Bg3YzIxAFkJnDfm5SM7L7Pekb/O0tvfn8SlovCLZo1cwDv+9QCAzECy19Z
 golw==
X-Gm-Message-State: AOAM531XMBHd1y4cXTpNuvZuFxcbu39iOnizYWvExHcMl5dicxl0ChrA
 31WTGJjJPbjqePYtl/17hQ2IXwBbgiO7VGc+zf+i1fnEJ035deM7ZXQwShxRFRnCZn3U9GhUHvR
 m66wf4B4GXgxgxxTz6dCrTPPotCKP
X-Received: by 2002:a17:906:26ca:: with SMTP id
 u10mr2296540ejc.165.1612953441277; 
 Wed, 10 Feb 2021 02:37:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwskAe+C8Za0s8Gcmcr5Rlb5h+kF3/cvRqSEUUYWK+7dU5EodAlnHfKb4by7zWvKuxFpYW3LA==
X-Received: by 2002:a17:906:26ca:: with SMTP id
 u10mr2296527ejc.165.1612953441083; 
 Wed, 10 Feb 2021 02:37:21 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id zg22sm831982ejb.0.2021.02.10.02.37.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 02:37:20 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
 <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
 <161291205642.6673.10994709665368036431@build.alporthouse.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <02fd493c-957f-890d-d0ad-ebd4119f55f2@redhat.com>
Date: Wed, 10 Feb 2021 11:37:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161291205642.6673.10994709665368036431@build.alporthouse.com>
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

On 2/10/21 12:07 AM, Chris Wilson wrote:
> Quoting Hans de Goede (2021-02-09 11:46:46)
>> Hi,
>>
>> On 2/9/21 12:27 AM, Chris Wilson wrote:
>>> Quoting Hans de Goede (2021-02-08 20:38:58)
>>>> Hi All,
>>>>
>>>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>>>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>>>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
>>>
>>> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
>>> did not report any differences with and without mitigations. I have yet
>>> to test other platforms. So I don't yet have an alternative.
>>
>> Note the original / first reporter of:
>>
>> https://bugzilla.redhat.com/show_bug.cgi?id=1925346
>>
>> Is using hsw-gt2, so it seems that the problem is not just the enabling of
>> the mitigations on ivy-bridge / bay-trail but that there actually is
>> a regression on devices where the WA worked fine before...
> 
> There have been 3 crashes uploaded related to v5.10.9, and in all 3
> cases the ACTHD has been in the first page. This strongly suggests that
> the w/a is scribbling over address 0. And there's then a very good
> chance that
> 
> commit 29d35b73ead4e41aa0d1a954c9bfbdce659ec5d6
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Mon Jan 25 12:50:33 2021 +0000
> 
>     drm/i915/gt: Always try to reserve GGTT address 0x0
>     
>     commit 489140b5ba2e7cc4b853c29e0591895ddb462a82 upstream.
> 
> in v5.10.14 is sufficient to hide the issue.

That one actually is already in v5.10.13 and the various reportes of these
issues have already tested 5.10.13. They did mention that it took longer
to reproduce with 5.10.13 then with 5.10.10, but that could also be due to:

"drm/i915/gt: Clear CACHE_MODE prior to clearing residuals"
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.10.y&id=520d05a77b2866eb4cb9e548e1d8c8abcfe60ec5

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
