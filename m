Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C526289EF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 20:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6924810E104;
	Mon, 14 Nov 2022 19:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5D910E104
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668455843; x=1699991843;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=H0kt4rXzgyVy4/txCUtrnKD1psfYqwODntp8484+CuQ=;
 b=ZRa2KJ+7lMgyYNqdLzdMe/eFa/xgWlULfIIUkSKzAa6WIHRa976ylSf/
 UMeJ60DGNXxkS0AV9pwuFrd8cuU2L8wGeHl39AzBVjOYOTCqJMfD1Lo+E
 mhi5ap2Bmmr8QX87jQ7O4bwUJpSSleODKxH4oP+IFHAcs8B5K/8V162FI
 Xxh35Bt6DD7lCo3o2SYyPrNzD7/JOudCsJtHRrJc45OICiyh1wltWEK8z
 5uiG2IEafFM677XsLH4w6iRWIbYfQURIGBDChGzZnyUVOIZC9tP5iWeWE
 eXJA+8iNhBkIHYZRlH/3JrJT+8L0Z9uQi9Na5MguS9UFwedL4XXXNwWT7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310777639"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="310777639"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 11:57:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638631613"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="638631613"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 14 Nov 2022 11:57:22 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 11:57:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 11:57:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 11:57:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihhtQHCaPnrgSQwiW3apbXjlSvZG8Xo4y4JbW4TMS6oX4W3vOtsAyTAmV35tQnMSHLDFLLPNmGm7HTypSRzyYN6qcBtmnh1gMtksaeT9S2L9bkRo5lF2uAB3IQ5t1W0CvnN+xiq9YH9u+gYLZ8wiAmP18rru1iGLd3PIajpdSLkJudyp4fCMUOJKFwRKALwBQ5gikqIeu7Tq6xqkWthkWTQOxtSIME+X9sEfKN8p2mGqRwyofE2aDyCO5Egarv4zSgxevCyjkcFLKbh6zNDMLsF/vC5nACEVNX8M0UUWxq502GXMluKHqD4X0fgToMTKONt18vsKHw2i29OdJta/OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=04FTX1Sed2JX0n3ilujMnvTKPQcTN5I9VtMA9C4pZjU=;
 b=Zk2op2wLcwJYahx+nlMn0qsknO2fHnDZK3YuI4f7mT/7zYWy7dw4BHPt3D/OgC2nIwHPLG78YulrL8/ZIvPQ8Qqxg8UMO/K95cDTLsiLe20H+62eWWk9/GX5OaP5B/BE4a8/pZQg7hD5zcMsPwZWOL7x+RCxZSJFD/3Eay30wCBrFmTjVGqpOckIFdCokd38UeeRoso7fjIm+cwALJkpljKLL3fHIssjrHmCzuQRfeyiyLWa59WIZvbsZOCUqtA/jx6Vx8eLZz9CnhHQYK/qZsICkQqJEG0ISLpsLtiZIz3xPF1x/Oez+ymUixZ5H6y5eD6pbrSn9gYsizHAPQDXLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 19:57:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 19:57:20 +0000
Date: Mon, 14 Nov 2022 14:57:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <Y3KdnF8AOHHICiXG@intel.com>
References: <20221114123843.880902-1-anshuman.gupta@intel.com>
 <20221114123843.880902-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221114123843.880902-2-anshuman.gupta@intel.com>
X-ClientProxiedBy: BY5PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN2PR11MB4533:EE_
X-MS-Office365-Filtering-Correlation-Id: ca8e4f12-10ca-4d58-684b-08dac67a7044
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c32zIhl8Xmss9EHa+5BI2/VqyB4KnPJRKljW6ivOA1LHimv8g5yVXU4ETret+PSJELxZj1PZOkiNUBxVorzROi6EWKE1xaSxQIKbJSfg6GwKcW/kaa8kfhCjSsPFmDgBsQoRH+tyMIrYKlptJSParnVsEcZ7oh+2q6TnbWY8r+0hIC4PGHJ1fhaza9SxQDtpapeepQ/9B7cjXDDLC9oJ1bKWd0YYSB3go62hmewMnKXk1RCQYoWOh/3r48oAyzsK+FcZ0Jc2pDMP4D79dMLn+4cyYfEIrgfiupXS0j4iR6XcInvgjH9Cwdd+Jy/idEszXw1IfgqTL4aU1ucY1/U+IsAQNm/IyzGSM+795y6Aiizg0wz9uEst/zKZLgRfRDofGNkNqOM3QUcV8a2CQCjl+7GzmDJj+NJRsJYEaOXtVd1oYRDQQppnAx0BgdyEtuQz8Q+SEEweKVvaBcB5jiS1y4nsChulRXnwfpW3OxuIWRvO1S5h3UvRt0jYBYltggVXa5t076WOPpCEun/F9FXsJh7kagdDbDh/IlYo77903y2/2PQofdbyZVcQ1JDpJ1Ma1mAan0NmrrnFpgbazDOGzB2rxHKz4zxxCNNPIc918D0D+sNw0mkzwuSjbtZG2qEDwNbTJRagbMtdM+tot+UFIY3JjiRT2ouHUwJFo3CItZT5WnCZliFLI2TuAe53qARmib5KoVTpFxVO797f5Jfwcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(376002)(39860400002)(346002)(451199015)(478600001)(6486002)(86362001)(38100700002)(82960400001)(6636002)(83380400001)(6666004)(37006003)(316002)(2616005)(44832011)(6506007)(66556008)(66476007)(66946007)(26005)(4326008)(6512007)(2906002)(5660300002)(8676002)(8936002)(36756003)(6862004)(41300700001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2FSnWh0/LGV9xcCU1aFGicPEII9wUHBXKip8Sh8S76h4BaNArBnSrY2kOVcI?=
 =?us-ascii?Q?NiiSN/Y/LMIJR/2dEwYQMrf9hrIU7jIaO42CJhxj6fjTxV38tOVRrrdozf9V?=
 =?us-ascii?Q?mIJm9aFNgZeWM2QHZ8Xcla4O90TSB7GKQ5qrS6f2q/OgDcX3clcOJ6nj87DC?=
 =?us-ascii?Q?C+jJVc6BitDUKXx0DA+3Or1eGgGdwjhVZukhYYx/cdHeZx4ajnmQvuXjI4p7?=
 =?us-ascii?Q?7DPxaE9roQCG3ifjDP880RXLQ+kY1+Wl+CZ2hvxbgLcEqgLPCZ13LtODVkWj?=
 =?us-ascii?Q?LqVIj5QAnoGF67EkypHs9AmpUtqntyT8fKvP6vB7c2R0Cumo/nkhcIXBX+Sx?=
 =?us-ascii?Q?Pmy0tJC4Yp5W2xwzk1zcGIiPclrlhK2/5HejjxjxTfWgxFWm4TTYh02rcAuB?=
 =?us-ascii?Q?jitcmVuA562x4tR6kig7y8L8DTsByIbPW5JiSJc2xnrVMappuIWoc9RYejY2?=
 =?us-ascii?Q?OfAADlN+jdIi3c0g3Bwr42XToBi8gfcRkHgILzr8oZTJO2APZI++oE+h1a+m?=
 =?us-ascii?Q?afd5nMRaOltZd1O+4MDoY816tSg0H2BfXTJLP4XYUuUSCfuDezkANlsS3SLI?=
 =?us-ascii?Q?4QwAwXkNkpeigLHMx9UHPVqJvSOI8VT9NoODBgS2ahTpa4EWcYLSMlptxUSo?=
 =?us-ascii?Q?vwPTZF6uTKVE4JqlmkLJTMFTzsfpOXcfucM6lZotVZPC4XaldqAcuJKBUTlM?=
 =?us-ascii?Q?/P2nYfq0b7H2p6oiabHKY135olDA/ee2GhboaJOlLqbCqRusLyj/KqjvuJ7I?=
 =?us-ascii?Q?7/3Apshi90h7F4Mpoo+Bx89fCLh31uQibMR4Otj/EX66WNC2Gun6x7C+KsTl?=
 =?us-ascii?Q?dUFF1buqE3rEAbyLxX6L/EEG199LkNeTbsVBd2FBUgOpEUK+xX5hf0P2zcJa?=
 =?us-ascii?Q?Co2hKIt4t82+Kr3qOHZWfbJOuDv5TyN/Nkh6759ypjiZke0KhoFnaR3AHAsa?=
 =?us-ascii?Q?w9YdgnrpACSF/iQ83zCBdysHWxld+CKSA1ktNqeIAG5quc5X5VrzYovLrMgx?=
 =?us-ascii?Q?Hhxc55MoB7/qBeRuYkbairaLkc792E8BwoIk6yW6S7ifXH8u4CTK0RnuTSNS?=
 =?us-ascii?Q?gxTLOiixiCxx8TQIgoGjE2+sK5oHEQi997c4x0jsePtqZ456dgNL7/ycHp7L?=
 =?us-ascii?Q?/XD0qTU2ta1Iy4fpDAHvktIeYxBo8GuOyNFFx21kUkdW3J0PFdFlZCikKY9v?=
 =?us-ascii?Q?HDxAXFOE/BwEr2E0e+WdMxob+LcdgeOHX1iN+qQdv/0+H+ZpDs/byj/nKsxc?=
 =?us-ascii?Q?WG49cdXOzibWARitEk55q+jYuuMO7EL00gcqMmBPnav82rTa8ymb+3mna17O?=
 =?us-ascii?Q?j652H9n3K+CSA12JrPEG+eQzz9a2TNH1Jvds+GxRQK7O7OvpKqPCHcwxjg0r?=
 =?us-ascii?Q?Yt02d03FuG6c33O5JaM7szWdYfDB7ykP9p6ys/Oz7Q8+gPbIcL2PhytTwKrQ?=
 =?us-ascii?Q?pekHiYhKfWNaRzR74QgfCSf/jgcdaWrAoW+dOTUCKXD88KRDu7VIxMuyKW21?=
 =?us-ascii?Q?Kx/medHSNp2vBTh0+NHhkt2Drhh7qisf+mclkcVaGPqxBuU09yX8vfyZ4dt9?=
 =?us-ascii?Q?Ea83K5q5BG9ca40blHHNkjJVLob5o3+43jS66YBH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca8e4f12-10ca-4d58-684b-08dac67a7044
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 19:57:20.0530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Gi/JPuoi6ndblPV+t5ejnN/Iecn9M6GkZ5fdD2BNFsa6BkbbyAgE8xs7Us1FSYcnaehXCVOM50CQT2wvwF6Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 1/3] lib/igt_pm: Refactor get
 firmware_node fd
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 14, 2022 at 06:08:41PM +0530, Anshuman Gupta wrote:
> Created igt_pm_open_pci_firmware_node() to refactor
> the retrieving the firmware_node fd code.
> 
> igt_pm_open_pci_firmware_node() will be used by other
> firmware_node consumers.
> 
> While doing that fixed the leaked fd as well.
> 
> v2:
> - return false instead of igt_require on no firmware_node_fd. [Kamil]
> - use igt_assert() when failed to open 'real_power_state' on error
>   other then ENONET.
> 
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  lib/igt_pm.c | 36 +++++++++++++++++++++++++-----------

I believe we need a massive refactor in this lib... we have 2 different ways
of using stuff, plus that ugly global restore...

but anyway, this one here looks a good change regardless of the current mess
in the lib.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  1 file changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/lib/igt_pm.c b/lib/igt_pm.c
> index 1e6e9ed3f..4f0cfbdd1 100644
> --- a/lib/igt_pm.c
> +++ b/lib/igt_pm.c
> @@ -863,6 +863,20 @@ bool i915_output_is_lpsp_capable(int drm_fd, igt_output_t *output)
>  	return strstr(buf, "LPSP: capable");
>  }
>  
> +static int igt_pm_open_pci_firmware_node(struct pci_device *pci_dev)
> +{
> +	char name[PATH_MAX];
> +	int dir;
> +
> +	snprintf(name, PATH_MAX,
> +		 "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
> +		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func);
> +
> +	dir = open(name, O_RDONLY);
> +
> +	return dir;
> +}
> +
>  /**
>   * igt_pm_acpi_d3cold_supported:
>   * @pci_dev: root port pci_dev.
> @@ -873,23 +887,23 @@ bool i915_output_is_lpsp_capable(int drm_fd, igt_output_t *output)
>   */
>  bool igt_pm_acpi_d3cold_supported(struct pci_device *pci_dev)
>  {
> -	char name[PATH_MAX];
> -	int dir, fd;
> -
> -	snprintf(name, PATH_MAX,
> -		 "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
> -		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func);
> +	int firmware_node_fd, fd;
>  
> -	dir = open(name, O_RDONLY);
> -	igt_require(dir > 0);
> +	firmware_node_fd = igt_pm_open_pci_firmware_node(pci_dev);
> +	if (firmware_node_fd < 0)
> +		return false;
>  
>  	/* BIOS need to enable ACPI D3Cold Support.*/
> -	fd = openat(dir, "real_power_state", O_RDONLY);
> -	if (fd < 0 && errno == ENOENT)
> +	fd = openat(firmware_node_fd, "real_power_state", O_RDONLY);
> +	if (fd < 0 && errno == ENOENT) {
> +		close(firmware_node_fd);
>  		return false;
> +	}
>  
> -	igt_require(fd > 0);
> +	igt_assert(errno > 0);
>  
> +	close(firmware_node_fd);
> +	close(fd);
>  	return true;
>  }
>  
> -- 
> 2.25.1
> 
