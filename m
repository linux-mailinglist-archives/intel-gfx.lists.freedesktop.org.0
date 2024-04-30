Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2A48B7B71
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 17:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347B3112076;
	Tue, 30 Apr 2024 15:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Kx9cs1DS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA21F112076
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 15:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1714490856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eWtxSZn1N9aOFm19Phv8DcHxTcsBJVBx/PojXqTTIKA=;
 b=Kx9cs1DSI1PLIQOx3sG41ngx6w5Q+Nkn5T5pftibTtO4Hyj+gr5NCSq5C/+oue4envlf4y
 uRQv7M1dVv476KBNHzC8mlMhb0JwsvLDUtx547dxvnpCnzssQEmyMFzXUL26DdHZ+OlTTs
 fh7FXCGy+N0Ddz7r46IKy4tPKR2qfUQ=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-444-korUJJ1bNLG2GLnPEk-muQ-1; Tue, 30 Apr 2024 11:27:35 -0400
X-MC-Unique: korUJJ1bNLG2GLnPEk-muQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-34da4921505so241842f8f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 08:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714490851; x=1715095651;
 h=content-transfer-encoding:in-reply-to:organization:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eWtxSZn1N9aOFm19Phv8DcHxTcsBJVBx/PojXqTTIKA=;
 b=PeadGIaCF9q7yUhafpXewsAmwNst3/fj2s8AAWqbjvNbPCZmFJepRxwOzkq5Tei64Y
 yKPvER6Hq06ZPXLy1ZrC9IUv/3DL7Ko3gHVTz2Dsx4kS/KL9aaPfq7PdmgKAJ47Po4Nl
 BhGvUsVbA4nwI5KgnJH8FGp6t8DzHA/3zby02C/E15T78R+abD5wnEojYX+vgMBIkjjD
 ApRdzVlfLvKgz0ZWUS8e09FxCMrk+6EQEKItDzuedT392+QInXkk3Da09KuqYeNsN2Xe
 p/D993emqE8WmQi6RpQfD/l11/WcTFyXMgJD+sPwzh6CbQvQttY0iS1wViSmh2PqxL3Q
 LLKw==
X-Gm-Message-State: AOJu0YwcAB5pBJnbA12s4HPzZ5B7T0qReYrbEhVmXIFQm7VSqKc3ew5w
 BqDvaA1okhwtgiI6xBYnNFRJsprcZWzIAeluVlFIOQdKg4db9uxl/dlZl9IFU40FJswDeL8QPD9
 qSoqTVA48EtKhjbfbsKtS3+Ut/HuejQSyOqsQt9dFl5YQShHO2odkRIA2R1KAga7jTw==
X-Received: by 2002:a5d:6da5:0:b0:34c:b2bf:25a2 with SMTP id
 u5-20020a5d6da5000000b0034cb2bf25a2mr9396664wrs.65.1714490851486; 
 Tue, 30 Apr 2024 08:27:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu4ZxUrtwb50f+b3zmNkyfi3f2GonTEC8ErfUDVZ55lEzkLL2hQttAJEidMAQDM5rIu1v95w==
X-Received: by 2002:a5d:6da5:0:b0:34c:b2bf:25a2 with SMTP id
 u5-20020a5d6da5000000b0034cb2bf25a2mr9396652wrs.65.1714490851159; 
 Tue, 30 Apr 2024 08:27:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 c14-20020adfa30e000000b0034da4e80885sm971075wrb.59.2024.04.30.08.27.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Apr 2024 08:27:30 -0700 (PDT)
Message-ID: <848f4b3b-eb6e-41e4-b410-4867351c6eeb@redhat.com>
Date: Tue, 30 Apr 2024 17:27:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: fix missing linux/debugfs.h includes
To: Jani Nikula <jani.nikula@linux.intel.com>,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, airlied@gmail.com, daniel@ffwll.ch,
 dmitry.baryshkov@linaro.org, lyude@redhat.com, andrzej.hajda@intel.com,
 lucas.demarchi@intel.com, alexander.deucher@amd.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel test robot <lkp@intel.com>
References: <20240430142622.217616-1-dakr@redhat.com>
 <875xvy3nr6.fsf@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <875xvy3nr6.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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

On 4/30/24 16:53, Jani Nikula wrote:
> On Tue, 30 Apr 2024, Danilo Krummrich <dakr@redhat.com> wrote:
>> After dropping linux/debugfs.h include from drm/drm_print.h the following
>> files in i915 miss the linux/debugfs.h include: i915_debugfs.c,
>> i915_debugfs_params.c and i915_gpu_error.c.
>>
>> Add the include to fix the corresponding build errors.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Fixes: 33d5ae6cacf4 ("drm/print: drop include debugfs.h and include where needed")
>> Closes: https://lore.kernel.org/oe-kbuild-all/202404260726.nyGuvl59-lkp@intel.com/
>> Signed-off-by: Danilo Krummrich <dakr@redhat.com>
> 
> Thanks, but it's already fixed by commit 7fa043eafdb7 ("drm/i915: fix
> build with missing debugfs includes") in drm-next.

Even better, note that drm-misc-next is still broken though.

- Danilo

> 
> BR,
> Jani.
> 
> 
>> ---
>>   drivers/gpu/drm/i915/i915_debugfs.c        | 1 +
>>   drivers/gpu/drm/i915/i915_debugfs_params.c | 1 +
>>   drivers/gpu/drm/i915/i915_gpu_error.c      | 1 +
>>   3 files changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>> index 24c78873b3cf..b552e27cdcd5 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -26,6 +26,7 @@
>>    *
>>    */
>>   
>> +#include <linux/debugfs.h>
>>   #include <linux/sched/mm.h>
>>   #include <linux/sort.h>
>>   #include <linux/string_helpers.h>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> index 8bca02025e09..295486b8ceb1 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> @@ -3,6 +3,7 @@
>>    * Copyright © 2019 Intel Corporation
>>    */
>>   
>> +#include <linux/debugfs.h>
>>   #include <linux/kernel.h>
>>   
>>   #include "i915_debugfs_params.h"
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 2594eb10c559..625b3c024540 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -28,6 +28,7 @@
>>    */
>>   
>>   #include <linux/ascii85.h>
>> +#include <linux/debugfs.h>
>>   #include <linux/highmem.h>
>>   #include <linux/nmi.h>
>>   #include <linux/pagevec.h>
>>
>> base-commit: 4a9a567ab101e659a4fafb7a691ff6b84531a10a
> 

