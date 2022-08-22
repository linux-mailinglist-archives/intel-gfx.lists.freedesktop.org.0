Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1395C5A4CE4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097E410F1B8;
	Mon, 29 Aug 2022 13:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CE8A2048
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 20:33:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 41ED5B818AA;
 Mon, 22 Aug 2022 20:33:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89BE5C433D6;
 Mon, 22 Aug 2022 20:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1661200397;
 bh=L7tlcpkYgc/ur8opmsWlrpLVUOyqqprbLLElkrBYdpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AnaIdOt77v6p9ZU3L/kcb4eyLiENDAhWGaPOtT9OonZwHrsWpPmeSxh4WQbRliWWT
 DLzgW0fKawo74lqnQDnRLvBzCAc5oECD9ADjJD9+be6XShynIzlZIWbqSoBy9gJUwr
 AIFRAdWrNlj1fqPQBx7IKQ4HoPGm86XtN2klx+a5lyI28yz1KEPQRkx1kDRePune22
 Zq3yG7JVL3USr+YZtr15yOdSVxSr3UPUW2XgRdcYI22BeCzcz56ZgaI+5emG+AhmGz
 ok6h87AZxwr1mmRhfUuXvcCC7nMXsaZ5MTI+5KYaCxsHvsqFuUv2Bzh451TcmjfVhS
 Wm8xzr09Hi1aA==
Date: Mon, 22 Aug 2022 13:33:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Lukasz Bartosik <lb@semihalf.com>
Message-ID: <YwPoCqvQ02kUl9tP@dev-arch.thelio-3990X>
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
X-Mailman-Approved-At: Mon, 29 Aug 2022 13:04:13 +0000
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
Cc: llvm@lists.linux.dev, upstream@semihalf.com,
 intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Apologies in advance if you see this twice. I did not see the original
make it to either lore.kernel.org or the freedesktop.org archives so I
figured it might have been sent into the void.

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
> -- 
> 2.35.0.rc2.247.g8bbb082509-goog
> 
> 

Was this patch ever applied or was the issue fixed in a different way?
If CONFIG_INIT_STACK_ALL_ZERO is enabled (it is on by default when the
compiler supports it), bi_next will be deterministically initialized to
NULL, which means 'bi_next->num_planes = 0' will crash when the first if
statement is not taken (i.e. 'i > num_groups - 1'). This was reported to
us at [1] so it impacts real users (and I have been applying this change
locally for six months). I see some discussion in this thread, was it
ever resolved?

[1]: https://github.com/ClangBuiltLinux/linux/issues/1626

Cheers,
Nathan
