Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199D75BDC21
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 07:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF5F10E275;
	Tue, 20 Sep 2022 05:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E41410E272;
 Tue, 20 Sep 2022 05:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663650626; x=1695186626;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GzApewrPXjSSbROJHSRXHgUyrY5MCr30HSVet2f/DRI=;
 b=HiFALjTyYRdymJceyRgjQkXIa1bVZehp3DJvnrR6Drdkj0R9mg6Iqfrk
 r5D1pJVFFPFJviZVXDczxkJmtWF+4O/v4msY+JrUxY9GTnu3d03Og9iN+
 VEKFOg5BN+ixi5a2q/dI6NBUkq4BjBXZEpRPHVEbjiN6wPhy3UWYV9tCl
 qmb+C5EZ6oeXaW5an6rB3+u1yW+OUzO7psf0AsZYkB484aWMN3H9qxSwL
 kKmwJw2zI4Tj08YO17QzWK4WJ/EvdHV4f0qxHA1fm3zTJGbm5w/ZD9SHY
 z4bBTg3PBF9wu+qHSWyyEBOpnyb9fyd6lGPLAextQzXIt5t0QrOoWMLN3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="298323435"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="298323435"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 22:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="947515241"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 19 Sep 2022 22:10:25 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.59.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 1D081580A31;
 Mon, 19 Sep 2022 22:10:23 -0700 (PDT)
Date: Tue, 20 Sep 2022 07:10:21 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220920071021.5e60f9ea@maurocar-mobl2>
In-Reply-To: <20220913120441.146757-5-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
 <20220913120441.146757-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/4] tests/core_hotunplug:
 Select health checks for initially detected chipset
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Sep 2022 14:04:41 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> As soon as we first time open a drm device to be exercised, we identify
> its chipset, store that information, and perform some basic device
> specific checks.  We also store a filter that matches the device bus
> address to make sure we will exercise still one and the same device after
> each driver unbind-rebind / device unplug-rediscover operation.
> 
> However, each time before we select device specific health checks, whether
> before or after a driver unbind-rebind / device unplug-rediscover
> operation, we identify the device chipset again.  Besides being more
> expensive, that approach could also result in using different set of
> health checks should device filters not work as expected.
> 
> Always use the stored chipset type instead of identifying it now and
> again.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Makes sense to me, once we have patch 3/4 applied. So,

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  tests/core_hotunplug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index 29cb26ab12..7c7ed09e63 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -400,7 +400,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
>  	if (closed)	/* store fd for cleanup if not dirty */
>  		priv->fd.drm_hc = fd_drm;
>  
> -	if (is_i915_device(fd_drm)) {
> +	if (priv->chipset == DRIVER_INTEL) {
>  		/* don't report library failed asserts as healthcheck failure */
>  		priv->failure = "Unrecoverable test failure";
>  		if (local_i915_healthcheck(fd_drm, "") &&
