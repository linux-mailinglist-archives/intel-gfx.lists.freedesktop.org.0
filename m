Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAzbGTDVw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:29:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB6F324E26
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609CF10E6FE;
	Wed, 25 Mar 2026 12:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hD8KuQug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470FF10E204;
 Wed, 25 Mar 2026 12:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441773; x=1805977773;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VIw0CsewMZeIUtS0QegIXVIeMTuuuD6yDDp5YQBVC+E=;
 b=hD8KuQugWheHeLq0y3BZH1EMPTs3fVkBIDmcPWT4nGGisoL2lln6REyx
 GQaqrzqJ7o154vcN3C02LRhgxNG5De9xhb5x0IPYLZTEBIAtL5ttumodS
 k4MWqGaXwNB/jS1iVRR0Lb9HXuEziX+tCJfmFO/G+ugY0tCu82Vn7qRSE
 0X7uJd5OIfvVCNV3Gh600Unhjswk6rAO3eCGeWAHmgyfvmZQZCYWJFIUr
 6EvGrpA0XPWUZ5YtgPDPIhAWD3Up5CMF7rRj1qs5H+qxh1/qJT27Vni27
 wU6SaZREfjFc36IAqs79x0Y/Us428OSDj5uNXZLLY6XSnEPvtdsdmMF8a Q==;
X-CSE-ConnectionGUID: 5TezwB8nSTSgVM3p+25/UA==
X-CSE-MsgGUID: cqh0b76UTJ2rRHCy90DWTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="98096583"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="98096583"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:29:33 -0700
X-CSE-ConnectionGUID: zP413E0FQOKD/Q78EzYuxQ==
X-CSE-MsgGUID: 5rkrjOLBSJWnB1141Ie1Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="228734849"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:29:31 -0700
Date: Wed, 25 Mar 2026 14:29:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 11/26] drm/i915/writeback: Define function for prepare
 and cleanup hooks
Message-ID: <acPVJ6TYK6vSpEZ-@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-12-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-12-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CAB6F324E26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:29PM +0530, Suraj Kandpal wrote:
> Define function for prepare and cleanup hooks which help map
> and unmap drm framebuffer since we need these address to do
> register writes in WD_SURF and WD_STRIDE register.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 02c61dfcacba..4a40fda639ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -4,13 +4,16 @@
>   */
>  
>  #include <linux/slab.h>
> +#include <linux/err.h>
>  #include <drm/drm_atomic_state_helper.h>
>  #include <drm/drm_writeback.h>
>  #include <drm/drm_modeset_helper_vtables.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>  
>  #include "intel_atomic.h"
>  #include "intel_connector.h"
> @@ -18,6 +21,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_fb_pin.h"
>  #include "intel_writeback.h"
>  #include "intel_writeback_reg.h"
>  
> @@ -92,6 +96,64 @@ static int intel_writeback_get_modes(struct drm_connector *connector)
>  	return drm_add_modes_noedid(connector, 3840, 2160);
>  }
>  
> +static int intel_writeback_prepare_job(struct drm_connector *connector,
> +				       struct drm_writeback_job *job)
> +{
> +	struct i915_vma *vma;
> +	struct intel_writeback_job *wb_job;
> +	unsigned long out_flags = 0;
> +	const struct i915_gtt_view view = {
> +		.type = I915_GTT_VIEW_NORMAL,
> +	};
> +	int ret;
> +
> +	if (!job->fb)
> +		return 0;
> +
> +	if (job->fb->modifier != DRM_FORMAT_MOD_LINEAR)
> +		return -EINVAL;
> +
> +	wb_job = kzalloc(sizeof(*wb_job), GFP_KERNEL);
> +	if (!wb_job)
> +		return -ENOMEM;
> +
> +	vma = intel_fb_pin_to_ggtt(job->fb, &view, 4 * 1024, 0, 0, true, &out_flags);
> +	if (IS_ERR(vma)) {
> +		drm_err(job->fb->dev, "Failed to map framebuffer: %d\n", ret);
> +		ret = PTR_ERR(vma);
> +		goto err;
> +	}

This stuff needs something similar to intel_plane_pin_fb().

> +
> +	wb_job->fb = job->fb;
> +	wb_job->vma = vma;
> +	drm_framebuffer_get(wb_job->fb);
> +	job->priv = wb_job;
> +
> +	return 0;
> +
> +err:
> +	kfree(wb_job);
> +	return ret;
> +}
> +
> +static void intel_writeback_cleanup_job(struct drm_connector *connector,
> +					struct drm_writeback_job *job)
> +{
> +	struct intel_writeback_job *wb_job = job->priv;
> +	struct i915_vma *vma;
> +	unsigned long out_flags = 0;
> +
> +	if (!job->fb)
> +		return;
> +
> +	vma = wb_job->vma;
> +	wb_job->vma = NULL;
> +	intel_fb_unpin_vma(vma, out_flags);
> +	drm_framebuffer_put(wb_job->fb);
> +	kfree(wb_job);
> +	job->priv = NULL;
> +}
> +
>  static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>  	.destroy = drm_encoder_cleanup,
>  };
> @@ -105,6 +167,8 @@ const struct drm_connector_funcs conn_funcs = {
>  static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.get_modes = intel_writeback_get_modes,
>  	.mode_valid = intel_writeback_mode_valid,
> +	.prepare_writeback_job = intel_writeback_prepare_job,
> +	.cleanup_writeback_job = intel_writeback_cleanup_job,
>  };
>  
>  static void
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
