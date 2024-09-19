Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED6E97CDCD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F4210E76A;
	Thu, 19 Sep 2024 18:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9wY/DJU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198B810E765;
 Thu, 19 Sep 2024 18:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726771535; x=1758307535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xKQvdgXVbvBT/ludreI4a5As50ziWthMnfo4LMjJkNI=;
 b=g9wY/DJUALdAUnS5n6m2lfvpGjPaOvSI5ogIaPhypSg5L0InrrZ4/6bY
 ypM+yQJ77PKiTrma/EIGP9MGwzXj3NKtgTl0hOsmQXuMGojgdrjkEm5e0
 SoUnUY5EeUuosEX0VZQnBrCofGKuDdqNdJ/sw+wUloHttvxNOf3Ui1crI
 CUJ9a9dfMFpAI3O5J/tq0BqutdX18f++vmcvd3dUf/9LAsIDe4NUdMBa4
 WSki69TRkfuy4VRfCyqzpaJSyd3usVC7XonkDIa1UcUUS6KU4Qe9CpwUo
 ZD0D+6ECAbX62eTYtC9vHBImiE2nI0kmWTN4GbX8uF1V0kvxBr9weSDV3 g==;
X-CSE-ConnectionGUID: 4lN66bjdQ4amzxv0uaP5/w==
X-CSE-MsgGUID: Ag2GL7U7QKKLnJ0w5ys0yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="51169307"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="51169307"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:45:35 -0700
X-CSE-ConnectionGUID: JPU4CjD1Rk+ZE+f/gdVW4Q==
X-CSE-MsgGUID: Xl1RY/jxSyy2ALLz72vzsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70161013"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:45:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:45:31 +0300
Date: Thu, 19 Sep 2024 21:45:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 15/15] drm/i915/intel_dp: Add support for forcing
 ultrajoiner
Message-ID: <ZuxxS7jotGyF_QGV@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-16-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 18, 2024 at 08:13:43PM +0530, Ankit Nautiyal wrote:
> Allow forcing ultrajoiner through debugfs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c              | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 85742400348f..f5dcc1a4c45c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1520,6 +1520,7 @@ static ssize_t i915_joiner_write(struct file *file,
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
>  	struct intel_display *display = to_intel_display(connector);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int force_join_pipes = 0;
>  	int ret;
>  
> @@ -1538,6 +1539,13 @@ static ssize_t i915_joiner_write(struct file *file,
>  	case 2:
>  		connector->force_joined_pipes = force_join_pipes;
>  		break;
> +	case 4:
> +		if (HAS_ULTRAJOINER(i915)) {
> +			connector->force_joined_pipes = 4;

You assigned '... = force_join_pipes' in the other cases
so I'd do the same here instead of hardcoding the =4.

> +			break;
> +		}
> +
> +		fallthrough;
>  	default:
>  		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>  			force_join_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4005700ab043..be82d4485fee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1317,6 +1317,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
>  	case 1:
>  		fallthrough;
>  	case 2:
> +		fallthrough;

Unnecessary fallthrough.

> +	case 4:
>  		return connector->force_joined_pipes;
>  	default:
>  		MISSING_CASE(connector->force_joined_pipes);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
