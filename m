Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD40F4B793A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27E410E546;
	Tue, 15 Feb 2022 21:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FAD10E42F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 21:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644960220; x=1676496220;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=aQVAtMjIOtMA7LSxw6J88HUfL1YO80tSPg1RxyFdPZ4=;
 b=HyPcA4eb5CVfYCUrixuqoInMybfnJVMXnlM27dn+34eg8JbYCoZEJu+k
 l1jNALDfRexQTSbFHqXQavLwmmgJCgjXxtq+g/0oFDTKfPB4MPsrWV06C
 HD8BIN02b6T2+KXcJF0AAF+ogcQADC9EuhFT+OgmrmsEoP4qFcksIEur5
 oLDH3QUm/zAoKVfetrNyFOhh5GAQYGhQBy5FkwwK5b0OWe/INtL5TH95v
 mJ36ncyoYCg0qP0YzW36Ht4IYuVkywX3TL2p5l1Oe0JBX/kq76BkUqfJY
 9gsdxh2irWKMMxnFAvtIvUK7Fkp3DkIVNpr9J/3dxc5xdqqOVvxxk/rni g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237862473"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237862473"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:23:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="497537997"
Received: from dbhandar-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.183.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:23:39 -0800
Date: Tue, 15 Feb 2022 13:23:12 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20220215212312.GA12259@msatwood-mobl>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220209051140.1599643-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Drop duplicate register
 definition for VDBOX_CGCTL3F18
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

On Tue, Feb 08, 2022 at 09:11:35PM -0800, Matt Roper wrote:
> Due to some mistaken merge conflict resolution, we wound up with a copy
> of VDBOX_CGCTL3F18 in both intel_engine_regs.h and intel_gt_regs.h.
> Since this is a per-engine register, referenced relative to an engine's
> base offset, drop the copy from intel_gt_regs.h
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a6f0220c2e9f..e73c706e7f0d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -368,9 +368,6 @@
>  #define NOPID		_MMIO(0x2094)
>  #define HWSTAM		_MMIO(0x2098)
>  
> -#define VDBOX_CGCTL3F18(base)		_MMIO((base) + 0x3f18)
> -#define   ALNUNIT_CLKGATE_DIS		REG_BIT(13)
> -
>  #define ERROR_GEN6	_MMIO(0x40a0)
>  
>  #define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
> -- 
> 2.34.1
> 
