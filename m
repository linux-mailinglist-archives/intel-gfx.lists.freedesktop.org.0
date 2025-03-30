Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74731A75A65
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Mar 2025 16:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D8A10E1C0;
	Sun, 30 Mar 2025 14:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F0WTdha1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA4610E1C0
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Mar 2025 14:53:14 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-223f4c06e9fso67773155ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Mar 2025 07:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743346394; x=1743951194; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1gpBpp857KGUKkj2FFhAtCqlWpQJppTa6XQGxc0B3vY=;
 b=F0WTdha1Gs+3ImNcwE+rXg7/dfxpuGW+pcR1xDIIGKyNqvKEI+9Seiyr7HQ1rbVtkg
 b2BrCRIbkQtTZIcMgPM4MbqdUZvuJux5NFPAwlzVmpcvgVSLRn17ElD0B3jQaymCtXAz
 sTUDPnxABCWUBuyKNrxK5Kn3gfaa+npN3Qxim/1PBYP/FRUJ9+/hmtEZ6/z9OnkDJkuD
 gqQwnZuCfRd7UJFjuxjiviLqOsh5NHsKFk3sUSp5uyulqQJLLi48CpbsmVyD1RTV7pbQ
 lDg6Jmt9sP4kgGJGsRxe6irLZ00oYWcTGLUxNntvL/khblBBi5Q8afF+CCx0JiTdok8Y
 8m+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743346394; x=1743951194;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1gpBpp857KGUKkj2FFhAtCqlWpQJppTa6XQGxc0B3vY=;
 b=uf1tUMzBGkIEVvZmqQzsEY4gT/clszlgry+Vs9l2xT1i9idbsLpVwIf3T6VPJXl894
 5PpCJ3QazzhlaYZCs6eKQdqr941yaAaH+8rztxdS+OsBe0U7pArihT1GJspZDnsQr3FF
 iLxOcErH1AMZw7GHUM0t7XfaJ0qy15niW6Wi9mfw04Jxagz99lv9RMqT/uX4va5nhAFs
 W7mkUNumglRmctvDCQrwv2BtFx0cD/7TvMuD8XuuyLt49jUf63KArXL8RkCDGu95xjBK
 ca5L9aB96Prmn/L1Dzdf+yjkoMOrTHBEgZhtB/ZSPE3YtqrLrhZx1SDCyLPau5xg6ZdY
 cwWA==
X-Gm-Message-State: AOJu0YwT9Zkol2drxoIxxcYjaJPL7Vaa+3TpBbHNP5b2xYfzeuZh8Ro1
 XjFRnBerDpufoBHkecz2dco3reviuzmOkdrSghme3tKUYGYYfoy8
X-Gm-Gg: ASbGncuyYzRPBUYLNFAzvzRKQ8cC1FWCbMlLv1UNPSnvAVGpJRmxc8eGjzoZrfFZmpT
 XyOnFJ20y2FlOdLD7sTPLVnBWIbOKaPspmqbnDehIs1Kj6B/6kIdL5PtcShu1Zyy/TGHHdOOutt
 7a5ho3/n96J0WlXx8xzejd40l+ngL/btYP5VPbGRwJ4w7nJ6D1Id1M4u8X3l/vBBxPqflkhR/lf
 LspjvLPeHH7wQwCP+25noNnh7OapSasmi5FabLR6I5V7kvsFjPSQUzQe1hLF/l4JHXtwr9gSgic
 CpBdOSE5HNsGcKdnfVCj91RrtXyN63W0t0X+poJAVV4HBroUi6A+sqtQxmXSd8FXICoLykYQcAE
 f7EsI2Jc=
X-Google-Smtp-Source: AGHT+IGu9HKANB/ggGladsYzfGeGJ99b5Mg3rsHMq3G79NuqEoNtlnzVXXVYjeAGCo8eMt4EAoYRfQ==
X-Received: by 2002:a17:902:ec90:b0:221:1356:10c5 with SMTP id
 d9443c01a7336-22921ca4193mr129887945ad.9.1743346394332; 
 Sun, 30 Mar 2025 07:53:14 -0700 (PDT)
Received: from localhost (om126233180002.36.openmobile.ne.jp. [126.233.180.2])
 by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-3039e10baa2sm8653661a91.24.2025.03.30.07.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Mar 2025 07:53:14 -0700 (PDT)
Date: Sun, 30 Mar 2025 23:53:10 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Kees Cook <kees@kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>,
 Damian Tometzki <damian@riscv-rocks.de>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/gvt: fix unterminated-string-initialization
 warning
Message-ID: <Z-la1kFHvH4zu_X5@dell-wzy>
References: <20250327124739.2609656-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327124739.2609656-1-jani.nikula@intel.com>
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

On Thu, Mar 27, 2025 at 02:47:39PM +0200, Jani Nikula wrote:
> Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
> (which is "IntelGraphicsMem") drops the NUL termination of the
> string. This is intentional, but the compiler doesn't know this.
>

Indeed...

> Switch to initializing header->signature directly from the string
> litaral, with sizeof destination rather than source. We don't treat the
> signature as a string other than for initialization; it's really just a
> blob of binary data.
> 
> Add a static assert for good measure to cross-check the sizes.
> 
> Reported-by: Kees Cook <kees@kernel.org>
> Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
> Tested-by: Nicolas Chauvet <kwizart@gmail.com>
> Tested-by: Damian Tometzki <damian@riscv-rocks.de>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

>  drivers/gpu/drm/i915/gvt/opregion.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
> index 509f9ccae3a9..dbad4d853d3a 100644
> --- a/drivers/gpu/drm/i915/gvt/opregion.c
> +++ b/drivers/gpu/drm/i915/gvt/opregion.c
> @@ -222,7 +222,6 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
>  	u8 *buf;
>  	struct opregion_header *header;
>  	struct vbt v;
> -	const char opregion_signature[16] = OPREGION_SIGNATURE;
>  
>  	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
>  	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
> @@ -236,8 +235,10 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
>  	/* emulated opregion with VBT mailbox only */
>  	buf = (u8 *)vgpu_opregion(vgpu)->va;
>  	header = (struct opregion_header *)buf;
> -	memcpy(header->signature, opregion_signature,
> -	       sizeof(opregion_signature));
> +
> +	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
> +	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
> +
>  	header->size = 0x8;
>  	header->opregion_ver = 0x02000000;
>  	header->mboxes = MBOX_VBT;
> -- 
> 2.39.5
> 
