Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339F892FC11
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 16:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE61510ED28;
	Fri, 12 Jul 2024 14:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="jdhrUngX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB2A10ED28
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 14:04:05 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-3d9bcb47182so1110401b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 07:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1720793045; x=1721397845; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=D1cTHYlLPKI285ag+BdzYzBGfmmvGEKJkmx+D9uE8GM=;
 b=jdhrUngXLHK7PiFBs92UzCLzmWcdKFalaVvFsVS2InbyCq9QmcHRPyajdAAOFIy6ko
 FEJmiwBTffTZihL+4NkB7d3sWDGB8P/mh8WVCKY/Ol2ICRjO3eoJ9ASqNrqPjl0OSdgA
 dq6BpxlZtEAOpIGkWW1KLNkBrOcEpgVyaLpC/BNVPn75V7O99r5+coedyOJinvRZU1JF
 t3BT1gktoWKRt+OMOGRoxp9GzaFN26d/OMA1qWXczM9j8vsfrapxatyIRkvVYDZ4wGgZ
 4AHfNA7Qqu29+xDb0CckHQjkQBsiV0utABxAfbuJzY0e6uAJQd9LaOH+09IGfOUrwRXp
 gJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720793045; x=1721397845;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=D1cTHYlLPKI285ag+BdzYzBGfmmvGEKJkmx+D9uE8GM=;
 b=uiRCMyaX1p8ADRpcVDiRFjE0/lir6ySJUGyQF2YgvLmxJ1N6wqqsIqtkWQg9iEQEOn
 ciE+rvT4GFALlhMcNnZabWQDcdNYylAdInRi3K1wGempcS2Y9Cz+FaK8397JnVVIHY4R
 REA+IKfYHbgmmIAKxdCo8nhTC6giKM+rOZaRxR/Ygwnk2GZsO7O/glC2MeceXD7DPA4K
 hhew7O/qQDy88LXmIPODWxv6gQLakYS3DxYI6OzY+7OrWM7+b4DCtm/Yni3rRsCMyxgi
 P8hdQb9sEN56xTVM5+eceK+8O41lahKhULkKMGqMawBzFIOqfpVVAE15mqyrQjuPyI7C
 i9YA==
X-Gm-Message-State: AOJu0Yy1koc5VKcdIcru+/Cj6bisf/gj1GqrwEN9EZt6FjDYmOynodRM
 bh66UWZ0PSWBh8IsnFyzA1DmpPoKDhJPU08XBB2wGWMMjfdkk3hc46fK9xMeuso=
X-Google-Smtp-Source: AGHT+IHZIoQpVUUnHbjOLC8GcpR52p9msO2+HdrVIRj8XsP1//ttomcb0hZ22kauiSjJrz9j/IMQHQ==
X-Received: by 2002:a05:6808:189d:b0:3da:a032:24a6 with SMTP id
 5614622812f47-3daa032397amr7378032b6e.19.1720793044948; 
 Fri, 12 Jul 2024 07:04:04 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:d26:9826:56eb:a2e5])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3d9db3232c2sm945763b6e.15.2024.07.12.07.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jul 2024 07:04:04 -0700 (PDT)
Date: Fri, 12 Jul 2024 09:04:02 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning
Message-ID: <085f37db-b2e0-4246-8850-1d6922fec222@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hello Jonathan Cavitt,

Commit 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup
warning") from Apr 22, 2024 (linux-next), leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/intel_memory_region.c:371 intel_memory_regions_hw_probe()
	error: potential NULL/IS_ERR bug 'mem'

drivers/gpu/drm/i915/intel_memory_region.c
    327 int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
    328 {
    329         int err, i;
    330 
    331         for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    332                 struct intel_memory_region *mem = ERR_PTR(-ENODEV);
    333                 u16 type, instance;
    334 
    335                 if (!HAS_REGION(i915, i))
    336                         continue;
    337 
    338                 type = intel_region_map[i].class;
    339                 instance = intel_region_map[i].instance;
    340                 switch (type) {
    341                 case INTEL_MEMORY_SYSTEM:
    342                         if (IS_DGFX(i915))
    343                                 mem = i915_gem_ttm_system_setup(i915, type,
    344                                                                 instance);
    345                         else
    346                                 mem = i915_gem_shmem_setup(i915, type,
    347                                                            instance);
    348                         break;
    349                 case INTEL_MEMORY_STOLEN_LOCAL:
    350                         mem = i915_gem_stolen_lmem_setup(i915, type, instance);


i915_gem_stolen_lmem_setup() used to only return error pointers but now it
returns NULL as well.

    351                         if (!IS_ERR(mem))
    352                                 i915->mm.stolen_region = mem;
    353                         break;
    354                 case INTEL_MEMORY_STOLEN_SYSTEM:
    355                         mem = i915_gem_stolen_smem_setup(i915, type, instance);
    356                         if (!IS_ERR(mem))
    357                                 i915->mm.stolen_region = mem;
    358                         break;
    359                 default:
    360                         continue;
    361                 }
    362 
    363                 if (IS_ERR(mem)) {
    364                         err = PTR_ERR(mem);
    365                         drm_err(&i915->drm,
    366                                 "Failed to setup region(%d) type=%d\n",
    367                                 err, type);
    368                         goto out_cleanup;
    369                 }
    370 
--> 371                 mem->id = i;
                        ^^^^^^^^^^^^
Potentially leading to a NULL dereference here?

    372                 i915->mm.regions[i] = mem;
    373         }
    374 
    375         for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    376                 struct intel_memory_region *mem = i915->mm.regions[i];
    377                 u64 region_size, io_size;

regards,
dan carpenter
