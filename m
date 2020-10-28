Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A2E29CF28
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 10:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60956E4B5;
	Wed, 28 Oct 2020 09:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD936E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 09:18:17 +0000 (UTC)
IronPort-SDR: 2WOXk1g3lJD9hCx2uNAgBc+uFJs/yIyUQ3InZZfdYMWCAqXblzSkujOBRA7tQ8XnPEs1PhVCLY
 yvFlgSGr8Y7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="147514259"
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="147514259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:18:17 -0700
IronPort-SDR: qZuznGRw7Opzog8USXKh6811OhzDl0EyLsy1CYtSb8eqwujRxGd331ILD796mmNdsApTKUGiXj
 96muoljnDbrA==
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="304177016"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:18:15 -0700
Date: Wed, 28 Oct 2020 14:34:39 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Kamati Srinivas <srinivasx.k@intel.com>
Message-ID: <20201028090439.GJ29526@intel.com>
References: <20201027103335.3725-1-srinivasx.k@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027103335.3725-1-srinivasx.k@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] drm/i915: Acquire connector reference before
 prop_work
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-10-27 at 16:03:35 +0530, Kamati Srinivas wrote:
> From: Srinivas Kamati <srinivasx.k@intel.com>
> 
> "Content protection type change" igt test results in kernel
> taint. Everytime after prop_work is done we are also
> giving up connector reference, which is resulting in ref
> count underrun.
> 
> Before scheduling prop_work acquire connector reference.
I has been alreayd taken care at 
https://patchwork.freedesktop.org/patch/397215/?series=82998&rev=2
> 
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Srinivas Kamati <srinivasx.k@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index b2a4bbcfdcd2..beedd672b21e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2210,6 +2210,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	if (content_protection_type_changed) {
>  		mutex_lock(&hdcp->mutex);
>  		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +		drm_connector_get(&connector->base);
>  		schedule_work(&hdcp->prop_work);
>  		mutex_unlock(&hdcp->mutex);
>  	}
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
