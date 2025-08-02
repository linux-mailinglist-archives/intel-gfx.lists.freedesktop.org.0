Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC18B18DF4
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Aug 2025 12:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8331910E004;
	Sat,  2 Aug 2025 10:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BYJ981Ox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2940710E004
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Aug 2025 10:34:30 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id
 4fb4d7f45d1cf-6157c81ff9eso3851559a12.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Aug 2025 03:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754130868; x=1754735668; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BPDH90Ipseb5fsuq0/lrfPBbYLJkTalgKoUEXPWHQB8=;
 b=BYJ981OxAPU36SLdc40VYRbdQIaQz2CgjMAzvLduNNLHaIJ9nse2v7+ce7Vu259YvE
 JWM94q/gy5XLjXP5xkDr84sJfrcVdtily04rbLtAIAlcWFMrDcX0R2rPEsFfRECM9aad
 3P1MScn+vmGUrtqjgWjUjHbwkCleD01J81nmDzckEoguNtSdvMob+cwS5/9XX0Xzm3vB
 4Yz/TzaqJ8qU9hFnq/XKAO+i+0XRvCb3n3HwZXvJMOcKg7nZev/lUkxHdpwi7hD2T773
 SK/yBCD8AgRIqZtquTBSqOTo+SKJrx+JZBje4PlqIDRZx+cSoZjwzHeVUXrI+v9YJjAY
 jSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754130868; x=1754735668;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BPDH90Ipseb5fsuq0/lrfPBbYLJkTalgKoUEXPWHQB8=;
 b=BMr8YSqtsCaNbmRIC6hqZC1UF/zyHqEnTixoqpRjTMm8ufBAPyuZ8WR9ROFujFy2D8
 o8fad9bu/llQfEgeuf54iZLBAspE5CweV3juECSQwKO3jkE2H8NWhuxRmf+w1k/ib+VG
 ep7FhCBfb7QRWftr6zQkKiJBMMvk5CDjItTA2ODuG3aDN2e0tUnkPzp1FWg+hmBr03tr
 H2emEra3efLuBR9ZN2MwlIi7w1sUu/V56wBCFd5AENTZs4MOufwRa6Y4nKZXHqfSQter
 bSdIlw2+auw4XpyIcwb8McPtGa/3ErfJtB9+q2H8CuUTpH+e+gjR2m1XRHrkaEm8/1AG
 LLkA==
X-Gm-Message-State: AOJu0Yziusps1rxGLXNRnVlvndmL3pfs9TkiF66HNjA1CnmfPFY2i0fp
 zUdBdrSSKGZzpZsRibxHHsErW0teeLVIoML1/aanpNvo+wmdgZqtXb5O
X-Gm-Gg: ASbGncsia6ZJYexyxKwGKsktljNv3nZ/1+eVIXDyHZDOTTBufV7xeQ673o93YgGykgf
 wFB9WOQfPY0a2RScM8FvVGsHm3L8xlJ3/6Mk5B+XV62o8NZoOmjXsUDvfqwUEoxC37VE6cNu1Id
 3/fSnvncjnGaWOQe4vZJMs3hxBlo0N4RkKRBaDs22yFpVeDlEHV8T5ob6nZTw5xmrIGwsj0F5BX
 OdNkC+cJzr992QPGz/m9cvaMeExDRNNl4WVj2i8FXgQDs5J3AohQwZ3LuFS4lFRe/CI7G0z2qDq
 NKE8jnWRMUeeyDYOC9/IotTk6j27DiJHmGDJjVu2QLrepOt/Q4SByXpxaGXptIw87vB02t8Y+U0
 QTJoYlAmExzNc/1oKfRRygQUxNs/czlIILqpCz/27kMo8gNLTBsI4d/lbop254HrvjgdRwBE=
X-Google-Smtp-Source: AGHT+IExrw/NbC198W5vNpxjfvf1kD5p9euULoz5pNlUqUJnhZbVlbc9NneHa/0qsLIPcmgEqpDxDA==
X-Received: by 2002:a17:906:d554:b0:ad4:f517:ca3 with SMTP id
 a640c23a62f3a-af94003330fmr323783266b.20.1754130868239; 
 Sat, 02 Aug 2025 03:34:28 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af91a0a3bd2sm420122066b.54.2025.08.02.03.34.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Aug 2025 03:34:27 -0700 (PDT)
Message-ID: <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
Date: Sat, 2 Aug 2025 12:36:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
Content-Language: nl, en-US
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
In-Reply-To: <b2250460639d81b79f15995c9769eac21849766b@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 01-08-2025 11:19, Jani Nikula wrote:

> On Thu, 31 Jul 2025, René Herman <rene.herman@gmail.com> wrote:
>> Here's that Ubuntu launchpad bug on freedesktop.org, but including a
>> possibly interesting fix from 5 months ago in the currently last comment:
>>
>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441
> 
> Might be useful to attach dmesg and VBT to the bug as described at [1].

Just in case: please note the freedesktop.org bug is not our bug but 
just a 4 year old same one. I also unfortunately don't have the hardware 
on hand, and it seems the person I am assisting with this can't due to 
vacation get to it right now.

Although I'm not a graphics/display person, seems to me it's more or 
less fixed by Arun Murthy (added to the To: list) in the last, still 
recent-ish comment on that bug?

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_2803858

I.e., could while working with the person with the hardware not figure 
out what the point of that i915_drrs_ctl would be if the system 
immediately enabled it again anyway, so Arun's approach seems to make 
sense to me.

This is probably going to be a more common issue soon when these older 
no-TPM Haswell systems get installed with Linux at the end of Windows 10 
support.

Regards,
Rene

