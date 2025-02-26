Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BA2A460EA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0FA10E919;
	Wed, 26 Feb 2025 13:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="abuIc1mV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DF610E911;
 Wed, 26 Feb 2025 13:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740576609; x=1772112609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2EaWPF1ZPvvL6JI02FxxZY53IuK2VSKtrAYU2Yoo8rU=;
 b=abuIc1mV84/TD4do3vGMF6FQVH+RhsSIFrpJVK5QSGwz++TkC0mwsbYf
 P8kvzrY2QRVYYacJahjavaR2cs3Uqzna2ziUt8qLBNfVUrfeVaLIz1iKM
 Gv9nIj63/+CvMAKushx8xO16XU8f6ML5H0PkcN8wHYQcEv6hUu0ZWf/TQ
 q1O6EPSOATVnRwYPHutT1+uNLMh3DQgXYWLGPnFj4o76gdPkSfptG8n9H
 jTDS20Sq1PpxuHi4vlSAODWcqO6Bw2VSbe0A7OQkv/mrJNK/HqJ6vW90r
 tcJcAvNO3Ivwu2i7NKXGKjlkzGo9sXYo/N7yB6xrmbu1/hvNr7I/wykOR g==;
X-CSE-ConnectionGUID: Zjk5gAS+RAWXca0uW68iJw==
X-CSE-MsgGUID: Rxk66pNbS9CuhkB7SU+mew==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="44243930"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="44243930"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:30:08 -0800
X-CSE-ConnectionGUID: 0fZ4dysgQjOZpgj/EoXPMw==
X-CSE-MsgGUID: XSsypayTS3ixQJXd35ATcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121951336"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:30:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:30:04 +0200
Date: Wed, 26 Feb 2025 15:30:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 09/20] drm/i915/hdmi: Use VRR Timing generator for HDMI
Message-ID: <Z78XXOEOf4i4Y7ZZ@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-10-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:06AM +0530, Ankit Nautiyal wrote:
> Add support for using VRR Timing generator for HDMI panels.

Please provide actual justification for this. And some kind of
explanation what kind of timings this will give us and why.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index ed017d9de920..28130436735f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -64,6 +64,7 @@
>  #include "intel_panel.h"
>  #include "intel_pfit.h"
>  #include "intel_snps_phy.h"
> +#include "intel_vrr.h"
>  
>  static void
>  assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
> @@ -2384,6 +2385,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		}
>  	}
>  
> +	intel_vrr_compute_config(pipe_config, conn_state);
> +
>  	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
>  					 conn_state);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
