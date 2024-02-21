Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D84085E6F9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C4B10E071;
	Wed, 21 Feb 2024 19:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItB3Ab5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3C810E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708542670; x=1740078670;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sfTF9onq798YMZLFKYpPIqRXTLq+FZIoO3/GjzViozI=;
 b=ItB3Ab5B5Pgc86EFQasXzmoAhnR7bqmY3UhKKX7OZMNmAUWo/ZNdOpb3
 /Eo8Y9xnUNh0bxF/FZhy7QooBvmwTFYqFlhXlPc+1K3dQJ25G5BCMFkW9
 CgdaTao/ymisCgsiEkPYQHf1saMW0zP2za8z5/O5hahir/w/vpO+kO37x
 hKwurVQFSuHUzGvZP/9XOOgOpDLjUnR/cC9A57i9aJ40VJdSavZQvaFmB
 Hc5PXvF/f1/a0IExbjPqL+bjTpEqdMcZ9+jYxu1WJXE7+4jFeMdd8sXSI
 3yJOlVwSA3mkqZEjD0eOCh2sly/gQJHHOkzwkAQ1ztXSC3GyljAufYzl6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2598895"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2598895"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827396112"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="827396112"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2024 11:11:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Feb 2024 21:11:05 +0200
Date: Wed, 21 Feb 2024 21:11:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/display: Increase number of fast wake
 precharge pulses
Message-ID: <ZdZKycWDtduq6AN0@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221075322.2764209-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Feb 21, 2024 at 09:53:22AM +0200, Jouni Högander wrote:
> Increasing number of fast wake sync pulses seem to fix problems with
> certain PSR panels. This should be ok for other panels as well as the eDP
> specification allows 10...16 precharge pulses and we are still within that
> range.

Hmm. Didn't we have some other panel that didn't like the original 16
precharge pulses? Or maybe that was just because we weren't using the
formula and thus we had a mismatch wrt. the fast wake stuff?

And are we sure this is definitely due to the precharge length
and not because eg. our idea of the io buffer on latency is too
short?

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index fad39b2e3022..4641c5bb8fb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -145,7 +145,7 @@ static int intel_dp_aux_sync_len(void)
>  
>  static u8 intel_dp_aux_fw_sync_len(void)
>  {
> -	u8 precharge = 10; /* 10-16 */
> +	u8 precharge = 12; /* 10-16 */

I think we need a comment to remind people why we are using a specific
value.

>  	u8 preamble = 8;
>  
>  	return precharge + preamble;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
