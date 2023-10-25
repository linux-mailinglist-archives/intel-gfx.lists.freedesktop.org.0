Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E9C7D739B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 20:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A331510E6CF;
	Wed, 25 Oct 2023 18:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00DAC10E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 18:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698260047; x=1729796047;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kBUUJAMWjFw6V8tlapmdipj8IYbwhIFa+VXTGpzFT1M=;
 b=W937olrsq41vsQvQOYIIyEs11mX33H4V5CCBO1mLNIBGTqUFblGNZBDK
 ziaXDjPK558hy2GAuqKR+JxgJTD+xRZYmLOlheiJNxVWRcDlqF+1kVc0U
 z8b+EdPXTK9vrPamjG70actHQNC3PC1dEKSb7b23vIhEfdgAKVQjw+gLd
 xw1siU/L2YyIGjXlNCSsbXO7DB/qGeDXAsF6+ZfEB+DQy/TJQ9Xq+BQ8B
 Wi+WqGFUZ58iTrWiK18JA5NE4aWKMUNimkyJz5AwKSR5ESN3i/zc7sS1/
 szHDJvA64/7fJFAaYbV0+KwInxmHBRQeYxHEED2bgHWHYba0DY3E8fB0t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="367588798"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="367588798"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 11:54:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="932462913"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="932462913"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.52])
 ([10.213.18.52])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 11:54:04 -0700
Message-ID: <6c03b101-64a5-4316-91ad-991ddcf17456@intel.com>
Date: Wed, 25 Oct 2023 20:54:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231025170834.22691-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231025170834.22691-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25.10.2023 19:08, Nirmoy Das wrote:
> Fix below compiler warning:
> 
> intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
> writing between 1 and 11 bytes into a region of size 3
> [-Werror=format-truncation=]
> "%c/TC#%d", port_name(port), tc_port + 1);
>             ^~
> intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
> into a destination of size 8
>    snprintf(tc->port_name, sizeof(tc->port_name),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      "%c/TC#%d", port_name(port), tc_port + 1);
>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> v2: use kasprintf(Imre)
> 
> Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc_port struct")
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_tc.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 37b0f8529b4f..0fa54450d51b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -58,7 +58,7 @@ struct intel_tc_port {
>   	struct delayed_work link_reset_work;
>   	int link_refcount;
>   	bool legacy_port:1;
> -	char port_name[8];
> +	char *port_name;
>   	enum tc_port_mode mode;
>   	enum tc_port_mode init_mode;
>   	enum phy_fia phy_fia;
> @@ -1875,8 +1875,10 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
>   	else
>   		tc->phy_ops = &icl_tc_phy_ops;
>   
> -	snprintf(tc->port_name, sizeof(tc->port_name),
> -		 "%c/TC#%d", port_name(port), tc_port + 1);
> +	tc->port_name = kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port),
> +				  tc_port + 1);
> +	if (!tc->port_name)
> +		return -ENOMEM;
>   
>   	mutex_init(&tc->lock);
>   	/* TODO: Combine the two works */
> @@ -1897,6 +1899,7 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
>   {
>   	intel_tc_port_suspend(dig_port);
>   
> +	kfree(dig_port->tc->port_name);
>   	kfree(dig_port->tc);
>   	dig_port->tc = NULL;
>   }

