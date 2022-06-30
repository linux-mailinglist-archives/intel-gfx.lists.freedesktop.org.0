Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDBE561DBE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 16:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0864111B6AE;
	Thu, 30 Jun 2022 14:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5AF11B6AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 14:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656599198; x=1688135198;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=EVSuG/psXHO/y+ZXwoP2/4NshjmhFZNwX4aNHE855AY=;
 b=h3UVNnQCWcdBOhUMCYhn3AVHfI4D2uYeoJSApHCGDCOqVtqmdzybeipw
 FWEqfQSALBg63XXgF4n6WaLouymCUBfGG+i4HEQi0zRtkZTxJvQjiXZly
 Q1eiZugg3bA7fFjvqwq9oY+9g30zYwVre/1oNUW/rloms0fwl86B+JDH7
 3JWfogGHUD4CgInFQaN5AkwktnjRkmMt9g3j+nTvdarls7lQxN8t2HMDP
 tCHn1LkCB1MzO+z5W8ZTCJ2sPmWTCANXQZ8a47KeUZkiX91BIYbLCWB98
 8/JXRagjRttD6B9CU/3GPwdWYbfUvyDNb9tiDn5HMy0BJynUSnpFbpj3/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="283096459"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="283096459"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:26:37 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647911671"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.211])
 ([10.213.25.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:26:36 -0700
Message-ID: <059fb6e3-1b66-be9c-98ab-55a8abadcdc8@intel.com>
Date: Thu, 30 Jun 2022 16:26:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220629134721.48375-1-jose.souza@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220629134721.48375-1-jose.souza@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drain freed object after suspend
 display
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

On 29.06.2022 15:47, José Roberto de Souza wrote:
> Display is turned off by i915_drm_suspend() during the suspend
> procedure, removing the last reference of some gem objects that were
> used by display.
> 
> The issue is that those objects are only actually freed when
> mm.free_work executed and that can happen very late in the suspend
> process causing issues.
> So here draining all freed objects released by display fixing suspend
> issues.

Describing the issues would be helpful, alternatively bug tracker 
reference if any.

> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/i915_driver.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6e5849c1086f6..aa2a5ea30c7bb 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1186,6 +1186,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>   
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
> +	i915_gem_drain_freed_objects(dev_priv);
> +
>   	return 0;
>   }
>   

