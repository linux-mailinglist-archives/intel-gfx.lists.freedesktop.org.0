Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ABF737C06
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E0210E091;
	Wed, 21 Jun 2023 07:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 320F689FEA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687332510; x=1718868510;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Ry0MaYZ95p0VBkF93SJg8YXeLLr4hxzRpVdgSBpLu3g=;
 b=mQH8tZh4wiUXMaObl4daogBVQoszQ/exWqI6V6cisdxdq/JsIjNq2Rcr
 iR2X+kg1i9WAsOdE0flOttww7WnwTRgXReZ/i74CmXQVHSBMSM3GrPaCs
 vxTKPcHeUHNhikle1PH14i+493HMiuvteksUtzgkj/rj/OAP4Rln/JYJJ
 8P3WQgeUw/VzKKyv7oO07Ad28HwLHv5p6UP8leYJ0sEwFW4NA20o2+SMi
 EaEnM0BXP3j1wTKPmOi3TdvzicfLAWTp0YW9rYBK2B7O7Z9k3v8Q28KO+
 GfV+TreAoYm785J+2fgXggvtGGjj/OdGSSFAUmSW76fYNqABlPga77g5J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="339711749"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="339711749"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="779742088"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="779742088"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:28:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230621014156.1994797-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230621013524.1994538-1-suraj.kandpal@intel.com>
 <20230621014156.1994797-1-suraj.kandpal@intel.com>
Date: Wed, 21 Jun 2023 10:28:25 +0300
Message-ID: <87pm5pff52.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Add a debug statment at
 hdcp2 capability check
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

On Wed, 21 Jun 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add a debug statement at hdcp2 capability check which indicates if
> GSC CS is causing hdcp2 incapability
>
> --v2
> -correcting typo in commit header

Maybe fix the other typo as well? ;)

BR,
Jani.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 5ed450111f77..73fe84fc9bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -177,8 +177,11 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>  		struct intel_gt *gt = i915->media_gt;
>  		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
>  
> -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
> +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "GSC components required for HDCP2.2 are not ready\n");
>  			return false;
> +		}
>  	}
>  
>  	/* MEI/GSC interface is solid depending on which is used */

-- 
Jani Nikula, Intel Open Source Graphics Center
