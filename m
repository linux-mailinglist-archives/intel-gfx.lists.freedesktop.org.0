Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE0E7A4FF0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 18:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FAF10E23D;
	Mon, 18 Sep 2023 16:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FAD10E23D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 16:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056227; x=1726592227;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iNnUs3hquwi7vrgtYa62StGBiVaXG/LQbLacZfRcSAQ=;
 b=OI2P0zK97C1rIKLVkdi/y05YbCgOUu8BmEIeeLolUk/51a6sIWzDyfK0
 QFX1gYDrq0bBGbVcdohxmG4poRFGbxrw11CTAFt1GB0A0Lr9iXbPxeaLP
 uyxq6PQZXXSYa8TSx+1G0NkbXg7lmwNRmALkHFSRpbsEwOs46VIvgVgdl
 ZwdJ6obBtiORShpXyiyYN4mtXoqAxqSJHgPLv2+YdKtpvbQEOEb1Bjncw
 uXdAYxZbQkhErQ/Ut3FvP7nkW4zHlhKPtnSHYdzOjIZjQoQuZIPpS1Gtp
 PmwCub8WtkDSTWVYAoakuUlz+o9vesEmq/fOWTkARoX4YpW6aUVjhg6hQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="379623826"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="379623826"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 09:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="745883797"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="745883797"
Received: from swong31-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.152.125])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 09:57:01 -0700
Date: Mon, 18 Sep 2023 18:56:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZQiBMLeoNCbocyNU@ashyti-mobl2.lan>
References: <20230912073521.2106162-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230912073521.2106162-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Sep 12, 2023 at 09:35:21AM +0200, Andrzej Hajda wrote:
> Some DG2 firmware locks this register for modification. Using wa_add
> with read_mask 0 allows to skip checks of such registers.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 70071ead0659cc..1d1474ad945e0c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	/* Wa_14014830051:dg2 */
>  	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> -	/* Wa_14015795083 */
> -	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +	/* Wa_14015795083
> +	 * Skip verification for possibly locked register.
> +	 */
> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> +	       0, 0, false);
>  
>  	/* Wa_18018781329 */
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -- 
> 2.34.1
