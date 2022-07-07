Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73B356A233
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 14:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1BB18A56B;
	Thu,  7 Jul 2022 12:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20DC18A566;
 Thu,  7 Jul 2022 12:39:21 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id r14so20346186wrg.1;
 Thu, 07 Jul 2022 05:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rVeaFFos+N/hKDkaZya99xSTOH/pjvCsPZPHjW3rZWk=;
 b=k16NaiaVjNWC8nnpQFKRVkmsokDOvoroPvPTqRPbpFTj+lINFOonpDSJc69sTT6f3f
 R9tP4bVs9aSmCVjjLtFeyWpX+KD0neLpzuNYeGYm6ZpcQTorVc25Fl5ZJ9k8u2j6tAB9
 hZpKTeVlI0tNnCw1VhBEaRoxM+9rK5ZRrXxU1+FgWpt59pnpE8aZUjVqCwtIyTXvtZQl
 C8J3wYyStCrRaBlp3vPFp0YBqjpj+MoVJB5srrVfdJA/1MdVjnFAV3ewAeyWfjD6mEBt
 vG0C4XzXtEGvETN0LR0a7eeZyFhs7R4fxlN7R5lKQnZ0CYDB6jV/4zkTUFe9we8WK2hF
 7ijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rVeaFFos+N/hKDkaZya99xSTOH/pjvCsPZPHjW3rZWk=;
 b=JfTAkejk3YYLjBPYER990dqoSeV3LcBFqPk2wWc88gZZxNnPKldI/P2hc4vtLjvRrO
 ez2p5fMQdBa0opM4GdKHfg43+AlHH4ILC23hVgugaTvnSmCWv1tU4d6GHhmlWxSiy8a/
 WDkSwqAip09jDekEbzBl/KgVbfEOABd7CcKZpbus4j+RtUIz2jaMQTeXyd9fP9EUOxkF
 qItBxbkoULOknumX/CxW3eIZm/2sf7e7XdxkZxEVS9HMVsdh2z/Qn+u7V2vrrPD0sZPA
 8zGwJSY5u8ZiAc72SfRbtWP/AfFpuRg64N+ZON61go3MBGkKPqscawg7GqNVLIMYPv6Z
 H8SQ==
X-Gm-Message-State: AJIora/k+aSkJl+sF45Ppjzwh2oykmt68HfKjVAiHrhmeVk8KFHcm4qA
 I7bwzAEx+i4jJqNpDOqGqIs=
X-Google-Smtp-Source: AGRyM1uMGZ+2cPW6rzgbBCwoGVXecIcmCm+NnytVxuau278f97JB1ykAScerczIiWDdVZW7J8xR4cQ==
X-Received: by 2002:a5d:6b0e:0:b0:21d:7886:f4ba with SMTP id
 v14-20020a5d6b0e000000b0021d7886f4bamr10901832wrw.91.1657197560213; 
 Thu, 07 Jul 2022 05:39:20 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.81])
 by smtp.googlemail.com with ESMTPSA id
 13-20020a05600c020d00b0039c362311d2sm29691620wmi.9.2022.07.07.05.39.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jul 2022 05:39:19 -0700 (PDT)
Message-ID: <57286333-d1a7-0cd2-14bd-f213429857f5@gmail.com>
Date: Thu, 7 Jul 2022 15:39:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220707122336.391524-1-matthew.auld@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20220707122336.391524-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] Revert "lib/i915: request CPU_ACCESS
 for fb objects"
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 7.7.2022 15.23, Matthew Auld wrote:
> This reverts commit 3cf110f8dcd1f4f02cf84339664b413abdaebf7d.
> 
> This is too big of a hammer it seems, since we can't really support
> flat-CCS with lmem + smem objects, and here adding the flag means we
> also attach the smem placement, which seems to break kms_ccs.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   lib/ioctl_wrappers.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
> index 7713e78b..09eb3ce7 100644
> --- a/lib/ioctl_wrappers.c
> +++ b/lib/ioctl_wrappers.c
> @@ -635,8 +635,7 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
>   	uint32_t handle;
>   
>   	if (gem_has_lmem(fd))
> -		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
> -								      REGION_LMEM(0));
> +		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
>   	else
>   		handle = gem_create(fd, size);
>   

