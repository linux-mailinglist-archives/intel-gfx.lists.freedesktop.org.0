Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE994318458
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 05:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E3A6EDE7;
	Thu, 11 Feb 2021 04:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012C36EDE7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 04:28:43 +0000 (UTC)
IronPort-SDR: KGjvQvObiOUT4BI75WkA12c/Fuf4jY2JLgCbi9tqipJhaNzksJ0KAbKbUZjpc+JmEtDXgtjcIu
 Hq7GpCcBX9rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182258478"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="182258478"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 20:28:42 -0800
IronPort-SDR: lF/IQ6641VcpcomJrcl4vQA3FGzpQnY8EhDTKzTJIL28xnFdNpsxKgE6Kfvxdvcfe6BtkJNX2r
 8TyRIH3d8qlQ==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="380443378"
Received: from rontiver-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.99.95])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 20:28:42 -0800
Date: Wed, 10 Feb 2021 23:28:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210211042841.GK82362@intel.com>
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
 <20210210221955.10025-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210221955.10025-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Clear internal GT state on
 hibernate
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

On Wed, Feb 10, 2021 at 10:19:51PM +0000, Chris Wilson wrote:
> Call intel_gt_suspend_late() to disable the GT before hibernation.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pm.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> index 000e1cd8e920..da0ef483ad6b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> @@ -115,6 +115,8 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
>  	 * the objects as well, see i915_gem_freeze()
>  	 */
>  
> +	intel_gt_suspend_late(&i915->gt);
> +

why are you calling this here instead of directly in i915_drm_suspend_late ?

>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
>  		i915_gem_shrink(i915, -1UL, NULL, ~0);
>  	i915_gem_drain_freed_objects(i915);
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
