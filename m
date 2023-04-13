Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3B06E1215
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3202B10E048;
	Thu, 13 Apr 2023 16:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9963910E048
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681402760; x=1712938760;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ol9PkOpaFnM0EHDtP7RDoYO3z/xKbfncMX/xVbstVxg=;
 b=H03BAlwDMURSWIv8S7n4Rp0Yiumpd3hRFvvT+yQ4qiX8kR0i0JQM2sWd
 8IEQcM1pPB/ee3fXfoNpjkIqzqzai3KN7wk1Im28IWoF2JYDpoZiCV9vh
 TP2LMvmKjLWt3NaPI/BGfgUOIySUS/7lrrsXpzfuMSjSrTkAVxtLCmHZW
 ndZ/xO2YxZVsk/SO7awxaBPA2bJNlhYFJ2Pzys3fxzJgOXBkFhk/BFiqF
 aIGowtLd+NcdT6d39UJEPqAEQs3kiFFa2+Fgxau4MSQ2DVJUyTZ3MEzDv
 g5AIHQPwRSwEPcUJy+5EEyX+/EfccjhXrjxs+O7wBwZ/ic5TzMhAsZlqw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344226205"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344226205"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:19:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="692029273"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="692029273"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:19:17 -0700
Date: Thu, 13 Apr 2023 19:19:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZDgrg2h2eW3UeU8q@ideak-desk.fi.intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-8-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412224925.1309815-8-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/mtl: Initial DDI port setup
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 12, 2023 at 03:49:23PM -0700, Radhakrishna Sripada wrote:

Could you move this to the end of the patchset?

> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Initialization sequences and C10 phy are in place to be able to enable
> the first 2 ports of MTL. The other ports use C20 phy that still need
> to be properly added. Enable the first ports for now, keeping a TODO
> comment about the others.
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 27b47680573a..1fec49c5d23a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7791,7 +7791,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_METEORLAKE(dev_priv)) {
> +		/* TODO: initialize TC ports as well */
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +	} else if (IS_DG2(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> -- 
> 2.34.1
> 
