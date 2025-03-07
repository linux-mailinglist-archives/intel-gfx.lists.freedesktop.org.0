Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E4FA56260
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 09:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4814A10EAFD;
	Fri,  7 Mar 2025 08:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="XSLZfpYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CBE10EAFD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 08:14:18 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id
 ffacd0b85a97d-390e88caa4dso839847f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Mar 2025 00:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1741335257; x=1741940057;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6exokFfEuSQFFMOocWbnkCBpbbz+ko6+noHbubiPbgc=;
 b=XSLZfpYwdQH9nve4qe/m57IAbZuTx1SjCHZDwwiMWo15zltJzYcA9ZYe+jphMlme5P
 6jLG/ZWNN5N47e5WzoSPaqMPIljRUR41utisq14HR0kByJIUeQrrl2MCPcpR3NCIHs9V
 QIi5amZNC1uTXfqsS32jVtTyXN5SHvORG4x4aweLZ8QbPpQ7L0JelphqXL6k9hzyVTvZ
 mjQa8Jf/SnZwzjG8eN68awy/pH1vTSeksixXHIwgg5FQJ0eQ0wvnV1P01LdKDoBTWxXS
 NUSZD095AWoTLW1BP7vZthGOI5t0dOS3lLvQqZtlOESoZgq/mGoqRP+2ASlaFw0n8eXm
 sTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741335257; x=1741940057;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6exokFfEuSQFFMOocWbnkCBpbbz+ko6+noHbubiPbgc=;
 b=Osx0qxv9dPpVK5pjqUxcCOjXI8QP5e/2einCeuuRswzT1wCKYr6gx9bA+iXX+gnlka
 iEH3bVWFm0SOXLKo+tHqm6OmK0iobObTuMwNRbsn12pv6ZHiXfzCvz8tLrZ6M/oJv7gG
 evjy2/r/UD4PJJBIcD0k/ISCUZsAwC5HtKw/BkRn6qODX7DMZg43ZpeqvmbC30oAXGLY
 EtlHNmzLEfclgcvsbjjynJ/paEzpb3krKRxS8tU77HIBCQ4Gp+D8J1gzRzUV6BNPpBZA
 +TBWJ448050VTQZNQoX28Lc6zp9MB45qrQSUObSe+OmzaanZwwJ9yn49hKsd8jLOM7Ce
 17gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4B64DitIGwWN1CCmhMpBzMuWKiSr5GjzHTUhn6hE5PoRnOWdNezDg3+TH9UuRkSQYbcC7HYmdydQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyxeYtmmdsOZrLN8a0IEN6aZOYYj+6MsPu8ydsqAJoNVlIvJHyB
 mPAUaKaZTwS2jL5jQB+X+p0AjJwSmGPLBrD7D4ZUrjS1rn6290Jsj3SVSrN0Lp8=
X-Gm-Gg: ASbGnctBBu/1WgfMp7OkuY65A/aRE6Qb4w9CSmm7XPsuSIL+Q/wjpkV6JnkJGnzyMTP
 aGO8xDRScSYH8ZanRhb0EVA97zyRL6qdGasoSYaBhO48g28YACKAq8FdJrLfk0aqqw3F6m4EAiF
 voQibSC1+xLZ7W1VGlHKptl8pNZqxMagzEpdrC+1cD4s30U+/knhu61FIvcoPw6NeQ3FRgvdtgN
 v/JKY+fc77zhmgo156Rd+v6YtmCg1SAzkJ6WmF0FxC/GboXCO+G9DJs9RX1T+0GWpqNGIBDsZik
 lZzH6iOXUs1k/KoL5CzwIVlar0oPUqS3cafTRcAGsTsIZHHAFjdr76nN9ZoV
X-Google-Smtp-Source: AGHT+IFcitgTWJ6XKjzvVTkjMqtc6z/dbdB1zD94W/KYIBCJxdWne6TOE611EHfpUeBVBsl0KabPaQ==
X-Received: by 2002:a05:6000:2c7:b0:38f:451b:653c with SMTP id
 ffacd0b85a97d-39132d77a3bmr1117175f8f.7.1741335256760; 
 Fri, 07 Mar 2025 00:14:16 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3912bfdfdb9sm4529411f8f.27.2025.03.07.00.14.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Mar 2025 00:14:16 -0800 (PST)
Message-ID: <aa9ab326-0170-44eb-bd90-cfc4d25a3cfd@ursulin.net>
Date: Fri, 7 Mar 2025 08:14:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
To: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Mikolaj Wasiak <mikolaj.wasiak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, chris.p.wilson@intel.com
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
 <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
 <174125743728.766812.11198274438700228285@DEV-409>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <174125743728.766812.11198274438700228285@DEV-409>
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


On 06/03/2025 10:37, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2025-03-04 16:43:45)
>>
>> On 04/03/2025 13:09, Mikolaj Wasiak wrote:
>>> This test exposes bug in tigerlake hardware which prevents it from
>>> succeeding. Since the tested feature is only available on bugged hardware
>>> and we won't support any new hardware, this test is obsolete and
>>> should be removed.
>>
>> I randomly clicked on one TGL, one DG2, one MTL and one RKL in the CI
>> and only saw test passes. Then I looked at the patch below to see if
>> there is a skip condition but don't see one. So I end up confused since
>> commit message is making it sound like this only exists on Tigerlake and
>> it's failing all the time. Is it perhaps a sporadic failure? On all
>> platforms or just TGL? What am I missing?
> 
> The HW issue affects all gen12 platforms currently supported by i915. I
> don't have any data for derivatives, so I cannot confirm if this bug was
> fixed. The lrc_timestamp test was written to demonstrate this HW bug, to
> isolate it from (and explain) the pphwsp runtime discrepancies, covered
> by another selftest. The question is whether we want to keep a selftest
> that is expected to sporadically fail, that exists purely to hunt for
> those failures.
> 
> In the past, we have kept such selftests, but hidden them behind
> !IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN).
> 
> So,
> - keep the selftest and expect sporadic failures in BAT, or

Up to Intel - it's not the first sporadically failing test and in the 
past at least those were handled.

> - remove the selftest and completely forget about the HW issue, or
> - hide the selftest and stop it running on known bad platforms?

Either of these two are also fine I think, as long as, if the removal is 
chosen, it is made sure that either we already have the comment briefly 
explaining the above somewhere in code, at a suitable location, or that 
a brief comment is added with the removal. And commit message improved 
to be less misleading about the failure frequency.

Regards,

Tvrtko

