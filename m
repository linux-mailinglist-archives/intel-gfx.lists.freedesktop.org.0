Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51E9FA766
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2024 18:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514F610E231;
	Sun, 22 Dec 2024 17:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="R1k9D2B6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D406210E1F8
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2024 17:47:42 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-38633b5dbcfso3397535f8f.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2024 09:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1734889661; x=1735494461;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=r/Wh7dlsTtSyOie9T2Y+OYC2xDaQ+RuOrcEN30bMdgw=;
 b=R1k9D2B65XwaUvugdPvwW0U2IaRWpSJBZzB5ygp6R9a8maN9kY6xFGllQeUW6qtcvt
 qsPgWkLzEcSdaCchODTiyaFk2k7Ra0UsVcivQrjGrXQ17w1pyCEyZRcVsUfgREpfXDnq
 39kCvkReTmmBalim0YFyi//blIGhRfe45CFN9x66renokV1RLBIRZaVNCXASc6oAOo8n
 r0VQECHtD1qQ8+K8kytM9cPSp5ymlMkz6GmvYwcGsNYJdgPUkTFVdc+6dRXaiDvV1ENu
 Ft+IJ8u+Binc6shxFgipcn/btH1YzF4onPBM6HrBqF509VmX13H1V/Vpa7T5ETsXWgmh
 J1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734889661; x=1735494461;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=r/Wh7dlsTtSyOie9T2Y+OYC2xDaQ+RuOrcEN30bMdgw=;
 b=KTDsIVXUy2crqUW86arI2BXuCX4/2b7k2tWbF7XlQmfC22ubYzua7LR/mu9ouV1ID3
 6nZy2QS54NGGqfBBOvO5pxHChKU5bFPVAFDkn8SeeVbsrH3TQgQWtflb0vg/BCvBlwg3
 13JLZz342mLPKlkKzD7UU63GLUYPHeGsbhJ8wPVNKCs5bKuCcqDudrtEgMSQJG0c8KNK
 g2CM02HbNB5L5jUtqGqMWjFD6Xzs/hYGqB9BGWA3g1ByxEne0+w9PnYh+M4kHuOaFMKr
 Ze0dqL/+8vU0E/vocnN4FXl3cz0ZfH+lmFEQx9WubLbA3wKhhzvjzgvqQPFbldO7tEg6
 Y57Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYFUUfMqQaOIniurzMGO6AayxGrWsrAX2TO1LdccfY/2aPC6rGt4gEbNDcs62LX85YBu1etirQrDo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyyR9+Y8AaXt+E0qUOvXFwd7TQvrCeS5HpefjLwbWHgaAILrTmx
 VgBMNJI5aKYXXsSD7jR1zb9msd4Q/adDhLdvEnZN0xXfBGY9pA/L4/7hX+CDNKo=
X-Gm-Gg: ASbGncvO++39HJ2rgUdo7CsOjrW4XnYA5b6OMnTACQVj9yYvKIRnJ0yz1hDabWwPyr0
 s4xkw2T0A4Fihcp7PJK3HuHnDOrlbg5NkPRLgJzNMfEfExugbvaCupKEVua90zmf9zMMwbr03nU
 YmLRQv54JP/NbzmdReoly3nWsFVfR0qmXw1bnNkvmmt8ZdagQ9xzKXGpVmRUVDMMnUyqjDI+BTd
 dasWCFhnEM+IYlz0gkOdvRfuasAVkQR1vtPe82VeD+7ssjMLqG6SPxS5F4lYmX6c58wC/SN
X-Google-Smtp-Source: AGHT+IHJL+6yNjathF2Ee9lE1rkdeYP9xHaeXikSysNI6MlFHislk/kp0Zrr2gSlMiO63k3f6I9rRQ==
X-Received: by 2002:a05:6000:1886:b0:38a:1ba4:d066 with SMTP id
 ffacd0b85a97d-38a221f3228mr9229094f8f.27.1734889661029; 
 Sun, 22 Dec 2024 09:47:41 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c848a47sm9269719f8f.62.2024.12.22.09.47.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Dec 2024 09:47:39 -0800 (PST)
Message-ID: <681ada21-204a-47b3-b071-418e02455012@ursulin.net>
Date: Sun, 22 Dec 2024 17:47:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
 <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
 <Z2XB1jhvfreb3kME@intel.com>
 <vpa2hxt64wyt3og363grrorkdebintntwrtsv5uvgxput3m3oj@t7yldrdsv7ca>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <vpa2hxt64wyt3og363grrorkdebintntwrtsv5uvgxput3m3oj@t7yldrdsv7ca>
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


On 20/12/2024 19:32, Lucas De Marchi wrote:
> On Fri, Dec 20, 2024 at 02:13:26PM -0500, Rodrigo Vivi wrote:
>> On Fri, Dec 20, 2024 at 10:15:04AM +0000, Tvrtko Ursulin wrote:
>>>
>>> On 20/12/2024 00:37, Vinay Belgaumkar wrote:
>>> > Use the PMU support being added in
>>> > https://patchwork.freedesktop.org/series/139121/ to add freq/c6 stats.
>>>
>>> Brace yourself for the customary "why". So yes, why?
>>>
>>> Gputop so far was a reference showcase for DRM fdinfo, nothing more. 
>>> Why add
>>> a _subset_ of PMU stats to it? Any other drivers could be wired up? 
>>> How far
>>> do people intend to grow it, considering alternatives with nicer UI 
>>> and more
>>> featureful exist?
>>
>> Well, currently intel_gpu_top doesn't support Xe and we really don't
>> have any intention to add xe support there.
>>
>> We don't believe it is a better UI and more features.

Hm what? :) With "nicer UI and more featureful" I was referring to the 
alternatives Lucas later listed. All are nicer than intel_gpu_top, not 
to mention than gputop.

>> Hopefully someday we can get qmassa [1] part of the distros and make 
>> that to
>> be our default to use the uapis that we add in Xe.
>>
>> But for now we were in the hope that we could use gputop for that 
>> which is
>> the current tool that supports Xe metrics. But well, I just noticed that
>> at least in Fedora it is not packaged :/
>>
>> $ rpm -ql igt-gpu-tools-1.27.1-0.4.20230215git45da871.fc40.x86_64 | 
>> grep top
>> /usr/bin/intel_gpu_top
>> /usr/share/man/man1/intel_gpu_top.1.gz
>>
>> [1] - https://github.com/ulissesf/qmassa
>>
>> So, our options are:
>>
>> 1. Add all the Xe support in intel_gpu_top
>> 2. Convince distros to build and package gputop along with 
>> intel_gpu_top in igt
>> 3. Convince distros to adopt qmaasa
> 
> 
> I think we should handle gputop as a reference implementation for a
> "top-like implementation for GPU".  I think end users have tools with
> better UIs like qmassa, or nvtop, or htop or other graphical
> applications and we shouldn't try to block that - doing something
> beautiful in gputop would be a lot of effort for little benefit if end
> users are already served by other tools.  Letting gputop as a reference
> impl for these tools to borrow code or consult, would be ideal IMO.
> 
> 
> As Tvrtko said, currently gputop is a reference showcase for DRM fdinfo.
> I think it can grow some capabilities and be a reference
> implementation for top-like application. If that means adding pmu, then
> be it.  However the pmu support needs to be added in a proper way so
> the tool always continue to be vendor-agnostic and that it's easy to
> add support for events from other vendors. That probably means that
> adding pmu-related things in the fdinfo or drm-client libs are probably
> not the way to go as a) it's crossing unrelated abstraction and b)
> breaking the vendor-agnostic nature of the tool.

100%.

>>
>> Meanwhile our PMU are blocked...
> 
> I don't think they should be blocked. The kernel impl was blocked for a
> long time in other things, not having PMU included somewhere like
> gputop.  If you want to read pmu, the #1 application is perf

Yes, perf was always enough and should still be.

> I think we can add pmu in gputop as a reference. If someone can grow
> gputop to have all the intel_gpu_top capabilities, but doing it in a
> proper vendor-agnostic way, awesome. At that time we may then retire
> intel_gpu_top and only use gputop as reference.

My 2p is that adding PMU support to gputop only makes sense if it will 
work with more than only xe and if people kind of see that would make 
having two top-like tools in IGT not great at that point. And that the 
road to completely subsume intel_gpu_top in gputop is not a long one 
once the first part is done properly.

I wasn't arguing for some nice UI if that was misunderstood somehow. 
(Don't know how.)

It may even come naturally because many of the nicer features of 
intel_gpu_top came by user demand. So assuming some PMU support gets 
added to xe users then might ask - "Hey can we have JSON/CSV output 
modes so we can use it like we used intel_gpu_top?". Or any other 
feature like sort modes or whatever.

Regards,

Tvrtko

> 
> Lucas De Marchi
> 
>>
>> Lucas, Thomas, thoughts?
>>
>>>
>>> Or in case the conclusion ends up being "yes", then lets at least 
>>> share some
>>> more code between intel_gpu_top and this work. Ie. make it in a way 
>>> gputop
>>> completely subsumes and replaces intel_gpu_top might be an idea.
>>
>> with this I agree as well.
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>>> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>> >
>>> > Vinay Belgaumkar (4):
>>> >    tools/gputop: Define data structs for PMU stats
>>> >    lib/igt_drm_clients: Add pdev and driver info
>>> >    lib/igt_perf: Add utils to extract PMU event info
>>> >    tools/gputop: Add GT freq and c6 stats
>>> >
>>> >   lib/igt_drm_clients.c |   6 ++
>>> >   lib/igt_drm_clients.h |   4 +
>>> >   lib/igt_perf.c        |  68 +++++++++++++
>>> >   lib/igt_perf.h        |   2 +
>>> >   tools/gputop.c        | 225 
>>> ++++++++++++++++++++++++++++++++++++++++++
>>> >   tools/meson.build     |   2 +-
>>> >   6 files changed, 306 insertions(+), 1 deletion(-)
>>> >
