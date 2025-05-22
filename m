Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A32AC037A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 06:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5825C8E5C1;
	Thu, 22 May 2025 04:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="eFFKcUEd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770A09754A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 04:31:07 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-3a36abf5df9so3027204f8f.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 May 2025 21:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1747888266; x=1748493066;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gc9/xpX5KkhptHF6kK121wkQdt5R6g+YnU0EK0U87Bs=;
 b=eFFKcUEd/A5KpIywR2iATfEKKlni9U71/4FLxmgHlEX5RUq0A2S4mxuZlOpKmY5HC0
 uyM10WSJY1mMOHUmSJafLcdhlBwPXuxEozt7onpUrBADK2fFtMxnf6ZfK2pSGPdhI2FU
 Z0GM4hB7mXXbgJ54LF0O7e1K7Ol3mhWu8ZoFWgM7sCr7cENk+v9WP4vUwEP6HINUFqMZ
 AXSLKMQgWTSKqH9lL+6gii4J0RcT2OraTNzwPhNeWQ3k3GlKuosWLIYDisY9hGETFMTe
 TRzCwFKT4Jofakp1O2slgGDNguh5WbhAis8B7QOZZ9Q6O41SYYCj9OgJGf7a/tBidfSr
 ogHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747888266; x=1748493066;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gc9/xpX5KkhptHF6kK121wkQdt5R6g+YnU0EK0U87Bs=;
 b=JE3ZLE8AIdQGyji9sqD93tvNIFhPNlJRjUrpPmPytDPk4U2PkEuE5IKXAHc11JRWYL
 f2eZUvkOF95G4+4hG5xytIk6faFupZ1/kgkuP91Pjtr3NarNRcI7W+10ZFqmB4tI8t2s
 ym43AuZ716tOP+Dlaq4IaQRyUFbBD+uyQBacjve0QcdC6GagjIpsi75wqYHrcs8V9qnU
 rHl2611DfiXmamOkB86YCCPo+V21QlZRNRoFrqCWfmvv/8SBs0fPih5RsBLl0I5XkP+7
 m5L+ii8RVra5UlWIayTEtGX7n0SHIn2zDG7xHyyejs91XKiKHj8e27AP8v6ylUlvYXae
 0vUw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRATf3kOu3uaO0WCnEvvIVg0CI0Efc8hU+IRPix4H9s4lTu7lxu7U+slEmraRdyOPGBt5GBBHVk/E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwBUq/7c31elJbRzdN7yj5+MkMaUYUqCGc2myCOg6ljxjsGGKV8
 QNMw+WIuDDI4F/PSHjMx35nEJPaA62jkWie/gPO0V5lLW+YbUv2IvGVWvFTDvlivD5Y=
X-Gm-Gg: ASbGncvlq+S8wqu5L2dwnFp3uU2F2sN4vVFybHmtHTFkrX9NGhbTYpXJbHGn6kZT03v
 jwR8tFXOe565DdYi+Q6Q/fE0QTGnOSSMpOUSd74RnzEaryUg3E6stEDXksEqglKlRFcRYFhoXV9
 BsJnZdSfNyUdL7A6XFntpvLHN34treKOfmr6te09x0SV2cIEPlb/cD/b4DMCxbTlT0ueqz0+FSd
 A2t48zw9MBGl8hgty0X82FohbacGPmKi2+FNAYggTJfW0zVaz1SKH0jfk7EfvE40XjSruCD2iBc
 SREQJfgLs+FJ8OU0hFhMIOHA1910Ff0xOQh0zTPXkn2m7x1shbs8K5DS09Spz9LYBQ==
X-Google-Smtp-Source: AGHT+IGJk41DYbyx8AXXhjnVTYlHow7wrH3TjqCb5Qj7uOKMZaDByvu8EuHKLek0V9zOUrrfYAzWpw==
X-Received: by 2002:a05:6000:2911:b0:3a3:6bff:9735 with SMTP id
 ffacd0b85a97d-3a36bff9995mr12946580f8f.10.1747888265715; 
 Wed, 21 May 2025 21:31:05 -0700 (PDT)
Received: from [192.168.0.101] ([81.79.92.254])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-447f23c07bfsm90925115e9.23.2025.05.21.21.31.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 May 2025 21:31:05 -0700 (PDT)
Message-ID: <b1b652c5-199c-4908-af25-ca5006d2bda3@ursulin.net>
Date: Thu, 22 May 2025 05:31:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/2] Introduce a sysfs interface for lmem information
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20250519153418.44543-1-krzysztof.niemiec@intel.com>
 <174775327260.81385.8059929394366685323@jlahtine-mobl>
 <b88bb6af-2215-4f1c-8e48-05f36957c6ab@ursulin.net>
 <jdtdaeyiqkgr2uztzo5slfixmnhwf7swa3zjntg5cnn4eb475f@rf346gvalbot>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <jdtdaeyiqkgr2uztzo5slfixmnhwf7swa3zjntg5cnn4eb475f@rf346gvalbot>
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


On 21/05/2025 18:10, Krzysztof Niemiec wrote:
> On 2025-05-21 at 09:06:43 GMT, Tvrtko Ursulin wrote:
>>
>> On 20/05/2025 16:01, Joonas Lahtinen wrote:
>>> (+ Tvrtko, Rodrigo and Jani)
>>>
>>> Quoting Krzysztof Niemiec (2025-05-19 18:34:14)
>>>> Hi,
>>>>
>>>> This series introduces a way for applications to read local memory
>>>> information via files in the sysfs. So far the only way to do this was
>>>> via i915_query ioctl. This is slightly less handy than sysfs for
>>>> external users. Additionally, the ioctl has a capability check which
>>>> limits which users of a system might use it to get information.
>>>>
>>>> The goals of this series are:
>>>>
>>>>           1) Introduce a simpler interface to access lmem information,
>>>>           2) Lift the CAP_PERFMON check on that information, OR provide
>>>>              the administrator with a way to optionally lift it.
>>>>
>>>> The first patch introduces the general mechanism without protections.
>>>> This will effectively lift a capability check on obtaining the memory
>>>> information. The second patch introduces that check back inside the
>>>> _show() functions, but also adds a sysctl parameter allowing to override
>>>> the checks, if an administrator so decides.
>>>>
>>>> I'm sending this as RFC because I have a feeling that there's no
>>>> consensus whether memory information exposed in the patch should be
>>>> protected or not. Showing it to any user is strictly speaking an info
>>>> leak, but the severity thereof might be considered not that high, so I'd
>>>> rather leave it up to discussion first.
>>>>
>>>> If we decide for lifting the check, the first patch is sufficient.
>>>
>>> Nack on that.
>>>
>>> CPU memory footprint and GPU memory footprint have a very different
>>> nature. This was discussed to quite a length, please refer to mailing
>>> list archives.
>>>
>>>> If we
>>>> decide against it, the second patch protects the information by default,
>>>> but with a way to expose it as a conscious decision of the admin. I find
>>>> it a decent compromise.
>>>
>>> No need for the added complexity if we were to add a sysfs.
>>>
>>> If a sysfs is added, it can be made root readable by default but system
>>> admin is free to chown or chmod the file for more relaxed access. Back
>>> in the original discussion time, this was omitted for lack of users.
>>
>> Agreed, no need to complicate with redundant access controls in the kernel.
>>
>>> Even now, userspace/sysadmin could already essentially use setuid helper
>>> process that will only report the memory statistics.
>>>
>>> So I'm not really fully convinced this is needed at all.
>>>
>>> And if it is to be added for the convenience of usersppace, it should
>>> probably then be considered to be a standard interface across DRM drivers
>>> ala fdinfo or cgroups.
>>
>> Cgroup visibility for device memory exists in principle although i915 hasn't
>> been wired up to it.
>>
>> For system memory (integrated GPUs) there is some work in progress around
>> memcg accounting, although I am unsure if i915 would be automatically
>> covered or not.
>>
>> Also going a step back, from MangoHUDs point of view, I don't really see why
>> total GPU memory is very interesting? I would have thought it is more
>> interesting to know how much the monitored client is using, which is already
>> available via fdinfo. Total memory sounds like something which it could
>> leave to interpretation by the entity looking at the traces. (If the
>> monitored client is running alone then total_free =~ total - client, and if
>> it isn't running alone then it doesn't matter, no?)
>>
> 
> They use it to plot the VRAM usage so you have a rough idea of how much
> of the total the client is using. [1]
> 
> [1] https://github.com/flightlessmango/MangoHud/blob/master/src/hud_elements.cpp#L1471-L1485

I get what it does, I just don't see the huge value in plotting the 
total. Nevertheless it is available from the memory query, that part is 
not privileged.

If the query is too cumbersome, for some reason, I could be convinced 
for a total in sysfs but the rest looks too much.

Regards,

Tvrtko

>>>> This change has been requested in these parallel issues for i915 and Xe:
>>>>
>>>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14153
>>>> https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4861
>>>>
>>>> Thanks
>>>> Krzysztof
>>>>
>>>> Krzysztof Niemiec (2):
>>>>     drm/i915: Expose local memory information via sysfs
>>>>     drm/i915: Add protections to sysfs local memory information
>>>>
>>>>    drivers/gpu/drm/i915/i915_sysfs.c          |   6 +
>>>>    drivers/gpu/drm/i915/intel_memory_region.c | 136 +++++++++++++++++++++
>>>>    drivers/gpu/drm/i915/intel_memory_region.h |   3 +
>>>>    3 files changed, 145 insertions(+)
>>>>
>>>> -- 
>>>> 2.45.2
>>>> _
>>

