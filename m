Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FAB702973
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 11:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E80510E1A1;
	Mon, 15 May 2023 09:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE4E10E1A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 09:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684144000; x=1715680000;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=8NpTUwyLyUSlvgmsR8b6OHp6KhGIlXo4Ym/nAv/BNtE=;
 b=m8TImsDDHHwz8iGm0LlCQtOItU9PwB7LuOZoCCReQEKIUGJhEfWT3UE3
 Nd9q03Hq7CbeQDG8+fqJxU/APokOcu9p2W2ONLeHONBwJ6VnDifRp9ALm
 nfZemVhAv+qHtUhJiBg0qX5YPTSrW0vwwvRm8FUhDv24FmIOZjDtTv8oe
 MMBF7CUktG2GQJCseH8DPVug2Q+J+EGL22WdDCFm3dlC8e+VodF/+sRLF
 ZuN2iV6TkY7js240NcXKrDaGHFYE7NZL4D2QlwILIn3uxE3UOsGeMomaz
 xO8Od786EylkfidkgJ2LhFpFIb4Rvy5KQu/Dc8Bxb9+Nmj78e1jLPbhAC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="416806376"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="416806376"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:46:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="703921798"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="703921798"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:46:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230515051557.672109-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
 <20230515051557.672109-3-suraj.kandpal@intel.com>
Date: Mon, 15 May 2023 12:46:36 +0300
Message-ID: <87sfbyhqpv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/hdcp: Remove enforce_type0
 check outside loop
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

On Mon, 15 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Remove enforce_type0 check outside the loop since it
> does not make sense to keep it there as we use the same
> digport and continue checking it again and again
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index e2c5781ad0ab..f2d258a72c59 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -84,6 +84,9 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  	if (dig_port->hdcp_auth_status)
>  		return 0;
>  
> +	if (!dig_port->hdcp_mst_type1_capable)
> +		enforce_type0 = true;
> +
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		if (connector->base.status == connector_status_disconnected)
> @@ -96,9 +99,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  		if (conn_dig_port != dig_port)
>  			continue;
>  
> -		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
> -			enforce_type0 = true;
> -
>  		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
>  		data->k++;

-- 
Jani Nikula, Intel Open Source Graphics Center
