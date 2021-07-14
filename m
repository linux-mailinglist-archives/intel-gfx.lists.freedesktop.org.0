Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F14823C84E9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 15:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5456E288;
	Wed, 14 Jul 2021 13:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C277E6E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 13:00:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="197524352"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="197524352"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 06:00:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="494442014"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2021 06:00:28 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 06:00:27 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 18:30:24 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.010;
 Wed, 14 Jul 2021 18:30:24 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp capability
Thread-Index: AQHXd79GE80RD9tdx0S2Qj5Fnr5pIKtCcHiw
Date: Wed, 14 Jul 2021 13:00:24 +0000
Message-ID: <61e6f1836cbd48c0a9d1500aaa26d3fb@intel.com>
References: <20210709115420.25381-1-anshuman.gupta@intel.com>
 <20210713075738.23759-1-anshuman.gupta@intel.com>
In-Reply-To: <20210713075738.23759-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp
 capability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: Tuesday, July 13, 2021 1:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp capability
> 
> Extend i915_lpsp_capability debugfs to DG2,ADLP and future platforms.
> 
> v2: commit log modification.
> 
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Changes looks good to me.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

Regards,
Animesh 
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d5af5708c9da..65832c4d962f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2256,6 +2256,11 @@ static int i915_lpsp_capability_show(struct seq_file
> *m, void *data)
>  	if (connector->status != connector_status_connected)
>  		return -ENODEV;
> 
> +	if (DISPLAY_VER(i915) >= 13) {
> +		LPSP_CAPABLE(encoder->port <= PORT_B);
> +		return 0;
> +	}
> +
>  	switch (DISPLAY_VER(i915)) {
>  	case 12:
>  		/*
> --
> 2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
