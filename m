Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1E0169FBD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 09:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5086389458;
	Mon, 24 Feb 2020 08:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE90589458
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 08:08:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 00:08:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="349870970"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2020 00:08:46 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 00:08:46 -0800
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx163.amr.corp.intel.com (10.18.125.72) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 00:08:45 -0800
Received: from BGSMSX107.gar.corp.intel.com ([169.254.9.58]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.95]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 13:38:43 +0530
From: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Nikula, Jani"
 <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Fix inverted WARN_ON
Thread-Index: AQHV6nBUmU2GCJmubkajVTyzpa3kKqgp/QVA
Date: Mon, 24 Feb 2020 08:08:42 +0000
Message-ID: <E92BA18FDE0A5B43B7B3DA7FCA0312860576FC17@BGSMSX107.gar.corp.intel.com>
References: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix inverted WARN_ON
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: 23 February 2020 23:10
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Laxminarayan Bharadiya, Pankaj
> <pankaj.laxminarayan.bharadiya@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/display: Fix inverted WARN_ON
> 
> Restore the previous WARN_ON(cond) so that we don't complain about poor
> old Cherryview.
> 
> Fixes: eb020ca3d43f ("drm/i915/display/dp: Make WARN* drm specific
> where drm_device ptr is available")

Fixes seems to be wrong.

The commit " eb020ca3d43f" just does the replacement and does not modify any existing condition.

-       if (WARN_ON(!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
-                   !IS_GEN9_LP(dev_priv)))
+       if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
+                       IS_CHERRYVIEW(dev_priv) &&
+                       !IS_GEN9_LP(dev_priv)))

Will you please double check and confirm.

Thanks,
Pankaj

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2f93326c16a3..e8bebd27004d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1023,9 +1023,10 @@ void intel_power_sequencer_reset(struct
> drm_i915_private *dev_priv)  {
>  	struct intel_encoder *encoder;
> 
> -	if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
> -			IS_CHERRYVIEW(dev_priv) &&
> -			!IS_GEN9_LP(dev_priv)))
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			!(IS_VALLEYVIEW(dev_priv) ||
> +			  IS_CHERRYVIEW(dev_priv) ||
> +			  IS_GEN9_LP(dev_priv))))
>  		return;
> 
>  	/*
> --
> 2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
