Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523ED87E955
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 13:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599ED10F69F;
	Mon, 18 Mar 2024 12:30:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="mLx0AXpp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B65610F2FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 07:58:35 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-3c38998684eso224370b6e.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 00:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601;
 t=1710748715; x=1711353515; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZoHpKQy6DfN7T8kVeyTSxYIGpsi/jXvN+vSJaAeMKfQ=;
 b=mLx0AXppw6Rdi9xByU4QnA1TUxVDD8uWYWJSNL9TxvEts9dXmepaJWqfMFY9zQtHN9
 SuxYluj5kyW2xwEQsEZOZxr3ga1wPy7eJiJ2ZnBnuULN2pDUHmJJ11kRQiX3GI2YA7RY
 dUGC1soulxyaOoQc2x107tZ7RIJ7ApW8GoJ5u15gjUl8gV5lNlIW9h2nGuXbZUBYkwPo
 2c3vEp2BsYLj37TZyYXr1ckZnWo6K9DA1P0a5P/3yDwSgXM/l1DIxc6uomUDAkk97SND
 FoftBHB4ggu0gnvj69BQP42g9EeW3VZjW5CNqz2uxVPjc0DgsPadsSM256VUM/8e9XQh
 R/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710748715; x=1711353515;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZoHpKQy6DfN7T8kVeyTSxYIGpsi/jXvN+vSJaAeMKfQ=;
 b=QDd6sLN3lzDtrlky/OZuFoDLUdlFAC+sABUqMTy5LZkBlzsm39LEbf91sOLr2PjGhn
 unnZfb6U8AGhm8F5Emj0bHQ7naj2SOdOgRXkSCnA4JPOQkDFUxljrn4s4sF8tAJG7Ky8
 jQp+ZRp5Jf2KcR8bcpJIPJ31Fs2Xbqj3IGJm+PV2iUHVqZ+5SrdRwbQE3qFs7iVpZy4f
 Qs4IFmjhTEvnFeTGx9wgoc7IgLoaToAMb/g+r/78MmTtXA8GneR4N8k6zCUR9OSTyGaf
 xuZuS52/imSkKjpz+NjkaCba2mb//hgkZfnFJLS3vV7j/2NpF4aVsleSjHd9KrSNzimA
 udsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVMbtAIOJ9EG6JdKsj5MNhA4oS1VDX6auhdslzYkNbTuTNHejqxOTsQxZzzkjf5D7Y0E0TCJWsseg1hLxXITrLWwwfJ4tCBXWtEvCbIt7zU
X-Gm-Message-State: AOJu0YwnH1UOh0211rp6TGOhyiDdlBR1yfKuL/3p8c/imyDfEn7CB6dB
 JnzGe1Jndrb69Ib/XXnQEqdbEfGcstwRKDWwzze2N17Xz9FrNFQ8wpoYke2zaug=
X-Google-Smtp-Source: AGHT+IF7H6AgtukiR4yPmZr3g0P/gRI8OBhCqGtaw0RzL3RwGC8hA0d+KEBJb8hsNIRld4/cf1klZw==
X-Received: by 2002:aca:1806:0:b0:3c2:4cd9:551d with SMTP id
 h6-20020aca1806000000b003c24cd9551dmr9965789oih.40.1710748714916; 
 Mon, 18 Mar 2024 00:58:34 -0700 (PDT)
Received: from [10.34.16.111] ([101.78.151.206])
 by smtp.gmail.com with ESMTPSA id
 le3-20020a056a004fc300b006e6c088d5afsm7436467pfb.177.2024.03.18.00.58.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Mar 2024 00:58:34 -0700 (PDT)
Message-ID: <004a0b4f-a619-4989-901f-251de3de4af1@huaqin.corp-partner.google.com>
Date: Mon, 18 Mar 2024 15:58:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <87il1zzmpt.fsf@intel.com> <ZfQqyLJBAAuNLKZ2@intel.com>
Content-Language: en-US
From: Dolan Liu <liuyong5@huaqin.corp-partner.google.com>
In-Reply-To: <ZfQqyLJBAAuNLKZ2@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 18 Mar 2024 12:30:57 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


this case have been there so many years, it's time to fix it if 
possible. And user-space software may improved by themselves in we 
didn't realize place.

even if not,  for the proof user-space setting  0, it's better to change to


    if (level < min || level == 0 )

         level =max;


Intel default FSP will set the default min is 2% (6/255). if someone 
missed the setting, it will be keep the default and level.min will be 
larger than 0.

if someone changed the default min in VBT or coreboot, the user-space 
lowest level set as 0, still can go though to this logic.


whatever, we think this one should correct back, otherwise it will keep 
occurring in each new kernel release on all Intel device, this is not 
very friendly to all developers.

and the only fix way is  hack patch to remove "level=max".


On 3/15/24 19:02, Ville Syrjälä wrote:
> On Wed, Mar 06, 2024 at 12:19:42PM +0200, Jani Nikula wrote:
>> On Wed, 06 Mar 2024, gareth.yu@intel.com wrote:
>>> From: Gareth Yu <gareth.yu@intel.com>
>>>
>>> Turn on the panel from zero brightness of the last state, the panel was set
>>> a maximum PWM in the flow. Once the panel initialization is completed, the
>>> backlight is restored to zero brightness. There is a flckering generated.
>> Please be more precise in describing what exactly happens and
>> when. Driver probe? Modeset? What restores backlight to zero brightness?
>>
>> Better yet, please file a bug at fdo gitlab, attach full dmesg with
>> debugs, etc.
>>
>> Before we had the concept of minimum brightness, the minimum was always
>> 0. And the check was:
>>
>> 	if (level == 0)
>> 		level = max;
>>
>> Historically, the point was, if you're enabling the display and
>> backlight, you don't want it to be at 0 brightness, because for most
>> displays that means a black screen.
> I think that hack was originally added becaue some silly
> userspace thingy was setting the backlight level to 0 on
> suspend/etc. and then forgetting to restore it back to a
> sane value afterwards. Dunno if that nonsense behaviour
> still persists to this day.
>
