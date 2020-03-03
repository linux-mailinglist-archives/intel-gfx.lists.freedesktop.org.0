Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C781217726F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228336EA5E;
	Tue,  3 Mar 2020 09:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 809926EA5E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:33:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:33:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="228819783"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 03 Mar 2020 01:33:02 -0800
Date: Tue, 3 Mar 2020 15:03:04 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Oliver Barta <o.barta89@gmail.com>
Message-ID: <20200303093256.GC20842@intel.com>
References: <20200229103922.4432-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229103922.4432-1-oliver.barta@aptiv.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: HDCP: fix Ri prime check done
 during link check
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-29 at 11:39:22 +0100, Oliver Barta wrote:
> From: Oliver Barta <oliver.barta@aptiv.com>
> 
> The check was always succeeding even in case of a mismatch due to the
> HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.
> 
> Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Looks good to me. But we need to do same on intel_hdcp_auth(), where we
check the R0 on authentication.

-Ram
> Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
> ---
>  Submitted before as part of patch series
>  https://patchwork.freedesktop.org/series/73961/
>  For some reason the versioning got messed up. 
>  I marked the patch series as superseded and I'm
>  starting all over. Sorry for spamming you.
> 
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 0ac9bdfbc094..ac4276157182 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1536,7 +1536,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>  	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
>  
>  	/* Wait for Ri prime match */
> -	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> +	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> +		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>  		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>  		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
>  			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
