Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B57A93CF6D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CD410E223;
	Fri, 26 Jul 2024 08:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="wdYjZTep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225EA10E223
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 08:17:24 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-3687fd09251so1050967f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 01:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1721981842; x=1722586642;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=n102ZnsK6d7yNApEk5DSobZbFKpvFDEUOnlKU8XlqwE=;
 b=wdYjZTepO0KYBa5CMKKLc5fvMxJBdgpkUYlofONdAXB26L8NkfTmVCIO1gW5BXcZhm
 4LutGccKAOv3pLDTmMmE4e0cudMRl90sgoB3DtAuhJ9NpnHvUmBei6IbKM+oc9ErpYsg
 RFtWt0a2W0RzF7uu67sld8VS8z3pkhyl2fQmpqWLtzPNjrbDd92Rn51ztCVax5SkUe3c
 Ad0VTgywxwr9XrNWdFlkcNNSclnzgnERPva9ZF0UwAPp0bwYsUqHAafD3b0QkGaJrpAH
 FL3njPdmr8JsJg87TD0AIH0+U11fNMR8q83ee9+KZ22WvpEFztKBeXVvyWFa+vqORiQf
 7mMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721981842; x=1722586642;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=n102ZnsK6d7yNApEk5DSobZbFKpvFDEUOnlKU8XlqwE=;
 b=bx3Ad4t/DQoxHOgzyTinFJK2siK+cN1pS4uzZSI+HVupSQG75EVcsHhTKRnoYr2WTe
 LQfrJ28Nq0HF0LZFzTQE8LqnsvHoEgnsjy/+vwxZXgbnGDWbyV8i2+Q0Ob7TEDjryElm
 8g8cYYN+lT6c6geAaj/KsYatdncWHTJ6Kds9Leu2loMfrb4FfLwNN1JlCR5MNKiTC6lf
 urkiWodR0MjTHKmVvzotc1Be4rssc5DG4YQpf3zmD9CB7UZ6DxeLgG96IzjaDCfrQuS2
 JZxjFxchkqgIihKo1edJpzDMzvuMsw3BKD5Ti+MDE7vfX2uAek/noBwDT4XCCnsHpA+I
 6zmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQ08QldWgCF3cNRPzsq2UrARl/V6+qtVg6WPwHib0KOrjOIWO+tnnfgtZB3KVJ1VPQ71XG4whXgJq+42U4Snc7frUX9UTogIXJxPwH7Oxw
X-Gm-Message-State: AOJu0YwpQIl0gIvroR4yATHzmYX2eq0BM5Thh+CJPYCdy5dYOJVGWv9E
 UW4bc3qUrA3gC3W+uEugTb8a1Wr92t9sh9FcCN1VL+KLbm5bpk/GZVUgtY/Pqi4=
X-Google-Smtp-Source: AGHT+IHd3fUVJ+52M4cwNCWAHtDdQAhU56OBKAI2/damyYld0sNs6oj4WTWjn7qdZT6aPzO3GhzW4A==
X-Received: by 2002:adf:fe0c:0:b0:368:6596:c60c with SMTP id
 ffacd0b85a97d-36b3639dc76mr3211158f8f.30.1721981842219; 
 Fri, 26 Jul 2024 01:17:22 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36b368622c3sm4323923f8f.100.2024.07.26.01.17.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Jul 2024 01:17:21 -0700 (PDT)
Message-ID: <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
Date: Fri, 26 Jul 2024 09:17:20 +0100
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
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
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


On 25/07/2024 16:58, Dan Carpenter wrote:
> On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
>>
>> Hi,
>>
>> On 12/07/2024 22:41, Jonathan Cavitt wrote:
>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>
>> For future reference please include some impact assessment in patches tagged
>> as fixes. Makes maintainers job, and even anyone's who tries to backport
>> stuff to stable at some future date, much easier if it is known how
>> important is the fix and in what circumstances can the problem it is fixing
>> trigger.
>>
> 
> As someone doing backport work, I think this patch is fine.  Everyone
> knows the impact of a NULL dereference in probe().
> 
> I guess with patches that add NULL dereferences, the trick is
> understanding when people are adding NULL checks to make a static
> checker happy or when it's a real bug.  But the fault lies with the
> people adding NULL checks just to make the tools happy.  Some of these
> pointless NULL checks end up in stable, but it's fine, extra NULL checks
> never hurt anyone.  If the maintainer wants to be extra safe by adding
> NULL checks then who are we to say otherwise.
> 
> In other words normal patches shouldn't have to say. "I'm not lying" at
> the end.  It should be the pointless patches which say, "I'm doing a
> pointless thing.  Don't bother backporting."
> 
> Most stable patch backports are done automatically and people have
> various tools and scripts to do that.  If the tools don't handle this
> patch automatically then they are defective.

Right, and every few releases maintainers and authors get a bunch of 
emails for patches which did not apply to some stable tree.

In which case someone has to do manual work and then it is good to know 
how important it is to backport something. For cases when it is not 
trivial. It does not apply to this patch, but as a _best practice_ it is 
good if the commit message explains the impacted platforms and scenarios.

In this case I can follow the Fixes: tag and see the fix that this 
patches fixes is only about ATS-M. Which if it was a more complicated 
patch might be a reason to not need bother backporting past some kernel 
version where platform X wasn't even supported.

Therefore I think my point is that best practice is to include this the 
commit text, so any future maintainer/backporter does not have to re-do 
detective work, stands.

Regards,

Tvrtko
