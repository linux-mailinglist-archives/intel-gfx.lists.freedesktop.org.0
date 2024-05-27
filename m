Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902118CFEFC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF2210E29E;
	Mon, 27 May 2024 11:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/XVs8Ap";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB33410E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716809419; x=1748345419;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=x2wYc1TIxnVCGGqQkm9IqMs+l1jiuD3Lt6pePfbbBTs=;
 b=I/XVs8ApJaly8rxpltEP9odleH/V8osur8DVFNPbjPnEpTWpm3gN2OOb
 ez5hHa4CvvuosDEc8bDaAHx6W2h7TpjmyaFcowFBdK9w85VyEvhBX57wF
 Kw9yPVGALdcm0YvyxlozJ2Y+Hw3Jlv1P9Hg68y2L4ZlaOV2Uh1Fqg7fQX
 MdrfxpBF9O44pbqhI5hxUgwmk92Wo3+WvRh3jWeNB21xdvg5zDG9X/R9S
 4Vt0gtQnKunzdeo+IGQ/Ljy2VZcc2XOox4qgZE+dcLMPQhz/jzL3MiacT
 ourQ/2QOndga5MejfYP3wrxiL6f8G50cR7CZr8d+gn6RG2RTdds8eERZz A==;
X-CSE-ConnectionGUID: SRIToGLxTYaSSY+OeMXMzg==
X-CSE-MsgGUID: v59bDCtJRauaP3kLYybBww==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16070686"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16070686"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:30:18 -0700
X-CSE-ConnectionGUID: cZBtnKiTQmKzYFl5/dfGkQ==
X-CSE-MsgGUID: L+JlTX4xSYOg6TRRuJHmsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39517740"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:30:17 -0700
Date: Mon, 27 May 2024 14:30:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: gareth.yu@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Message-ID: <ZlRuzWgnwLJ/VOLA@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-13-imre.deak@intel.com>
 <20240527051432.173965-1-gareth.yu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527051432.173965-1-gareth.yu@intel.com>
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

On Mon, May 27, 2024 at 01:14:32PM +0800, gareth.yu@intel.com wrote:
Hi,

> A bad link in MST is not retrained. Please also consider MST.
> The issue ticket is https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10902.
> 
> 	if (intel_dp->is_mst) {
> 		/*
> 		 * If we are in MST mode then this connector
> 		 * won't appear connected or have anything
> 		 * with EDID on it
> 		 */
> 		status = connector_status_disconnected;
> 		goto out;
> 	}
> 
> 	/*
> 	 * Some external monitors do not signal loss of link synchronization
> 	 * with an IRQ_HPD, so force a link status check.
> 	 */
> 	if (!intel_dp_is_edp(intel_dp)) {
> 		ret = intel_dp_retrain_link(encoder, ctx);
> 		if (ret)
> 			return ret;
> 	}

this is not the proper place to retrain the link, the plan is to remove
the above. Could you give a try to the patchset and follow up with a
dmesg log on the ticket?

Thanks,
Imre
