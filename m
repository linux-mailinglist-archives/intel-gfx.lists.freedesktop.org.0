Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2566A3DBC1
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 14:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5103410E4C7;
	Thu, 20 Feb 2025 13:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="LMrE9b+g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6034810E1C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 13:53:14 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-4393dc02b78so6446775e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 05:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1740059593; x=1740664393;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jKtWU5Mkp+ViQ4pxX9o3rYjT+cW7LIalA0vDNcGKwaQ=;
 b=LMrE9b+gq4DvlV/wkSS8IgHsV+J5PYR/3X6Ca5pBztHhrJylD4h/z30rBZGzUPa8iB
 4nJBZrx7GjTpWWfoY+vXMIOdLWJuOkGef+LpagR+bhn9YKwPajjofbfEHv+mYxVfMaBz
 ZvjOnoU/xxZ+/e72TlSrcEbogGotYV8CXlQeAv0fwdbWz0v2GufAw/DSQg08n3wuFAcD
 UrhNavCVKK9IJJEO/nLNQWDz/fJbQn8+LWm3HVyeIdZOyfWg/mU+500rxUKsGSawghbf
 t7VvDDH5Xjck8DVmJ6ybSwenbquyFST9jY+NEXjyRBFsNGCO9FDwbqzbKsehHlZEjm9/
 Lsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740059593; x=1740664393;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jKtWU5Mkp+ViQ4pxX9o3rYjT+cW7LIalA0vDNcGKwaQ=;
 b=aj3WHDjTu1wz4frUN/4FkcYNZY53tb+3h4qbr2QW58GPqWciEGlt9zXB8/faYcnfGx
 VhXtnfboeSsUxUC4tCzbiPPcOPCu3FsO4f5R1s50LhBBhzpsb6DDD3FPg46uo9Xh3y7h
 s/ml05eCN8iulzaq0I38C+r13dRGEq2gZ9tSMQBLw0n58jJ0qLPMvl5hPDA/Mr40zq4g
 qRV+Ri8zQuNZhecjEM2FbLqwBMpCgDCwX90Iv69ZonFM4QR54HvOeFsHorvdrfIOLFGB
 RVInHrZirbuKa0lHlEpnf7HMBzmBRpvpOU18b/SPGlRHj4VpeJdMwA6lfC8Vq71voH1k
 4NrQ==
X-Gm-Message-State: AOJu0YxT5UvSQYHZJKZirzXqTf+Xw/mE6TJ6APoKoAD9P3WFuuVIGP+w
 pLtW/Lz/zoqX80BKwjGBYzw5WuNxLDTXHNgMHP6r52JBoIVViE9S4Af+VMFp7pg=
X-Gm-Gg: ASbGncv5y1UzUwCkBtGiY2oAzRGe1zKT2yrBEKsfxdShsILqFLiEBjgmTltBM9P8vv1
 TF/XiQofpUtuT1hpd7p2F0n7B50CSE0a3ycoYB60LLJ3Cw+TkeJRvMnUemc8L/2620FKzJ6zkV8
 2Juw/tFKsafRRW4lgH6KqeQjwekuzdpJcMIewJ/Dap0y5J4pp+P8xzugv06dDoKH+F4dX+UzV7j
 +SrE1tZtKYSXcNVbDGHzh3nnOzZmd1NNiBetuDZpER/aLrhUU2IHmfEr/G4K+VutJkYCfDskMOg
 ISQhj4sRltPDBvAkLJpO8tKuKP1P2zw=
X-Google-Smtp-Source: AGHT+IHVyVfSr40DoPL9tto6QBRRQS8+dyvmhbMW8aF7j2cG4zpdpnJ9eM2hAVoJbry/BtY6NBO7qQ==
X-Received: by 2002:a05:600c:354d:b0:439:8ec2:a9dc with SMTP id
 5b1f17b1804b1-439a4bf0d64mr22135985e9.31.1740059592373; 
 Thu, 20 Feb 2025 05:53:12 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4398e84efb9sm93108545e9.10.2025.02.20.05.53.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2025 05:53:11 -0800 (PST)
Message-ID: <15c019f5-a26b-47e5-9ec5-41746e63cae6@ursulin.net>
Date: Thu, 20 Feb 2025 13:53:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915: Add VM_DONTEXPAND to exported buffers
To: Jacek Lawrynowicz <jacek.lawrynowicz@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, karol.wachowski@intel.com,
 tomasz.rusinowicz@intel.com, Krzysztof Karas <krzysztof.karas@intel.com>
References: <20250114082303.1319508-1-jacek.lawrynowicz@linux.intel.com>
 <a712ee97-1851-4f6d-97b1-7d1cc136481f@linux.intel.com>
 <173996250609.74092.8072729956400006000@jlahtine-mobl>
 <22fedeac-0919-4d33-b4a3-ade7afce8261@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <22fedeac-0919-4d33-b4a3-ade7afce8261@linux.intel.com>
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


On 20/02/2025 13:14, Jacek Lawrynowicz wrote:
> Hi,
> 
> On 2/19/2025 11:55 AM, Joonas Lahtinen wrote:
>> Quoting Jacek Lawrynowicz (2025-02-11 17:57:03)
>>> Hi, can I submit this to drm-misc or should someone commit this to drm-intel?
>>
>> Is the this happening in linux-next or is it still completely out-of-tree?
> The patch is not merged so it is happening everywhere.
> 
>> Feels weird that the splat would not have happened in any hybrid GPU
>> systems in the past. Did you look what is the difference between your
>> driver and amdgpu/nouveau?
> 
> It looks like imported buffers are just never mmaped.
> 
> This is a call chain when mmapping imported buffer in amdgpu:
> drm_gem_mmap()->drm_gem_mmap_obj()->amdgpu_gem_object_mmap()->drm_gem_ttm_mmap()->ttm_bo_mmap_obj()
> 
> And this is intel_vpu call chain:
> drm_gem_mmap()->drm_gem_mmap_obj()->drm_gem_shmem_object_mmap()->drm_gem_shmem_mmap()->dma_buf_mmap()->i915_gem_dmabuf_mmap()
> 
> amdgpu does not check if the object is imported and just calls drm_gem_ttm_mmap() and dma_buf_mmap() is never called.
> Same with xe and nouveau. All drivers using drm_gem_shmem seems ok but besides them only couple small drivers check for import_attach in mmap.
> Looks like most drivers do not support mmapping imported buffers.
> Is this really possible? Do you have test coverage for this?

Without going into details here, commenting just on the "mmaping 
imported buffers" part.

My understanding is that mmaping imported buffers should not be 
supported by design. There was some discussion around this in 
https://lore.kernel.org/dri-devel/bc7f7844-0aa3-4802-b203-69d58e8be2fa@linux.intel.com/ 
(The thread is for a patch which added this ability to i915.).

Regards,

Tvrtko

> 
> PS.
> you may also want to add VM_PFNMAP, VM_DONTDUMP and VM_IO that you are setting for i915 buffers in i915_gem_object_mmap().
> 
> Jacek

