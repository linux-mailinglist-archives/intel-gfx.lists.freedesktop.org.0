Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F9A561E5F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 16:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2497711B809;
	Thu, 30 Jun 2022 14:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402EF11B67A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 14:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656600399; x=1688136399;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JHF3ClGLN9RYb9SS96RCpn7UVDJ/Dn+WUsjuvKh1cTs=;
 b=aMixu1lZr12/PhlPg/5fvG7mkTKy8xDSf4E3TEyQOGlQ2PX6CLOQKWe6
 abiXrQ3r1ByHlGoOG7R3SLZ1534uavI5mPbTVLPEtEeQkYksh6BqUguEO
 BXEv4tRJUnedFO20WkasMepoqi40XBgTQwATb+Uugj7jucuNn2VTdzr7L
 LY1ERRXoYnmfcN5cNtZuMoarWAF7GL6B3epFNX6Q3e/LDab6uTWJ4s89s
 pDmpS10MjD3hyPTDFrCa+gTGTHrKupG5pvDaCw8UYcBLnJXqjFaE4mns/
 qz+QZULLAnnPrH2rUChVnXrQxsq5A6HbNwZwBTRPCkq69VlHq9DBxhhvq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307876819"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="307876819"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:46:38 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647918072"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.211])
 ([10.213.25.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:46:37 -0700
Message-ID: <e32143e0-1b75-e9c4-d9d2-90c738da5d9d@intel.com>
Date: Thu, 30 Jun 2022 16:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220624130406.17996-1-jose.souza@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220624130406.17996-1-jose.souza@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm: i915: fix a possible refcount leak in
 intel_dp_add_mst_connector()
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
Cc: Hangyu Hua <hbh25y@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24.06.2022 15:04, José Roberto de Souza wrote:
> From: Hangyu Hua <hbh25y@gmail.com>
> 
> If drm_connector_init fails, intel_connector_free will be called to take
> care of proper free. So it is necessary to drop the refcount of port
> before intel_connector_free.
> 
> Fixes: 091a4f91942a ("drm/i915: Handle drm-layer errors in intel_dp_add_mst_connector")
> Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 061b277e5ce78..14d2a64193b2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -839,6 +839,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>   	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
>   				 DRM_MODE_CONNECTOR_DisplayPort);
>   	if (ret) {
> +		drm_dp_mst_put_port_malloc(port);
>   		intel_connector_free(intel_connector);
>   		return NULL;
>   	}

