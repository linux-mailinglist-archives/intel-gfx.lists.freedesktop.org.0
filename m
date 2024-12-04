Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B19E3E7A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA6C10E4E0;
	Wed,  4 Dec 2024 15:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBdxA/yQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140FD10E4E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 15:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733326773; x=1764862773;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=kXNUr+COlIRrR8KNRqyjr3via3NBhM1nZvQbZebA5T8=;
 b=UBdxA/yQ64E35bNwOvh2MNevQNXsKyJf3TWtdqfTeaKkC43/3SAF6N0I
 CvCwGmobY35G1unC1i1ovPosJg2RnJ03RRIP/VViNZOj+zuoWcD7IzxBr
 ObDvou7rY5zbzfvGTcqBrnz+MukiLIj2OrKNARpRKXQWSZoUPjMRerYQE
 qtQomG0BFs/koLLya0NyER1f2Q0jAy6/hF0fhP+HYaVvojsuhWhpIhc7d
 1u3tuEM28TZbLuvlFqt7m8eZtbCZjyvvfihqoIQM6129+Y5+FqzSln9cv
 CduNccH88K7fMjJfwG6QIHzbHFYPKru3Ss8y7bkAnsXvKllLV+LffoaBJ w==;
X-CSE-ConnectionGUID: 4IdKS5SsToGbMOgy/Mmc8g==
X-CSE-MsgGUID: 5bDYUwIuRe2i5CPQmEsmwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33846950"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33846950"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:39:33 -0800
X-CSE-ConnectionGUID: 8y15UsJSTJyrzDPwB0ZGng==
X-CSE-MsgGUID: shOGVLypSfWt/wJ2hX3Tog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93481820"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:39:32 -0800
Date: Wed, 4 Dec 2024 17:40:08 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/mst: add beginnings of DP MST documentation
Message-ID: <Z1B32KMnVuBUvwma@ideak-desk.fi.intel.com>
References: <20241125151933.2382910-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125151933.2382910-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2024 at 05:19:33PM +0200, Jani Nikula wrote:
> Add a little bit of documentation around DP MST. This is nowhere near
> complete nor does it have enough detail. But it's better than nothing,
> and hopefully gives people a basic grasp of what's going on.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c59c2c14679c..a9ce8b3a7ff5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -53,6 +53,38 @@
>  #include "intel_vdsc.h"
>  #include "skl_scaler.h"
>  
> +/*
> + * DP MST (DisplayPort Multi-Stream Transport)
> + *
> + * MST support on the source depends on the platform and port. DP initialization
> + * sets up MST for each MST capable encoder. This will become the primary
> + * encoder for the port.
> + *
> + * MST initialization of each primary encoder creates MST stream encoders, one
> + * per pipe, and initializes the MST topology manager. The MST stream encoders
> + * are sometimes called "fake encoders", because they're virtual, not
> + * physical. Thus there are (number of MST capable ports) x (number of pipes)
> + * MST stream encoders in total.
> + *
> + * Decision to use MST for a sink happens at detect on the connector attached to
> + * the primary encoder, and this will not change while the sink is connected. We
> + * always use MST when possible, including for SST sinks with sideband messaging
> + * support.
> + *
> + * The connectors for the MST streams are added and removed dynamically by the
> + * topology manager. Their connection status is also determined by the topology
> + * manager.
> + *
> + * On hardware, each transcoder may be associated with a single DDI
> + * port. Multiple transcoders may be associated with the same DDI port only if
> + * the port is in MST mode.
> + *
> + * On TGL+, all the transcoders streaming on the same DDI port will indicate a
> + * primary transcoder; the TGL_DP_TP_CTL and TGL_DP_TP_STATUS registers are
> + * relevant only on the primary transcoder. Prior to that, they are port
> + * registers.
> + */
> +
>  /* From fake MST stream encoder to primary encoder */
>  static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>  {
> -- 
> 2.39.5
> 
