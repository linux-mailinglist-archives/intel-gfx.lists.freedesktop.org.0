Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FC9B6023
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41BC710E77A;
	Wed, 30 Oct 2024 10:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SrUhVLQv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1643510E77A;
 Wed, 30 Oct 2024 10:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730284321; x=1761820321;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=m7l+N26lDxuyprOnv5S6/svudOaDkcH2HdeJ1XxIA5U=;
 b=SrUhVLQvxGIjEvxgBXO2AoVFisA8/9/siKerm2SR0jnP26FKygIlqVmj
 pvOD08+P+lmhpwJ5yjyTl+2qnMXNBQbCd3Y1AB9wFDwXNQHuzxPu2Ctba
 KfRhHCCgYxl/y6L9DCAu/4gXiScsG0uFUAcxZ9J8iacxWYjn9K0/QtNK9
 ZlCr+GEPqsuDpLDBy9bx8d65KRrXeSo/eBcE7UXrihcZiyYWGqCMWkRiE
 xMoDsMLTCyg6vYc1jKxnfjZvZ6h+XS0Sg0s7isDZCbO5uItjguyzGSgFj
 +a3wry+vrJrOLjgzIbVTqIPFM3JTjs74GfNYFOG9c/XdTHtuPgHsNgHlh g==;
X-CSE-ConnectionGUID: xLZRtosRRC6gFSgE0GGx1g==
X-CSE-MsgGUID: c7rsPNH4TTmlXPN8HIAFZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29819981"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29819981"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:32:00 -0700
X-CSE-ConnectionGUID: VedoeLh1QJGHl3mXR3baGw==
X-CSE-MsgGUID: h5bxGZMuQDGeZ4SlXM0Hjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="119737174"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:31:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
In-Reply-To: <20241030025304.317977-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
Date: Wed, 30 Oct 2024 12:31:55 +0200
Message-ID: <87wmhpnap0.fsf@intel.com>
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

On Wed, 30 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add the loop on the first read/write we do to give docks and dp encoders
> some extra time to get their HDCP DPCD registers ready only for
> DP/DPMST encoders as this issue is only observed here no need to burden
> other encoders with extra retries as this causes the HDMI connector to
> have some other timing issue and fails HDCP authentication.
>
> --v2
> -Add intent of patch [Chaitanya]
> -Add reasoning for loop [Jani]

What I really meant was, the subject and the commit message talk about
"the loop" as if it's the one and only loop in all of HDCP.

Imagine having to write a changelog for all the changes in a pull
request [1]. Imagine you don't know anything about the details in the
commits.

First, you look at the commit subject. Huh, what loop? Then you look at
the commit message. Huh, what? The commit message is a single five-line
sentence. It's really really hard to understand what it's trying to
say. What's being done? Especially why? What's the user impact? I'd have
to look at the code to understand, and that's not a great sign for the
commit message. If it's a fix, is there a bug report that I could look
at to help me understand, etc.


BR,
Jani.


[1] https://lore.kernel.org/r/878quu6go9.fsf@intel.com


> -Make sure we forfiet the 50ms wait for non DP/DPMST encoders.
>
> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to downstream")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++++--------
>  1 file changed, 23 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..c8ba69c51cce 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
>  static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
> +	struct intel_digital_port *dig_port =
> +		intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	union {
>  		struct hdcp2_ake_init ake_init;
> @@ -1513,31 +1515,39 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	} msgs;
>  	const struct intel_hdcp_shim *shim = hdcp->shim;
>  	size_t size;
> -	int ret, i;
> +	bool is_dp_encoder;
> +	int ret, i, max_retries;
>  
>  	/* Init for seq_num */
>  	hdcp->seq_num_v = 0;
>  	hdcp->seq_num_m = 0;
>  
> +	is_dp_encoder =	intel_encoder_is_dp(&dig_port->base) ||
> +		intel_encoder_is_mst(&dig_port->base);
> +	if (is_dp_encoder)
> +		max_retries = 10;
> +	else
> +		max_retries = 1;
> +
>  	ret = hdcp2_prepare_ake_init(connector, &msgs.ake_init);
>  	if (ret < 0)
>  		return ret;
>  
>  	/*
>  	 * Retry the first read and write to downstream at least 10 times
> -	 * with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
> -	 * hdcp2 capability for some reason). The reason being that
> -	 * during suspend resume dock usually keeps the HDCP2 registers inaccesible
> -	 * causing AUX error. This wouldn't be a big problem if the userspace
> -	 * just kept retrying with some delay while it continues to play low
> -	 * value content but most userpace applications end up throwing an error
> -	 * when it receives one from KMD. This makes sure we give the dock
> -	 * and the sink devices to complete its power cycle and then try HDCP
> -	 * authentication. The values of 10 and delay of 50ms was decided based
> -	 * on multiple trial and errors.
> +	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
> +	 * (dock decides to stop advertising hdcp2 capability for some reason).
> +	 * The reason being that during suspend resume dock usually keeps the
> +	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
> +	 * big problem if the userspace just kept retrying with some delay while
> +	 * it continues to play low value content but most userpace applications
> +	 * end up throwing an error when it receives one from KMD. This makes
> +	 * sure we give the dock and the sink devices to complete its power cycle
> +	 * and then try HDCP authentication. The values of 10 and delay of 50ms
> +	 * was decided based on multiple trial and errors.
>  	 */
> -	for (i = 0; i < 10; i++) {
> -		if (!intel_hdcp2_get_capability(connector)) {
> +	for (i = 0; i < max_retries; i++) {
> +		if (!intel_hdcp2_get_capability(connector) && is_dp_encoder) {
>  			msleep(50);
>  			continue;
>  		}

-- 
Jani Nikula, Intel
