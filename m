Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609739313BB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 14:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1954E10E35B;
	Mon, 15 Jul 2024 12:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJl+lGQY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C5210E35B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2024 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721045567; x=1752581567;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dMaeio19HHf7Vh597Pie49zARnTx3vAJSVe2cL9Im6M=;
 b=VJl+lGQYeAbfLxUTL2qM3jq6EJknPF992k2uhNrAFjp8ckzxhFnimiGO
 D5FH2MTG5+slRKOpzv5C+EhUZBeZi5b2HauLt3QDTcyrgtm+TZ6nRgeXg
 hewoMAXKcZR8fd7sD/66VFFzuFaCBlVsSpONlmOCK0UaXUcN11wbZNTjK
 /k1ZuUJC1sjhR79CVcrcmR3YvRfECks2d37Bag399KfJLqokEgespHrDy
 sL4o9tpMgYWn35Qrhkg7eYjxFHQCsKKu5CkI4afQvpbdMkUZPWxqy4aHR
 t6OejU1Xr/jEFIMYpqBljJZmArkjD+vq3fUTTL6Yw6diTpRKUkr+aUeNb A==;
X-CSE-ConnectionGUID: Or/Qey84QeupUQNIpMBZpg==
X-CSE-MsgGUID: C1Kpo/QFRxqklETwK/VmIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="29010035"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="29010035"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 05:12:47 -0700
X-CSE-ConnectionGUID: +AuHPA4fTTWX5aCWqDoYDw==
X-CSE-MsgGUID: VazBDI+cR2GgULvB6V6kjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="50371191"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.245.220])
 ([10.245.245.220])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 05:12:44 -0700
Message-ID: <1ba45e23-47da-484e-8857-1ad85131f9d8@linux.intel.com>
Date: Mon, 15 Jul 2024 14:12:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/dp: Describe target_rr_divider in struct
 drm_dp_as_sdp
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, sfr@canb.auug.org.au, jani.nikula@intel.com
References: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Den 2024-07-15 kl. 06:02, skrev Mitul Golani:
> Describe newly added parameter target_rr_divider in struct
> drm_dp_as_sdp.
> 
> -v2:
> Remove extra line from commit message.(Lucas)
> 
> -v3:
> Rebase.
> 
> Fixes: a20c6d954d75 ("drm/dp: Add refresh rate divider to struct representing AS SDP")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  include/drm/display/drm_dp_helper.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index bbb1cdc4fc68..279624833ea9 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -112,6 +112,7 @@ struct drm_dp_vsc_sdp {
>   * @target_rr: Target Refresh
>   * @duration_incr_ms: Successive frame duration increase
>   * @duration_decr_ms: Successive frame duration decrease
> + * @target_rr_divider: Target refresh rate divider
>   * @mode: Adaptive Sync Operation Mode
>   */
>  struct drm_dp_as_sdp {
