Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19E9965E2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D2F10E29B;
	Wed,  9 Oct 2024 09:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CN5wAVgw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEA210E29B;
 Wed,  9 Oct 2024 09:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728467391; x=1760003391;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0XVUfZTDr+Q2dfQ50uH7zFHV2z4v5Ddxl9dcCINV6po=;
 b=CN5wAVgwul43CbLRgcxTsKkc93mafr3u0fcWthdrH9nsl1OupJCD6wiM
 6BKW86aj/Hc/salVoYGAeTplBc2CDcrlcod43Q1/RfcP1fdBHB0KK+ukl
 qL793XHhCwhbhk74n7KLBO2lRiXO/fFBZsj5Yk8w0B1fp3mvs2i8tXUs/
 29kBRVEECcNW0li6U2unJQM3Tz7raxc9S1kvLcP6In59WVmjV4VmrqpY2
 D/24IFGTMiC4jKlW4IiQqORX65giN79wMj2nFAZas88eItUAQ5SqJy+Iv
 CwllBdDaO+0EFzkH+cIzQwFwLPBGMv2uC0ebdxQk5lu19q/YlkiSD5ZWR g==;
X-CSE-ConnectionGUID: jTG9BTFYS36ot7neLBLXig==
X-CSE-MsgGUID: tiTMuG6OQqy6ktfvk6QsPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="45276229"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="45276229"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:49:51 -0700
X-CSE-ConnectionGUID: Pj5kh1N+RaGWdh5RU1Ug2Q==
X-CSE-MsgGUID: hVjWa98/QPuMg0a0OtfMxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="106956839"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:49:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Move dig_port assignment lower in the
 sequence
In-Reply-To: <20241009062455.1796615-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009062455.1796615-1-suraj.kandpal@intel.com>
Date: Wed, 09 Oct 2024 12:49:46 +0300
Message-ID: <87y12xa9mt.fsf@intel.com>
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

On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Move dig_port assignment much lower in the sequence to avoid NULL
> pointer deference in case encoder is not present.

Please describe the case exactly. Is this real or a static analyzer
warning?

I see there's commit 6c63e6e14da7 ("drm/i915/hdcp: No HDCP when encoder
is't initialized") adding the !connector->encoder check. But how was
that supposed to fix anything when it leaves

	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);

above it in place, the line you're fixing now?

If we haven't seen an oops here, it makes me think the reasoning in
6c63e6e14da7 is bogus, the connector->encoder check is bogus, and this
fix on top is also bogus.

OTOH if we have seen a real issue, we need the backtrace and the
conditions triggering it, and we need to backport this.

While it may seem benign and defensive to add extra NULL checks, one of
the dangers is the cargo culting of those checks. Static analyzers see a
check somewhere, so they complain about unchecked dereferences
everywhere. Checks start cropping up everywhere, and people lose track
of when it's actually possible for the pointers to be NULL, and when
not.

BR,
Jani.


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..ea8d56b25f6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2404,7 +2404,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_digital_port *dig_port;
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
>  	int ret = -EINVAL;
> @@ -2418,6 +2418,8 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>  		return -ENODEV;
>  	}
>  
> +	dig_port = intel_attached_dig_port(connector);
> +
>  	mutex_lock(&hdcp->mutex);
>  	mutex_lock(&dig_port->hdcp_mutex);
>  	drm_WARN_ON(display->drm,

-- 
Jani Nikula, Intel
