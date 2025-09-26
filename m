Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D810CBA3C32
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 15:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6624910EA61;
	Fri, 26 Sep 2025 13:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MaFlnJYS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106B510EA5D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 13:09:01 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-76e4fc419a9so2332961b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 06:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758892140; x=1759496940; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8jsr/swVTaMDqhrHZ1xcNgpf88hRSQ9iF39OQkgBwwM=;
 b=MaFlnJYSp40tRLgXla2pRVG0x+/1CZhaCBvz/cpjB8PNCqEOS7Z1nokdtnlGdPeEyX
 RAlZaTslRdqBXEfXUcDFbrriKP/utXr/BO57qv2L3wixCMxVgQj0SRNLLzw6iJhfpmCk
 9XwCqK1A6hWhY1Ic/6LDZZbG5SUtOEaZotiMGhQUdNp3jk2m6q2sVZXBbrPE4bcCW85g
 YheFkPWIs7ZETHlbFaQ1B5FX14y6aZfpkaI0pCuTNug3cC3oQf0vzn9UFnI8YR0MKM73
 OL/Uc9D0k1MTDcqkWC/+dBNLYeK/4J3ZYi1LbTwANByax6wN58gjUil1+ibYy7EFALZN
 oBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758892140; x=1759496940;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8jsr/swVTaMDqhrHZ1xcNgpf88hRSQ9iF39OQkgBwwM=;
 b=ZN83X69ZS0cWw2a42L0mG8fwSEGqOqrAOj9C1E0/Z6THJnmLlPOb6Zk81IEFmVu1n8
 bYchZWv/+9pmHdzqnPR+L6yH7fG1Ds9Su9vSy6rZVV58oFR3ugqw0NSQ0AHsS9C29Zku
 +cIjOKuq5mS/aVBDKChVgAVtYhcJuGdcBFsVTb3xqvRGEAxxFK3lTiexwMojb22r4uh3
 KYiy9PAESP/1o22cXlGWOIrp1F2kHQXGeOXE2kRkfOOXg7pzRTdsDd3c001U3w8Ymo1s
 AkuM8kas+WddWyOVUxteYNofxc5jVltQc1MrB33osjOvINcg0hwSpCudnikBvoh2wzqQ
 dCOA==
X-Gm-Message-State: AOJu0YxonbeaHNy9G4jUCuREjQxpa5VhMKdBvf1vcHQLFOhAYtLhzen3
 VAdT5NM3Cm7gwIBH8fRc0mWlNavZXL42aT6mUTONbhBZKzK3zr8zLsNB
X-Gm-Gg: ASbGnctkeAI60Sjjp9/uxUaLed8V5H7Uyxnskkfbni1gv1Lg3hdCYZDjaG3v+XcrXqt
 iKpksgEcazUdD9u/B4f/NObzkr9wsG1Cx/rxeuuJwCso/vwesLofSF/4bYTtekIJxZrsjv+Lw4C
 evkjNq5WAkS00+dGRCqR0qPfds2irTouG3Zfw5XZ3ZL2YtbGpjDBC5FeGbyKwhEKkdrwntyXyE6
 NRyRs+zgVPGABY+pkPDR2f1YgLrNTk8LcwXHfIvqd7+BMG3Kj7xJ+oPfPrWTAQeojnGdFiDiG/H
 n24q2Dnkcq2to+rrFNKEnlDyjklDNh9xhXnS/LQReSTIlgWumJo8UpXx+KA4qqWlo7He7TVchJz
 HcFlf1n4Lk63dJO/vFvQo150TaabCCqPG8MimjHg=
X-Google-Smtp-Source: AGHT+IGBf5K4rbto5VCzkZp/D53jFxqFiCe8g1BF87WflTcITusVgBNsXvjVdvgmaWBRNYnfJ0pmlA==
X-Received: by 2002:a05:6a00:1a94:b0:781:1a9f:2abb with SMTP id
 d2e1a72fcca58-7811a9f2cf8mr2174799b3a.24.1758892140379; 
 Fri, 26 Sep 2025 06:09:00 -0700 (PDT)
Received: from localhost ([2400:2650:24e0:bf00:6647:e402:ac7:7283])
 by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-78102b2351asm4406159b3a.47.2025.09.26.06.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 06:09:00 -0700 (PDT)
Date: Fri, 26 Sep 2025 22:08:57 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gvt: Propagate
 vfio_set_irqs_validate_and_prepare() error
Message-ID: <aNaQaYvKtCtI0UnR@dell-wzy>
References: <20250926000252.3681360-1-andi.shyti@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926000252.3681360-1-andi.shyti@kernel.org>
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

On Fri, Sep 26, 2025 at 02:02:52AM +0200, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Return the actual error code from vfio_set_irqs_validate_and_prepare()
> instead of always collapsing to -EINVAL. While the helper
> currently returns -EINVAL in most cases, passing through the real
> error code is more future-proof.
> 
> While at it, drop the stray 'intel:' prefix from the error
> message.
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/kvmgt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index 69830a5c49d3..450a4673c542 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -1367,8 +1367,8 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
>  			ret = vfio_set_irqs_validate_and_prepare(&hdr, max,
>  						VFIO_PCI_NUM_IRQS, &data_size);
>  			if (ret) {
> -				gvt_vgpu_err("intel:vfio_set_irqs_validate_and_prepare failed\n");
> -				return -EINVAL;
> +				gvt_vgpu_err("vfio_set_irqs_validate_and_prepare failed\n");
> +				return ret;
>  			}
>  			if (data_size) {
>  				data = memdup_user((void __user *)(arg + minsz),

No problem for that.

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

