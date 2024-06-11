Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1A6903CB1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1B310E63F;
	Tue, 11 Jun 2024 13:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="zvNqtS6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BD010E636
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:06:03 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-42138eadf64so9151555e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 06:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718111162; x=1718715962;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3SD2wtmek1HGb1XF4QLoRYKm3DzXn6QzOUC0m41QRZI=;
 b=zvNqtS6a0AMaWaeqK9XIEdG2fJ7sMGeHXvCCQQKL4B+NxbLwTT94e4JEhyisQ82je9
 d+8f+IDiqTEU0Xbm0wJfaeiVTp9dm8tvuv7yqe24NvmEmex8Z1fNYrRNNTtKvAWZ7V8F
 PuYo+OfD0fktT+CODSgYjCFycEN4DWmyVz5zcSxo2SPHCUnENKH7DlM91vBZJNQ38mZD
 dq+Oj6+tXp8Z8XTF1dEH2wMnIRKZs2QLW2CImsF2i3lliwzaoiz85MWTPsczYYrAQwD2
 O+urMtQ8KW3FFhMeBojckUrz29hZM9aCl6vq/YG6cja8kGGV/Mgf9E7eBOrrY+sIBd9E
 t2XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718111162; x=1718715962;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3SD2wtmek1HGb1XF4QLoRYKm3DzXn6QzOUC0m41QRZI=;
 b=o4ALKRyxDpfOOTYEdDdjHchL6tZBdNDcgwmCSRlmq0DrthK+s3uVkAUKDR09PFXhpI
 o9qvmBJb//AvcpXy5757LozLLzD2R6IXBXr5ICNXXw7x35NC5iRPP4PbrfvNZ/T3N3Ux
 1+zERrdM2WPPO7hBUsoiprAaYRtcW0IwbvueFQ4V1FNcFtuBieEel8lysmaPYaAFNQmt
 1XCIgnEr6cb15w/sI/DD3abKlc30DDiu+BMRtK+2ZnoWSTKVdptvaFose5q/VuidNbie
 Eq+b6bgGni3WiL+oUwtdNEcrd124oAz5ngUWK/LLqfpjD16RzK7zLtOXTlPYRa/rK2GF
 3trQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpBy1Rc2I+KvQzdRvw3aQXfb6GzVrj7iNqKrXJOIR9M8Yqltw/T0nTkxk8eoZqaUtGakV+B1AbslIYJTgXk9oIdouHD70HyaZiSRwkbNbY
X-Gm-Message-State: AOJu0Yxbiwb+6ekwdvBL6qtAyaz5l2s0yCFJtmuLB6nn8luNZ9iKhtRV
 fqwYmGDFmoYSboiSmNYX4ad73lvyC3NwVCuN60atjFEurYZ01NWyNHiPQl/24L8=
X-Google-Smtp-Source: AGHT+IFz6EJ9JzEssp0dkXZ2EofBOvB0qN3mlLIS4/BUXa40HdFqJO3LL8cLvhT9SfHR3EiOEPSPCw==
X-Received: by 2002:a05:6000:18a1:b0:35f:27b3:1d99 with SMTP id
 ffacd0b85a97d-35f27b31e8amr3670910f8f.31.1718111161605; 
 Tue, 11 Jun 2024 06:06:01 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-35f29116506sm3796546f8f.60.2024.06.11.06.06.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Jun 2024 06:06:01 -0700 (PDT)
Message-ID: <4228aef4-1d26-4a92-ab4c-5d6b96284b4b@ursulin.net>
Date: Tue, 11 Jun 2024 14:06:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] drm/i915: PREEMPT_RT related fixups.
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240605100152.4q1jSMuI@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240605100152.4q1jSMuI@linutronix.de>
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


Hi Sebastian,

On 05/06/2024 11:01, Sebastian Andrzej Siewior wrote:
> On 2024-04-05 16:18:18 [+0200], To intel-gfx@lists.freedesktop.org wrote:
> Hi,
> 
>> The following patches are from the PREEMPT_RT queue.  It is mostly about
>> disabling interrupts/preemption which leads to problems. Unfortunately
> …
> 
> Could I please get some feedback? I didn't receive anything but
> automated mails from bots and I can't tell if this is a problem or not.
> 
> As of -rc2 I noticed that I can drop
> 	[PATCH 06/10] drm/i915/gt: Queue and wait for the irq_work item.
> 
> from the series.

Previous CI results have unfortunately expired by now. I have tried 
re-queuing it but it also does not apply any longer so I'm afraid you 
will have to respin before anyone can see the results.

And this is not to say that I can promise someone will look at it or 
when. Maybe Jani you could ask for volunteers regarding the display 
related patches (head of the series) and Rodrigo you about the GuC 
change in 9/10?

Regards,

Tvrtko
