Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCFB2CECF5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9836E15C;
	Fri,  4 Dec 2020 11:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B146E155
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 11:22:20 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id k10so5216623wmi.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Dec 2020 03:22:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Id3LK/FyCkJdAohUv49y24dUwkrsfVB6dimXeu4zoqk=;
 b=HcIQG4Eyx4n9KAeIyRsZBIu7WRlV85UBb0UjTdol+Iki8PdWufijVkdJGVyqbIbgxa
 2FP/6QY0mns6H5TpKU3jBpKFl3LcS2CcO5BnHFzKQjI5zGSxjNshjNXElPem9t+Z4Gdz
 ZgjT6Fe8TIzBKMVRgrmq6rjGFT7woHuPUjasoOdIpy814QDHFaTgfe9eK6wTS4xJqfnC
 2P0HVm8FD1fTkgxPeltHnd5HwyE65puG3NqcXffbYBXBllqZcc1wFbKUp0J+zsQfVI64
 S5p4Jczp8CsjkIQRP8sReG7GixmUxHNWYAdZizkpip4IscoDCD6PS5oDlxNDc8BwihXr
 CY/Q==
X-Gm-Message-State: AOAM531UdWHz8bHfWt5ZaAG7+jc7dn3h0eURdgG9pTeNVRvqqc6gjRd9
 srydDXZjGUUEnHNDkqHICkz4A8T1ZOebVw==
X-Google-Smtp-Source: ABdhPJyuCdvynsHZvXHdR//QEnftAk5NC9CoMZEIQd2kokXICMuJvhHXsZFxniNjkBP2m0j2iEDbKQ==
X-Received: by 2002:a1c:7909:: with SMTP id l9mr3660856wme.120.1607080938485; 
 Fri, 04 Dec 2020 03:22:18 -0800 (PST)
Received: from [10.0.0.21] (smtp.glidos.net. [82.69.85.168])
 by smtp.gmail.com with ESMTPSA id d8sm2671664wmb.11.2020.12.04.03.22.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Dec 2020 03:22:17 -0800 (PST)
From: Paul Gardiner <lists@glidos.net>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
 <87sg98ox2i.fsf@intel.com> <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
 <87v9dwm4fy.fsf@intel.com> <8705b7e4-9dba-1496-fdbb-15016be15fe6@glidos.net>
Message-ID: <81a0f2f9-8669-8409-1ca5-8111bedef6b1@glidos.net>
Date: Fri, 4 Dec 2020 11:22:18 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <8705b7e4-9dba-1496-fdbb-15016be15fe6@glidos.net>
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

On 24/11/2020 15:03, Paul Gardiner wrote:
> On 23/11/2020 16:19, Jani Nikula wrote:
>> On Sat, 21 Nov 2020, Paul Gardiner <lists@glidos.net> wrote:
>>> On 17/11/2020 14:52, Jani Nikula wrote:
>>>> On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>>> I use an open source DVR called MythTV. I've just swapped from using
>>>>> nvidia graphics to intel graphics. Generally it's working great, but
>>>>> I've run into one thing I used to do with the old system that I cannot
>>>>> find out how to achieve with the new.
>>>>>
>>>>> MythTV doesn't currently entirely handle starting without a TV
>>>>> connected. With nvidia graphics I could specify, within the X config,
>>>>> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into
>>>>> thinking there was a TV. With intel graphics I can load EDID, but 
>>>>> so far
>>>>> I haven't discovered an equivalent of the "ConnectedMonitor" option.
>>>>
>>>> Sorry for the delay, I seem to have missed this.
>>>>
>>>> Please try a kernel command-line parameter to force enable the
>>>> connector.
>>>>
>>>> video=TV-1:e
>>>>
>>>> Assuming the connector name is "TV-1"; replace with whatever you have.
>>>
>>>
>>> Thanks for the reply. I gave that a try, in my case "video=HDMI1:e", but
>>> saw no difference. That's KMS, right? Is there anything I might have
>>> failed to install or enable that KMS relies on? Are there any logs I
>>> should monitor?
>>
>> I think it should probably be HDMI-1 with the hyphen; is that a typo
>> above or in the command line you used?
> 
> Thanks for the continued help. I tried "video=HDMI1:e" because my Xorg 
> log listed outputs HDMI1, HDMI2, DP1 and VIRTUAL1. I've now tried 
> "video=HDMI-1:e", but still no luck.

Not wishing to hassle you, but before I give up, any further thoughts on 
this?  I have a solution at least, which is to use a EDID emulator, so 
it's no great inconvenience how it is.

Cheers,
	Paul.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
