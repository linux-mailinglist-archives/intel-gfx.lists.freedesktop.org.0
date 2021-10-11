Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D40DE42966F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C986E915;
	Mon, 11 Oct 2021 18:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC766E914;
 Mon, 11 Oct 2021 18:05:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="224348516"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="224348516"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:05:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="526090756"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:05:35 -0700
Date: Mon, 11 Oct 2021 11:00:50 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thanneeru Srinivasulu <thanneeru.srinivasulu@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 michal.wajdeczko@intel.com
Message-ID: <20211011180050.GA29821@jons-linux-dev-box>
References: <20211011152106.3424810-1-thanneeru.srinivasulu@intel.com>
 <20211011152106.3424810-5-thanneeru.srinivasulu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011152106.3424810-5-thanneeru.srinivasulu@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/guc: Inject probe errors for
 CT send
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

On Mon, Oct 11, 2021 at 08:51:06PM +0530, Thanneeru Srinivasulu wrote:
> Inject probe errors -ENXIO, -EBUSY for CT send.
> 
> Signed-off-by: Thanneeru Srinivasulu <thanneeru.srinivasulu@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 83764db0fd6d..8ffef3abd3da 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -765,6 +765,14 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>  	u32 status = ~0; /* undefined */
>  	int ret;
>  
> +	ret = i915_inject_probe_error(ct_to_i915(ct), -ENXIO);
> +	if (ret)
> +		return ret;
> +

I don't see where -ENXIO is returned during an error that we handle
unless I am missing something. If we don't return -ENXIO anywhere else I
don't think we need to inject this error.

Matt 

> +	ret = i915_inject_probe_error(ct_to_i915(ct), -EBUSY);
> +	if (ret)
> +		return ret;
> +
>  	if (unlikely(!ct->enabled)) {
>  		struct intel_guc *guc = ct_to_guc(ct);
>  		struct intel_uc *uc = container_of(guc, struct intel_uc, guc);
> -- 
> 2.25.1
> 
