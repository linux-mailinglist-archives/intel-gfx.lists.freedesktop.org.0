Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405D03B812E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 13:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19FF6E98E;
	Wed, 30 Jun 2021 11:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C666E98E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 11:19:09 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id a7so1937221pga.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 04:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:reply-to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=17ORBlXUp3e8hZT1i4fOLYZsxbqMpP9TF1OG7z0X2vM=;
 b=ncOzNnbwM+ggH8rjQuKkKi5Q8/6yrm0Iwe7GxLaivk6rhn9mtyUkliLz3OfTUSflSj
 HqEXKKbC1IYiM0wWj9/8ts6mK1AK7Tiyf2U4AyLZ96IwCBo5Nz0NJZyx68jCY7pfC8yD
 NAsEAPb6QVlluwpZ1g+N4p+vfkp2jzpxyYoEnQyl/0pJayFEOekzCYBxO17aiHf8T2RE
 6JaAWPlm6o3zo49ZMgaEfby9uG/qWAxX1i1Q3Bnji0W3/swiTMIiggYzJheUdMwyKgFF
 APf+mpBBSeDYAeOdkT3l0H5454Nzk3oW1Cbtkh6EWNlfGJZ6bSAbP7L2KUNUTirZvVzU
 G6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=17ORBlXUp3e8hZT1i4fOLYZsxbqMpP9TF1OG7z0X2vM=;
 b=Xsrx/BGkjU/7HvXrzIZC5rIDGWFnKcaYNZeUA+m4rbpD6r4xsR8uetQNu/GEriFQEg
 Yk8yopYAc/4l+b4eJO5yivtLoiLQwg2tQVAZa9I3ocBTcFt72LHdI6TMy6TGQt92/vC1
 cCmDbTWnxIvU/7qg29G2xYYx8luiIPQotQMq6gUmOznO+zyZLHmWi3g8lX2e/5tzyz2C
 jJVG4HQlk0PS9sxZ/rxyGroIUzPDVuzegsIlLDZBaK3Vk8uFeflpvxZJ/197hgL6MYdI
 mARk/N0nqpaPBlOgCgqosoVENX6aNyQ8NFuMWXfwUyUFF/KRWymjb3vvceuFcatzcylQ
 FLPg==
X-Gm-Message-State: AOAM533uuSalv2/hB+Stqrjv+lpbwE6MhZtfOfBrvLFTMvOfaq1ThEVE
 UjM/1cj59+5lGSHiBlJgwxgIQuYjc5JJ8Q==
X-Google-Smtp-Source: ABdhPJyxsbqvurE5Mf49G7u2ces9JnVIhOm1A9Ojcfj6zQ33Z4rYBEVjscqRX8459TvTxTWDIRcquQ==
X-Received: by 2002:a63:5553:: with SMTP id f19mr32851243pgm.419.1625051948634; 
 Wed, 30 Jun 2021 04:19:08 -0700 (PDT)
Received: from acelan-xps15-9560.localnet (220-135-95-34.HINET-IP.hinet.net.
 [220.135.95.34])
 by smtp.gmail.com with ESMTPSA id a9sm6132498pjm.51.2021.06.30.04.19.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 04:19:06 -0700 (PDT)
From: acelan.kao@canonical.com
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 30 Jun 2021 19:19:04 +0800
Message-ID: <5830863.31r3eYUQgx@acelan-xps15-9560>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
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
Reply-To: 20210601100228.6064-3-anshuman.gupta@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
> despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix
> state.
> 
> The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
> Wa_14010685332 sequence for every PCH since PCH_CNP.
> 
> v2:
> - removed RKL from comment and simplified condition. [Rodrigo]
> 
> Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on
> gen11 platforms") Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
> 
>  .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
>  drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
>  2 files changed, 8 insertions(+), 29 deletions(-)
Hi,

I didn't see this patch shown in mainline kernel tree, nor in drm-tip,
May I know what the patch's status now?



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
