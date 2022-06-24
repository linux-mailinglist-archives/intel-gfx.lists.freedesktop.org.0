Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7DB5598DE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 13:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5A610EF87;
	Fri, 24 Jun 2022 11:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DE010EF87;
 Fri, 24 Jun 2022 11:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656071537; x=1687607537;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QF6lLBFa+kKvV06bPClHFUil6kWzGMWJMZlPHIkiygM=;
 b=le3H+2Z5AzAzsK+WReboXk6/IK5ncR0GsRNvYhzls53TKuRt451JiwNW
 oLHblQ7mZt/FjEPSa5ICbTimXvvc9Ew6ybV1f/fGWZK7+xi4s1WhsIpY9
 PnxWr/yIXPOCjINQCegqnSWnUXd5d4SDkpywpNoKBSsujpl0yXJjVMMyw
 6OhNbXsFhUWDE6JRVaVG8ywhU7UnbECC8hHswNNelxEfPV59DakodyUUU
 mHotPHYoEhgWdbjCmvS8eStEF5E4/W7zv5oo2Jubp+X2rI5m3+W+kLdWo
 /6Wf//47e/PSn6BL2criA7qbzLAbf4laiph5WFNutEEbNSkQp99NrBtLG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281027964"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281027964"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:52:17 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="645241759"
Received: from singuva-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.252.35.188])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:52:16 -0700
Date: Fri, 24 Jun 2022 13:52:13 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YrWlbbAjOOSFrwln@intel.intel>
References: <20220624113528.2159210-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220624113528.2159210-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix subtraction
 overflow bug
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
Cc: intel-gfx-trybot@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Fri, Jun 24, 2022 at 01:35:28PM +0200, Andrzej Hajda wrote:
> On some machines hole_end can be small enough to cause subtraction
> overflow. On the other side (addr + 2 * min_alignment) can overflow
> in case of mock tests. This patch should handle both cases.
> 
> Fixes: e1c5f754067b59 ("drm/i915: Avoid overflow in computing pot_hole loop termination")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3674
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 8633bec18fa75e..ab9f17fc85bcf2 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -742,7 +742,7 @@ static int pot_hole(struct i915_address_space *vm,
>  		u64 addr;
>  
>  		for (addr = round_up(hole_start + min_alignment, step) - min_alignment;
> -		     addr <= round_down(hole_end - (2 * min_alignment), step) - min_alignment;
> +		     hole_end > addr && hole_end - addr >= 2 * min_alignment;

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
