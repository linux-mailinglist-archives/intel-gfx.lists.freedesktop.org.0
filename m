Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCAC5A6340
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 14:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D379010E09B;
	Tue, 30 Aug 2022 12:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E337210E09B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 12:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661862222; x=1693398222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NwSuCxbQTSwXRz8ueNb/tvcLoVffUbLl25K3oqBb7VI=;
 b=M/pY4EMB/NWSu0n9G24DSPIniBuLJU7BiOuNn66qhgLk4UEER7aJRM6D
 BlR4MOz6GVtTHqq0XQPH9+qc+fDKeZHaKLcg/SoaYv7nIAfW3fiixhcGN
 b5ojPyebLQJzYRAB1vqJJB9c91e/F+JzFEooBSZbISSwqkJEtREgkEmXR
 SK8SZriZvO2hL719KgYRg12bjMlPs0LSCFaXjOyeM5yfQZu21KGfADMaE
 XWciu6l6UxnDn8YxiAFL7Y8NN8689kKw62kInFwNoyMZirzwitF9tFf41
 5pRDnhfzXgLueLM0++dJ2rcv5loOAosbTS6WCJJumMeflqana7GS2Pw3D w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="356876076"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="356876076"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="715280415"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 30 Aug 2022 05:23:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Aug 2022 15:23:38 +0300
Date: Tue, 30 Aug 2022 15:23:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yw4BStP1E4WLwoaR@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/gmbus: stop using implicit
 dev_priv
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 30, 2022 at 01:27:56PM +0300, Jani Nikula wrote:
> The register macros are the last holdout for implicit dev_priv local
> variable. Try out what it would mean to stop using it, and require
> passing i915 as parameter to the register macros. Use gmbus as a nicely
> isolated playing ground.
> 
> Jani Nikula (6):
>   drm/i915/gmbus: split out gmbus regs in a separate file
>   drm/i915/gmbus: whitespace cleanup in reg definitions
>   drm/i915/gmbus: add wrapper for gmbus mmio base
>   drm/i915/gmbus: stop using implicit dev_priv in register definitions
>   drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
>   drm/i915/gmbus: mass dev_priv -> i915 rename

Looks reasonable enough to me. Just wondering when I'll start
getting annoyed at not finding something in i915_reg.h :)

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../i915/display/intel_display_power_well.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 275 +++++++++---------
>  .../gpu/drm/i915/display/intel_gmbus_regs.h   |  81 ++++++
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   4 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
>  drivers/gpu/drm/i915/gvt/edid.c               |   3 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  65 +----
>  drivers/gpu/drm/i915/intel_pm.c               |   4 +-
>  8 files changed, 232 insertions(+), 212 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_gmbus_regs.h
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
