Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1C186578
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 08:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA716E347;
	Mon, 16 Mar 2020 07:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74286E347
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 07:15:49 +0000 (UTC)
IronPort-SDR: hS4GJyIGcAnk52ojReyR8bgp+G+decCQ54oVxV0+WWpwokalLdw1pNu4n/I/06tznJrcPZTOk5
 /WJz5imUv96g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 00:15:49 -0700
IronPort-SDR: y89VpqMcl4XeyflArs4CwwMfwkklSwcql0lkbDx+SZ/1kvu9w5KTWjFI8NuFbYV395X2Rfq5Hz
 vhux+Bw84zcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417046866"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 00:15:48 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5A17F5C1DD8; Mon, 16 Mar 2020 09:14:22 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200314122058.21472-3-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
 <20200314122058.21472-3-chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 09:14:22 +0200
Message-ID: <87sgi8zs8h.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Remove manual save/resume of
 fence register state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we always reload the fence register state on runtime resume,
> having it explicitly in the S0ix resume code is redundant. Indeed, it
> is not even being used!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ddd5b40cbbbc..a7ea1d855359 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -539,7 +539,6 @@ struct i915_suspend_saved_registers {
>  	u32 saveSWF0[16];
>  	u32 saveSWF1[16];
>  	u32 saveSWF3[3];
> -	u64 saveFENCE[I915_MAX_NUM_FENCES];
>  	u32 savePCH_PORT_HOTPLUG;
>  	u16 saveGCDGMBUS;
>  };
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
