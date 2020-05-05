Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653D91C4F49
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 09:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1916E52D;
	Tue,  5 May 2020 07:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0E66E52D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 07:38:20 +0000 (UTC)
IronPort-SDR: b7YAKdMGeQtZUDyI6tvBI/sLgH261PFv/bLZ74+QmyRcsvE7a0+xzEdnsJzExk7MnTNI8f7kca
 Pb4EVyzEtngA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 00:38:19 -0700
IronPort-SDR: w1BBwHoJ7qjkXdxZ6TFwYcaaKVQM1I9jLdf56AiPi+1xvSdKzGsSRjwH3EXN8lL71hkBN5XLWA
 j/Nvv9IS3qgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="263072177"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 05 May 2020 00:38:16 -0700
Date: Tue, 5 May 2020 13:08:09 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Oliver Barta <o.barta89@gmail.com>
Message-ID: <20200505073809.GA24093@intel.com>
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504123524.7731-1-oliver.barta@aptiv.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: HDCP: retry link integrity check
 on failure
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
 Chris Wilson <chris@chris-wilson.co.uk>, Sean Paul <seanpaul@chromium.org>,
 Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-05-04 at 14:35:24 +0200, Oliver Barta wrote:
> From: Oliver Barta <oliver.barta@aptiv.com>
> 
> A single Ri mismatch doesn't automatically mean that the link integrity
> is broken. Update and check of Ri and Ri' are done asynchronously. In
> case an update happens just between the read of Ri' and the check against
> Ri there will be a mismatch even if the link integrity is fine otherwise.

Thanks for working on this. Btw, did you face this sporadic link check
failure or theoretically you are fixing it?

IMO this change will rule out possible sporadic link check failures as
mentioned in the commit msg. Though I haven't faced this issue at my
testings.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

> 
> Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 010f37240710..3156fde392f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
>  }
>  
>  static
> -bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> +bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	struct intel_connector *connector =
> @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>  	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
>  		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>  		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> -		drm_err(&i915->drm,
> -			"Ri' mismatch detected, link check failed (%x)\n",
> +		drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
>  			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
>  							port)));
>  		return false;
> @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>  	return true;
>  }
>  
> +static
> +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> +	int retry;
> +
> +	for (retry = 0; retry < 3; retry++)
> +		if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
> +			return true;
> +
> +	drm_err(&i915->drm, "Link check failed\n");
> +	return false;
> +}
> +
>  struct hdcp2_hdmi_msg_timeout {
>  	u8 msg_id;
>  	u16 timeout;
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
