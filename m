Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C36FB1A4B0
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8D610E55F;
	Mon,  4 Aug 2025 14:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HCENOHtt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAA910E7B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 15:05:28 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-af66d49daffso173305866b.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 08:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753974327; x=1754579127; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=nkJjgrL0o6u4F0KlYZbqrTlEbUii7EoXWMzIyUXeRyc=;
 b=HCENOHtt+O8G0fzjDpG1qOjKy4gBzXjz+zvB3uVxNbhcmD2AW0eDusm3W5fWoma9Jt
 lg8GYOvyvReX1E0VcvESuZjQRmssgjA5BYIrz/eCiqQQW77MbhU4JY7lKeekGuBPCTfr
 Te879fh9ZO5+Am8LJHyDEj84Pvr38SDdZJWZiKdJu+SkHwRqmIH0wEy0rwVW5gZ4GNgT
 u1lMtSXVDGaT8+Qk/+a2chLdJ4AWicRMoPtbEO3HwMtBacvtwPkLpQX9DKtFsIoKfkHN
 5C+wVB+VdWXmKtsIq31dMOBeVNgJ33D6cUNbOLnp1GJDXbZu4rxmL96ySItYTK/KSWMh
 bqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753974327; x=1754579127;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nkJjgrL0o6u4F0KlYZbqrTlEbUii7EoXWMzIyUXeRyc=;
 b=t8sHrJZNvL/fM+JCFc7mTE0CI+WzLv+RJFEXAChdoCxUEH/YS8gYBluxO3qnhCH2+x
 IgMDxEeoPEZjsfceXPu5lOy++81k5L0TczxS78XHc0dxPBooBUqD0yp//T27gzD1F7Bf
 abBqo0yyC3SY7OGR0zsmenATu8o0IwByLWNORY05Cy6k26lVlerfuTYRJb6/2iHLM4iU
 QGnHRKbFMOfg0IQF6eqQFv2OUtGMVyCqy3IbiALVeSPrFu2S99vZf4cq2XhJ/ecaEKY2
 Ci8tUYFJ0SRGhavBgIoZQBYyvjhMF9YlE08u04eoNUsJH3fDI1u8AtmsDhZrFD9Jk7E9
 mVIQ==
X-Gm-Message-State: AOJu0YyCwbnXTWDy4C9OsFiHoA4dTrX+dGtmqyagEmTrFjOMdksi7DRO
 RzwYeSA04S6ycydeMbxOMuowVxz2JWAZ9hDvbcoAXoWgENUDjT+Hi17D
X-Gm-Gg: ASbGncu8XocLVKmxvqnhqIOwsyWlBywSGKuRiiEvdgWhtcybqmfadW7Yxz8COwpE2nO
 kVUCIi1B9gLbXolMLiDPRNVuDKXvBaCeh/2GkiJBZSUxdN8W2j6kYB2pEni2ZBysp1BGhOE64Ow
 zoU+CvvOpoVhAiSeOfknDQS4jliTYSp/gNhyFeWehydgFDNpKgRI7JQF55fkqyBIOd2tOJoFBJw
 xOaNDW0tfgjgYqMvlKihpBgjgC0HX3oPmv11EHVdak7Zz4DrxNwXd30jGb3bl2gecHR18NmubjV
 NZ/Lk5GRzXTdeFJVSqZI2q20ETrBlt4vv7HCxr6gg4VQTwqSi6SHOfQII3UjEJwOfb/EXHRVLRF
 n0fpi3dC2JK98eDeSG1pii3BMkjbzKsR8ED8CxaYoD7z9W1ThWIS3xuGiHp7WXGTISfVFltE=
X-Google-Smtp-Source: AGHT+IHAivIPXwq/x+CZVWYOkEzpqfVAXSEyzoK0DyqBsqEp4wsdtjpWg6HodymDmCz1GlqrhqtLiA==
X-Received: by 2002:a17:907:e849:b0:ae3:595f:91a0 with SMTP id
 a640c23a62f3a-af8fd6b23dfmr901672766b.16.1753974326532; 
 Thu, 31 Jul 2025 08:05:26 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af91a0a3792sm122100866b.50.2025.07.31.08.05.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Jul 2025 08:05:25 -0700 (PDT)
Message-ID: <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
Date: Thu, 31 Jul 2025 17:07:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
Content-Language: nl, en-US
In-Reply-To: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 04 Aug 2025 14:23:32 +0000
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

Here's that Ubuntu launchpad bug on freedesktop.org, but including a 
possibly interesting fix from 5 months ago in the currently last comment:

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441

When Windows 10 goes out of support I expect a fair few of these older 
systems (supposedly without TPM) will get Linufied.

Regards,
Rene

On 31-07-2025 04:49, René Herman wrote:

> Hello all.
> 
> Addresses as per MANTAINERS, and Ville as per Git history...
> 
> I've been trying to assist a new Linux user with an old 2015 Alienware 
> 17 R2, i7-4980HQ (Iris Pro 5200) together with NVIDIA GTX980M.
> 
> The user experienced flickering (in a brightness sense) and had traced 
> this back to Intel DRRS. I supplied a simple test patch as
> 
> --- linux-6.8.0/drivers/gpu/drm/i915/display/intel_dp.c.orig
> +++ linux-6.8.0/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2727,6 +2727,8 @@
>   {
>       struct drm_i915_private *i915 = to_i915(connector->base.dev);
> 
> +    return false;
> +
>       if (pipe_config->vrr.enable)
>           return false;
> 
> which does indeed work. Set out to then solve it right(er) and ran into 
> the debugfs drrs ctl file, for him
> 
> /sys/kernel/debug/dri/1/crtc-0/i915_drrs_ctl
> 
> We haven't however been able to do anything useful with that. If we echo 
> 0 into it it seems that DRRS does temporarily go to "DRRS active: no" in 
> the corresponding i915_drrs_status file, but only seconds later it again 
> shows as "DRRS active: yes", and his problem returns/remains.
> 
> It's making the system largely unusable with Linux -- or are we/am I 
> missing something as to configuration?
> 
> The user is as said a new Linux user and will need to stick with generic 
> distribution kernels, Ubuntu here, but the debugfs thing seems to then 
> not work and a kernel parameter appears to not exist. When searching I 
> found this issue also at for example
> 
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1928138
> 
> and on the list at
> 
> https://lists.freedesktop.org/archives/intel-gfx/2017-October/145050.html
> 
> Is there something we/he could do to get DRRS disabled with a generic 
> distribution kernel? Should the i915_drrs_ctl thing have worked?
> 
> And if not, is there a possibility for a kernel parameter that does 
> something akin to that above working test patch (but then right)?
> 
> Kind regards,
> Rene Herman

