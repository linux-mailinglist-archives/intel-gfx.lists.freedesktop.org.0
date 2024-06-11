Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2366903E2A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880D410E0FB;
	Tue, 11 Jun 2024 13:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="Vb1ptMjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E6310E0FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:58:06 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-42165f6645fso9630395e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 06:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718114285; x=1718719085;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OCbu1H3n5MHTe61K5ap400pux/SApVi5XtmKitLKrUs=;
 b=Vb1ptMjHljacp3jnH7tQAr/7gcWdzhJoQfYx7Xc5nuLwDLdPoM25ahPTnCN3ViecOb
 S2OIb+436PlnBcIF8bkmVibFn1bT5B0rnsDVfG6xHD4QnF1zPGcXFTOeZbRMmfeQk1TJ
 7yE36p2MjuKT/Y4csL2e8pZze9H6PzwOGAIiBsS/qdGnHyoHHPWe2b64LrW3uKQDm+uM
 EpWLrKlB+cnfMCHsy54eh0TSDX5fxyhDoxz/aQcHF4dk1EmHQ1Sc9kKBCXCmMDtSz7UT
 /Pejeah8DD7JHacCAIcBQTcynZC5v1LUdsIXLb9jean3SUBf0AdFgkc58HWG0mf0HwQv
 fVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718114285; x=1718719085;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OCbu1H3n5MHTe61K5ap400pux/SApVi5XtmKitLKrUs=;
 b=HaxPDhVZquS8t/+KCU9m10MeHeVAQjoDimSEauvC7sThvCylpRhFHTx8tb48f4s1ah
 LF3v/GB94hA7z3CjPnEibf6jI78XOLhBbTVzdRV8OZ42n+XsbR8JDseEaJzNwr8Yogm+
 YaW1LZtSE30/oUc15wdGBaM/ljuwHv8qK9o0ImbvwrRGegRfJ69DLRH7b7hv5HcfnIDK
 8A/bS+rZGW459PiWnsW/afQgPWDumelOw8aWVAAHR/+MXFZucKXt8Vx6sHGtyMH5Z3Zl
 uA2//p749XVwhWWeKw2kSwP/Ho3WJFOXIT7Gv5yZZIwuCre2ZqBeJ+t0MtdkC7Oxy2tR
 3uJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNU6pCgxnf/OllqWRm4fjcr3BFbPpzjITPhPXEeZJdjrc5gXTo/SbSk4x0TYXKgoQ6lE0eX4tSYTf5vdpjIZO6ey+KHF6tjCTm1X/u+B5R
X-Gm-Message-State: AOJu0YxXtsgOT/w/ZLq6a84TBgmXkiPvUbkRm69Tirggw3+tBQW4DI3o
 j8nJjVWDI5tWtVQ9p3smC6GCR3LbtUP2hLkIlhasVR4KqAwcpMpCmao8xl2Vs7I=
X-Google-Smtp-Source: AGHT+IHTtJWpZeLrGy8DozD2HLw4472tTTmF71Bd6yVynmD2Fn5rz88FpkURGcO/pAy1AqMSJGDkCg==
X-Received: by 2002:a05:600c:1c29:b0:421:7da5:c1e7 with SMTP id
 5b1f17b1804b1-4217da5c7eamr70816615e9.2.1718114284815; 
 Tue, 11 Jun 2024 06:58:04 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-421580fe3cfsm210776225e9.9.2024.06.11.06.58.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Jun 2024 06:58:04 -0700 (PDT)
Message-ID: <22fc70cd-b836-4694-b69a-c273e5000b2e@ursulin.net>
Date: Tue, 11 Jun 2024 14:58:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gt: debugfs: Evaluate forcewake usage within
 locks
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Nirmoy Das <nirmoy.das@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
References: <20240607145131.217251-1-andi.shyti@linux.intel.com>
 <4cc62e14-2775-44f3-9857-eaf9598074a5@linux.intel.com>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <4cc62e14-2775-44f3-9857-eaf9598074a5@linux.intel.com>
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


On 10/06/2024 10:24, Nirmoy Das wrote:
> Hi Andi,
> 
> On 6/7/2024 4:51 PM, Andi Shyti wrote:
>> The forcewake count and domains listing is multi process critical
>> and the uncore provides a spinlock for such cases.
>>
>> Lock the forcewake evaluation section in the fw_domains_show()
>> debugfs interface.
>>
>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Needs a Fixes tag, below seems to be correct one.
> 
> 
> Fixes: 9dd4b065446a ("drm/i915/gt: Move pm debug files into a gt aware 
> debugfs")
> 
> Cc: <stable@vger.kernel.org> # v5.6+
> 
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

What is the back story here and why would it need backporting? IGT cares 
about the atomic view of user_forcewake_count and individual domains or 
what?

Regards,

Tvrtko


> 
> Regards,
> 
> Nirmoy
> 
> 
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> index 4fcba42cfe34..0437fd8217e0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> @@ -71,6 +71,8 @@ static int fw_domains_show(struct seq_file *m, void 
>> *data)
>>       struct intel_uncore_forcewake_domain *fw_domain;
>>       unsigned int tmp;
>> +    spin_lock_irq(&uncore->lock);
>> +
>>       seq_printf(m, "user.bypass_count = %u\n",
>>              uncore->user_forcewake_count);
>> @@ -79,6 +81,8 @@ static int fw_domains_show(struct seq_file *m, void 
>> *data)
>>                  intel_uncore_forcewake_domain_to_str(fw_domain->id),
>>                  READ_ONCE(fw_domain->wake_count));
>> +    spin_unlock_irq(&uncore->lock);
>> +
>>       return 0;
>>   }
>>   DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(fw_domains);
