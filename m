Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4037B9CF4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 14:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9BC10E3E0;
	Thu,  5 Oct 2023 12:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCBF10E3E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 12:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696508691; x=1728044691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BX7aJgvRALQ/zVutAa6KJcel4t17ZPnYwqRY6uYhmRU=;
 b=Txuy97Rda31Z7tvBegj2MjF0du+YAoSTPRR8VPQb/LEUhLQq39S3MF3R
 NqYajfAjFuH6emm7vJgHBnFQ8yDB01Q9QQmW5k6AZaRLU1iLJ20I8D3iW
 PZvRzyDRJqL6hBCKrkWmBfAqVhhz/24Nxi1TCQWXopEOaBPnsNyq4mNvi
 QNEvVV9kVlO6MxdcYF7mhQJrz7OgmnjF4X4uKhV6rIkFiqN7fRVSXwbPK
 P0KMKgeoEqLv+QLFOV9oN5q4J3URd9jAe5O5AJOj2628H9Kn77gUIP65z
 BW3WtlPQsCw9ifq6IB0spj1i9NwXceSc3DLUa9zIxuDVpVw74sEU9RB9O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363760885"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="363760885"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 05:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="875546790"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="875546790"
Received: from yklum-mobl.gar.corp.intel.com (HELO intel.com) ([10.215.244.7])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 05:24:45 -0700
Date: Thu, 5 Oct 2023 14:24:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZR6rBhZNsN4+EMam@ashyti-mobl2.lan>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
 <20231005111040.578997-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005111040.578997-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Remove redundant
 intel_connector NULL check
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, Oct 05, 2023 at 04:40:41PM +0530, Suraj Kandpal wrote:
> Remove redundant intel_connector NULL check. Having it here just
> creates further confusion and also the variable already gets
> dereferenced before the aforementioned NULL check
> 
> Fixes: dba14b27dd3c ("drm/i915: Reinitialize sink scrambling/TMDS clock ratio on HPD")

You don't need the Fixes tag here anymore, as this is not fixing
anything.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4668de45d6fe..9151d5add960 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4333,7 +4333,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
>  	u8 config;
>  	int ret;
>  
> -	if (!connector || connector->base.status != connector_status_connected)
> +	if (connector->base.status != connector_status_connected)

based on Jani's and Ville's previous review, looks OK.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

>  		return 0;
>  
>  	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
> -- 
> 2.25.1
