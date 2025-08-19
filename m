Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F19DB2C5B5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 15:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7BF10E5FB;
	Tue, 19 Aug 2025 13:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYOqO0wA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A89310E1A6;
 Tue, 19 Aug 2025 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755610534; x=1787146534;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iwumie7su+1yhSpuXXaZRmIAN+4fwbTbAplMygkx54M=;
 b=IYOqO0wALYz+5Gg4IbwW4awG/l6Y8+alexLWE7n8Pcruda78yrTDjjkD
 jXjOdnWvS4umYRjPR19qJ0lR4PQ6eLVSYd2CC+nEmfXIipPwdzd5slzxV
 YGZlv4P+J9CSnfwEoP/w6kWbN3/o0eSbb3+tD+bifcviKPfiwRaHwA+sK
 DYU/4H7b5/ORIdLbgCLOQMsAJg26JfPOl1UdxtTOuHHSFHNCfyZ9Zh/bP
 eDEev3WQnzlK+JmXVqD2EyPxA04WwbWzmXq+3UzbvGgOyAPcfy5yjtMnn
 JUPAXpDQI8Q8giSIZtk8WTNXlC1slmOXMBL4ablz9ClCnDwt3+Haq4GJO w==;
X-CSE-ConnectionGUID: cVX1cqyjRuaKt7o+guXmsQ==
X-CSE-MsgGUID: 7bdbk1RjRZqU/X3yzsGB4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57765017"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57765017"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 06:35:33 -0700
X-CSE-ConnectionGUID: /FUKHLv9TJKATBRoznanVw==
X-CSE-MsgGUID: PhL7RtLITeWjSok+/F9l4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="205003241"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 06:35:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/i915/display: take out dead code
In-Reply-To: <20250819132526.18643-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250819132526.18643-1-juhapekka.heikkila@gmail.com>
Date: Tue, 19 Aug 2025 16:35:28 +0300
Message-ID: <18cbef61b95915120e5c25ce96e3d426cede87ac@intel.com>
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

On Tue, 19 Aug 2025, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> if __waitfor timeout, ret will have -ETIMEDOUT. Then if condition
> was met, and read_ret will have error that's handled.
> Then if ret was zero, read_ret was zero ksv_ready must have value.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 42202c8bb066..2e34b625c80b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -334,8 +334,6 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
>  		return ret;
>  	if (read_ret)
>  		return read_ret;
> -	if (!ksv_ready)
> -		return -ETIMEDOUT;
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel
