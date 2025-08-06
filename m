Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483E1B1C6C9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EA8810E784;
	Wed,  6 Aug 2025 13:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+gbzRDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796CD10E77D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754486826; x=1786022826;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DyTVDL97ulWHbGzlWwEqn/hwhDZ1KY7M2BhdNIVY7Wk=;
 b=R+gbzRDzbYHc1KJfuEERIR+8pfoTk7hRpbsUNA6mTOyYH/6g/n3FX8uy
 P25cwCE0Ag2jPq7bwrXC0+H5pTzPqqCbgj+SOJ/S/i9ibKG8IYJ/Y10fl
 5Fddu/HCxoe8a2vN4j35NtGNhGt7J1ygsuVHLLN11jX+Z7a6LHNXof66Q
 UIhpkdhDN2Uq6scKTtKPyoUQroml6r1s6ycJJcs2cKkKBrDrXeMRGxmwv
 /ySsk3XlDc1n6BH05JVyPVuRZRx4rAEcuGeVYIGwIihCn0pgBrnkPsYAO
 TnVR8WWj8ukTSAgbZbpwwVFUMXQSMQCr/YEer7tmtsMIl1u/Bt1eRLFVs w==;
X-CSE-ConnectionGUID: uGeo/mf8T6ehDzhLrHEW4g==
X-CSE-MsgGUID: RcJNRoITRHmSknlvzPwZTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56940606"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56940606"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:27:05 -0700
X-CSE-ConnectionGUID: AyJoDNh+TZmpskefr1iOTQ==
X-CSE-MsgGUID: isYPrAz3QhS/uEB2djI1iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165111974"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:27:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
Date: Wed, 06 Aug 2025 16:27:00 +0300
Message-ID: <9503b1adc378ede3229835038307ab7eeb59571a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 06 Aug 2025, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> While performing HDMI compliance testing, test equipment may request
> different bpc output for signal measurement. However, display driver
> typically determines the maximum available bpc based on HW bandwidth.
>
> This patch introduces a new debugfs that allow user to configure

Please don't refer to "this patch" in a commit message. Just "Introduce
...".

*allows

> dedicated bpc manually, and making HDMI compliance test much easier.
>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +++
>  3 files changed, 67 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index ce3f9810c42d..cca115a6f130 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1208,6 +1208,56 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
>  	.write = i915_dsc_fractional_bpp_write
>  };
>  
> +static int i915_hdmi_req_bpc_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +
> +	seq_printf(m, "request bpc: %u\n", connector->force_hdmi_bpc);

IMO there's no need to print "request bpc: " prefix. It just makes using
the interface harder for userspace.

> +
> +	return 0;
> +}
> +
> +static ssize_t i915_hdmi_req_bpc_write(struct file *file,
> +					const char __user *ubuf,
> +					size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *intel_connector = m->private;

Just connector, not intel_connector for naming.

> +	struct intel_display *display = to_intel_display(intel_connector);
> +	int new_bpc = 0, ret = 0;

No need for the initialization.

> +	char *kbuf;
> +	const char *p;
> +
> +	kbuf = memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	p = strim(kbuf);
> +
> +	ret = kstrtoint(p, 0, &new_bpc);
> +	if (ret < 0)
> +		return -EINVAL;

Drop all of the above, and just use kstrtoint_from_user().

> +
> +	switch (new_bpc) {
> +	case 0:
> +	case 8:
> +	case 10:
> +	case 12:
> +		break;
> +	default:
> +		drm_dbg(display->drm,
> +			"HDMI bpc (%u) may exceed the max value (12)\n", new_bpc);

Not sure if the message is required, but drm_dbg_kms() and just say the
value is invalid. Consider passing, say, 5, and getting message:

	HDMI bpc (5) may exceed the max value (12)

Not helpful, is it?

> +		return -EINVAL;
> +	}
> +
> +	intel_connector->force_hdmi_bpc = new_bpc;
> +
> +	*offp += len;
> +	kfree(kbuf);
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_hdmi_req_bpc);
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1359,6 +1409,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>  				    connector, &i915_lpsp_capability_fops);
> +
> +	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> +		connector->force_hdmi_bpc = 0;

Unnecessary.

> +		debugfs_create_file("i915_force_hdmi_bpc", 0644, root,

Please use "intel_force_bpc". We're moving away from i915 naming for
display, and there's no need to make it HDMI only. We can start off with
making the *implementation* HDMI only, and only registering it for HDMI,
but let's keep the door open for amending it for other connector types
in the future.

> +				    connector, &i915_hdmi_req_bpc_fops);

Ditto, intel_hdmi_force_bpc_fops.

> +	}
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4d9df803ad47..e1e42d701f68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -564,6 +564,8 @@ struct intel_connector {
>  	struct work_struct modeset_retry_work;
>  
>  	struct intel_hdcp hdcp;
> +
> +	u8 force_hdmi_bpc;

int

>  };
>  
>  struct intel_digital_connector_state {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cbee628eb26b..0aa4044e2854 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2118,6 +2118,7 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  				  int clock, bool respect_downstream_limits)
>  {
>  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> +	struct intel_connector *intel_connector = intel_hdmi->attached_connector;

Just connector, not intel_connector, is the current style.

>  	int bpc;
>  
>  	/*
> @@ -2134,6 +2135,12 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  	if (!respect_downstream_limits)
>  		bpc = 8;
>  
> +	/*
> +	 * overwrite bpc per user's request
> +	 */

Useless comment.

> +	if (intel_connector->force_hdmi_bpc)
> +		bpc = intel_connector->force_hdmi_bpc;
> +
>  	for (; bpc >= 8; bpc -= 2) {
>  		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
>  						       crtc_state->sink_format);

-- 
Jani Nikula, Intel
