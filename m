Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7332A0D13
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 19:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0D089C63;
	Fri, 30 Oct 2020 18:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3A06E11E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 11:55:35 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id k18so2692921wmj.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 04:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jguk.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=28l778Uw8Rd1BocDCaXCr3gZTMway57Qz41z0/e4GaU=;
 b=ahxc9ydcNJR1cx776WkOqJX9ueoFz3qpVRwkMUdmdK/enS0Mc+2NID0ngur+Zc1M+b
 E+q7VGBYc84cXPiN6RHfCmq23CzitWiBKpuC4y/s1k2RAmgTaMlaQNhDolFf+AKhexPQ
 DA66yUR922HveEOqsAml6vvuwdrDOyX9CAm9o7yPwtFYupWFieEI7YwvewxmRhix34Y8
 vkxtrNRsa4OECSdpGNQ6vXznqIVCJ3FuXuEJDiASSmK2NUMpCd+LYSLCaRtIFOvX3kXp
 1DBFDeknbiOIebOK1/HYaKobYsJM9DiwnrKWSn7T5RqI4ld6TFsbb+3oNrnOtZTQb7ai
 OiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=28l778Uw8Rd1BocDCaXCr3gZTMway57Qz41z0/e4GaU=;
 b=nWKPz3J2n9YlWiXakGUyhS4mdTHNXK67TqqzG88gJQ9xO7vf0VUNvxSFkMRFCpHWyc
 hzVuat+I4NHQn9BrH9CSI++0FPvA5TnvvIDw/yKc7JT1XlDAryVm8OeX7tEh8qgJHzfZ
 lFRTeEQ5m8PZbEg2bcwDd/IOFGbBmMt52hu7IyQ8R11vvN196DMzjZHcOsfcoH7kDdBO
 e/xRCBlqu16HtbCh5ZNwduPd2Oj8hDM648VBkRgA5Sv+AL9YFPNR6SSz7O4E7Yj/CFDB
 2WCEZ9WuTRYWoQIK077ySRhakUliENF1A/pgAhpk/gqB9Uy1IAdOTZKDz0b6N+mfG2ai
 VIwQ==
X-Gm-Message-State: AOAM53224rXPk7n0w5K/OY6CtEIwE/5DRxcwdygcQtrGnDUFJMVAfuoG
 CVWEOS9uV+rAOG20UxZFmQQntEpvR2GRCg==
X-Google-Smtp-Source: ABdhPJyfqVm3VUoCUFgQBtNmlIKpmZ0RbPuv/PeDffMqlL7VFUOa/BMQ4OEsP8d9b4/opdsv2h9lhA==
X-Received: by 2002:a1c:1f87:: with SMTP id f129mr2319850wmf.182.1604058933773; 
 Fri, 30 Oct 2020 04:55:33 -0700 (PDT)
Received: from [192.168.0.12]
 (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
 by smtp.gmail.com with ESMTPSA id u9sm10599052wrp.65.2020.10.30.04.55.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Oct 2020 04:55:32 -0700 (PDT)
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 jani.nikula@linux.intel.com, intel-gfx@lists.freedesktop.org
References: <7730fe97-f906-4dd9-df96-9d722ed6ad11@jguk.org>
 <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
 <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
From: Jonny Grant <jg@jguk.org>
Message-ID: <186fa616-1718-28a8-20c3-7558319a8401@jguk.org>
Date: Fri, 30 Oct 2020 11:55:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
Content-Language: en-GB
X-Mailman-Approved-At: Fri, 30 Oct 2020 18:04:25 +0000
Subject: Re: [Intel-gfx] Intel i915 corruption issue Gnome EOG #146
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



On 30/10/2020 10:17, Joonas Lahtinen wrote:
> + intel-gfx mailing list
> 
> Quoting Joonas Lahtinen (2020-10-30 12:15:44)
>> Quoting Jonny Grant (2020-10-27 22:42:19)
>>> Hello Jani, Joonas
>>>
>>> https://gitlab.gnome.org/GNOME/eog/-/issues/146
>>>
>>> Is this issue something you could debug?
>>
>> Can you file a bug according to the instructions here with details
>> about the hardware:
>>
>> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
>>
>>> I've got some screenshots
>>>
>>>
>>>
>>> Seems to be above 32bit.
>>>
>>> https://gitlab.gnome.org/GNOME/eog/-/issues/150#note_946421
>>>
>>> If you don't think it is an i915 issue, could you post a comment?
>>> It only reproduces on intel i915 chipset laptops
>>
>> Quite a few components are involved, so it might also be a bug in the
>> Mesa 3D side.
>>
>> An useful excercise would be to figure out the exact pixel width after
>> which the contents is clipped. I noticed one reporting user is using
>> Thinkpad X220, have any users of more modern hardware reported similar
>> issue?
>>
>> Regards, Joonas

I have an Dec 2014 Asus N56VB-S4041H-16GB Laptop that i see it on. It seems to be using intel integrated graphics

00:02.0 VGA compatible controller: Intel Corporation 3rd Gen Core processor Graphics Controller (rev 09)

Interestingly I upgraded to Ubuntu 20.04.1 LTS a month ago, and now I can't reproduce
Jonny

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
