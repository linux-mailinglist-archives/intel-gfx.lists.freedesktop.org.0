Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99526316442
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 11:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E286EC4C;
	Wed, 10 Feb 2021 10:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A9A6EC4C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 10:50:32 +0000 (UTC)
IronPort-SDR: 23lyLuklRwM8i02gb5jtWZVp8NMkw9kXyO6eBGsl9HA4SETi22ugBz/0I7Bd3akmFe/iCPX5V4
 +D1V+rXklEXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="201153969"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="201153969"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 02:50:31 -0800
IronPort-SDR: y+vAiOEAkiy/4OX/PdN7hdZSOC7QZ9Jyvub8G37sjwAqsdtXdMGk0N8N2kawAf6e1Y0gqrPGeM
 CgEDD4ASxKPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="396661100"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 10 Feb 2021 02:50:29 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A22905C1F81; Wed, 10 Feb 2021 12:50:18 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210210102238.28779-2-chris@chris-wilson.co.uk>
References: <20210210102238.28779-1-chris@chris-wilson.co.uk>
 <20210210102238.28779-2-chris@chris-wilson.co.uk>
Date: Wed, 10 Feb 2021 12:50:18 +0200
Message-ID: <87blcsryc5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Correct surface base
 address
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

> The surface_state_base is an offset into the batch, so we need to pass
> the correct batch address for STATE_BASE_ADDRESS.
>
> Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index e403eb046a43..de575fdb033f 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -240,7 +240,7 @@ gen7_emit_state_base_address(struct batch_chunk *batch,
>  	/* general */
>  	*cs++ = batch_addr(batch) | BASE_ADDRESS_MODIFY;
>  	/* surface */
> -	*cs++ = batch_addr(batch) | surface_state_base | BASE_ADDRESS_MODIFY;
> +	*cs++ = (batch_addr(batch) + surface_state_base) | BASE_ADDRESS_MODIFY;
>  	/* dynamic */
>  	*cs++ = batch_addr(batch) | BASE_ADDRESS_MODIFY;
>  	/* indirect */
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
