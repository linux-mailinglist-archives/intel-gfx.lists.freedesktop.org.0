Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9330A155C7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A31C10E336;
	Fri, 17 Jan 2025 17:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nj09tEXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DF410EB50
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135127; x=1768671127;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mv630dpIxXXDE/L1qnRVh+sj98rPeQ4RwoPFIxwW+X8=;
 b=Nj09tEXmrj51tF0WPmm2+ZSmfFciBEWAcrIP+1Hi9AzJuZGQOoT/MngN
 hRx2UWX0/1UsyyO96z1LS+CkWNc7CN3BVj7Wk5elzoncnIYPA0GYDt+3W
 FuuIky6Z8knVF0OkFMK6N8W1wxoLN8z1NcPIXwGYAaVJunTAkczwlwrFT
 mx8hnAb1UCsHcLCcT5AozWduPbjUVczu2ykBHY7qIFp3/+AjoRojl6Wmj
 05gTTUe3/Dm1fbJIdvfVzycMck/jKTnA44S0KMffB5nZReKlBjLXOJOQ0
 gwsJQgyuM2hUCw2b67LIg68ThsO1M61HKQGhmMnDlPeCPFt5RTG5mJCQD A==;
X-CSE-ConnectionGUID: LyzayA/kRSCFSdKTgWG97g==
X-CSE-MsgGUID: gUWQYc/lTP66HhRetFGphA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37731845"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37731845"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:32:07 -0800
X-CSE-ConnectionGUID: kp00OY9lQUOUFJErooWAYw==
X-CSE-MsgGUID: 2wGnZIahR/ONU9vEVGLuWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106742540"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:32:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:32:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:32:07 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:32:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nZrhzfR3PeytV5aDh1sdcGXTu5XWpbYdkwldo99JW4Le39rGr0I5dDVUai8KA/Po/GRjzyySUp/TSrFh795TXEpCgypxbmnnceMRbQLy/mPSsxMrcJMKjcrXRFrwG6aW1ujA5u9oZ2OhJ9hWGpDfnGumd0csFdpQMiG7rocaWhQhFWPJbDINQCYWoat41SAwYHFf+k5v/xA+/JO4Xobx8MxQ5McA/7UUB86q7aEWTKRYegyRSBf06yQ/q06/AIvi4IWwj41cpr48kZFbjBDUNx//Xd505NBT0XJNbW7P0wG94sLofRrumfIFrrjbESbkF58YwROy/QiFnD5uPBvwBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJM47e5fKrqTJefE/W7QnJBEMs6iYiGk2fWNcwz4CJ8=;
 b=gr+2pmABCOm+63FZcv0ouhPJLQyfXdCfy/UR0aDFBkQ4sG1BdQNHbmyDFLxehr+p2veNjVOVefHwmEwLoV2IFriQ8ufyByR88Hug/xwSa+r4h1VJAIstmCtS3hhf+xzL+41U78N40Jv4r0U7mKJyVnP6QtEHHxi73ASODDaI16ieeB1fio4ySs7wsdNYm1j3g9r4PGoDYYQ0k/PMZrZQmNskuCQ/lQqyRpTUWq2vUcqj53QURwKyC6Uy+fifH09uFZpaDOBbdllv2fqZFM7+AYABgxia71fdupMb2/+zsHQ6sqY5V48kpy4dkRqIiOqWlsQR25LMkvqmEI1OTMkJcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SN7PR11MB8281.namprd11.prod.outlook.com (2603:10b6:806:26b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 17:31:22 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:31:22 +0000
Date: Fri, 17 Jan 2025 18:31:14 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/8] drm/i915/gvt: fix typos in i915/gvt files
Message-ID: <shpm64koiqgaelic44vapfvlpfigfmfazu3ppk4ftx7kq2exxa@aq7wcximspms>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-3-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-3-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1PR0502CA0002.eurprd05.prod.outlook.com
 (2603:10a6:803:1::15) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SN7PR11MB8281:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a36fe7b-d47c-453a-7a0b-08dd371cc303
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzFYekg2WSsvai8rSUtUd0dnS3VlK0ZSNWZXSWFzQmtyc1RhR2ppeVA2UzNM?=
 =?utf-8?B?NEROWk1jSkxJSW4wY1lLR1RyUWwwMjhEdkJJZGlDdTZTck4vcjNBMUZDVUJz?=
 =?utf-8?B?eW83cU9pVHFBd0svUjk5OThJdVN2UmNJbTFIanJ0SHBuNWVWRVZRWUFqR25t?=
 =?utf-8?B?S1ViTENDYXphTmU3L21OWVRJNkhLb3lIVzBaSkVNbE40cU9idXNOcFNUMk5O?=
 =?utf-8?B?eTJ4N0J2Wk4wUS9rb2loQk5ic1lTRkZDZldxRnlmQnU4QjAzaGRFN0JKYzZj?=
 =?utf-8?B?aUdHaUcxZ0M5bmtFZ1JnRG16L25Hd25LUC8xbDYrNlBBS3E1dTVVcGFCU2JX?=
 =?utf-8?B?dHFiMUhrN3FyY1grU3lXYWtpWVBMODBRRHVsbk14OTJRRm1XUTJQekt0L1Fx?=
 =?utf-8?B?UjU4R1hBSUp3azhlS00zTTRON0xiKzJ6RlBWZ1dNeVZCMGQweUdxdGRkY1Bl?=
 =?utf-8?B?QlBBaDZLblRCL2k1TFRGdUVIZFgycEF6SjVWYlJRdFl6YXQ2dFNxZVdoR2hn?=
 =?utf-8?B?bk8zUEg4Q2VWVnk2ZE5WVkJDOFFZNldRYlh0Z21PRHdsTWgwU3FiUUtabDdv?=
 =?utf-8?B?WkNSSkwwdjh2R3lSenUwcmcyS2paREwvYTBOdGhZVm8xTjF4SzMvTForVE9z?=
 =?utf-8?B?R0NHNjdDRSsxZlU1bGFEUHdtcVpkbWlDYjFrdENFRTQwWEpDeExPa1RvOUJU?=
 =?utf-8?B?bFB2U2swOWMxcENLVHowZkpKV2hia2hBdTdzM0tiNndOdEZYb05jRUlpLzFJ?=
 =?utf-8?B?Qng1bE9UNTRQNkNUd1pUK1ZsSVFtdTZsbkFWSS9oK005NXFoV1NGVVVaSWgr?=
 =?utf-8?B?MzJHa1I2TTliRDh2RU9jWW10MXBWbnA4cEhKR2RwOHk4T0hnWGVjbk4xVlQ4?=
 =?utf-8?B?YTN4S1M3ZXNBV2JFVUNKc3ZKL1NYVnJPN01DcFdPNS9CU1A5QUNlb2liMHBM?=
 =?utf-8?B?NUFnckx3U2h3V1MzcUpMU3FGQzJGT2JLNjVyMHVOZmxtMnhCK3doVUk5ZlFZ?=
 =?utf-8?B?YXN0VzR2Rno4OGxzWUs3M2crZTUyd1luZjZTZWJuNjZEZll4MkM1aWhWclFF?=
 =?utf-8?B?Yk1iQWlXSElLWTM3YTRMOUxGR2xkZkxvd25VeGZ6YWlHZWR4N25mQjdYR0g3?=
 =?utf-8?B?S0diV0JpN0Vxc3pkek5GOGZzYVNCNVpLWWV0bklIaHBWSjduNmZlSWlxaUdQ?=
 =?utf-8?B?U3FmajZQTUdrNUE4TVFnU2sveDNCSXkzbk11NUJiMnBmdDNQRHBnUSt4UTRJ?=
 =?utf-8?B?blFuZFl1L3JpSldPejdjOGNMeERodlo5QVhEUFVkSXJueGpmdkQ4ai9CUmV3?=
 =?utf-8?B?UnpUTHdCakFlMFM4Q2dScUFadkQ0Nyt3WCs3QzcyNzlLSk9tSTM3K0szZ3Rh?=
 =?utf-8?B?UFZ5TUpJT2lIVEVadXlYeVl0NlVwaGVGcklTbng1bGp4RFAzOVBEQ2NyeDVN?=
 =?utf-8?B?WHdON25FdzE1R2FqT2hTY0VzYytqMTZkU1ZIcjkwUmxwdVFUU043WVJzTDRD?=
 =?utf-8?B?YVZFTXJZcE4wU1d4VUhMZ0tKUi9mckRBMFhqQUEvZ0tRMkhwRkhFZWtkMDM0?=
 =?utf-8?B?UWtyRTRJWCtraGZicy9yY1hIZ2dVTlBJRy9hczNhSkVGWWErRktacy8rWVMy?=
 =?utf-8?B?alRicHVpdENGbzBLRTNWeDhQdEZBYzZ3L2RmZ3hwbm5UZFhwcmprMmszREVj?=
 =?utf-8?B?cW5zTDhpcUpkMitDS09iUkVya2FWSTV0ZTNXOU93T0RnUTk3UGN5bzc3SFdo?=
 =?utf-8?B?ei9CM2lpenBZR09TNlR0aGM1NW1ua2FCYUROaGE3eElMdzVObENGMnd1Z2x4?=
 =?utf-8?B?N0t5alN1VTVaQWZFVllzaGlFdnBURU5FL2VjSFNmMmdCb2xmYWZqaVUyUkRG?=
 =?utf-8?Q?LZPvaQZmWbFlf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmtodkYrWFk2RDNPS2ZtVnFhMU1QQWUrSktNeGhRNnpTbWc2WWxXVzE3TGs4?=
 =?utf-8?B?WkRnYjJGRnRRbXoxVjd1L2NLTG0xUDN2T0k3SzdWUUd4bUQrRGhXeGtIS0Uv?=
 =?utf-8?B?YllIRFJSQjZHVFd4MVlaQmlGcVZiMVpZOUMySDRDNE9mU1gvcjhBT3dFcmpN?=
 =?utf-8?B?SjZoUmhGTVg5M3N0WVc4QVRkOHNQREdXS3VaaTFYS1ZHNjg0dDdUUGJoeVZI?=
 =?utf-8?B?L2oxSnhpamJaenFQbGN2a2JFa3YwYXRGeDNPWHRqdytWVk5VQ2lIcnlTdUs4?=
 =?utf-8?B?alVROEo5VC9UTzlWK3JMdzdZSlQvdXNVUmFmcHhpclNOMEZvQ2tnb1V0Y2Y5?=
 =?utf-8?B?TmhqRHNDT0ZvUmRyL01UMTFBUnNRUW0vZUVqTmp0MlV6K05oRU1jZGVCcWs5?=
 =?utf-8?B?YitaSzNjSDdVMHpMUk9FOXg4ZTRNUSt2UFA2WUZXZDJyNTYrQ2VCRWxacnRr?=
 =?utf-8?B?ZTJnL1lYUUdlSllja1ZFbzEvbGFtSXB0UDRhUnZGSVV2VkhZaVpQL0Q4eXNy?=
 =?utf-8?B?TmFiMSsrbXUyenBoSTVxdFBwTFJPcXg5amwyc3FZckh1Tmp2N3lubjAxSEpX?=
 =?utf-8?B?RExmaVhCQXM0VnRyOUsrZkRGY3ViOTZoeTF5WERvdERYTHRKZmZFUU9ra25z?=
 =?utf-8?B?c1ZOUlozVEZPMmJKdTZpUnIwU2R1Zmt3WnVLaGxDRjVRemk1TDNVS0d3bGZV?=
 =?utf-8?B?dHQ4MExBclhUdk1qemIrNm5EbUl3S1pCa014Q3AxQVo2UitMR3R0QjUwOExt?=
 =?utf-8?B?ZEEyd1RGYTVSbEcvdHdqY29GUENqb2RXTTdvM2JxOHFQSmdObEYxeXVHVnZH?=
 =?utf-8?B?QW5oU2hOYm8waFN5bmZGV1kzMWNrTWx1VG9Bb1k4R2oxVTJ3ZkdRMXZjbWZx?=
 =?utf-8?B?TmtQd3pqUWhCWG1GUjRtUkdmc2NZYmU0YWQ0OGV6K3lMV1N5NzBGY0FMcmFF?=
 =?utf-8?B?d3ErNWwwUUppY0hSMEtHSWVXclNVODRZU0xNRXZDd2RkbjRTWGcyZlFLakls?=
 =?utf-8?B?bnFNZmMrNUZNWjdCMG1SRmhTK3pKbkQvV0tQR28rQnFZeGkrNFlRZzVoNHY0?=
 =?utf-8?B?RU1HYksrZHIwaVZaWGFvR09VTGROOEJRd0RCZGZVbHZqMHA4NmJ0bUlDY2JI?=
 =?utf-8?B?NS9iSE82cFNJOVdjV3R2NVk1QlFhdnE1MUNic0Y0SDZOUHBoZkoyUVhMc0xO?=
 =?utf-8?B?MlFEdnhYTXJ3T3ZvVTV2RVIveXlIOWhpb0NWY3dGekhJV2JxWVZIamwra25l?=
 =?utf-8?B?QnN6RHExaytyV1hwTWl4TjJVcWpqNU5DOEZSY3YwYWhqalJDUTE4NnBqS0Jo?=
 =?utf-8?B?Y200NTIzVDN5UTBkeFpTM1o5YnN0K05rYTZTSjZMVWpQMU1PcmV1WHA0TFFn?=
 =?utf-8?B?R05xL0lIeEFRdXlLbWVaa3pNQ0lNR1hXME9JdjliQ2hMb3Q0SHZJUks3WURG?=
 =?utf-8?B?N05MR05vamZ4YUlYQm1VTDlpcjBLaDRjdElyZzF3MHIxTSs0dUJaSEJGUWpi?=
 =?utf-8?B?MXllenBKSWg5YVR2cnpESm0zRERHd1JVcDJXUldOYUF6cVlVcEVQRDczSytV?=
 =?utf-8?B?RzRMUEVkWm1uYlFuUkVKY2RncEhWMGFNQ1BxYlZTWmJyMHh0Wi9EbEoya3F0?=
 =?utf-8?B?WE1oTVc4R3hmYi9FS2Fjbms5WTdMMERydWN3akYySGZDRGhENTZpY3R3azYr?=
 =?utf-8?B?aWwrOHpQRmZXUWZmUnJBbnhEN2d3QjZyUUNpVWFsNS8xblNQb3VzWW1MSmRs?=
 =?utf-8?B?bGZmMXlrV2ovOTU1dVpaZEMxQXp3MDU1dDREbDd2alpsMGR2WDJXci9wMjhs?=
 =?utf-8?B?MmsxQnUxNG01R21SVURLN2FJbEY3YVdoc0lJR0R1VXJsYmVoTjFzd1FiVG9T?=
 =?utf-8?B?bnNJZDFmNmpENUxnZ0dXWnBHbUp6cVR6ZXZQTnUyNkF1Zk9nUGdvdzJuWW1n?=
 =?utf-8?B?NGo0S2V4ekhISjgxSkkwV1hBV1Q3eVZVdG5jTXQvRTltNVNscDBJam4yeGhL?=
 =?utf-8?B?dmVEYUxLVjZ1MWp5Y29ZZDZrV3JSdFJsRlV5OVZSb1VXNlFWb3pHTmQxdWlL?=
 =?utf-8?B?SlpGN0dmM3NxM0dXYkFoZjVwQjFBYnUzMzJ3YlZCM09sekFNMmVYTDBQRkVx?=
 =?utf-8?B?Uk82UExUbENMODZ6MmlkVjR1NGU3U0huYS8vU1dvUjF2R0svQkI2YXJFZXBB?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a36fe7b-d47c-453a-7a0b-08dd371cc303
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:31:22.7911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +eWXRCclErevCuYrV6Z6cFzGA8cdEJ2ktSzaNZUMFlUQGBAMrI72LnE6xDyLI3S9vVOY6OsCbka8yqqR8TNuQsN2kJdqAc6fxzK4f/+6LKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8281
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

Hi Nitin,

...

> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index 6439c8e91a8d..f8af9659653d 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -1924,7 +1924,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
>  	/* the start_offset stores the batch buffer's start gma's
>  	 * offset relative to page boundary. so for non-privileged batch

The comment format should be changed here and "so" should be
capitalized; as other reviewers suggested, you could use this chance to
fix those while you're at it.

>  	 * buffer, the shadowed gem object holds exactly the same page
> -	 * layout as original gem object. This is for the convience of
> +	 * layout as original gem object. This is for the convenience of
>  	 * replacing the whole non-privilged batch buffer page to this
>  	 * shadowed one in PPGTT at the same gma address. (this replacing

Nit: either "this" should be capitalized or the dot ending the sentence
before the parenthesis should be removed.

>  	 * action is not implemented yet now, but may be necessary in

...

> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 23f2cc397ec9..dad217df0366 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -77,7 +77,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>  }
>  
>  /*
> - * when populating shadow ctx from guest, we should not overrride oa related
> + * when populating shadow ctx from guest, we should not override oa related
>   * registers, so that they will not be overlapped by guest oa configs. Thus
>   * made it possible to capture oa data from host for both host and guests.
>   */
> @@ -528,7 +528,7 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
>  	int ret;
>  
>  	list_for_each_entry(bb, &workload->shadow_bb, list) {
> -		/* For privilge batch buffer and not wa_ctx, the bb_start_cmd_va
> +		/* For privilege batch buffer and not wa_ctx, the bb_start_cmd_va

Comment style can be corrected here.

>  		 * is only updated into ring_scan_buffer, not real ring address
>  		 * allocated in later copy_workload_to_ring_buffer. pls be noted
>  		 * shadow_ring_buffer_va is now pointed to real ring buffer va
> @@ -1774,7 +1774,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu,
>  }
>  

Thanks
Krzysztof
