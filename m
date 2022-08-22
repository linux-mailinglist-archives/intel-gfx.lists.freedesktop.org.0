Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B0959C9FE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 22:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549D5A1F61;
	Mon, 22 Aug 2022 20:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61066A1F60
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 20:30:30 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 w11-20020a17090a380b00b001f73f75a1feso15123081pjb.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 13:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc; bh=3WmcJu1QOHjbflVog3Dihnjfohh9E9lPG3gTnYGALkw=;
 b=Q/ED0nTqr2QHjJyLb9i291S7vb0qnFwz9oCZ1qaiAw8xMMVJSykwJ9MkZbySvXPvCr
 GcUMLNSk/OwSB6eJX9YIjHuu2ELX95bhOCmzYpnPhe0JLBigTpC1KdZNsKR1jxKgvrhv
 jvYmLtabBBx2sdtSBFDpG41Fgmfp2v4Z5F7qA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=3WmcJu1QOHjbflVog3Dihnjfohh9E9lPG3gTnYGALkw=;
 b=8AA6C6vvibVE2Hi38TywUYHroN0aXVHOV8xS5eXtmRCm2MZpCN9lHIVMSI0z+TNiGb
 KmWVRY/WUGxCLNl0X0K2zvyKcFmd4nz3xLv1BhYvuXeL97eULIQrCOqfc1Of8j419yDy
 gCB0TOFWj46Fo0MTgoe0KwHjYZC2GfPe2x7n3ZTGnPXObahDmMOT447egBKVQmCe6S6f
 ibLI0FZwiEHxu8h5t/Tw4saOWR2WuUthsiIR8lvlnVOpWxxDctJwGXzUrsHyYPpn8rSF
 NIzsqL+Dp2lLAuWVHxeHVm/ASS4X3mRRGRvfTirO7g7K9JFeYDflbIxPBP5GKR0Bkyde
 1Xzg==
X-Gm-Message-State: ACgBeo2GREAgsjg2jHA5iy0P9r1FJPBZrK8JLRlDNKpYmHHJ+kXjzlPG
 vRXbx+BmqPm2y3pbduC+JsuhrWp73jSXDw==
X-Google-Smtp-Source: AA6agR5UU44rwh9G2pqwFnldYRyznNPmq2OvkTdbGbeDYLJ7YyL++1HzYaWtPzQIN9xKnZH8eecMyA==
X-Received: by 2002:a17:90b:1c85:b0:1f1:d78a:512b with SMTP id
 oo5-20020a17090b1c8500b001f1d78a512bmr108448pjb.92.1661200229690; 
 Mon, 22 Aug 2022 13:30:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 f8-20020a170902ce8800b00172c298ba42sm898955plg.28.2022.08.22.13.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Aug 2022 13:30:29 -0700 (PDT)
Date: Mon, 22 Aug 2022 13:30:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Lukasz Bartosik <lb@semihalf.com>
Message-ID: <202208221321.947F67FF53@keescook>
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: upstream@semihalf.com, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 01, 2022 at 04:33:54PM +0100, Lukasz Bartosik wrote:
> From: Łukasz Bartosik <lb@semihalf.com>
> 
> Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
> The root cause is null pointer defeference of bi_next
> in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.
> 
> BUG: kernel NULL pointer dereference, address: 000000000000002e
> PGD 0 P4D 0
> Oops: 0002 [#1] PREEMPT SMP NOPTI
> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-rc1
> Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156.3 05/14/2021
> RIP: 0010:tgl_get_bw_info+0x2de/0x510
> ...
> [    2.554467] Call Trace:
> [    2.554467]  <TASK>
> [    2.554467]  intel_bw_init_hw+0x14a/0x434
> [    2.554467]  ? _printk+0x59/0x73
> [    2.554467]  ? _dev_err+0x77/0x91
> [    2.554467]  i915_driver_hw_probe+0x329/0x33e
> [    2.554467]  i915_driver_probe+0x4c8/0x638
> [    2.554467]  i915_pci_probe+0xf8/0x14e
> [    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
> [    2.554467]  pci_device_probe+0xaa/0x142
> [    2.554467]  really_probe+0x13f/0x2f4
> [    2.554467]  __driver_probe_device+0x9e/0xd3
> [    2.554467]  driver_probe_device+0x24/0x7c
> [    2.554467]  __driver_attach+0xba/0xcf
> [    2.554467]  ? driver_attach+0x1f/0x1f
> [    2.554467]  bus_for_each_dev+0x8c/0xc0
> [    2.554467]  bus_add_driver+0x11b/0x1f7
> [    2.554467]  driver_register+0x60/0xea
> [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> [    2.554467]  i915_init+0x2c/0xb9
> [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> [    2.554467]  do_one_initcall+0x12e/0x2b3
> [    2.554467]  do_initcall_level+0xd6/0xf3
> [    2.554467]  do_initcalls+0x4e/0x79
> [    2.554467]  kernel_init_freeable+0xed/0x14d
> [    2.554467]  ? rest_init+0xc1/0xc1
> [    2.554467]  kernel_init+0x1a/0x120
> [    2.554467]  ret_from_fork+0x1f/0x30
> [    2.554467]  </TASK>
> ...
> Kernel panic - not syncing: Fatal exception
> 
> Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae")
> Signed-off-by: Łukasz Bartosik <lb@semihalf.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 2da4aacc956b..bd0ed68b7faa 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  		int clpchgroup;
>  		int j;
>  
> -		if (i < num_groups - 1)
> -			bi_next = &dev_priv->max_bw[i + 1];
> -
>  		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
>  
> -		if (i < num_groups - 1 && clpchgroup < clperchgroup)
> -			bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
> -		else
> -			bi_next->num_planes = 0;
> +		if (i < num_groups - 1) {
> +			bi_next = &dev_priv->max_bw[i + 1];
> +
> +			if (clpchgroup < clperchgroup)
> +				bi_next->num_planes = (ipqdepth - clpchgroup) /
> +						       clpchgroup + 1;
> +			else
> +				bi_next->num_planes = 0;
> +		}
>  
>  		bi->num_qgv_points = qi.num_points;
>  		bi->num_psf_gv_points = qi.num_psf_points;

(Some email path may be clogged; Nathan Chancellor has also sent email,
but I wanted to comment too.)

This patch solves https://github.com/ClangBuiltLinux/linux/issues/1626

And it's actually fixing a wild write as well: for folks where
"i < num_groups - 1" is false and they don't get "lucky" with a NULL
deref, this is writing to some address left over on the stack. :|

-Kees

-- 
Kees Cook
