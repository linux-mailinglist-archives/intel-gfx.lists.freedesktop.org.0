Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA46829DCC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 16:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA2310E05C;
	Wed, 10 Jan 2024 15:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F0410E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704901349; x=1736437349;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=J99w0kknGrytCmFKtyK2ihCRyjnKL7WQNyziNJOSJDI=;
 b=MkcMa6dnkyufh19qRqpdY7JRzh0PWm7tk7g9T65Erg622s7ZfGt2JRBD
 GsvQWkxrQiWe5HnWv2w2KkSqIgPti4xTuBmnEH1KZ+LeAefLObs0UscZN
 AJ9dk1IrKJuTmvbhTkHs7k8kIRW0n75oVEKkJ6faEhNbJ6RH2XTw8dEkf
 8w/qxMypILy3o+lt7UbGt1L2qVs0CcrqtZifhpKwHmUzj54fGHPu5dy1o
 3WHKCBePPZ/kfb8GQh4v60V8Vadt/X0nc3m8usu39YMaRfhnch/LMByGE
 QbPDuKGIJP3WjPlGxbn1XPzZlo0TVL67p45kjtYkAOgx6yRrKB4ych9Ba w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="5304930"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5304930"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 07:42:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="925676627"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="925676627"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 07:42:26 -0800
Message-ID: <b55e1a73-9a1d-4e11-9711-ac0171ddee9d@intel.com>
Date: Wed, 10 Jan 2024 16:42:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/hdcp: Pin the hdcp gsc message high in ggtt
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
 <20231215110933.9188-3-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215110933.9188-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 12:09, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> AFAICS there is no hardware restriction on where in ggtt
> the hdcp gsc message object needs to be bound. And as it's
> a regular shmem object we don't need it be in the mappabe
> range either. So pin it high to make avoid needlessly
> wasting the precious mappable range for it.
> 
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 18117b789b16..302bff75b06c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -65,7 +65,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   		goto out_unmap;
>   	}
>   
> -	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> +	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
>   	if (err)
>   		goto out_unmap;
>   

