Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C08C878679
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 18:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621A210F3AE;
	Mon, 11 Mar 2024 17:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="T7adUkqN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E609110F3AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 17:43:02 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id
 5b1f17b1804b1-413306ed74cso2595535e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 10:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1710178981; x=1710783781;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tupqyVGlgzFh6svrG6NEDlDmwrx0fvi73o1aCOzD3eo=;
 b=T7adUkqNLs3hZvHs8nCyEPZBnkk3ubl2PmQhauwN3fXVWUHAsxymTjTzc3roh1ogcg
 lXS0HYlwBG5caiRBbOlqE8TUG1vOi63O5UBC2SW8GXiT0wKRL30Gpc2FCoI4ezJKAnQU
 CRbxvUFVup2IQaTIsY8eqagg//Bmo/PaD6ZFqcf+MhUKhjbJsReGnWR640en07EF8Ljk
 sxpCqdoDyDPRs6sTt8h6K1e/wW6TKRKR1MACkiN9d3z2pMa4kPlHyedA/glBp2ZEF4jI
 tvIeZteIq7pRMPtyRgcaeIvg6lob1PlcmRkrLRnTbvmbWx6NppMkx622eMuqBXhcUpwo
 pFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710178981; x=1710783781;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tupqyVGlgzFh6svrG6NEDlDmwrx0fvi73o1aCOzD3eo=;
 b=mONLMl1qBKgn1hMe6pZTgwQmttVDDn1E0xfMj9PcEmLNxPtpn/RFQkdhocBPXYKyLc
 TN/ygVVP/jGmJ+O7JYHwgPnHGlKmddy2vRh4ngw7JLYt7tUO1ntxPCL7WwoSpKZOKLfI
 pJqcLvmmXF6nf3qOhXWcQsbr2IIrB373xDN6/avz77h8qz/J9jwyoJafEQbX2rqRo1+T
 jKc0z99a7lC+NJBu8CiISjx2V1wkzCdz/6Jeh1J4+nx+yC8UmYcK4u1efSdURvo1UzAw
 7vYTgPcOHxRN93pygLlIb8C5yzKNdjOfXRjp66THYIsFxc+SM7oeqJn9HeLSQVOSkHJ4
 2oiw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/HwRy8kpjBWtT5P5Y6hcWnTZ3n2wE+JprUaHlMq4o674NEkqfQAvtniJoVPshZc/hBVR+3oKwUjZGocFGUIucTGTlZza6jizw3vIl+DkT
X-Gm-Message-State: AOJu0Yw1y2ffUv35cccfRJ05OPAdaGEteEKcNopZSwjfKWgFIi/S9rj4
 F2yHYvXDE1sm+MLx3ENh4X8ssWQTZmBMs9dJtJcVk2wcduEy1BjJCuJ1WABvx9M=
X-Google-Smtp-Source: AGHT+IG1yUMq1v6D4X9V8cHowRLL9A9KqrQNz4mava9aV9JnpFbNCUCcIWV5Yb4nMzPBUaZYl4ZXAg==
X-Received: by 2002:a05:600c:6a1a:b0:413:1285:6e40 with SMTP id
 jj26-20020a05600c6a1a00b0041312856e40mr5522716wmb.20.1710178981022; 
 Mon, 11 Mar 2024 10:43:01 -0700 (PDT)
Received: from [192.168.0.101] ([84.65.0.132])
 by smtp.gmail.com with ESMTPSA id
 p27-20020a05600c1d9b00b004132cf7c349sm2532208wms.38.2024.03.11.10.43.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Mar 2024 10:43:00 -0700 (PDT)
Message-ID: <3e260fe4-9e21-4997-a41d-8b547612b65c@ursulin.net>
Date: Mon, 11 Mar 2024 17:43:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] drm/i915: cleanup dead code
Content-Language: en-GB
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
References: <20240306193643.1897026-1-lucas.demarchi@intel.com>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240306193643.1897026-1-lucas.demarchi@intel.com>
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


On 06/03/2024 19:36, Lucas De Marchi wrote:
> Remove platforms that never had their PCI IDs added to the driver and
> are of course marked with requiring force_probe. Note that most of the
> code for those platforms is actually used by subsequent ones, so it's
> not a huge amount of code being removed.

I had PVC and xehpsdv back in October but could not collect all acks. :(

Last two patches from https://patchwork.freedesktop.org/series/124705/.

Regards,

Tvrtko

> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h is also changed on the
> xe side, but that should be ok: the defines are there only for compat
> reasons while building the display side (and none of these platforms
> have display, so it's build-issue only).
> 
> First patch is what motivated the others and was submitted alone
> @ 20240306144723.1826977-1-lucas.demarchi@intel.com .
> While loooking at this WA I was wondering why we still had some of that
> code around.
> 
> Build-tested only for now.
> 
> Lucas De Marchi (5):
>    drm/i915: Drop WA 16015675438
>    drm/i915: Drop dead code for xehpsdv
>    drm/i915: Update IP_VER(12, 50)
>    drm/i915: Drop dead code for pvc
>    drm/i915: Remove special handling for !RCS_MASK()
> 
>   Documentation/gpu/rfc/i915_vm_bind.h          |  11 +-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |   4 +-
>   .../i915/gem/selftests/i915_gem_client_blt.c  |   8 +-
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   5 +-
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  40 ++--
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  43 +---
>   .../drm/i915/gt/intel_execlists_submission.c  |  10 +-
>   drivers/gpu/drm/i915/gt/intel_gsc.c           |  15 --
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +-
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  52 +----
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.h        |   2 +-
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  59 ------
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  21 +-
>   drivers/gpu/drm/i915/gt/intel_gtt.c           |   2 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c           |  51 +----
>   drivers/gpu/drm/i915/gt/intel_migrate.c       |  22 +-
>   drivers/gpu/drm/i915/gt/intel_mocs.c          |  52 +----
>   drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>   drivers/gpu/drm/i915/gt/intel_sseu.c          |  13 +-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 193 +-----------------
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   6 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   4 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 -
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 -
>   drivers/gpu/drm/i915/i915_debugfs.c           |  12 --
>   drivers/gpu/drm/i915/i915_drv.h               |  13 --
>   drivers/gpu/drm/i915/i915_getparam.c          |   4 +-
>   drivers/gpu/drm/i915/i915_gpu_error.c         |   5 +-
>   drivers/gpu/drm/i915/i915_hwmon.c             |   6 -
>   drivers/gpu/drm/i915/i915_pci.c               |  61 +-----
>   drivers/gpu/drm/i915/i915_perf.c              |  19 +-
>   drivers/gpu/drm/i915/i915_query.c             |   2 +-
>   drivers/gpu/drm/i915/i915_reg.h               |   4 +-
>   drivers/gpu/drm/i915/intel_clock_gating.c     |  26 +--
>   drivers/gpu/drm/i915/intel_device_info.c      |   2 -
>   drivers/gpu/drm/i915/intel_device_info.h      |   2 -
>   drivers/gpu/drm/i915/intel_step.c             |  80 +-------
>   drivers/gpu/drm/i915/intel_uncore.c           | 159 +--------------
>   drivers/gpu/drm/i915/selftests/intel_uncore.c |   3 -
>   .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   6 -
>   43 files changed, 110 insertions(+), 928 deletions(-)
> 
