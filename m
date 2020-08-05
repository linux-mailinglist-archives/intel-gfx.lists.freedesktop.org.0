Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A51223CAEE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 15:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3742D89E32;
	Wed,  5 Aug 2020 13:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F9289E32
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 13:17:31 +0000 (UTC)
IronPort-SDR: 450Xu+I2x6fOJgxg54hUm/EWca+XlODTe2fZDWdD7cXuHx7WSgVCOa9dd6dLdMFeouSofS/YWj
 q3K258XiT4xQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="152499737"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="152499737"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:17:06 -0700
IronPort-SDR: LSPhq5xS0xqR3tX8kt30lE/1xAEh+Vj35R5J/2XtdbdxqoWpMXzm1Ep9OF++/e+p2OHnBsN2B6
 uBKisan7iz/Q==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467462700"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:17:05 -0700
Date: Wed, 5 Aug 2020 18:46:41 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200805131637.GA8131@intel.com>
References: <20200805114521.867-1-anshuman.gupta@intel.com>
 <20200805114521.867-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805114521.867-2-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/hdcp: Add update_pipe early
 return
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-05 at 17:15:20 +0530, Anshuman Gupta wrote:
> Currently intel_hdcp_update_pipe() is also getting called for non-hdcp
> connectors and get through its conditional code flow, which is completely
> unnecessary for non-hdcp connectors, therefore it make sense to
> have an early return. No functional change.
Looks good to me

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> 
> v2:
> - rebased.
> 
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 89a4d294822d..a1e0d518e529 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2082,11 +2082,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	struct intel_connector *connector =
>  				to_intel_connector(conn_state->connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
> -	bool content_protection_type_changed =
> +	bool content_protection_type_changed, desired_and_not_enabled = false;
> +
> +	if (!connector->hdcp.shim)
> +		return;
> +
> +	content_protection_type_changed =
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> -	bool desired_and_not_enabled = false;
>  
>  	/*
>  	 * During the HDCP encryption session if Type change is requested,
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
