Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877B893EFC1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 10:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BABC10E28A;
	Mon, 29 Jul 2024 08:20:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="L3g73TWJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713BE10E28A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 08:20:55 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-369c609d0c7so1623976f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 01:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1722241254; x=1722846054;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yG8oYF3+3r4Npxu5E7I2HbuQEd8bgDFJBmkNkWkVOXQ=;
 b=L3g73TWJREo8GKhPN37OI6ZNVnqD9YeRn3WK4I0ytYlTHEZVBef2yXXi+QNTPYAfn7
 5+Du5ywA3cpOVvN0EQxQzxv9jwcbxhhYrzd5I0ArgLGSP26R7KYp+RwSby1Queqylfi0
 0IoLD8WkHjPengvCBjlS8StO8UzmbXMyg1lE9YuEulb+fPBW2bUpS3YkmhOeOjVtJ4hl
 VoU7af1NDSTrT/f32umIn/aKJyuCWstrA/lavQWg+jdpd6JW/gl+xAuW5RXeAWjIWqzw
 qoMHAxAKvbxKSRt3HHi7rjXihjd+GiEM37M4JrmDwIZh/vJqh8+SNLHB+O3TMvJW4Ul4
 hZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722241254; x=1722846054;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yG8oYF3+3r4Npxu5E7I2HbuQEd8bgDFJBmkNkWkVOXQ=;
 b=XNGIOzL5llt6j5nzu2E8GPeUOc5j4BTUGoZvrJ7hgikevrB6PJetiNl08m3C2piXJu
 SPxh0sajcTuWy5nMbFDL3+2iW9K8HXP4+X6zLAOWEO0fV/ZmzqKtjbkc+V2Alm3oWAQc
 CjVch/hvafO2VGlo75l/v3lADxfS66D7+lLRdILW9FVk5OgVSczRrn9XJ3G+K+X3th31
 JEfhkJ355qdBKVAhCbKBblhwSsjoatIsD9eO4KJsFjlgtOBi1tD1e7MdzrTBCRermDHD
 nVjbBYeLFOuVvtD04WUgVlUZGNT97RoQJWMWGoOIwwIReW0BS7nQH6Zvtq5yLbUVujxY
 lC1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVb237deWiVoGAkd6t/0ATLNk+zls8OpUeXdq3izRHLMdl37OBIt5C+A4n5ujK3aX//pEGHLj0claZhFsEpUHrmIrrwnil/NFMmD75qtdF6
X-Gm-Message-State: AOJu0YyPdqNOPFajbXhzXE/4b8Maiqn6yXizqpL5q8uUS7ol6xdhRq1v
 Q62kk43bfcpcX0FdZjb0AXfP6CndeCfmpAJJhVH2LjG/qYFBvUPA/5aOw7cLAUyEZt8j+SS5u+9
 0
X-Google-Smtp-Source: AGHT+IHwYCgNy7YYmR+5rHJwct4niTlwgipnBBfOUzmXnsT1iuPzjmVEK8bUzWkPc7i3fcuHWeazSg==
X-Received: by 2002:a05:6000:1fab:b0:368:6633:e23f with SMTP id
 ffacd0b85a97d-36b5d0d100fmr6767752f8f.38.1722241253431; 
 Mon, 29 Jul 2024 01:20:53 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4281ce04edbsm30457225e9.9.2024.07.29.01.20.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Jul 2024 01:20:53 -0700 (PDT)
Message-ID: <14a742a4-6452-4396-9bdc-fae0caff8624@ursulin.net>
Date: Mon, 29 Jul 2024 09:20:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
 <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
 <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
 <d791fb20-b90b-417a-a3f0-092c27ed8790@suswa.mountain>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <d791fb20-b90b-417a-a3f0-092c27ed8790@suswa.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 26/07/2024 18:00, Dan Carpenter wrote:
> On Fri, Jul 26, 2024 at 09:17:20AM +0100, Tvrtko Ursulin wrote:
>>
>> On 25/07/2024 16:58, Dan Carpenter wrote:
>>> On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 12/07/2024 22:41, Jonathan Cavitt wrote:
>>>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>>>
>>>> For future reference please include some impact assessment in patches tagged
>>>> as fixes. Makes maintainers job, and even anyone's who tries to backport
>>>> stuff to stable at some future date, much easier if it is known how
>>>> important is the fix and in what circumstances can the problem it is fixing
>>>> trigger.
>>>>
>>>
>>> As someone doing backport work, I think this patch is fine.  Everyone
>>> knows the impact of a NULL dereference in probe().
>>>
>>> I guess with patches that add NULL dereferences, the trick is
>>> understanding when people are adding NULL checks to make a static
>>> checker happy or when it's a real bug.  But the fault lies with the
>>> people adding NULL checks just to make the tools happy.  Some of these
>>> pointless NULL checks end up in stable, but it's fine, extra NULL checks
>>> never hurt anyone.  If the maintainer wants to be extra safe by adding
>>> NULL checks then who are we to say otherwise.
>>>
>>> In other words normal patches shouldn't have to say. "I'm not lying" at
>>> the end.  It should be the pointless patches which say, "I'm doing a
>>> pointless thing.  Don't bother backporting."
>>>
>>> Most stable patch backports are done automatically and people have
>>> various tools and scripts to do that.  If the tools don't handle this
>>> patch automatically then they are defective.
>>
>> Right, and every few releases maintainers and authors get a bunch of emails
>> for patches which did not apply to some stable tree.
>>
> 
> I believe these emails are only sent for commits that are tagged for
> stable.  For AUTOSEL patches, the backporting is done on a best effort
> basis.  On the other hand, hopefully this patch would have been tagged
> for stable if we hadn't fixed the bug so quickly.
> 
>> In which case someone has to do manual work and then it is good to know how
>> important it is to backport something. For cases when it is not trivial. It
>> does not apply to this patch, but as a _best practice_ it is good if the
>> commit message explains the impacted platforms and scenarios.
>>
>> In this case I can follow the Fixes: tag and see the fix that this patches
>> fixes is only about ATS-M. Which if it was a more complicated patch might be
>> a reason to not need bother backporting past some kernel version where
>> platform X wasn't even supported.
>>
>> Therefore I think my point is that best practice is to include this the
>> commit text, so any future maintainer/backporter does not have to re-do
>> detective work, stands.
> 
> This is a really elaborate hypothetical.  Are there kernels which are
> affected by this bug but don't support ATS-M?

I am not sure why are we arguing against the value of putting a bit more 
info in commit messages.

When I was writing up the drm-intel-next-fixes pull request I already 
had to follow the Fixes: chain for this one to understand the impact.

This patch is already in and all but from my point of view best practice 
still is for commit messages to be a bit more verbose than "fix null 
pointer deref". At least when fixes are coming from inside Intel I think 
we can assume people have enough info to asses and document.

Regards,

Tvrtko
