Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D534B3C45B7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 08:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A990893E7;
	Mon, 12 Jul 2021 06:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4701893E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 06:58:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="295575179"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="295575179"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2021 23:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="429545746"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Jul 2021 23:58:22 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 11 Jul 2021 23:58:21 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 12:28:19 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.010;
 Mon, 12 Jul 2021 12:28:19 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/debugfs: xelpd lpsp capability
Thread-Index: AQHXdLuzBWiCwtD5YkK0qtatQ1Es16s+6zVw
Date: Mon, 12 Jul 2021 06:58:19 +0000
Message-ID: <73511e40f8e34346a507bc19c6323e8d@intel.com>
References: <20210709115420.25381-1-anshuman.gupta@intel.com>
In-Reply-To: <20210709115420.25381-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: xelpd lpsp capability
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
> Sent: Friday, July 9, 2021 5:24 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH] drm/i915/debugfs: xelpd lpsp capability

The same change is applicable for both hpg and lpg architecture. Need to modify the subject line to accommodate it.

Regards,
Animesh

> 
> Extend i915_lpsp_capability sysfs to xelpd and future platforms.
> 
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af9e58619667..75d991a0707e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2255,6 +2255,11 @@ static int i915_lpsp_capability_show(struct seq_file
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
