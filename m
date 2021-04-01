Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ECC3510E9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 10:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D85E6E3B7;
	Thu,  1 Apr 2021 08:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B382C6E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 08:34:53 +0000 (UTC)
IronPort-SDR: ue0AYZ3BhE2wR1cqBIFIg3uqx0ByE6tOf1dUg3sY4rNN+PdZZuKvuZ3IWDjYsOtNxYIy5hkOwe
 2ksISceR84/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="179718629"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="179718629"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 01:34:47 -0700
IronPort-SDR: 3fdxQ4fdMGhFQXYxE7lTHkvbC/YaDSADoWimYBvnQn/oI5aFE54FNqCnASgQvp2xHxUA+TtCkR
 6YDY3jp1gK0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="379223660"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 01 Apr 2021 01:34:47 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 01:34:46 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 14:04:44 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Thu, 1 Apr 2021 14:04:44 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/display: Disable PSR2 on
 Gen12/12+
Thread-Index: AQHXHwzsspKdT25w9Um1BihtJxGALKqfY88g
Date: Thu, 1 Apr 2021 08:34:44 +0000
Message-ID: <e7ba6d379da34fdcb524316fe938a45d@intel.com>
References: <20210322110715.126105-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210322110715.126105-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/display: Disable PSR2 on
 Gen12/12+
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Tejas
> Upadhyay
> Sent: Monday, March 22, 2021 4:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Pandey, Hariom <hariom.pandey@intel.com>
> Subject: [Intel-gfx] [PATCH V2] drm/i915/display: Disable PSR2 on Gen12/12+
> 
> In light of PSR2 can be enabled only on BOM9 platform team has requested to
> disable PSR2 by default in driver, starting with gfx-driver-ci-master-7517. Disabling it
> for all gen12/12+.
> 
> Changes since V1 :
> 	- Added check for GEN12/12+
> 	- Modified commit message accoringly
> 

Nack on this change.

This is not right, please abandon and drop this change.

> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index cd434285e3b7..df55799c53da 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -727,7 +727,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
> 
>  	/* JSL and EHL only supports eDP 1.3 */
> -	if (IS_JSL_EHL(dev_priv)) {
> +	if (IS_JSL_EHL(dev_priv) || INTEL_GEN(dev_priv) >= 12) {
>  		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by phy\n");
>  		return false;
>  	}
> --
> 2.30.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
