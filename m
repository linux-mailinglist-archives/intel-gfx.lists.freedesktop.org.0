Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC9B3F9D25
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 18:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFAF6E995;
	Fri, 27 Aug 2021 16:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA176E995
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 16:58:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="214865832"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="214865832"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 09:58:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528372072"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 09:58:33 -0700
Date: Fri, 27 Aug 2021 19:58:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Tilak Tangudu <tilak.tangudu@intel.com>
Message-ID: <20210827165829.GB3286573@ideak-desk.fi.intel.com>
References: <20210825152233.2151037-1-rodrigo.vivi@intel.com>
 <20210825152233.2151037-2-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210825152233.2151037-2-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Disallow D3Cold.
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

On Wed, Aug 25, 2021 at 11:22:31AM -0400, Rodrigo Vivi wrote:
> During runtime or s2idle suspend and resume cases on discrete cards,
> if D3Cold is really achieved, we will blow everything up and
> freeze the machine because we are not yet handling the pci states
> properly.

Is this some ordering problem wrt. pci_save_state()? In theory the RPM
core should take care of this (see pci_pm_runtime_suspend()) and the PCI
rpm docs don't recommend doing this manually from the driver's callback.

> On Integrated it simply doesn't matter because D3hot is the maximum
> that we will get anyway, unless the system is on S3/S4 and our power
> is cut.

Is the support for D3cold indicated in the PCI PM capabailities? I can't
see this being enabled for IGDs, so probably there's no problem with
disabling it on those.

I also checked a DG1 card, but it's also disabled there, do you have any
having it enabled?

> Let's put this hammer for now everywhere. So we can work to enable
> the auto-suspend by default without blowing up the world.
> 
> Then, this should be removed when we finally fix the D3Cold flow.
> 
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Since it helps with the discrete cards:
Acked-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index a40b5d806321..086a9a475ce8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -301,6 +301,7 @@ static void sanitize_gpu(struct drm_i915_private *i915)
>   */
>  static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  {
> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	int ret = 0;
>  
>  	if (i915_inject_probe_failure(dev_priv))
> @@ -331,6 +332,13 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	if (ret < 0)
>  		return ret;
>  
> +	/*
> +	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> +	 * This should be totally removed when we handle the pci states properly
> +	 * on runtime PM and on s2idle cases.
> +	 */
> +	pci_d3cold_disable(pdev);
> +
>  	ret = vlv_suspend_init(dev_priv);
>  	if (ret < 0)
>  		goto err_workqueues;
> -- 
> 2.31.1
> 
