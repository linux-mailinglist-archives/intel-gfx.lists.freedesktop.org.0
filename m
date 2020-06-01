Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D0F1EABEB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 20:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636926E384;
	Mon,  1 Jun 2020 18:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D29C6E384
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 18:25:47 +0000 (UTC)
IronPort-SDR: 1kUxnfp8WtsT/A1VLSgRLuxYbvwrddP68KatF+rhX4pg6fcd7bpinvWPl6JoRXcjD+i6s63UVS
 kmYEkUBkVg/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 11:25:46 -0700
IronPort-SDR: xHkGQRrBic1IX0OqorcGrzrH+KJtjLIRqQ4CApsfreBrvBnwcs9qM33Xr+OWDiPY3EgTOEx6YZ
 GKR2eznzqfcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="303974099"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 01 Jun 2020 11:25:45 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7B6025C2C42; Mon,  1 Jun 2020 21:23:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601161942.30854-1-chris@chris-wilson.co.uk>
References: <20200601161942.30854-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 21:23:17 +0300
Message-ID: <87d06iir1m.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Whitelist context-local timestamp
 in the gen9 cmdparser
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Allow batch buffers to read their own _local_ cumulative HW runtime of
> their logical context.
>
> Fixes: 0f2f39758341 ("drm/i915: Add gen9 BCS cmdparsing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 189b573d02be..372354d33f55 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -572,6 +572,9 @@ struct drm_i915_reg_descriptor {
>  #define REG32(_reg, ...) \
>  	{ .addr = (_reg), __VA_ARGS__ }
>  
> +#define REG32_IDX(_reg, idx) \
> +	{ .addr = _reg(idx) }
> +
>  /*
>   * Convenience macro for adding 64-bit registers.
>   *
> @@ -669,6 +672,7 @@ static const struct drm_i915_reg_descriptor gen9_blt_regs[] = {
>  	REG64_IDX(RING_TIMESTAMP, BSD_RING_BASE),
>  	REG32(BCS_SWCTRL),
>  	REG64_IDX(RING_TIMESTAMP, BLT_RING_BASE),
> +	REG32_IDX(RING_CTX_TIMESTAMP, BLT_RING_BASE),
>  	REG64_IDX(BCS_GPR, 0),
>  	REG64_IDX(BCS_GPR, 1),
>  	REG64_IDX(BCS_GPR, 2),
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
