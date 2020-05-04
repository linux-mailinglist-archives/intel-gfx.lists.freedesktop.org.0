Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEEA1C3639
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 11:55:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F6989F85;
	Mon,  4 May 2020 09:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FB389F85
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 09:54:59 +0000 (UTC)
IronPort-SDR: vzLPNPqAoXFR7fJZfHZw8ROY4GXtCbrAjDqFt3BcNxTdFBE9jgJ9a9tqgjwI1ln3zX6Sk+LEmN
 mgZtfqBDPd6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 02:54:59 -0700
IronPort-SDR: oDxmlMfeYirZMfnn5u5JPca7RPrOu/hYVHRS9GA0dVvlxo1anUGUCpXVpo/JP4uy8oE3nzEwoy
 sihaY3n/OMsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="460610544"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 04 May 2020 02:54:58 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C14F35C1DB3; Mon,  4 May 2020 12:52:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 12:52:53 +0300
Message-ID: <87k11sjabu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915: Allow some leniency in PCU
 reads
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Extend the timeout for pcode reads to 10ms as they should not be

s/10ms/20ms

> performed along critical paths, and succeeding after a short delay is
> better than failing entirely.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1800
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_sideband.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
> index 14daf6af6854..d5129c1dd452 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -429,7 +429,7 @@ int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
>  
>  	mutex_lock(&i915->sb_lock);
>  	err = __sandybridge_pcode_rw(i915, mbox, val, val1,
> -				     500, 0,
> +				     500, 20,
>  				     true);
>  	mutex_unlock(&i915->sb_lock);
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
