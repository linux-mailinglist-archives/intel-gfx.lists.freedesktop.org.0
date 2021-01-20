Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAD62FDBFC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 22:39:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8614B6E455;
	Wed, 20 Jan 2021 21:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114696E19A;
 Wed, 20 Jan 2021 21:39:33 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id 34so14010569otd.5;
 Wed, 20 Jan 2021 13:39:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7CQ3HB1nTNFRMwomepbdzCXSM0Vunqc4+WhRW4CgReg=;
 b=GR8vv4aKGjlwiFiQP/hLrg3r4wkCfGEBqWMNytF34pq5Hf9mrRatBrWyLiLJbMI6Hs
 cGNlmA5GcXJLQ0YQknwWjPJfUxrYuLBgEpYwUcbs9Zvc/cB3ORxC7wWetXrAvTtTZdcC
 IYp+D0S6R2zmWRBEuqpfLedOFzpbgFHZgTq55E2efbOmMq2nHdIrI87vw9FS1Mgb5DCX
 QCSWavs+Yr3z8/ju4srOK8yK6FW7zotp7YsJtGm1xzgFYSAY1zhBOtdtjPjzn9871YWk
 THt+vBg+0jSxPfMSbjPScXGAlo+M+/X9a4Wi1WGr4Vm4s8NKTi6otL8AoLfXsf/MgOTu
 ZBxg==
X-Gm-Message-State: AOAM533j4d9edDUL3h+6WfyWioWK0fvYVCBzwt1rVfQTthRE4i5SaaQb
 mKYUIxnaieV53heo1c1iOw==
X-Google-Smtp-Source: ABdhPJzGDS+Z9qNM9dct2YDH/2pXy5NEBm+Yj/vIMrRQLRDGQVMBKKxSHAjSx6WNW2sbX8BiGlOZHw==
X-Received: by 2002:a05:6830:1e19:: with SMTP id
 s25mr8204614otr.249.1611178772240; 
 Wed, 20 Jan 2021 13:39:32 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 70sm657133otf.39.2021.01.20.13.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 13:39:30 -0800 (PST)
Received: (nullmailer pid 880940 invoked by uid 1000);
 Wed, 20 Jan 2021 21:39:29 -0000
Date: Wed, 20 Jan 2021 15:39:29 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Message-ID: <20210120213929.GA875847@robh.at.kernel.org>
References: <20210120062351.3011786-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120062351.3011786-1-masahiroy@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] kbuild: use always-y instead of extra-y
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
Cc: devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
 linux-kbuild@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Jan Kiszka <jan.kiszka@siemens.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Kieran Bingham <kbingham@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 20, 2021 at 03:23:51PM +0900, Masahiro Yamada wrote:
> As commit d0e628cd817f ("kbuild: doc: clarify the difference between
> extra-y and always-y") explained, extra-y should be used for listing
> the prerequsites of vmlinux. always-y is a better fix here.

prerequisites

Glad to see this clarified. I think just tried both and picked one.

Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Documentation/devicetree/bindings/Makefile |  8 ++++----
>  drivers/gpu/drm/i915/Makefile              |  2 +-
>  scripts/Makefile.lib                       | 10 +++++-----
>  scripts/gdb/linux/Makefile                 |  2 +-
>  4 files changed, 11 insertions(+), 11 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
