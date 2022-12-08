Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36330646D32
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9A910E1BE;
	Thu,  8 Dec 2022 10:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCA810E1BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670496026; x=1702032026;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=FKnjlE1b/or9bk+8ko5kJbDonRkRuWopTu7bFRjUhBk=;
 b=SoCAwVVfYkV7Dwt0W0V3Cq9UbCiMry+cXyOUHkOXbY4XHhLkStv9HfSQ
 iGlBzSf9rbxCNA9Rf36jJrsWVM0Vx4gUlj6RhuN5rhy3w2hdnNpNzMEAJ
 8HDoKPj5xc7fmJzWVyHgVl49LHTKrEuUGkmUYZpeZH4FR0ey5iwMRneGd
 aZ5I7zVXfIfzifwHR+aKS48pkb1Sa1rgqnZgvtqa47ZXyikjyjmADqAcn
 o7XyW34Mabgtai41JPi1HuR/ZS598zWPp0jU/g9bWlFqP4h636V6Tq3yF
 zdp25wrJp+Z980YwLbONP+qtfLGZTL2p5egk4wEHCLJDi1URxmKaD+nGz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="296830270"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="296830270"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:40:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="789251948"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="789251948"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:40:25 -0800
Message-ID: <a5ff8060-be78-9277-a2d2-8d719a1e7c4c@intel.com>
Date: Thu, 8 Dec 2022 11:40:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <bc144ab3565b10e71244cd09f72ce7df86f4b5c6.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <bc144ab3565b10e71244cd09f72ce7df86f4b5c6.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 06/11] drm/i915/dmc: switch to intel_de_*
 register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index eff3add70611..f107b8cd3c9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -433,9 +433,9 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>   
>   	for (id = 0; id < DMC_FW_MAX; id++) {
>   		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
> -			intel_uncore_write_fw(&dev_priv->uncore,
> -					      DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
> -					      dmc->dmc_info[id].payload[i]);
> +			intel_de_write_fw(dev_priv,
> +					  DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
> +					  dmc->dmc_info[id].payload[i]);
>   		}
>   	}
>   

