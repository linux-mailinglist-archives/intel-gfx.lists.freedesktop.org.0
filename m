Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6993C6A88C2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC80910E072;
	Thu,  2 Mar 2023 18:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3A410E072
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677783302; x=1709319302;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4LHSbx5e498+WMXKPoyA9plioMapeB94IniCFdt9ILk=;
 b=O0OzjS4Xbz5rQw6ynN/m0e6SaTCAWezM7hkSVLMCfKjdMwIR2F7XhJGI
 McjuFHkz9LUPQMsGPyGRKy6FnPTUE8PQQQNX1CMWBJTmgkarlJdTjor3a
 IMXNbb2pD0QoWkPg9lM49n9wCEq/GWV3bhtS84YlUH5Q8tZYNbgbGdAZh
 CLkg+kUZvoVGoHvRNjicC1vrkp3s4LAbzLk5Mflsq4nrgMKCTa33tqTzu
 gm4uvjh132Hz7nfveq2zgpFRkt9/ahpXkUOd11y+P/IxyQoE/zJQNfdiP
 3FFAnywng5QSaNAcLGdRkbjxR4KR/zVBVJ94Q7tUEkaSucgk/qbZ+PkJ1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="337131279"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="337131279"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="705378625"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="705378625"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:55:01 -0800
Date: Thu, 2 Mar 2023 20:54:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZADxAz0k5h+jTXeM@ideak-desk.fi.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
 <20230214134348.11020-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230214134348.11020-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Don't send idle pattern after
 DP2.0 link training
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

On Tue, Feb 14, 2023 at 03:43:47PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Bspec calls us to select pattern 2 after link training for
> DP 2.0. Let's do that... by doing nothing because we will
> be transmitting pattern 2 at the end of the link training
> already.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 3d3efcf02011..b35af21a2761 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1379,10 +1379,6 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> -	/* FIXME: Should DP_TRAINING_PATTERN_DISABLE be written first? */
> -	if (intel_dp->set_idle_link_train)
> -		intel_dp->set_idle_link_train(intel_dp, crtc_state);
> -
>  	return true;
>  }
>  
> -- 
> 2.39.1
> 
