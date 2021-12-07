Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B093046C04A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 17:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBEF872034;
	Tue,  7 Dec 2021 16:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019BB72034
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 16:04:56 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id z9so14694881qtj.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Dec 2021 08:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TiZ5qLe+HuMHs9eASHTkzenZJqScE7WpreVBZuR1vJ4=;
 b=KhtqE4vgWbzFDPZ2vIGNj4ksgbTAUOfRZ2luSAz8kvS8hARUl8M3riVl7bCNPosy3z
 2hpeuA2reTIeQ/JZTfgkT4jKZ9x93+o9/QwqICaL8eWDcb98eDBaYRpACLGk3BCUNdJ7
 QXMw8NMos8nMYFH+bOvCIj6bd2U6FQSJuL7WOcNqRRdmkNH6Vh+vkBfdWBDxbTiazbyB
 6GN4yEMVvEIg3xeXl34yROKPKhK5FuWZOwhdlgu2O+mk7hEfWxysGlIM4MVudQvYl67c
 qy1WQ2gRLCeX2PgDYqSe1n+yV9b8TNXYL5NSfCSq845KWPfsl7Oi08zZFIUP4rZb8gNF
 Qggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TiZ5qLe+HuMHs9eASHTkzenZJqScE7WpreVBZuR1vJ4=;
 b=5qibsYGEwr+ISb9YpCa0WR6gkBDCQuI1iqhvrx8cOl8YpdW5Tyn/vNEbRgvNCZCeAK
 sQNOFtw0syl1PsDcpKCtzZZGJ/48/owGTQ7pdObremwwPlu0HW3cNOPVqjplrvoBmjPJ
 tPmh/cukcMOaM5z8QQoV7NChykM8+JJBRmou3TZ2z1SXgNbDJGDHlwSlkjC8gudKT/F/
 1DRK5gPztU9Q9z2kHb3Wt3jiQ4RN86rxj9cULuelU+F+1I/2X0zdAVlTY4KoGjojb3Dm
 ESwUG/NKprDO5puR9YsAaLL5OHXY9HVLpTpaCbwbMRpPqCPlVq5/BKkLDU1foJjNdFyf
 BPSw==
X-Gm-Message-State: AOAM530/5pI3IfRVbSMaEDuzy7JfCHRGPkoE9K9vHyqojb8m25PfODyb
 B48Vq5s/mzKQpP0Mn7F1emH0GyNYFLqSPDTWWeGLFbE9i8M=
X-Google-Smtp-Source: ABdhPJxQs2FXsxOtBaloiAw7NL5/OnUY/6k6k7wk/9RyTPUYDt6EWqy9E42tTeraYyVQ7nNJXzd7cDlGoXFxsw3aTZ0=
X-Received: by 2002:a05:622a:1990:: with SMTP id
 u16mr49763001qtc.355.1638893096049; 
 Tue, 07 Dec 2021 08:04:56 -0800 (PST)
MIME-Version: 1.0
References: <20211207143336.11381-1-ramalingam.c@intel.com>
In-Reply-To: <20211207143336.11381-1-ramalingam.c@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 7 Dec 2021 16:04:28 +0000
Message-ID: <CAM0jSHMGZYr8fsk0k1BCJk-r5hR6bzoB=T1O4UKCbVkUb9GYug@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 0/2] Sanity Check for device memory region
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, Andi <andi.shyti@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 7 Dec 2021 at 14:34, Ramalingam C <ramalingam.c@intel.com> wrote:
>
> Changes for introducing the quick test on the device memory range and
> also a test of detailed validation for each addr of the range with read
> and write.
>
> Detailed testing is optionally enabled with a modparam i915.memtest=1

Series is missing Cc: dri-devel

Also on DG1, CI is apparently spitting out:

<7> [128.605872] i915 0000:03:00.0: [drm:i915_gem_init_stolen [i915]]
GEN6_STOLEN_RESERVED = 0x00000000ffc00107
<7> [128.605978] i915 0000:03:00.0: [drm:i915_gem_init_stolen [i915]]
Memory reserved for graphics device: 65536K, usable: 61440K
<3> [128.606145] i915 0000:03:00.0: Failed to read back from memory
region:[mem 0xfc000000-0xffffffff] at [0x00000040fc000000 +
0x0000000003fff000] for i915_gem_stolen_lmem_setup [i915]; wrote 0,
read (ff, ff, ff)
<3> [128.606297] i915 0000:03:00.0: [drm] *ERROR* Failed to setup
region(-22) type=3
<3> [128.623091] i915 0000:03:00.0: Device initialization failed (-22)

So something is busted with stolen-lmem it seems...wonder if that's
related to the DG2 issue.

>
> Chris Wilson (2):
>   drm/i915: Sanitycheck device iomem on probe
>   drm/i915: Test all device memory on probing
>
>  drivers/gpu/drm/i915/i915_params.c         |   3 +
>  drivers/gpu/drm/i915/i915_params.h         |   1 +
>  drivers/gpu/drm/i915/intel_memory_region.c | 116 +++++++++++++++++++++
>  3 files changed, 120 insertions(+)
>
> --
> 2.20.1
>
