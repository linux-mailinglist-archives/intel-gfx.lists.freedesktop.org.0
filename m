Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B869855E9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 10:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23D010E7D0;
	Wed, 25 Sep 2024 08:55:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYVBiikK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EB210E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 08:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727254556; x=1758790556;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jqHSQsRg413T1gEHfeLdcWOQUDXtpU6UnNTCbtdFcfc=;
 b=aYVBiikK6TyWtSeugVXRqz0Lk+w/ePrDyT9/korJT1ZhkrM2I/E9Zg8f
 IISydR3Vl1zhAsrYmcj2VF/4Vad6G0q+7T6VmRFqip7RyNOi42+Yh9Q7U
 BlM7wBDmtCxkkxmYz0OZcSrE7cHaOFxMOt4VBpw/2h3cT2S+lstDbR0be
 88ndxHsl5ALDI3VMFD9DUzgWnUZgOYRTMU/yG6GgKOLMjDk6AwIreNV8x
 A5URdabBZgJmGLalSzwnbpfB7aKzXJw8mJcTWdz5F8CLOG6KdVoUEiXOU
 QezLfovWd39gX3xyt8cC6oc2EdRI5WbX8martrRORC+OPDF0ZAXqThoR8 Q==;
X-CSE-ConnectionGUID: 7phvlyV3REyxfO0IUl33Nw==
X-CSE-MsgGUID: OkbUoXV9SAKshjkKj1QfCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="48821454"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="48821454"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:55:56 -0700
X-CSE-ConnectionGUID: QaHGLN/MSdyrO5FeF4WEPQ==
X-CSE-MsgGUID: 3/e27ikNRkmO1ILBFoBtng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="72527699"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:55:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
In-Reply-To: <20240925065658.1269767-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240925065658.1269767-1-suraj.kandpal@intel.com>
Date: Wed, 25 Sep 2024 11:55:50 +0300
Message-ID: <871q183yeh.fsf@intel.com>
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

On Wed, 25 Sep 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Retry the first read and write to downstream at least 10 times
> with a 50ms delay if not hdcp2 capable. The reason being that

What are the 10 times and 50 ms delay based on?

> during suspend resume Dock usually keep the HDCP2 registers inaccesible
> causing AUX error. This wouldn't be a big problem if the userspace
> just kept retrying with some delay while it continues to play low
> values content but most userpace applications end up throwing an error
> when it receives one from KMD. This makes sure we give the dock
> and the sink devices to complete its power cycle and then try HDCP
> authentication.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++------
>  1 file changed, 19 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2afa92321b08..5f2383c219e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1512,7 +1512,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	} msgs;
>  	const struct intel_hdcp_shim *shim = hdcp->shim;
>  	size_t size;
> -	int ret;
> +	int ret, i;
>  
>  	/* Init for seq_num */
>  	hdcp->seq_num_v = 0;
> @@ -1522,13 +1522,25 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
> -				  sizeof(msgs.ake_init));
> -	if (ret < 0)
> -		return ret;
> +	for (i = 0; i <= 10; i++) {

I'm pretty nitpicky about this. Please avoid <= in the for loop if you
can. Just make it the obvious (i = 0; i < 10; i++), or if you have 1 try
+ 10 retries, then i < 10 + 1 or i < 11.

If the 10 retries is just made up, then maybe just try 10 times total.

> +		if (!intel_hdcp2_get_capability(connector)) {
> +			msleep(50);
> +			continue;
> +		}

This changes behaviour for the first try too. Is that intentional? No
mention in the commit message?

> +
> +		ret = shim->write_2_2_msg(connector, &msgs.ake_init,
> +					  sizeof(msgs.ake_init));
> +		if (ret < 0)
> +			continue;
> +
> +		ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
> +					 &msgs.send_cert, sizeof(msgs.send_cert));
> +		if (ret < 0)
> +			continue;
> +		else

The else is redundant here.

> +			break;
> +	}
>  
> -	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
> -				 &msgs.send_cert, sizeof(msgs.send_cert));
>  	if (ret < 0)
>  		return ret;

-- 
Jani Nikula, Intel
