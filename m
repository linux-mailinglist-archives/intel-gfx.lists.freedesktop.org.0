Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 067192D3FC8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 11:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AFD16E9D2;
	Wed,  9 Dec 2020 10:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5266E9D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 10:19:31 +0000 (UTC)
IronPort-SDR: Unxj36CHQEcG7i9EZXBIjO3LY0FzN5flOj8Sqk5UjSqnn3JeFcGS28x1HpkK86tY5OEiBvIDkh
 adt6vg80K4Vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="170543990"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="170543990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 02:19:31 -0800
IronPort-SDR: +uPaWzNGbxnt/SBxfLBP+KvTSD4v4/AKQ4fJ8Xg03NLCJF7hghgDW91YBtM2TSZsfzXsS7BnWI
 R9x3v7IxWk/w==
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="407998330"
Received: from mmarkowi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.20.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 02:19:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Paul Gardiner <lists@glidos.net>, intel-gfx@lists.freedesktop.org
In-Reply-To: <81a0f2f9-8669-8409-1ca5-8111bedef6b1@glidos.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
 <87sg98ox2i.fsf@intel.com> <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
 <87v9dwm4fy.fsf@intel.com> <8705b7e4-9dba-1496-fdbb-15016be15fe6@glidos.net>
 <81a0f2f9-8669-8409-1ca5-8111bedef6b1@glidos.net>
Date: Wed, 09 Dec 2020 12:19:26 +0200
Message-ID: <87ft4f9t8x.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 04 Dec 2020, Paul Gardiner <lists@glidos.net> wrote:
> On 24/11/2020 15:03, Paul Gardiner wrote:
>> On 23/11/2020 16:19, Jani Nikula wrote:
>>> On Sat, 21 Nov 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>> On 17/11/2020 14:52, Jani Nikula wrote:
>>>>> On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
>>>>>> I use an open source DVR called MythTV. I've just swapped from using
>>>>>> nvidia graphics to intel graphics. Generally it's working great, but
>>>>>> I've run into one thing I used to do with the old system that I cannot
>>>>>> find out how to achieve with the new.
>>>>>>
>>>>>> MythTV doesn't currently entirely handle starting without a TV
>>>>>> connected. With nvidia graphics I could specify, within the X config,
>>>>>> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into
>>>>>> thinking there was a TV. With intel graphics I can load EDID, but 
>>>>>> so far
>>>>>> I haven't discovered an equivalent of the "ConnectedMonitor" option.
>>>>>
>>>>> Sorry for the delay, I seem to have missed this.
>>>>>
>>>>> Please try a kernel command-line parameter to force enable the
>>>>> connector.
>>>>>
>>>>> video=TV-1:e
>>>>>
>>>>> Assuming the connector name is "TV-1"; replace with whatever you have.
>>>>
>>>>
>>>> Thanks for the reply. I gave that a try, in my case "video=HDMI1:e", but
>>>> saw no difference. That's KMS, right? Is there anything I might have
>>>> failed to install or enable that KMS relies on? Are there any logs I
>>>> should monitor?
>>>
>>> I think it should probably be HDMI-1 with the hyphen; is that a typo
>>> above or in the command line you used?
>> 
>> Thanks for the continued help. I tried "video=HDMI1:e" because my Xorg 
>> log listed outputs HDMI1, HDMI2, DP1 and VIRTUAL1. I've now tried 
>> "video=HDMI-1:e", but still no luck.
>
> Not wishing to hassle you, but before I give up, any further thoughts on 
> this?  I have a solution at least, which is to use a EDID emulator, so 
> it's no great inconvenience how it is.

This should work. ISTR it's been used before by MythTV users. (I don't
know what you refer to with EDID emulator.)

Please file a bug over at [1]. Add drm.debug=14 module parameter, and
attach full dmesg from boot to reproducing the problem in the bug.

BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/issues/new

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
