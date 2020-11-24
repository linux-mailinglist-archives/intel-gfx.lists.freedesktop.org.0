Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A531E2C2AAB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 16:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDC06E41D;
	Tue, 24 Nov 2020 15:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428826E41D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 15:03:57 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id h21so3204108wmb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 07:03:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CAaUJ0P0Kks1VZG/gOwRO3Xjw22umLBNPDQChD/VqsU=;
 b=uOY6s0Rmh10byvR8EZ1dDGf1Mu/TJ1+CuA5RFpc+FrS8MQuntBtGDHrIxmkV+03UQb
 BVCEqWYjqjmFgZDhuWZ7O9FT3oy5zSy7Euk7fqgjS49/X8nb6vVqhHpAY8wYmKvjlxVf
 SBcb3qLh6mivVODGK50rYUHRFoi4m6k/y1ddtnT/bdadv59XiPJRTq379z0NIKm5khEK
 Qtdbf5tXA1To1HQqgRH0xcsmTtl15ZkA073r4ytvH8H/J8yFOgN3ppsiGbcEnnDsalhB
 wzIzuFxuNinafQjTv5ypvZrrZ/VaQe+ReHSavHyk0Oeq4J51dVqQTEfFyz24Y74u+ez5
 Dd+w==
X-Gm-Message-State: AOAM530Q8PeSjaQx3666OBf6XligFKRXeavoSUEtauyxHQcRrDXXEDWB
 wnHpZdppAdPP+VZIcEdPWHZaCD1gojA=
X-Google-Smtp-Source: ABdhPJw/zgFI+pWUopWUTUl4n69dNQqvjJfsPTar3oxSOQVIW1FTUjOPGyXEKtRm9FN+mguKrJeDaQ==
X-Received: by 2002:a1c:f717:: with SMTP id v23mr4870654wmh.89.1606230235201; 
 Tue, 24 Nov 2020 07:03:55 -0800 (PST)
Received: from [10.0.0.21] (smtp.glidos.net. [82.69.85.168])
 by smtp.gmail.com with ESMTPSA id 17sm8177687wma.3.2020.11.24.07.03.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Nov 2020 07:03:54 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
 <87sg98ox2i.fsf@intel.com> <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
 <87v9dwm4fy.fsf@intel.com>
From: Paul Gardiner <lists@glidos.net>
Message-ID: <8705b7e4-9dba-1496-fdbb-15016be15fe6@glidos.net>
Date: Tue, 24 Nov 2020 15:03:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <87v9dwm4fy.fsf@intel.com>
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

On 23/11/2020 16:19, Jani Nikula wrote:
> On Sat, 21 Nov 2020, Paul Gardiner <lists@glidos.net> wrote:
>> On 17/11/2020 14:52, Jani Nikula wrote:
>>> On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>> I use an open source DVR called MythTV. I've just swapped from using
>>>> nvidia graphics to intel graphics. Generally it's working great, but
>>>> I've run into one thing I used to do with the old system that I cannot
>>>> find out how to achieve with the new.
>>>>
>>>> MythTV doesn't currently entirely handle starting without a TV
>>>> connected. With nvidia graphics I could specify, within the X config,
>>>> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into
>>>> thinking there was a TV. With intel graphics I can load EDID, but so far
>>>> I haven't discovered an equivalent of the "ConnectedMonitor" option.
>>>
>>> Sorry for the delay, I seem to have missed this.
>>>
>>> Please try a kernel command-line parameter to force enable the
>>> connector.
>>>
>>> video=TV-1:e
>>>
>>> Assuming the connector name is "TV-1"; replace with whatever you have.
>>
>>
>> Thanks for the reply. I gave that a try, in my case "video=HDMI1:e", but
>> saw no difference. That's KMS, right? Is there anything I might have
>> failed to install or enable that KMS relies on? Are there any logs I
>> should monitor?
> 
> I think it should probably be HDMI-1 with the hyphen; is that a typo
> above or in the command line you used?

Thanks for the continued help. I tried "video=HDMI1:e" because my Xorg 
log listed outputs HDMI1, HDMI2, DP1 and VIRTUAL1. I've now tried 
"video=HDMI-1:e", but still no luck.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
