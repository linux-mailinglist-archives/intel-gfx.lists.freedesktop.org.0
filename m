Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B473D560C1A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 00:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A3210E2C1;
	Wed, 29 Jun 2022 22:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9F810E2C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 22:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656540701; x=1688076701;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=5djOYAqGM6r1aWejB7gQlJ5TmBPK98vwrb1T2r8mu5w=;
 b=cIXCfm9N7BENxvCY06KFnmErOUvtekmYhB6dI9vH9p3bwzhXgHavBt7f
 PP4UT8cFjgDUjZEAkCPYVw0eYeFdr/p3O/QmtP0vTtIRyeFqwR8O4egmx
 JMhJv0b5ZBl6N1AHs0JmTz1SWJVynds09KO/jmHCi/YFZ0ME5pBY+U4Gj
 3egTfivTu7zRZCSccCD030OpCv3lwE9yMqPkQkPNlWGgctML9LEEPCcEZ
 W8/Ys2VCj8dfsUp+km+Oz8+BRCVNI1HQK/W66zE7tYaRv1ZTqk+RCDB3n
 OB64ov1dY4ukke0nktIHLuTcsnrjtj1UjJcLduZYahc8ZA2QRKvLPQ/Ot w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="265209701"
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="265209701"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 15:11:40 -0700
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="647604578"
Received: from datrestr-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.71.169])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 15:11:39 -0700
Date: Wed, 29 Jun 2022 15:11:35 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <YrzOFxk1OtV0Zbdm@msatwood-mobl>
References: <20220629134721.48375-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220629134721.48375-1-jose.souza@intel.com>
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

On Wed, Jun 29, 2022 at 06:47:21AM -0700, José Roberto de Souza wrote:
> Display is turned off by i915_drm_suspend() during the suspend
> procedure, removing the last reference of some gem objects that were
> used by display.
> 
> The issue is that those objects are only actually freed when
> mm.free_work executed and that can happen very late in the suspend
> process causing issues.
> So here draining all freed objects released by display fixing suspend
> issues.
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6e5849c1086f6..aa2a5ea30c7bb 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1186,6 +1186,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> +	i915_gem_drain_freed_objects(dev_priv);
> +
>  	return 0;
>  }
>  
> -- 
> 2.37.0
> 
