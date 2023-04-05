Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D89946D868E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 21:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDE910E194;
	Wed,  5 Apr 2023 19:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0315410E242
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 19:10:27 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-930bc91df7bso120615566b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 12:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680721824;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ribtM2ZbcoOXE/IBijsaPUPjSn+wX+sRLQSIjtDYVwI=;
 b=lgYuElktQ/Ibf1pPS9rq9zwcEc7ZmyNsvCKJgBMpaYoOTVLgy6XvcqRATkd4uTkwmH
 Hv+6Ii9mCbrXLSvQQld1B5V/LkklYkicH8xvVCtRmsB0r2/rfnnP2anOoZFhm1Mtn6M2
 Fs6M5+3pb18mSkzj5J/+jnB/sgG4tnNYXJZ3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680721824;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ribtM2ZbcoOXE/IBijsaPUPjSn+wX+sRLQSIjtDYVwI=;
 b=pqb47RAu2k1dqRJZpXzO6Rm8NzGVrc3SnOniIA4vMevPs/jtHJLYcMXZgg7JaGJP42
 F6iTNLiwmkp3mrLEmQWTgUND0g+bIzAXqtOEXLaPm9Zg+a52mnA23uKv7fz/wqUqFj7N
 3ZjZ4pqxCBy4tBkaLHhKXQSdDYz01huMNsFn6g4CPAhyodZpNZ/jjEvjKe87cgkabuaM
 cRt+xNyEiFbO9MqDIRae7rcbZ5U4Tt2X8zdVi90k0a2ooMct82B3x63bh6ZFoMsdHq3w
 hsfcX3NbIxNQkrhezdnVOQvrQrqX6puTHo+kbYjkoW8PVPup+QyRcts7NmGAavpCLGJ6
 Q2rw==
X-Gm-Message-State: AAQBX9dvEJvGhliO2lG/kMy8iHxK1RhRBnJlcrnpCLJAXa0Ql+OPk31E
 REiOK8vZhtaaUD4YEvi/E/ImhA==
X-Google-Smtp-Source: AKy350ar9gkRn2bq9ty233NJkg43ocKb9/5QDKbUUXXL6+rbYyRxizZGLN8AJD/Uk2adPxUJ7TzaPg==
X-Received: by 2002:a17:906:7381:b0:930:7f40:c1bb with SMTP id
 f1-20020a170906738100b009307f40c1bbmr4176699ejl.4.1680721824233; 
 Wed, 05 Apr 2023 12:10:24 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 ty25-20020a170907c71900b00948ca65d61fsm3842640ejc.140.2023.04.05.12.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 12:10:23 -0700 (PDT)
Date: Wed, 5 Apr 2023 21:10:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ZC3HnRtVkwBCVuJQ@phenom.ffwll.local>
References: <20230405182855.GA1551@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230405182855.GA1551@linux-uq9g>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 08:28:55PM +0200, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> here's this week's PR for drm-misc-fixes. As requested, it comes
> a day earlier than usual due to Easter holidays.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2023-04-05:
> Short summary of fixes pull:
> 
>  * ivpu: DMA fence and suspend fixes
>  * nouveau: Color-depth fixes
>  * panfrost: Fix mmap error handling
> The following changes since commit 25bbe844ef5c4fb4d7d8dcaa0080f922b7cd3a16:
> 
>   drm: test: Fix 32-bit issue in drm_buddy_test (2023-03-29 17:14:15 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-04-05
> 
> for you to fetch changes up to 0ec8671837a61d841462179686c5819d951d3b10:
> 
>   accel/ivpu: Fix S3 system suspend when not idle (2023-04-05 09:07:26 +0200)

Pulled, thanks.

> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
>  * ivpu: DMA fence and suspend fixes
>  * nouveau: Color-depth fixes
>  * panfrost: Fix mmap error handling
> 
> ----------------------------------------------------------------
> Boris Brezillon (1):
>       drm/panfrost: Fix the panfrost_mmu_map_fault_addr() error path
> 
> Jacek Lawrynowicz (1):
>       accel/ivpu: Fix S3 system suspend when not idle
> 
> Karol Herbst (1):
>       drm/nouveau/disp: Support more modes by checking with lower bpc
> 
> Karol Wachowski (1):
>       accel/ivpu: Add dma fence to command buffers only
> 
>  drivers/accel/ivpu/ivpu_job.c           | 18 +++++++-----------
>  drivers/accel/ivpu/ivpu_pm.c            | 26 +++++++++++---------------
>  drivers/gpu/drm/nouveau/dispnv50/disp.c | 32 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/nouveau/nouveau_dp.c    |  8 +++++---
>  drivers/gpu/drm/panfrost/panfrost_mmu.c |  1 +
>  5 files changed, 56 insertions(+), 29 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Felix Imendörffer

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
