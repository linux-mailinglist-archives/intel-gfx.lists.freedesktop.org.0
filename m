Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060649B092F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1317C10EB15;
	Fri, 25 Oct 2024 16:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="XStIh/im";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38AA310EB15
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:08:20 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4315c1c7392so22279135e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 09:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1729872498; x=1730477298;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Stxp5ISHuFw+lfQ85pvprKh8Q2CZrakv/KrvYuqfpu4=;
 b=XStIh/im5SgAzLW2/3rYrKCIouXUD6WCYoYAEDWZMy7obzUzt/nsv1s1GDyRB+iFzE
 EA4n8AFmgzO2ScdJYWrVeThRCt3dUNik6Rp60jof159O8kdHN7JA8LECnYSTnX1/9ylP
 HbJ34NbAQC/hvfFQzmetWWUj3UcYVF0uOHT4L+NCDfqmbHqTlDx1c/h4wjaBDClndRqj
 898ooW3SGoCYs9hogfukbqAgrWAZD9iCzwNn88ruKQ7oXevm/8W/Hxtrqs2ziIam+Kgz
 XB4egX35A0AdB40X3uXamFTLGhTwK7CnOwG091kUgYhCNQRhgDH9Ryw+RKFxtIsq4Zvr
 +gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729872498; x=1730477298;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Stxp5ISHuFw+lfQ85pvprKh8Q2CZrakv/KrvYuqfpu4=;
 b=dMjqcXTTGMOLJlHJquI1b4FiXkx/m/x0vKm6ZAOVLknkDnm4e6SNiG/B6PHU/1Qkw5
 t13wsVckQDR8HqMRnUYrEPeeaMGVaXcjl+bixlCeJBI0ZL6D+ibfs2nXdpQFGtWFiORK
 3qC8DXeT3IRWBLcTnD4oZPbC9olAJCtXI1ymlNykPzAl1mxoOpWrH0VIfn8tbvQuNi+k
 tQWX2/k6upo07XG7pmbphEN+SevekTW3jKOF/XbefwFFCBQSjYTpamf+vysdb8e3PAco
 LoJWdohHUqhB0OWZusT1e7L+jMabzYpZmv1UiDOTlLWuFy8tcFp9fz1YjB2SQgtWgCIY
 69bw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUEdXfcdh8s/JeZ6WmSfSFkpOeGgM3wAVKqgmW1p0ndV5VUzEwMOKlSiVgYa8JcQOHj3ZPIOHfLo4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyfMQaHmPTQQJsDBlEH+3QkfzoxEx/EX+U8+n/tCKOoQ6b/5p3v
 FjugOGbkvDqZyDibG4YnlUXV3AVKj3gYJ2YZ2qTqSYu0tDoLS0dPpfbSZ3qE6Qs=
X-Google-Smtp-Source: AGHT+IGAUuvbQbrhR6ldISATJr5+HRv0vOcmgVDfeVxsfxZ+Vdcc89R70EqlwfGqow32ZrpRWjjjYQ==
X-Received: by 2002:a05:600c:3496:b0:431:4b88:d408 with SMTP id
 5b1f17b1804b1-431841ee388mr90537135e9.5.1729872498354; 
 Fri, 25 Oct 2024 09:08:18 -0700 (PDT)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4317d02dd84sm81004095e9.0.2024.10.25.09.08.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2024 09:08:18 -0700 (PDT)
Message-ID: <6224b42b-2421-4c54-8d65-7a378220005b@ursulin.net>
Date: Fri, 25 Oct 2024 17:08:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Nitin Gote <nitin.r.gote@intel.com>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, nirmoy.das@intel.com
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
 <20241024185813.GK5725@mdroper-desk1.amr.corp.intel.com>
 <0e9813a8-0af6-4d06-971e-7909796bd9b5@ursulin.net>
 <Zxt_KGuS_HjxfHv1@ashyti-mobl2.lan>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <Zxt_KGuS_HjxfHv1@ashyti-mobl2.lan>
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


On 25/10/2024 12:21, Andi Shyti wrote:
> On Fri, Oct 25, 2024 at 09:02:16AM +0100, Tvrtko Ursulin wrote:
>>
>> On 24/10/2024 19:58, Matt Roper wrote:
>>> On Thu, Oct 24, 2024 at 04:09:17PM +0530, Nitin Gote wrote:
>>>> There is ENGINE_TRACE() macro which introduce engine name
>>>> with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
>>>> over drm_err() drm_device based logging for engine debug log.
>>>
>>> Doesn't this just eliminate the logging completely if the driver is
>>> built without CONFIG_DRM_I915_TRACE_GEM?  That means that most users
>>> will probably get no dmesg output at all on failure now, which could
>>> make it harder for us to understand and debug user-reported bugs.
>>>
>>> Of course intel_ring_submission.c only gets used for the old
>>> pre-execlist platforms (HSW and older) so maybe there are few enough of
>>> those in active usage that we don't really get too many new bug reports
>>> anyway?
>>
>> Yeah, plus, the justification about engine name does not appear to hold,
>> since the old message was printing it already. So if there is something more
>> happening here under the covers please do explain it properly in the commit
>> message.
> 
> I'm sorry, but I already applied the patch.
> 
> I agree with it because most of the information provided are not
> really useful to the failure, but more to who is actually
> debugging the code.
> 
> Would it make sense to add a gt_err() after or before the
> ENGINE_TRACE() so that we have the error printing along with
> debug information?

I think so. Without that Matt's point that the patch makes harder to 
understand from the field bug report stands.

Regards,

Tvrtko
