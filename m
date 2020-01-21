Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE221465AA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 11:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B5E6FBCC;
	Thu, 23 Jan 2020 10:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C846E2A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 21:56:19 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id c14so5084931wrn.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 13:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=YCCt5LWCa3VEwfHld3VGI2aXgHogQt9CVS1FoD40pEM=;
 b=bFs8EnZY7SrAoJ43XTAP1O9M5zQWPLsbRzPbh5zL1w8JfspKKTEzYkabF//U+jesll
 QDqXmueUQYg7S32szRMKlp0y/X/oQuos2m0AfAEaHD976OeLNHjqEbbsSPpHs87Pzqe8
 vThy46n3uOCvOTbfEX4nFp/OOYVKNyxO+F6D2mcjKQfTybYbVrfD6ZaRF7St1i4h7cLC
 TqeFD1AuIWI7++8YYkDM5qDCg6YFfJUsvGIKNHntYMYiQHVUUdXU0/MzPBT6yHYs4SOP
 HHNsKO0O0i103y4EVBAQy/Bp4L1SEYX8Im71tDClrtNIYi8FFkIc/vFm56JPMEegaxNl
 RCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=YCCt5LWCa3VEwfHld3VGI2aXgHogQt9CVS1FoD40pEM=;
 b=kZk57eXedAFgeLhrleEfIZLzodBn8HGzOGin4qOQJZbhA4QBd+QpDkS6COJXFL+jKH
 znr8xQRXlKXB0++l2pcLkre+OIw2nHIjKUCaNhKd66MQScXTdu5kgJj64yzJ/yJWwYfN
 ZqvxXmVLrUEhXcSB1nQi4+wckKBJ534BT5ryZml1JKob4kRyg78a+7wM+uXk7Sc3hO2H
 wA0E9YFTHczrcZ53Q7Pkccr4WotgqXiB8lRk6KYG4knR8WCbwXQ+vEkDEmIFkjKZkQE0
 cFzL6TP65F2zqIhlGNjJpX1wPmn15nDHS4EBgG18Rhlt/iIEFnIvU2VcuZ5SzmiEWyfG
 ArnA==
X-Gm-Message-State: APjAAAU0UWbI2VErWbTcLBRleuzy7aoXywBq4c1oMFWR608ljgLIO1fx
 +tBwKyaSY0wM8IOuwffVpCkB6V8ihCk=
X-Google-Smtp-Source: APXvYqy1MZdAu56EN9+Hg9tFGiRknX5rcFXfKXso2SpXWG7LDzNvwCzIJArI+xcrTWZp74dj7IOzaw==
X-Received: by 2002:adf:f78e:: with SMTP id q14mr6990980wrp.186.1579643777882; 
 Tue, 21 Jan 2020 13:56:17 -0800 (PST)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id u8sm967159wmm.15.2020.01.21.13.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 13:56:17 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 22 Jan 2020 00:56:11 +0300 (EAT)
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <157963624983.11481.6092790115438048450@emeril.freedesktop.org>
Message-ID: <alpine.LNX.2.21.99999.375.2001220055360.29494@wambui>
References: <20200121143155.20856-1-wambui.karugax@gmail.com>
 <157963624983.11481.6092790115438048450@emeril.freedesktop.org>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 Jan 2020 10:23:15 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBj?=
 =?utf-8?q?onversion_to_struct_drm=5Fdevice_logging_macros=2E?=
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Tue, 21 Jan 2020, Patchwork wrote:

> == Series Details ==
>
> Series: conversion to struct drm_device logging macros.
> URL   : https://patchwork.freedesktop.org/series/72349/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915/dsi: conversion to struct drm_device log macros
> Applying: drm/i915/ddi: convert to struct drm_device log macros.
> Applying: drm/i915/power: convert to struct drm_device macros in display/intel_display_power.c
> Applying: drm/i915/dp: conversion to struct drm_device logging macros.
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_dp.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch' to see the failed patch
> Patch failed at 0004 drm/i915/dp: conversion to struct drm_device logging macros.
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
>
I'll send a v2 for this - from what I can tell one of the hunks changed 
and can't apply cleanly.

Thanks,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
