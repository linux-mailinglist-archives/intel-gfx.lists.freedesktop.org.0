Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 716ABB48B1D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DD310E146;
	Mon,  8 Sep 2025 11:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLlKucNi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09DF10E146
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 11:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757329598; x=1788865598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tbJJO/e0n1S6QgEW/gRHFLpt1iMLVFalMgQHUCworms=;
 b=XLlKucNiYb83kjDUuIIUDJ3ELVseRl2SkdxooivHmS0cAHwRJ3jCgDhx
 PbBnGLssg4SXY+RszAvuZa61fKk1jZ0+5ZhnlXaB8y+mxXOHm8n4Ur6Wk
 n0GvGmSNGVKjiLXmpgGnCNr148eNSqQCTAN/Dr7OlrzBuisOF0COVl1A/
 DCvI8BdvNq8Ybke92Xq9WEZc98YRRWeUhUzt7ti+LN5wOshVWvBIiYXtx
 /IAWAcFHJT7H8X1AtHJ7E1yTExf5Q7ex2dApUL3lCs7I3UNYsDZH2ysAu
 T4hzPV0c3KXgTXgVYT+xl5eivkR65twiWetyQmAVAq9zmVQThx2CLghQZ A==;
X-CSE-ConnectionGUID: bPvkOffKQ1SpUTXJppLesg==
X-CSE-MsgGUID: EwegaMMBR3G2K3r/heOc1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="58796049"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="58796049"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:06:38 -0700
X-CSE-ConnectionGUID: JvBa6df1Rxmmf/8BQPCoAw==
X-CSE-MsgGUID: 62oz+AHiSSam6ny9/oSuBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="203542095"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.178])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:06:35 -0700
Date: Mon, 8 Sep 2025 13:06:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Simona Vetter <simona.vetter@ffwll.ch>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 3/6] drm: Remove drm_modeset_backoff() return code
Message-ID: <aL64uVL06mhJZRnj@ashyti-mobl2.lan>
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <875e9a8b71dd3dfe7b865acb489755b4a205a55a.1756995162.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875e9a8b71dd3dfe7b865acb489755b4a205a55a.1756995162.git.krzysztof.karas@intel.com>
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

Hi Krzysztof,

On Mon, Sep 08, 2025 at 09:24:56AM +0000, Krzysztof Karas wrote:
> We do not care about the value returned from that function
> during initialization.
> 
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/drm_mode_config.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 25f376869b3a..69a923e1bdfe 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -471,7 +471,7 @@ int drmm_mode_config_init(struct drm_device *dev)
>  		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
>  				       &modeset_ctx);
>  		if (ret == -EDEADLK)
> -			ret = drm_modeset_backoff(&modeset_ctx);
> +			drm_modeset_backoff(&modeset_ctx);

This is a very insignificant change because whether we set ret or
we don't it doesn't change anything.

Up to Sima.

Andi
