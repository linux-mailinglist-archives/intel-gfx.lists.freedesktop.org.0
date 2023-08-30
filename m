Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903CE78F4A7
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 23:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316D310E6EB;
	Thu, 31 Aug 2023 21:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA7D10E5AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 19:54:20 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-99c1c66876aso509566b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 12:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693425259; x=1694030059; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lYTTCqSEdcIJyTpZVB7E2UPb3ND2QCQc334nWhMiy+U=;
 b=KCuXBIWlAyfRG5cAbCuklqyYtUknQmTf0qARgUzJZEDxGcjkiGj2RPfvKQbYDKcXPU
 m76Sj8Uj+sGPPo6gaXxftrWauwh0g07S27DJKEP2+TNdq03ZXKfTrffmCTST3XJ0zEIA
 byIXNiwvjA2ZrceLNDmXWF7z89rWvpwYcxTv8ttSZOnAe5z+r5C6D4+GpDHiUGQ+RH8f
 ZU39wvGS0A6kbG5HSRKFpNfvk2i8MG0Vc1sPeDNlKtyrJ94gtNVeV2UJZUysElc9mMwj
 oOroXiIAnT16OMs8US97q2udPSBKVR1UuzgYXDmr1Wav5PKlL0eY32s8Cr8RvEfE8hF/
 bN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693425259; x=1694030059;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lYTTCqSEdcIJyTpZVB7E2UPb3ND2QCQc334nWhMiy+U=;
 b=QmiY9iqf4IUvn8+SO+DxeXjnEhUcm3P/3jw1oUXx0GeIhZaGNsAyKLc21P+mZCFLPm
 Qa3F4bTDo5MvU0NaNipBRYPFkCon5D55Q9cS7Rq1Jz+dVSrN2NCBqiV7WVIWcL1Q7y6h
 devy/18VUzExfi/sP7GR8YawBo8ZxopYjnCS67YJVTOOLlVBlFkof0K9koWqsHJOJqWq
 ByYQCBZyXz4cr9Yg4G8NNBnIJhb43vrGr3fBLZF05BUdaagijYs+dBKYsKGi3X9Kni/7
 0kYD4SyUea2NcskWrv7+BTruJWDxKdgJb1vhEfy8oSvP6ieW3u3jh+xX3rxVXAhwjfG3
 yGvw==
X-Gm-Message-State: AOJu0Yxj6+NmzRRDh5xks4MeZ+mLvhDR4Pztbf+dUbwNYOY/kwYLmzqB
 VmWQ6KPE5qJsY8RluhpSisA=
X-Google-Smtp-Source: AGHT+IFzSmlz/pwFX2xKSsV9ocT+amX0DS7F7b+ZBL9KRK2TYYC6CbpN4ABojmsIoe3uWCcOwyiEOA==
X-Received: by 2002:a17:906:3287:b0:9a1:ddb9:6550 with SMTP id
 7-20020a170906328700b009a1ddb96550mr2321538ejw.52.1693425258622; 
 Wed, 30 Aug 2023 12:54:18 -0700 (PDT)
Received: from ?IPV6:2a01:c23:b8a0:2d00:e558:bad6:b660:31e3?
 (dynamic-2a01-0c23-b8a0-2d00-e558-bad6-b660-31e3.c23.pool.telefonica.de.
 [2a01:c23:b8a0:2d00:e558:bad6:b660:31e3])
 by smtp.googlemail.com with ESMTPSA id
 v9-20020a170906488900b0099cc36c4681sm7530926ejq.157.2023.08.30.12.54.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Aug 2023 12:54:18 -0700 (PDT)
Message-ID: <2e31f088-72e5-6a15-4210-2a721c422d1d@gmail.com>
Date: Wed, 30 Aug 2023 21:54:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: imre.deak@intel.com, Tejun Heo <tj@kernel.org>
References: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
 <ZO-BkaGuVCgdr3wc@slm.duckdns.org> <ZO+Q0Oaw/1GkDx6T@ideak-desk.fi.intel.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <ZO+Q0Oaw/1GkDx6T@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 31 Aug 2023 21:33:53 +0000
Subject: Re: [Intel-gfx] WQ_UNBOUND warning since recent workqueue
 refactoring
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30.08.2023 20:56, Imre Deak wrote:
> On Wed, Aug 30, 2023 at 07:51:13AM -1000, Tejun Heo wrote:
> Hi,
> 
>> Hello,
>>
>> (cc'ing i915 folks)
>>
>> On Wed, Aug 30, 2023 at 04:57:42PM +0200, Heiner Kallweit wrote:
>>> Recently I started to see the following warning on linux-next and presumably
>>> this may be related to the refactoring of the workqueue core code.
>>>
>>> [   56.900223] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>>> [   56.923226] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>>> [   97.860430] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
>>> [   97.884453] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
>>>
>>> Adding WQ_UNBOUND to these queues didn't change the behavior.
>>
>> That should have made them go away as the code path isn't active at all for
>> WQ_UNBOUND workqueues. Can you please double check?
>>
>>> Maybe relevant: I run the affected system headless.
>>
>> i915 folks, workqueue recently added debug warnings which trigger when a
>> per-cpu work item hogs the CPU for too long - 10ms in this case. This is
>> problematic because such work item can stall other per-cpu work items.
>>
>> * Is it expected for the above two work functions to occupy the CPU for over
>>   10ms repeatedly?
> 
> No, this shouldn't happen.
> 
> I assume it happens in
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> 
> after cfd48ad8c4a9 ("drm/i915: Fix HPD polling, reenabling the output poll work as needed")
> 
> which could result in the above problem.
> 
> Could you give a try to
> https://lore.kernel.org/all/20230809104307.1218058-1-imre.deak@intel.com/
> 
> and if that doesn't help provide more information/logs, by opening a
> ticket at:
> https://gitlab.freedesktop.org/drm/intel/-/issues/new
> 
Done
https://gitlab.freedesktop.org/drm/intel/-/issues/9245

> Thanks,
> Imre
> 
>> * If so, can we make them use an unbound workqueue instead?
>>
>> Thanks.
>>
>> -- 
>> tejun

