Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066002DF506
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Dec 2020 11:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD6D89B96;
	Sun, 20 Dec 2020 10:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D458B89B96
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Dec 2020 10:31:53 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id r4so7807983wmh.5
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Dec 2020 02:31:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XxwUmDWCBG7mOqtpdPmRq5cr7SNcwm7P3X++cbu4hQU=;
 b=OKgqlks24BsNOFb4Y1FVawXj+YpofpoJvmU0LN7QRN8rQCspfvhbgggqatu1VhyDku
 jo+pzrAA/ZJqFCHRKO9yReCe6Yxaqh0aWzVpiojdoohNPQDzor09zaozNDnyDJLUbMt5
 /NPUWZUuEcUHIer5hbiNV+IBJ5MjdkTHQ00NJ/IyXjIOPO4/cBibdBguThgUVedmMM8C
 V4mIfpPkwGXqt8U9eLvHCryfY8JeRMhEA8C6w3pnb/MoWeaeIf4rDWhWO/iRQNPYohVl
 RY0c7idouURY7FC1fqi1xKMQ7pVy18CsSLAinKW6tnB5+xczgv3U10BTwqkbxos5izGj
 llUg==
X-Gm-Message-State: AOAM530/oD0cLpT1Zy8vmWi2TXEz7knxzlsc80maNQfMaHXQSKOMKtb8
 CPZ7h/aM58reptIrRn9a23LZVDEPSzacyA==
X-Google-Smtp-Source: ABdhPJzNtHXujy5YMQU48FW9rD0avGVKFNfQ+Ths0CarNuf/OXKDRCxJFJ4ohaJjbsMIx6GHwExC/A==
X-Received: by 2002:a05:600c:313:: with SMTP id
 q19mr11472922wmd.126.1608460312439; 
 Sun, 20 Dec 2020 02:31:52 -0800 (PST)
Received: from [10.0.0.21] (smtp.glidos.net. [82.69.85.168])
 by smtp.gmail.com with ESMTPSA id y11sm18225991wmi.0.2020.12.20.02.31.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Dec 2020 02:31:51 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
 <87sg98ox2i.fsf@intel.com> <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
 <87v9dwm4fy.fsf@intel.com> <8705b7e4-9dba-1496-fdbb-15016be15fe6@glidos.net>
 <81a0f2f9-8669-8409-1ca5-8111bedef6b1@glidos.net> <87ft4f9t8x.fsf@intel.com>
From: Paul Gardiner <lists@glidos.net>
Message-ID: <516f2e64-9f6b-f729-cbcd-6458997da377@glidos.net>
Date: Sun, 20 Dec 2020 10:31:52 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <87ft4f9t8x.fsf@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] Does the intel driver support faking a connected
 monitor?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09/12/2020 10:19, Jani Nikula wrote:
> On Fri, 04 Dec 2020, Paul Gardiner <lists@glidos.net> wrote:
>> On 24/11/2020 15:03, Paul Gardiner wrote:
>>> On 23/11/2020 16:19, Jani Nikula wrote:
>>>> On Sat, 21 Nov 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>>> On 17/11/2020 14:52, Jani Nikula wrote:
>>>>>> On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>>>>> I use an open source DVR called MythTV. I've just swapped from using
>>>>>>> nvidia graphics to intel graphics. Generally it's working great, but
>>>>>>> I've run into one thing I used to do with the old system that I cannot
>>>>>>> find out how to achieve with the new.
>>>>>>>
>>>>>>> MythTV doesn't currently entirely handle starting without a TV
>>>>>>> connected. With nvidia graphics I could specify, within the X config,
>>>>>>> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into
>>>>>>> thinking there was a TV. With intel graphics I can load EDID, but
>>>>>>> so far
>>>>>>> I haven't discovered an equivalent of the "ConnectedMonitor" option.
>>>>>>
>>>>>> Sorry for the delay, I seem to have missed this.
>>>>>>
>>>>>> Please try a kernel command-line parameter to force enable the
>>>>>> connector.
>>>>>>
>>>>>> video=TV-1:e
>>>>>>
>>>>>> Assuming the connector name is "TV-1"; replace with whatever you have.
>>>>>
>>>>>
>>>>> Thanks for the reply. I gave that a try, in my case "video=HDMI1:e", but
>>>>> saw no difference. That's KMS, right? Is there anything I might have
>>>>> failed to install or enable that KMS relies on? Are there any logs I
>>>>> should monitor?
>>>>
>>>> I think it should probably be HDMI-1 with the hyphen; is that a typo
>>>> above or in the command line you used?
>>>
>>> Thanks for the continued help. I tried "video=HDMI1:e" because my Xorg
>>> log listed outputs HDMI1, HDMI2, DP1 and VIRTUAL1. I've now tried
>>> "video=HDMI-1:e", but still no luck.
>>
>> Not wishing to hassle you, but before I give up, any further thoughts on
>> this?  I have a solution at least, which is to use a EDID emulator, so
>> it's no great inconvenience how it is.
> 
> This should work. ISTR it's been used before by MythTV users. (I don't
> know what you refer to with EDID emulator.)
> 
> Please file a bug over at [1]. Add drm.debug=14 module parameter, and
> attach full dmesg from boot to reproducing the problem in the bug.
> 
> BR,
> Jani.
> 
> 
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/new

The debug output was sufficient to track down the problem. It turned out 
that the connection was called HDMI-A-1. When I used that name your 
previous suggestion worked. To get exactly the behaviour I wanted I 
needed to also load EDID. This is the extra boot command string I'm using:

     drm.edid_firmware=HDMI-A-1:edid/marantz_edid.bin video=HDMI-A-1:D


For that to work I also had to ensure the referenced edid file was in my 
initramfs.

Thanks again for the help.

By the way, an EDID emulator is a small USB-stick-sized device that sits 
in between computer and monitor and acts like a monitor when the actual 
monitor is off.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
