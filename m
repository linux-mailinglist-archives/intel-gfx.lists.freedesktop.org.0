Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F11A93F999
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 17:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863D510E3C5;
	Mon, 29 Jul 2024 15:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="thL15SDg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D8810E3C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 15:37:00 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-428163f7635so16455645e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 08:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1722267419; x=1722872219;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rgHXGVz1/EJUtff/bBeRS7e1WQaVoBq5fd1LlNJ3h50=;
 b=thL15SDguyHY2g931ZQLCowz/j0YtHSCQxVR1xn1EiaiacTlKYtxRXTlPTahD/oJFZ
 yVXv2OJ718R/RxLtQDUivPL5OGAmKdrGK0nFrDMt2gOmsd4XHkjO+q9LWh0QxnY05bLT
 MRdcvalF0V1hYmrSqmGdrMB3aP4C3mgjgCLekPPOBWPszL5366jGcES3axgyyBk9R1Bs
 1N4Yfeyh8qXf97qEx9BheaS82NctuVpNjt/fNjF03+4nl2obwhqC7HiqPcwFfo5OrZ/W
 Q7PCTtMoXpR3nLbDrMogJ+9D0wyj4Kg6YjLWzcZw3RdLKWFrYprTx3LKVZ2fRS307vCa
 k1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722267419; x=1722872219;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rgHXGVz1/EJUtff/bBeRS7e1WQaVoBq5fd1LlNJ3h50=;
 b=fmgivNIKA5mCs0yQAG3reA+Tkt7UlabbpJzLnJ+unMAKu/pzhSFqk7XmvoXYRVXklY
 vzOqSRHumRhgo3YrVCWIQpg4NkL84hcWp601ad8ZGpXKIp7PH44yngaPBoYjDWJvMP6z
 T4DhsCnQy1HssYxa1RBsDt0u7+VAWbX1tpgMH/RmCayKAvzKaFOhKaKkVzJ4qm0NL6OR
 oJXi85wIR+0aoXyZgwPd30zgd3A7fZe1w2ryQaf9/wsFIgv3nMf8ot7MxVBgPoT7DyPo
 Z3A2v8OMx8brBeJBriUxIQsqPd/kxAgImiE6nPGWZKiqUe8iGY2jGfHLumj+m8G7E3DE
 0mVQ==
X-Gm-Message-State: AOJu0Ywroj0NO7p+GqOqJ+tNaUFEtUKsDcktTXAsK4YBnXpS/kTOjN17
 NqzijG61B0WCH5O3lqMLJRR7qWgEBCtPk5scsfOK6p2tWcJSosOQZy4hTVaarP0=
X-Google-Smtp-Source: AGHT+IE2EqQ0jclxbDxvxE5fAsVv96FCS8eiz4IZD+K+5A3DP8ls/Gcmf3KLVYV7sggyTq0WWrypEw==
X-Received: by 2002:a05:600c:4ed4:b0:428:1ce0:4dfd with SMTP id
 5b1f17b1804b1-4281ce04fafmr26979465e9.34.1722267418567; 
 Mon, 29 Jul 2024 08:36:58 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42805730e5dsm183322775e9.2.2024.07.29.08.36.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Jul 2024 08:36:58 -0700 (PDT)
Message-ID: <ad4bc34a-6cf3-49e2-855a-0163bfe9be78@ursulin.net>
Date: Mon, 29 Jul 2024 16:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
 <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
 <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
 <d791fb20-b90b-417a-a3f0-092c27ed8790@suswa.mountain>
 <14a742a4-6452-4396-9bdc-fae0caff8624@ursulin.net>
 <CH0PR11MB5444CD78CB4EA276F7ECF082E5B72@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <CH0PR11MB5444CD78CB4EA276F7ECF082E5B72@CH0PR11MB5444.namprd11.prod.outlook.com>
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


On 29/07/2024 15:59, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Tvrtko Ursulin <tursulin@ursulin.net>
> Sent: Monday, July 29, 2024 1:21 AM
> To: Dan Carpenter <dan.carpenter@linaro.org>
> Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; chris.p.wilson@linux.intel.com
> Subject: Re: [PATCH] drm/i915: Allow NULL memory region
>>
>>
>> On 26/07/2024 18:00, Dan Carpenter wrote:
>>> On Fri, Jul 26, 2024 at 09:17:20AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 25/07/2024 16:58, Dan Carpenter wrote:
>>>>> On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 12/07/2024 22:41, Jonathan Cavitt wrote:
>>>>>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>>>>>
>>>>>> For future reference please include some impact assessment in patches tagged
>>>>>> as fixes. Makes maintainers job, and even anyone's who tries to backport
>>>>>> stuff to stable at some future date, much easier if it is known how
>>>>>> important is the fix and in what circumstances can the problem it is fixing
>>>>>> trigger.
>>>>>>
>>>>>
>>>>> As someone doing backport work, I think this patch is fine.  Everyone
>>>>> knows the impact of a NULL dereference in probe().
>>>>>
>>>>> I guess with patches that add NULL dereferences, the trick is
>>>>> understanding when people are adding NULL checks to make a static
>>>>> checker happy or when it's a real bug.  But the fault lies with the
>>>>> people adding NULL checks just to make the tools happy.  Some of these
>>>>> pointless NULL checks end up in stable, but it's fine, extra NULL checks
>>>>> never hurt anyone.  If the maintainer wants to be extra safe by adding
>>>>> NULL checks then who are we to say otherwise.
>>>>>
>>>>> In other words normal patches shouldn't have to say. "I'm not lying" at
>>>>> the end.  It should be the pointless patches which say, "I'm doing a
>>>>> pointless thing.  Don't bother backporting."
>>>>>
>>>>> Most stable patch backports are done automatically and people have
>>>>> various tools and scripts to do that.  If the tools don't handle this
>>>>> patch automatically then they are defective.
>>>>
>>>> Right, and every few releases maintainers and authors get a bunch of emails
>>>> for patches which did not apply to some stable tree.
>>>>
>>>
>>> I believe these emails are only sent for commits that are tagged for
>>> stable.  For AUTOSEL patches, the backporting is done on a best effort
>>> basis.  On the other hand, hopefully this patch would have been tagged
>>> for stable if we hadn't fixed the bug so quickly.
>>>
>>>> In which case someone has to do manual work and then it is good to know how
>>>> important it is to backport something. For cases when it is not trivial. It
>>>> does not apply to this patch, but as a _best practice_ it is good if the
>>>> commit message explains the impacted platforms and scenarios.
>>>>
>>>> In this case I can follow the Fixes: tag and see the fix that this patches
>>>> fixes is only about ATS-M. Which if it was a more complicated patch might be
>>>> a reason to not need bother backporting past some kernel version where
>>>> platform X wasn't even supported.
>>>>
>>>> Therefore I think my point is that best practice is to include this the
>>>> commit text, so any future maintainer/backporter does not have to re-do
>>>> detective work, stands.
>>>
>>> This is a really elaborate hypothetical.  Are there kernels which are
>>> affected by this bug but don't support ATS-M?
>>
>> I am not sure why are we arguing against the value of putting a bit more
>> info in commit messages.
>>
>> When I was writing up the drm-intel-next-fixes pull request I already
>> had to follow the Fixes: chain for this one to understand the impact.
>>
>> This patch is already in and all but from my point of view best practice
>> still is for commit messages to be a bit more verbose than "fix null
>> pointer deref". At least when fixes are coming from inside Intel I think
>> we can assume people have enough info to asses and document.
> 
> For future reference, what kind of additional information would you have
> preferred been added to this patch that was not originally provided, and in
> what location should that information have been added (as a part of the
> commit message itself, after the Fixes tag, etc.)?

In this particular case something as simple as below would have made my 
job a little bit easier:

     drm/i915: Allow NULL memory region

     Prevent a NULL pointer access in intel_memory_regions_hw_probe which
     can happen on some ATS-M machines with specific BIOS configurations.

(And it may be wrong what I added but hey-ho, that's kind of the point 
of getting the information direct from the source instead of having to 
figure it out when writing pull requests.)

Regards,

Tvrtko
