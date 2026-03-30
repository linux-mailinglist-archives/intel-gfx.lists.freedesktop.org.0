Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Mo0GMozymk66QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 10:26:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2C23571C4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 10:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA8F10E4B5;
	Mon, 30 Mar 2026 08:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FT28N6tF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1859E10E4AE;
 Mon, 30 Mar 2026 08:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774859206; x=1806395206;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9JBGN+mX6YAiqAd45LkPaDMkQmqsCHabXGNbNttw6xE=;
 b=FT28N6tFJ2EUb1xmuFysQXxOdSOqJGrumciptxmqW7BHYTAlHgIC07+V
 8emr1tKfemZR1uMILNeS1z5+pIqsSwhRLj/lMSr/ErR87+q3FblQb2YQr
 usKTonfnOjXpuCA70ferwIBHFvS0H/VTj9w5aXlojZFkj0YhvzU6TDn/q
 0E4GhAt2IipSowqTodDzVOqYeAvbYyBk4S62rw9JbihiRn+0UJZnmOjSq
 eFl9FlML2niI7/1MFlB9AjryGgrZbU/X62FrUfDlF/6qyFfix3b6imTX0
 yiP98Bbfgxz2hJYo2Golw4TYpxTvDdUDC0ORlVZGbfQhASbzSqhalqqCZ Q==;
X-CSE-ConnectionGUID: uLXDjFErSKOxCIKavwF21g==
X-CSE-MsgGUID: Z4IqZBFtRZKIX+z9MoLA4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="86918255"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="86918255"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 01:26:46 -0700
X-CSE-ConnectionGUID: mTp40aEbQ92zRaUOQWGaHQ==
X-CSE-MsgGUID: 7A80OggHTQWTu322xz6Oeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="230454086"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 01:26:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 01:26:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 01:26:45 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 01:26:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QReCtlt6BJw5ZAcbv/Kch6S2L9XJD+yd5V+QZvT5ekrtlF1P8pvB8YjiVQzalAUVIDnu3W4vhdwcaLlc3vauWU+lhZ6xuEUTcxU/jBBBFuvXtfI3f1P8/rp1t830r/KPlB9I3qXqHm3t5QMbgtZr3W+wDqwCTJPRgzjQrn1FFKZzOBcrPIbaQ+rsbo2pBw6KlKZiRhXG2s46ttKDJKXjFaAMxnc5z1MMxiStC2J69T0EMCOExfKURUL726XAKPfRS/t/0AyZ7dPWH2LOUMB4K72431CHEH+onudP4Y26ZEYgQK8FPwiTxExlpD1sZ5AC/jKY742b1kF9nM7pvhzJhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dvgwul/0HEdENdpQwyTCBSgJNuUQ4t6UJt28H5wh2HQ=;
 b=kRYiZZ6bp6qaPtM0SG0m1moTzsA2l8udkUgyn8kbeZcaWuTbdJ6BcRcNTAA4wmyOCURQYN5xEcAUaRBhptDfCyXHdnIXALqpt0ry48dRcuoNBaQrj7qEvNSbzerQpn8YATZJmRuKLIqSVZ+8AUQh5hWQM1vZnsEy56oC78gpxfMbLUvQf80fI5zjaOYn+HnY4vhAWBzy9Pb7NMvmFMqAPk4R8wlozYofhANtNy2lQ0wwmGVbzXZBqzL/OePvYNdti9o4bO9up4BAH7BScx8eRvb2DPAa+gtlD2Uqti8s9jHg8KLMKj5sUwhTidl6Dm3iTJsesSbarBex6U1ex2HKag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB5118.namprd11.prod.outlook.com (2603:10b6:a03:2dd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 08:26:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 08:26:42 +0000
Message-ID: <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
Date: Mon, 30 Mar 2026 13:56:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20260324 )
Content-Language: en-GB
To: Peter Zijlstra <peterz@infradead.org>
CC: <willy@infradead.org>, <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <ravitejax.veesam@intel.com>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0218.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB5118:EE_
X-MS-Office365-Filtering-Correlation-Id: 97e1551b-8a98-438d-be14-08de8e361269
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: w9ZrPM0Eg64dLKgOwu/kWrhkjOyWS7eNydU1RCKrHYudjcPJL8+7dWseNtrpZsf8yfoEnR8t5NNgvd2DNjOgwQMxqBJAqLe0p1lD3Yru4U3JFow2YdXtMNfqsUpo7YpNrGR1sdKmWA3xnYIHkLpr3Nuvs4IoiE2EkaJvq9Lwf4nNpDzoqSldObuNdThYmbw+rXDiVjL2muth4925JGkoubpwudD9nADgTCiGDc1FKXpyvzt0PP8ZDww5a4xTwyRKqEEeoKmju7KFW+g2GXANJD4br7MN8UFcFNatf+S8gRxaoOyvYpQ7WDV9CRsU+U2ro1GMK/kRVfGdGi5nYFldGRRcVGfzJh31bI/ADS+UOeJdzz5Yp+ssAjEIA8mPk1wpYvYalkeDxM9j86anZ8uu6petLHO2fjLuvBrXJgPxqdat6/WAxr9MNNXeK0w/QfrC2f1WUGq2j4Ttpeo04mYoObrvbQJaopDNFu/MTxia1/CNlUNVlVrzU6SbEqYn7xKzd3WBKHArT5l1FH3OApkiGIhSwkYj+fmnD4S2dy7iqbYQ9rbcbvDEgz+2XclRXRcP/5POs+y3Adhvu3BOZvN41LMYqHIMMt4dr5a2d1WiZOq0CPQQVQR37aY689oGSuek1/RF4N8r1+82R2E0PnJcdrzZ759h8TfYUkRMJ9o8oNxBGLABZ4ZuiE1u/h2oo2NU4MZFabwzg59zIqEzVLQM0q8a8YMJxf7ibh5VHwFDits=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW5oWml1VlRDODVsVkJWQmhLUWhuYmF6dG03M25KQjlZVTc0d0lxR0dzWGg2?=
 =?utf-8?B?WnpSTTVMdXB4RUxpSVluZndvWWt0VjAwNVlnWnYzdEZvRXQ3N0t6Q2E5c3k5?=
 =?utf-8?B?WXNnK2Q5ZzdSQ2RadDh0UVF4akRhWDhYTTRhdXI0RXllRDhVYm5icVVDbm1m?=
 =?utf-8?B?MVhIM1hUaytmRVVhVGlSMysxTnJPKzF6amdmV3VEUEY1WDZzemtKVHZEaCtv?=
 =?utf-8?B?cUdZSkptWk1ONi84bWFHbm94dFpubGVscm02d3J6cVVPWEt1bHRUYzFoK0lE?=
 =?utf-8?B?NFY5Yk1XeWRtZ3ZxVlBmdGpBUlFzaVRMUXUzM0VjdmNQbjM0UHZUZURSbUJB?=
 =?utf-8?B?eXJmeDU5ZWlQTnZlaS9iNlU3TmloOGw2UVRtNDZaaHRHZFh3KzR1YnRrSUFD?=
 =?utf-8?B?aTNBYm1XemVhaG9lSGZzTTJLTTE3eDA3RHdzb3lRZG1icW9aV1ZhZ1JoQ3ds?=
 =?utf-8?B?RnVUcUlrS3VjZXdPbnFhVkZFZ3dRMElZTEpuR0FVTmsrRkYzb2VzWDBFMW5X?=
 =?utf-8?B?SHZkbHRqZytSWGQvaXJDTHJaSi9tK0VuNkZBU2NkR3MxQjA3MGpOczYvaVdF?=
 =?utf-8?B?Rnc5b0hDd2RZTE1qdW5UbitvMFRWRWt3eWxmb2x4VTVSUlRVV2tqTmVPeDVS?=
 =?utf-8?B?TVJ0eWVuQ0wxZk1RQWxrUGlFV3lhVUQ5SmRrT0N5MnhnclRHZ3ZmeWxJTWtl?=
 =?utf-8?B?ZGFFMzJiVnpFRlNDamczeDVMVXZGcHNsaUN1Qi9IcjN0MWgzemRuMGZpZTFa?=
 =?utf-8?B?SlpmdElKaVZ2Y01PbWxkdDI2b2FZVFhsY3FPOUtYMEZSbVpLZXFWV2R2czlS?=
 =?utf-8?B?czZRV1B6TWtBaSt4Nk9qeXc5Ny9lVnp1WDVQYllzY3AvSmczS1h6SERnZmRT?=
 =?utf-8?B?aG9SalQxK1VZZkpJZmQvd0MrbXRaU0Z4bzg4YlFUYW5kUzVaVmRVNHNRZmV2?=
 =?utf-8?B?M0ZpZ1Y2Q0Z1UW1MVEo2YTNjT2h3dFBaWFYxSHllSWpFOWY5TVNLWDJBQnhh?=
 =?utf-8?B?NUJ3T0lrMGloZXEvZFB6elNDTVBIdkJQV25NM05kanpKTGsxTlMwZm9NaytI?=
 =?utf-8?B?bW90Y0xTWWp4NURickNtazBXeS9uZDBuUHFDQ05JclZReGQzZFlIa1Y2T1Y3?=
 =?utf-8?B?QkVuL3RvRVFndnpnYnlBMWNJSFg3QU1HU2VuU3pDMWljMklCYjQ4RHBqYlcy?=
 =?utf-8?B?ajg0enIwVTI2QVo0WmxxWGFJZzYvd0VySGx5L25iQkRLKzdQOHMwSmZ0Slhm?=
 =?utf-8?B?RU96ZVpPSkdnQTdZK3JlRUNCdDc4UTVXZmN6dHRiaTkwSXY2SzVrQkpiQXZS?=
 =?utf-8?B?eWh0T1NUcy9LSnlPaXBwUzNPVXFneUhVVWFuck5jeWdEZjA0T3NKN0NJTnJn?=
 =?utf-8?B?ZzFNQTJoK2p3cnZOazV6MWo5Ym5WV2hkU29CbTRod21neURsakw5R3AwdzVo?=
 =?utf-8?B?VDM1SXM0dTN6cWJRM1JiL0pvMXlGTEYrQjNvLy9HdHlMQUxQUy9scy9LMmhX?=
 =?utf-8?B?SXh2U2U0d2xOMVZpRkp4bE1IM1d0eEEwUGE3MUpmZ2J5ZGt0MitmT3NUeWZO?=
 =?utf-8?B?Ty9WTU1TTlZ0RnVWaTlPSm9rMUJDY3lOcmZYRTdkZ0tKUmxWYXJKTTJUc1RC?=
 =?utf-8?B?TVliWlE4bW5rUVd0bk41aEFlU1NEanp4VzNSZHJsM1JJVXB2Q01RNFA0NGtu?=
 =?utf-8?B?RFZ4ejBTVWhncFdBNitPN2o1amtubXBMNUE4d3lXUjBMNXNpNzdpcWhqckRk?=
 =?utf-8?B?aEhIMXF1RTVjYlQ1RE5oejN5WWtuUGozMldXWWZXOWJjb0VqY1A0V0Q1Tkp1?=
 =?utf-8?B?cU94Z01XeUo4bTh3aTVCdy91Y3NzcURWNCtjbEZMTUNkemJXbllCbGY5dFE2?=
 =?utf-8?B?VkFFLzFkMmxEZXhhd2x5N0JJUlhDUFkrYng5bHBVQkd6ZE5oZVcyRjEzQzdH?=
 =?utf-8?B?UkVvQVRLNm12aXFtOEM4a2tPQ3VaNEdsODlEOGlLYWV1dUVSNk5GYnRjU3dh?=
 =?utf-8?B?eSthalFSOGU2Z3E5YncrVXdSYklRb1RHYlFpRHdldEhoRGZ4WjQ5eUtyZFBv?=
 =?utf-8?B?bGNLU0tiOXhUVGFlajJod09KbDlQb3N1UVgwazRGZnJ5U3pRQnc3RlQ3a3lG?=
 =?utf-8?B?ektVeWpQcnRnb0JpN1ZHSHZURTJLUUl2SXNJSXBnR3BFcDZSNUI3Ujh1dXlW?=
 =?utf-8?B?aTY4MWQ2RVh6em5IU1JUck5MenlxS1c0WE4xd3pGeCsrSDJGSXovbmxTdmRY?=
 =?utf-8?B?NTlWTUNVZnRsT2ZOMGtVQjBuRUVUNXVGNjI2b3NZTy9Sb29VMVRpanVPbG4v?=
 =?utf-8?B?enpyT3dYWWxXWWhvOTBja01QcFM2VmFPeG5BRUNXbFdVemdjRWpzeVMwN2Zm?=
 =?utf-8?Q?rX2G2LpH3hrawCOY=3D?=
X-Exchange-RoutingPolicyChecked: MV5xiLjdvUHDzESGTCObIgWxMDplT0kCQmgVLzFVUrkYMVlBrSlEzYAltlxdaTBQU4BWkxdBxzCdXEz/ZvFUEpPgY7q6EIW9L41MSZI/twgeoA3rtPgMKuI8Q0ebsCepx1OopxkwSgpEC/2XegrGGfWGUnMzml/FVLrZypmxoil/W96a0+AeT/2eoVnEVAp5kVLiYIcL0yumCxxxmogr8SU7ajiJqEkIFltv6ZilaCYU+pQUldwZhsL5/UjjKnCWdUIKMAJDnYHzgnSF9LsriPhMhzsDXNbqfD5gPLOsslL6Rum2yjkHFvVEU5zSwbFd68l+upgOBUM2ObD47XJXmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 97e1551b-8a98-438d-be14-08de8e361269
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 08:26:42.4454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xSSAus5w6vrmRy9Jv3f0T3KkSR4M4SVPkB0t6f1sKvrrboCA7YLfdrzE7Jpvu9tyfY2MPLEMnznJZCX/DPdDxd0iravnZ/iCtuVD1H9CrV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5118
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB2C23571C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/27/2026 10:13 PM, Peter Zijlstra wrote:
> On Fri, Mar 27, 2026 at 05:31:00PM +0100, Peter Zijlstra wrote:
>> On Fri, Mar 27, 2026 at 07:09:26PM +0530, Borah, Chaitanya Kumar wrote:
>>> Hello Matthew,
>>>
>>> Hope you are doing well. I am Chaitanya from the linux graphics team in
>>> Intel.
>>>
>>> This mail is regarding a regression we are seeing in our CI runs[1] on
>>> linux-next repository.
>>>
>>> Since the version next-20260324 [2], we are seeing the following regression
>>>
>>> `````````````````````````````````````````````````````````````````````````````````
>>> <5>[  157.361977] [IGT] Inactivity timeout exceeded. Killing the current
>>> test with SIGQUIT.
>>> <6>[  157.362097] sysrq: HELP : loglevel(0-9) reboot(b) crash(c)
>>> show-all-locks(d) terminate-all-tasks(e) memory-full-oom-kill(f)
>>> kill-all-tasks(i) thaw-filesystems(j) sak(k)
>>> show-backtrace-all-active-cpus(l) show-memory-usage(m) nice-all-RT-tasks(n)
>>> poweroff(o) show-registers(p) show-all-timers(q) unraw(r) sync(s)
>>> show-task-states(t) unmount(u) force-fb(v) show-blocked-tasks(w)
>>> dump-ftrace-buffer(z) replay-kernel-logs(R)
>>> <6>[  157.399543] sysrq: Show State
>>> <6>[  157.403061] task:systemd         state:S stack:0     pid:1 tgid:1
>>> ppid:0      task_flags:0x400100 flags:0x00080000
>>> <6>[  157.403067] Call Trace:
>>> <6>[  157.403069]  <TASK>
>>> <6>[  157.403072]  __schedule+0x5d7/0x1ef0
>>> <6>[  157.403078]  ? lock_acquire+0xc4/0x300
>>> <6>[  157.403084]  ? schedule+0x10e/0x180
>>> <6>[  157.403087]  ? lock_release+0xcd/0x2b0
>>> <6>[  157.403092]  schedule+0x3a/0x180
>>> <6>[  157.403094]  schedule_hrtimeout_range_clock+0x112/0x120
>>> <6>[  157.403097]  ? do_epoll_wait+0x3e4/0x5b0
>>> <6>[  157.403102]  ? lock_release+0xcd/0x2b0
>>> <6>[  157.403104]  ? _raw_spin_unlock_irq+0x27/0x70
>>> <6>[  157.403106]  ? do_epoll_wait+0x3e4/0x5b0
>>> <6>[  157.403110]  schedule_hrtimeout_range+0x13/0x30
>>> `````````````````````````````````````````````````````````````````````````````````
>>> Details log can be found in [3].
>>>
>>> After bisecting the tree, the following patch [4] seems to be the first
>>> "bad" commit
>>>
>>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>> commit 25500ba7e77ce9d3d9b5a1929d41a2ee2e23f6fe
>>> Author: Matthew Wilcox (Oracle) willy@infradead.org
>>> Date:   Thu Mar 5 19:55:43 2026 +0000
>>>
>>>      locking/mutex: Remove the list_head from struct mutex
>>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>>
>>> We could not revert the patch because of merge conflict but resetting to the
>>> parent of the commit seems to fix the issue.
>>>
>>> Could you please check why the patch causes this regression and provide a
>>> fix if necessary?
>>
>> Does this help?
> 
> More tidy version of the same...
> 
> ---
> diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> index b1834ab7e782..bb8b410779d4 100644
> --- a/kernel/locking/ww_mutex.h
> +++ b/kernel/locking/ww_mutex.h
> @@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
>   	struct mutex_waiter *w = lock->first_waiter;
>   
>   	if (w)
> -		w = list_prev_entry(w, list);
> +		w = __ww_waiter_prev(lock, w);
>   	return w;
>   }
>   
Thank you for the response, Peter. Unfortunately, the issue is still 
seen with this change.

Regards
Chaitanya
