Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AB2D0773
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Dec 2020 22:47:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3704289CBC;
	Sun,  6 Dec 2020 21:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4682989CBC
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Dec 2020 21:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607291269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OTK3a2EpgqcMFsmrPHPH78wqX4JkIQW5zqkRG3GIknw=;
 b=Hj0gyByvgDu0Rq1YE5neEAyLLyFJ9SXYRtEusp6RezfuEcypIUlm/pX/rYommhUVMYC7Yp
 +1g3x5Qxf8Srx7/o4IN8BAO7H8kndoatyrx7Wx4RIRqnfGJQpII0441YlDtdBmhoIyzog9
 HT9mEOqAgK5OQy6rhseB94qg75+UgYA=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-QjYCowtFOX-gfBX5wz0xqQ-1; Sun, 06 Dec 2020 16:47:47 -0500
X-MC-Unique: QjYCowtFOX-gfBX5wz0xqQ-1
Received: by mail-qk1-f200.google.com with SMTP id 198so10718094qkj.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Dec 2020 13:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=OTK3a2EpgqcMFsmrPHPH78wqX4JkIQW5zqkRG3GIknw=;
 b=Dg8HKLpIqL0ztlx6/hXt2Q9HIOAT2ztRv+VkZiplJjwDvafUU/abjcmZIcNp/FhaZP
 s5MW7NbzDOLq3I77wWJ6ysbBNh4f0HOUMGmYdkRId5DG2MurApPavDwrOSBW88W8rdJv
 4I8152RxAYAcbm0JH+0HFRVfv/PAWHOTP0ikzxWOLSuRKsRwe4fECG1NRV1I3L/9qnus
 H2ME9vx0MRGhxSU7RLwOnkTB5ohI2S19MgCq0j968Nwy30osSIQpDnXT0wMayf/grOQw
 VTYz6J7KgmiIZgaE78044lx/e3CBCT2nrLtufRlGMr2cFLPpOMp8WInoORZDEv/j9B0Q
 2U/g==
X-Gm-Message-State: AOAM530Sgn8sIgLEuQlc7HQZFKnhqQ0U8tSJIIexGZ3d1Lp7ZhzAdJO2
 eoV6yL8VS4zWgeipReACVwjW51BcxlcsjzZ2BWkB6qFGaiEHewdz9mYzxjsF1IyVlM4hhJ/xn9v
 OWbFd32TP6AWdjkOyC/bGsmF50HzN
X-Received: by 2002:a37:9301:: with SMTP id v1mr20962168qkd.419.1607291267446; 
 Sun, 06 Dec 2020 13:47:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxTSYUz8GprH7ZZQl7rfRTzOkUrvIm8134juk0lMfV/+12SIrmCKNfTzdhZMT6UYl2b500iiQ==
X-Received: by 2002:a37:9301:: with SMTP id v1mr20962158qkd.419.1607291267253; 
 Sun, 06 Dec 2020 13:47:47 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
 by smtp.gmail.com with ESMTPSA id o5sm565190qti.47.2020.12.06.13.47.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Dec 2020 13:47:46 -0800 (PST)
References: <20201205014340.148235-1-jsnitsel@redhat.com>
 <20201205014340.148235-3-jsnitsel@redhat.com>
 <875z5e99ez.fsf@nanos.tec.linutronix.de>
User-agent: mu4e 1.4.10; emacs 27.1
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
In-reply-to: <875z5e99ez.fsf@nanos.tec.linutronix.de>
Date: Sun, 06 Dec 2020 14:47:45 -0700
Message-ID: <87im9ehaim.fsf@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jsnitsel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/pmu: Use kstat_irqs to get
 interrupt count
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
Cc: Peter Zijlstra <peterz@infradead.org>, David Airlie <airlied@linux.ie>,
 Matthew Garrett <mjg59@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Jarkko Sakkinen <jarkko@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-integrity@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Thomas Gleixner @ 2020-12-06 09:38 MST:

> On Fri, Dec 04 2020 at 18:43, Jerry Snitselaar wrote:
>
>> Now that kstat_irqs is exported, get rid of count_interrupts in
>> i915_pmu.c
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -423,22 +423,6 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>  	return HRTIMER_RESTART;
>>  }
>>  
>> -static u64 count_interrupts(struct drm_i915_private *i915)
>> -{
>> -	/* open-coded kstat_irqs() */
>> -	struct irq_desc *desc = irq_to_desc(i915->drm.pdev->irq);
>> -	u64 sum = 0;
>> -	int cpu;
>> -
>> -	if (!desc || !desc->kstat_irqs)
>> -		return 0;
>> -
>> -	for_each_possible_cpu(cpu)
>> -		sum += *per_cpu_ptr(desc->kstat_irqs, cpu);
>> -
>> -	return sum;
>> -}
>
> May I ask why this has been merged in the first place?
>
> Nothing in a driver has ever to fiddle with the internals of an irq
> descriptor. We have functions for properly accessing them. Just because
> C allows to fiddle with everything is not a justification. If the
> required function is not exported then adding the export with a proper
> explanation is not asked too much.
>
> Also this lacks protection or at least a comment why this can be called
> safely and is not subject to a concurrent removal of the irq descriptor.
> The same problem exists when calling kstat_irqs(). It's even documented
> at the top of the function.
>
> Thanks,
>
>         tglx

I don't know the history behind this bit. I stumbled across it in cscope
when looking for places using kstat_irqs.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
