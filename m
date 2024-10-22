Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22559AB574
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A6E10E00A;
	Tue, 22 Oct 2024 17:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/3dqhT6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEE910E00A;
 Tue, 22 Oct 2024 17:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619396; x=1761155396;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W/M66d4pi4WBHyoqiqSweIA/kHDhkfDbCN77/G0xYRY=;
 b=b/3dqhT66f1tp3rAzRRffsG43LjI3KFF8YskCBDsaD+JViWnmHTXxzwX
 EKWMqQbuXRgMGSiOrrreR3vUZsC2xZyYNwyB5vfb019L9kvoljGFFLD2g
 afDi0G7r+1JfS6vgc91grDx2zO0iKGNbiTgmM12bPpzC5U0T0Dn07rL5V
 YWrvEar9AzEGcwXVLdGjtcY139UbZPaI6pZZBqo1hAJkYjfu79kzmCGJk
 t4QMCqAXy3tiJDwN07w8vR8CTxSfWK8OrRCD6Vl1eXv3YczF7PbfsuIcM
 nB250cMB/tG7yZT499nTLnwVLtmTtehsKw0FFUavHibnCB1T1BQ6RgKMz Q==;
X-CSE-ConnectionGUID: Q9L9qfhFT8WKJyPb3uupMA==
X-CSE-MsgGUID: cTsHcnLLSMCSu+CBSaVCyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29282792"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29282792"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:49:55 -0700
X-CSE-ConnectionGUID: dHQ0iUjQSDGr1AsrlSu2Qw==
X-CSE-MsgGUID: 4Gy9bpUoT2mDCTrG/LTdVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79517292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:49:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:49:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:49:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:49:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oKnB/YIqqUSN6obbvieDzMVDgg77wyN0ItWims84gJRlnnGPuDkwUIwFxuNobP4QmSBuYA+ea93023bMb6w86BuwBW8YB3z/R61b6zbVIejkUFr811L0UnfTlgfhTPiyIud5jTpk3DcEGdH9jeciyixIbv2vLWJ5AaMm0hKP6CMfDi/7JHscwUxFBGpYdwQ/jXAiw0NtV1wv8gfSISyf+FNdmYlbE+eMdiHh1/2CG70qftzA6QvIREQiVpbwL0S25BTPjRLLR/BmQENXGQF/RtEx15etqGwd9kEO4jSVZy15Oldx4EKNUoQPhaKdRF8rwUiNufF9SP08FEUhow+xOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AfSw9DoS+SJ1FAGk6FFZsmM3lzu7WyW0ypkYiZ3cyL4=;
 b=ff3a61jzOJOLo2kkHP4wpoQHfCVKnYYghbPzIZ1583oWlnHknOADQpktL9BSge8//HBHr6o4GWBWp63ksDwX59VR301mICdLxn3nIczs+fIXAqehoF2doR4O/q+LBq48+AT0sHouc5j5ZY480nEJczS8iOUi3CFAKYq20d3AqWKu1ShzFw2Z8+zjeybDREWxQgwtOA+mKQ++BCPtAM1z2Ot3mKiYMKAn2nZA1IDOFiyYbgeD/Vcn8EF1Elvh7iWJssfkUQFaED96OU2piDQ5xNO8nHFaKIeYBrYn8KH1xoT28iLmjKYx8xlDMl6Wo0DEAaiM+2+N7/SuQMbpQdfHNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7244.namprd11.prod.outlook.com (2603:10b6:930:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:49:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:49:45 +0000
Date: Tue, 22 Oct 2024 13:49:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 08/15] drm/i915/display: remove the display platform
 enum as unnecessary
Message-ID: <ZxfltspjmnJXNJd7@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <eeaa31b20670975479b8226d770f1559d966ef32.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eeaa31b20670975479b8226d770f1559d966ef32.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:303:2b::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7244:EE_
X-MS-Office365-Filtering-Correlation-Id: e98727c0-c898-4596-4574-08dcf2c1ea7c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qtAMvBJzsfmxGREuI14FIT0Oy6wgskMcCEp4Hu7xxrmZSPdedd93cC/9diEz?=
 =?us-ascii?Q?teCdTnW1GHfRgHNzgzcvv/aAkky6HHX3pIXyEHwR11eg2cTO5Fm9voFaIrIM?=
 =?us-ascii?Q?2OMLFyPNLhkz4mZH7P/ldVyT3Gi428YhixubV9b5kuOY5mT5Ocww6S7173YP?=
 =?us-ascii?Q?3vzCXvmZ6myv1L4e2kmxGnGvYXrj6xsObLsw6ALaW7OGlvkkGYbUUv0TKSO+?=
 =?us-ascii?Q?VpolEpQy/nvQziGGanp2JYJLYvqNCzxmQusgf6+lVrsuZkP9ARWldQPYfjJU?=
 =?us-ascii?Q?2J4xq5Ftcd5re6efISp/l0Xaz3aOAVaOZ0w3k006nBKkwPQSD95/qFgfk1qF?=
 =?us-ascii?Q?fG/IMKls1SEJRm2eQ807WRBogLavO7uDfg8TF3IG6sT96Uyn+PCXtC7T06yV?=
 =?us-ascii?Q?heaH+8/AuSPWxwMlX0dCgyqMcKNo60njGsfVkR8Y813rY1y2w2MUJS0gcmb+?=
 =?us-ascii?Q?BBLsHncnxMfmHHMIgsM2HZ6XiH+12XhSCzyLxvdMxwRjxqZnx7zc3+isolk2?=
 =?us-ascii?Q?hdSYDIPeoqp64iWojKS4cVjnxGga1qlgQ01/oztYjgAbSJudU6F2QgFIZqA3?=
 =?us-ascii?Q?Grlh5FDT1Wt7LH7gV7E8SswuGB4l+PdmfS1iN0gWyyhYhJZ2pjVa/LjtX09F?=
 =?us-ascii?Q?EkhREI6ra9CqL/C58yeJoQo+h2lpRHzH5TdB+b05fRJcDVs5sK5isdUAVNSj?=
 =?us-ascii?Q?OrX0WI35MeZFlYkTS3R9TQHJtnjoYcYGTqB/XXDl1kfaKwKW30PBY2552CMf?=
 =?us-ascii?Q?YZ2lou6FmdkaAJUvdsTRyJC4u7W2Nh/ExGBdk8MPutJxG4jNE3mXpa8J/MJh?=
 =?us-ascii?Q?6zA/IZsjMRj14vKBy8XqK28pTLqQWbMvJ5ra49t2jcUaloYMJoutoVBaqtVz?=
 =?us-ascii?Q?6/z/KXrlUicCheYt2zmUfyGcY7uJIhgWf6YJHTrG0TneDAd8MKQllU4o8A7h?=
 =?us-ascii?Q?Wij9U2/yXb2skC+NAPWG+XIR/LTJC8bh/8aFzRW5Pw3E7+zJvW3WfpjOHfVt?=
 =?us-ascii?Q?CEMY1LWQRdKvwX1AyLaryyslLzV1mh1n2U3fxea0Mfu6U8RyqiZazYmUHIUG?=
 =?us-ascii?Q?+Tu4JF54NOdNyl/bdixjc2btAY2eclbQgVd3innLWNhijyZ65bvNFaL5ElyP?=
 =?us-ascii?Q?Iq9lldbkieL2BuZ4lbe4ezDVv/BuuZyh7MvLp0wbl/djeo8s5zMnE0H6ZO5A?=
 =?us-ascii?Q?Frn8TcTzKz7ajKmyE24kfGBB6f5mmiYKM99R95oZ3nfvuU5/AO3+FqdX0x4k?=
 =?us-ascii?Q?U3B+QslgcEPewIEohQY0Ss21BGhQ3mCbvjYy/Gufc3zzYZzj8D50soK375Yc?=
 =?us-ascii?Q?GwA2/5Iw2WavhXCbessW6CQG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KT664H6gv1jvq7KZ2sh/zMZq+TdoKmuNvenjLeVjAOY+ch1M5jmJ/UshjauX?=
 =?us-ascii?Q?BrJWohUdiRKOS4//TWrn17+3z7qiRh/sExnSs2bDCwf/aRIZ2F9CSHAKguRr?=
 =?us-ascii?Q?kWhAjhjvcJ7EP6Oy9OH5XvzgHKfFcpE6rKak5UALNgGyT2N4freHPZBnyt3u?=
 =?us-ascii?Q?zY8ng4Y7XTRp4hW3TgOwXMeUXea2MsfJIZJ54BaKALxBZRuTRVvBosvNn6XN?=
 =?us-ascii?Q?nL6QrnZorlle4WGI0ZxK0/Vlrdcata6jay6V84ErBkPzSDvT9UeGLWzQSlUk?=
 =?us-ascii?Q?S680CaWTeLVUqAwKTREnIDTVB6KHL6Uu33T5kWOjqU63bPKYPqWknMUXdJ+O?=
 =?us-ascii?Q?AAiiIGbdr8qpaL0rLAoKrIgUsevb/XZIpeSvRTkiSP9mO5njcGywlR/RghGP?=
 =?us-ascii?Q?N6qV//tKgDWzmWnFVpizChJ1nr8N/oS/C1L81YPr0mNyacLCSEaylG2RdjWp?=
 =?us-ascii?Q?aSXTA/vMNA0FzOIjY1eNXMAODKom8Ipd/Nc8TGaFAxJHB6lA27J0SDnSFuBV?=
 =?us-ascii?Q?y7EOiXsGXZyMfZ9JP94isWeBEYcQrFE5bNWINrvYpwSnvJpjKKkf78Ckxp6I?=
 =?us-ascii?Q?GKUO1FHpR8g58m04wKRCjMkSMiikjJylWGLwMpl6ImvqGqrYWluHv/Ydirfg?=
 =?us-ascii?Q?NP/cZXomHMKX4VoXLArAaXeCNCqga8z769eFqVEdrmLy3qp0uzA8t2ZuyKCR?=
 =?us-ascii?Q?PRJ0gTFViEe/lLytnteDjWCQRPOj/eF37M2bEqKVweS1uc19fXkZiV3jggPn?=
 =?us-ascii?Q?x8AMel+6tsh3qfetVYM/TcNCTLNqNGdJvCASMrXdBKT5hby0OI7vx7JWLZOF?=
 =?us-ascii?Q?Rqkq/kClr6R1p11fTnxSIdalPT8D4m4BkRiTZTTOKpiVe6zq7Nai0yxDO1/K?=
 =?us-ascii?Q?bj3ECuwd6Zx3tCDqfiyZnXOBePC4OiacqTA9XevkkQnXPy/rKKba1fwP6x5W?=
 =?us-ascii?Q?Z9k/lkHjfASrYVnYkP1RHBJ1Wc0aN2EHPHZjTVp2ndiUh7fhSkGvnVLlyE26?=
 =?us-ascii?Q?akTez0CSXY/l0ph1CbukEOO4CGg6Os/mw3G9g6FXZuboEdHiDeun+Wtx6Db2?=
 =?us-ascii?Q?/m8kbBjSQ0bxZvh3YIgb1gUrc0B3DbhVNmptYK1StwBeF+tY6xJDIYpBNbXI?=
 =?us-ascii?Q?z67rHe1MhQynkuze944QlVqVPs35uU0O7PSOBlqlZfxNucXKUZOt6zqpw1bv?=
 =?us-ascii?Q?CaWD9KSUxSp0gQlGFO37JWUVz08KSWQUk4lnnNgtFd/qxvclrTsygF5Fs+Do?=
 =?us-ascii?Q?uSd2VT23vYRuRTud+zH1FI9r7TzLbwX4J5JIpnzShhnMeD2NY25cLWlBNGl/?=
 =?us-ascii?Q?tBKKc9vzNKtlQzz7yXt5SqS37DG11ekvN27xsp/zZ8swCDAkYL0A6nUQ2JEu?=
 =?us-ascii?Q?Eq6jguOWkJv/UnsfCPX3qrurIjLIDQKgT2h4NVnN2+A4P9Sm9VU2PEXpGccg?=
 =?us-ascii?Q?IasFPVI6jwiJSaYdDx2kEtoOdg4JUc1PTeBWQFFG2HMC6yJnweb97Ff9RJTB?=
 =?us-ascii?Q?Fr9uhkILjJTmhunPlNwCb3Fj3dsMGau0X5qGBx3Ac+H44FLJdqxtMg6IS2EC?=
 =?us-ascii?Q?8k0buowKRwKC8SMbziXMaFChaNKzKe0g5oc4lMFZfQzWbw6AVaLytx0/W0gT?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e98727c0-c898-4596-4574-08dcf2c1ea7c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:49:45.8123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tgyuuNk0vlmgsjHoj7xJLe7R+27JGpQexDWqArmHLo/KPOvZSfySOog4GGu1zz/dR3dg1l+Q9ehuFp6UfpU4dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7244
X-OriginatorOrg: intel.com
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

On Mon, Oct 21, 2024 at 04:54:09PM +0300, Jani Nikula wrote:
> The display platform enums are not really needed for anything. Remove.
> 
> Without the enum, PLATFORM_UNINITIALIZED is also no longer needed for
> keeping the first enum 0.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
>  drivers/gpu/drm/i915/display/intel_display_device.h | 12 ------------
>  2 files changed, 3 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index c124df204166..e9d56f8aa3ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -32,7 +32,6 @@ struct stepping_desc {
>  
>  struct subplatform_desc {
>  	struct intel_display_platforms platforms;
> -	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
>  	struct stepping_desc step_info;
> @@ -40,12 +39,10 @@ struct subplatform_desc {
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
>  	.platforms._platform##_##_subplatform = 1,			\
> -	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>  	.name = #_subplatform
>  
>  struct platform_desc {
>  	struct intel_display_platforms platforms;
> -	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
> @@ -54,7 +51,6 @@ struct platform_desc {
>  
>  #define PLATFORM(_platform)			 \
>  	.platforms._platform = 1,		 \
> -	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform
>  
>  #define ID(id) (id)
> @@ -1466,7 +1462,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	const struct subplatform_desc *sp;
>  	const u16 *id;
>  
> -	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
> +	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)

I honestly got confused on this... should it be a separate patch?

>  		for (id = sp->pciidlist; *id; id++)
>  			if (*id == pdev->device)
>  				return sp;
> @@ -1583,17 +1579,15 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
> +	drm_WARN_ON(&i915->drm, !desc->name ||
>  		    !display_platforms_weight(&desc->platforms));
> -	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>  
>  	display->platform = desc->platforms;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
> +		drm_WARN_ON(&i915->drm, !subdesc->name ||
>  			    !display_platforms_weight(&subdesc->platforms));
> -		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>  
>  		display_platforms_or(&display->platform, &subdesc->platforms);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index fac361a4921b..b240c28db2cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -21,7 +21,6 @@ struct drm_printer;
>   * platform.
>   */
>  #define INTEL_DISPLAY_PLATFORMS(func) \
> -	func(PLATFORM_UNINITIALIZED) \
>  	/* Display ver 2 */ \
>  	func(i830) \
>  	func(i845g) \
> @@ -99,14 +98,6 @@ struct drm_printer;
>  	/* Display ver 30 (based on GMD ID) */ \
>  	func(pantherlake)
>  
> -#define __ENUM(x) INTEL_DISPLAY_ ## x,
> -
> -enum intel_display_platform {
> -	INTEL_DISPLAY_PLATFORMS(__ENUM)
> -};
> -
> -#undef __ENUM
> -
>  #define __MEMBER(name) unsigned long name:1;
>  #define __COUNT(x) 1 +
>  
> @@ -234,9 +225,6 @@ struct intel_display_platforms {
>  	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
>  
>  struct intel_display_runtime_info {
> -	enum intel_display_platform platform;
> -	enum intel_display_platform subplatform;
> -
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -- 
> 2.39.5
> 
