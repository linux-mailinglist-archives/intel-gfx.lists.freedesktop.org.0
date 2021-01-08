Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EA72EFB43
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 23:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C6E6E85B;
	Fri,  8 Jan 2021 22:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E786E85B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 22:38:23 +0000 (UTC)
IronPort-SDR: 5COxTcnjzA1WzKlwxCt4i5oIhAGfPgxMFj/7lR3RFuHi1647Ork6Xc/tAm7MvdFGmT555nP9Rr
 UidmN8MEY2wA==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="164743304"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="164743304"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 14:38:23 -0800
IronPort-SDR: khk+Aq6geOdzWd9t96x8HtN+cdyAFBy90zfO4dEwmpigzqMRQGioPmrf6Pv/485dzzqHHpfO+y
 CjLR+Nj9Z0YA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="380274625"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 14:38:22 -0800
Date: Fri, 8 Jan 2021 14:38:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210108223821.GL3894148@mdroper-desk1.amr.corp.intel.com>
References: <20210108205114.29582-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108205114.29582-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Exercise lrc_wa_ctx
 initialisation failure
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 08, 2021 at 08:51:14PM +0000, Chris Wilson wrote:
> Inject a fault into lrc_init_wa_ctx() to ensure that we can tolerate a
> failure to construct the workarounds.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 703d9ecc3f7e..f0de3f661042 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1525,6 +1525,9 @@ int lrc_init_wa_ctx(struct intel_engine_cs *engine)
>  
>  	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
>  	__i915_gem_object_release_map(wa_ctx->vma->obj);
> +
> +	if (i915_inject_probe_error(engine->i915, -ENODEV))
> +		ret = -ENODEV;
>  	if (ret)
>  		lrc_fini_wa_ctx(engine);
>  
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
