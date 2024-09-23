Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A18A97F11C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BDA010E472;
	Mon, 23 Sep 2024 19:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/yYPUDA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D8E10E294;
 Mon, 23 Sep 2024 19:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118566; x=1758654566;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0xgpeXlgi0kc937LOdUQwKq1UJu5bmOtUxiP3eTtIIg=;
 b=G/yYPUDAsbx21uBavS9KuwM5wmoOGx1tDjqykZSV8Iz8gXEjcpqgx2zp
 +4N49IHdkj2f+HnyvxjRp9feFAn6P/tmdmNeY/FyFKkjlLOAu1J9xQkhr
 MeJvME2bWRrRQzcYCTAqxJaC7AE/qHS7Wis/Zs3p4MQ+3nxsjrP1uqNz1
 Xjg8ZYqtBXrCKapc/1L12mq4OYeOxxWiWgZb03vnj5aCckgbdmOWkqcMC
 Pf0jycnk2Wq64U0fqslNiTskMhM7geecuG4PVLjsmBXNL0iM8Om6q4sSX
 gCidkLLKdLC1w/oKZbKIGyRsjMkHNFVr4cGHn+tcaWHzW6D0DOOSITii+ g==;
X-CSE-ConnectionGUID: Pc/uK8A8QiCx4+O9NI63OA==
X-CSE-MsgGUID: J7Y9S5zSQmqXbp6ey9SBXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28978584"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28978584"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:09:26 -0700
X-CSE-ConnectionGUID: CRawP2VOQJ+lF2NzfJSuAg==
X-CSE-MsgGUID: h1h4fZRhRJ6htWsqzvzEyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71303885"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 12:09:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 22:09:22 +0300
Date: Mon, 23 Sep 2024 22:09:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 16/16] drm/i915/intel_dp: Add support for forcing
 ultrajoiner
Message-ID: <ZvG84lLvLbwTgJXj@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-17-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:36PM +0530, Ankit Nautiyal wrote:
> Allow forcing ultrajoiner through debugfs.
> 
> v2: Minor refactoring of switch case logic. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af164e340cb3..01ddebc61944 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1331,6 +1331,7 @@ static ssize_t i915_joiner_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int force_joined_pipes = 0;
>  	int ret;
>  
> @@ -1349,6 +1350,13 @@ static ssize_t i915_joiner_write(struct file *file,
>  	case 2:
>  		connector->force_joined_pipes = force_joined_pipes;
>  		break;
> +	case 4:
> +		if (HAS_ULTRAJOINER(i915)) {
> +			connector->force_joined_pipes = force_joined_pipes;
> +			break;
> +		}
> +
> +		fallthrough;
>  	default:
>  		return -EINVAL;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
