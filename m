Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B458E2A0D14
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 19:04:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4723989CA2;
	Fri, 30 Oct 2020 18:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286796E9AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 14:05:05 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id k10so5262745wrw.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 07:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jguk.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PNWkIGoDozqDV1ecvb8LnO0Ygdi1tZNURB/FMgig6Es=;
 b=bYbP6lO346oS7IftMJh8ikonWuI+Kjq0gVjBX2VdgjH3NRrV0y+gmA1kGzcdvGIRKN
 jM63m4yVHTU2lNsi6DFhVQRxJVINmCNxFYOgO8KbvsIcxuF5qNt7ZUfsEEEbPuu8Ou3H
 Y9n0mz8PywkVTpDXHYoInPpUzXXajfDx+T85daAWQu431HoXgssVVdEHRSpg3lKSZmPm
 jU44EMBi7xhGtyqqL0x+D7/6KAANW4gVrm6Qf7ITRH2cbBadWlsH/+GP7tyBw5Ntrnda
 0EDZK4mWul+nvlz2G8VOXIOkHl94uiu1ynxCkAJcvVHoQzVeS3S5Yq4HGEtfCOdh2HLy
 jiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PNWkIGoDozqDV1ecvb8LnO0Ygdi1tZNURB/FMgig6Es=;
 b=ubmRIaWCXckkm9z2KjwYTn1a8egWE93PGlHkj1nV2rd9eamiTVP14mzFaTAldUCDIO
 oMRg3BSi4A8of8KDW5EyhIovfuq9AIuWMp8KC91l/ZFJWE60yj8g7exYOUV6go97PGF/
 lXi9BDLWFUcercAgtFrqVZQ41OhgzoJftOXNbiqDfVGI29e/fOrL9rhzO0PXojJlFDXN
 WnOGoarshjftDN/6ynjBmDhnBMTAw5NK/uDo1VME3U0D2LOLGdZtW7bmFtU11rjOryfE
 bA+yrizfbdWoZjZ+Rt6m15ZUcCNF4AB1yWKTj9VfqAzeejmhoK2BS8MpS60wkWQApitH
 rKew==
X-Gm-Message-State: AOAM533GOw9pZGsyzIwsq1wUN/4K8W8c2Xveo0aT7YHp2474QVHAl9IJ
 IXb2CwxekT9Vs4GATKY0VGC1DKSoRZ6I9A==
X-Google-Smtp-Source: ABdhPJwqORdBoCz679fgrGSQKn9gn8mRtDJlGlvQh6xrpbbhWotdeeJnsmFDaOgS0zcEXXJvia23aA==
X-Received: by 2002:a5d:688c:: with SMTP id h12mr3530894wru.92.1604066703604; 
 Fri, 30 Oct 2020 07:05:03 -0700 (PDT)
Received: from [192.168.0.12]
 (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
 by smtp.gmail.com with ESMTPSA id i14sm4661416wml.24.2020.10.30.07.05.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Oct 2020 07:05:02 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <7730fe97-f906-4dd9-df96-9d722ed6ad11@jguk.org>
 <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
 <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
 <160405525007.15070.2337887176301828625@build.alporthouse.com>
From: Jonny Grant <jg@jguk.org>
Message-ID: <5a9ed343-b73c-34cb-6420-1acdb9aeb202@jguk.org>
Date: Fri, 30 Oct 2020 14:05:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160405525007.15070.2337887176301828625@build.alporthouse.com>
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



On 30/10/2020 10:54, Chris Wilson wrote:
> Quoting Joonas Lahtinen (2020-10-30 10:17:17)
>> + intel-gfx mailing list
>>
>> Quoting Joonas Lahtinen (2020-10-30 12:15:44)
>>> Quoting Jonny Grant (2020-10-27 22:42:19)
>>>> Hello Jani, Joonas
>>>>
>>>> https://gitlab.gnome.org/GNOME/eog/-/issues/146
>>>>
>>>> Is this issue something you could debug?
>>>
>>> Can you file a bug according to the instructions here with details
>>> about the hardware:
>>>
>>> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
>>>
>>>> I've got some screenshots
>>>>
>>>>
>>>>
>>>> Seems to be above 32bit.
>>>>
>>>> https://gitlab.gnome.org/GNOME/eog/-/issues/150#note_946421
>>>>
>>>> If you don't think it is an i915 issue, could you post a comment?
>>>> It only reproduces on intel i915 chipset laptops
>>>
>>> Quite a few components are involved, so it might also be a bug in the
>>> Mesa 3D side.
>>>
>>> An useful excercise would be to figure out the exact pixel width after
>>> which the contents is clipped. I noticed one reporting user is using
>>> Thinkpad X220, have any users of more modern hardware reported similar
>>> issue?
> 
> Large pixmap support was dropped from glamor, -modesetting can only
> support images up to the HW surface limit. It is a functional
> regression.
> -Chris
> 

Hell Chris, Joonas

Thank you for your reply.

May I ask if you can reproduce the issue on one of your developer machines at Intel? so we can rule in/out intel graphics...

Let me know if you have a Gnome desktop with EOG. Let me know if you'd like me to email the image
Jonny
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
