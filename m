Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vARoJ6A/RWpx9QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D37D6EFC41
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:26:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IeQ0v3WI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1918110E3DD;
	Wed,  1 Jul 2026 16:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CE810E3DD;
 Wed,  1 Jul 2026 16:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923164; x=1814459164;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cBFGHfQ7TUFZPTh5te21dAJw+VTGLZ6Zi4VXVCWPBDw=;
 b=IeQ0v3WI+AhCkPh7rENjpFoKnu7Fi936mBzHqomFipy2zcaDUTX0bR9p
 n1jpJXtF2s0beEgQvYAvjQp4Yh+pfsT1r4olH/Af057hYsCcQ5bxfafmA
 1sEBdkTWg+S9GEoXmavi8SfgAZLWkSPEQmDgx1KVGZB3lo1lpfHurQ5CW
 xwKmEqpeFYZy5tDaK++xKBN6PF6EP3YFd7PMtTTHQxXqA8q+vKBolkGQS
 n1KCUzNffvAfFVG+84UAbrtb4yafDs5yjSl8nclDKBNSCz2sgMD9ZTCeO
 ZDQUroylkI00neqDoTaElyaKog64m/MjSYx0gdaX4q3pFLI2vN4ZUBDdi A==;
X-CSE-ConnectionGUID: 9xB76JRLQKC1r9Xmg58E7A==
X-CSE-MsgGUID: Fe+X+NTwTRS7JvYHtHJzbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="82651615"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="82651615"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:25:42 -0700
X-CSE-ConnectionGUID: rLiGR3e1SOevmy/4JgA1FA==
X-CSE-MsgGUID: o578RsCqSXmDrHEjJPHqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256947822"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:25:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:25:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:25:41 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=srOqkQT/hfcw16Isfljj0h70qUWBiCsTXP0RVHyroDxKHc2ANAWqD4arFSfiKdxON93mHPbtDhuBYhK6YVZ13KBaehgUm1BL5XYs2GY26vSbLuNPChVc90BMNb2j/Z5DgkQeP0C+2pR/07blT4JpwwXOEGfYvsNzO7Ee7GBxG/LkUQ6WB7wygvdhh0OdqEFh7OM6mambUHW7JXvhkRnxiJDHoucItNLZKJIkXoQeJ7RFZEW7ucInYMqIOww36yoQOsVxvPuOLt5J61dCP2aibU/zWq8+CQRdlHlIl3KNDcBWyrqwKcWv7pRUOpISeTrld/SC16ekG4FNx7xBob6jYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ph2F2LjJ3cn2IMOeyBFSusyIWjrnI1beXcVGLar6nQ4=;
 b=eqWyIHljxFxd+51S4wiigTcJYZ8L0OZqMTBisvLcTy4SDCBH9/VkasEqcLj3+trZUWu/Y++vHumCFt+KkJAzsqJAPyBHUkx31riyShXzLhA6V0H0lqf0wUFBDdtuoGy6yX3/ES43sn8DNvcJGjSzMNyKf+GyHLi4hs/PDhOQ+gYN5xrGbWcr+Hr3bb0MTn2k9f9sTG5AVeboliaXXn7jsNbQRD1zfNlvkQrFm4yOkbVLU4spfnFTPP3JPRrdcPQ7bbS76onHT0I/MtxEN+AYXw1/cKsJbTc+iDCu1mcd1qu5Ynl9kxo9IsWO1dVN449HHkQ3ssHzQZ70Ab2is8ekYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by DS0PR11MB7560.namprd11.prod.outlook.com (2603:10b6:8:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 1 Jul
 2026 16:25:38 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:25:38 +0000
Message-ID: <4b66cb8f-1df5-4dc8-b32d-fe865ea48114@intel.com>
Date: Wed, 1 Jul 2026 21:55:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-2-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0048.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::19) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|DS0PR11MB7560:EE_
X-MS-Office365-Filtering-Correlation-Id: 890077cd-5593-4926-a31d-08ded78d62bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|376014|366016|56012099006|11063799006|18002099003|22082099003|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: Ruo9zZILR/AQ9c3MzoD2g54S+eybZkwzqRYU3jZ47PMVhCIE1tr6RlYvp4mZ8o5FYjsG3YWAlGZsyt5GaJey6azamcIWUr5eatAc7PiKUkF3dLKkFiJGPWNXPm0ulTFifSabNwS/PJSyXt3WqKmRyL2QXgre2QZadz5Dd6/XVjeuyY8bDCxoDU/PU8dTVWeFCqeF5w9dirpU+V8ZyVFECq4STrsCBWFdii80yjTVo6OC/JpuZI0qlMLAFm9oH/TfyVdv7JT4LrY/jUCLUDgDIrlJcHgUjtVgqVNhuITsq2jucyCnKqKLcvaevMEGMIbusltx+U+dt9qbsE1Q3ybeyXosoVlCIQcw9zXJL3tKXZzqOlFraqdGA1EQa7JAJ3xg25L/RSZZZYsUF4EKNPwIUtl7pWCYgEpkueENf0/rEZ7OCFaJvWPtMrBaNolGT631C0twfVox3szmpsWCy4Nf7xFKzM8AIjltSogP3jiT3vJ30l8wRboWOaJZ1SyN1Io76VSsuJljI9HdHkHCsojfZttXKdRHeYFPhIJxUgLoWqVxubwu/4cjur89IIgAxCE1ZZAQpOQ8dQDodaWLnSppvsRAXqXWMq63rHCuaX0J00is47+nBVYoyIETgHUPPWpb636BHB3HJSX1tbS42dInVZDjLMj+rMz+rubgy+TjfgE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXA0STU4SlExamdoanpNTmNmU2Juby9xSlplZ1dPMVdlWTIwcjRNRDRaZi9l?=
 =?utf-8?B?YnYvRHlaRzR4b0Ztb0dVczVKZlpUQUpWT093WUFZL3RYYlUzU0ZiZ2VLYTlX?=
 =?utf-8?B?bnI3SlNQeUtVcGJxdmd0OXpSQ0RSY3Ftc0VRUFNCTkZJaUtmdVM4cEgrM3Zr?=
 =?utf-8?B?RXFqaEMxdmtGeDdteG54OUdFcnF6VmVINHJnTHZkTXM2QUo2bE1kSFFYWmtO?=
 =?utf-8?B?eUlLaFVONWVWWEw5Nm1ZRTVzUWhYTXR0emFmOXdlN1ZpM3FqN010OXpZd0p1?=
 =?utf-8?B?SjhXMVhiNURlZVAwMnk5cVNwYmhtNGxsNUFCTlAySTNIZFQyOWl1YTJkZHVC?=
 =?utf-8?B?UjV6TmI4TVUyaVRLbWhibmtiU3pyV1Z3YTBERHQ1S2U3SStlV3lNdSs0NXla?=
 =?utf-8?B?Q3l0VUNtOVRrL3J2WnJiZGZHRTNYbklzZnFaVGJlMlo0U0ViUXZSM2JwbWEv?=
 =?utf-8?B?U1VjOEtNUHZwM0RSanc1OEcyZmt1NXZaOWlZL1p3TXpTMEtaMExkSUFLRUpD?=
 =?utf-8?B?eGx6dS9yME9NTkhQMzFPaWFuMkhybDV2bUxYNkdTY09oeTJhYmRQL0JWV2tH?=
 =?utf-8?B?ZmdjbmFHQlFyMTljOGx2VUlKdnBaS1BZR1ZnT3V5Q1M0Y3ZIWVVGMVFpekps?=
 =?utf-8?B?S2ZJS2xEcXVNUEVjZGh4Sml3emhoc0hNbkE0UktUc2RvN2JYQXhGbHVxNUFk?=
 =?utf-8?B?WU91WGlqSWJ4Y3o3Q3JuS0V3ckhnbENZVFNsNms2RjJZN0ErUlB6N3l6NTB2?=
 =?utf-8?B?K0hjVVR4TnBWR1BrcVRZUlRtbldya2JGZGVkK2VJdDFlYmVDNDBQckx0MG5K?=
 =?utf-8?B?VHBCV0dXa2d2WEhFRTgzekZPdjVLOVpJanpIOHlrUFBubmRwN1RCUFVya0No?=
 =?utf-8?B?K0VaMGdmRStLTnp0eVprQVZIMlY5YTM2Z0xtNTIvdkhuVWZUdWNCR0oybjE5?=
 =?utf-8?B?QWRnM1ZCdnBzVkg2ODlHNkh2eGhZNmdnZUcrUGdINnF4UFMvVE9xTmU4VHhN?=
 =?utf-8?B?aVg5QTlwcXA5NEtVaEhSd3FacWNoMWQwV3Z0eTVNQmpySk1UbVhwMG15ZC9u?=
 =?utf-8?B?ejlKVWtGQWlFeHFLSUEvUkpZeFduaDJxbTJVVncvTzRSa1NZQi9scnJQMW9t?=
 =?utf-8?B?cUliS0NZZlpVRGlrZW44UStQcE9Fd0w5cGlIcUJKU1B6L2Rkc1djNVRpWmRo?=
 =?utf-8?B?WGlvYlI4bHM5cVRZT3dxVzErTFVGWWp4WXJBMjVudEFQT3lBNlJMa1RyWGdX?=
 =?utf-8?B?bmVmMXJHV0pFVkw3SWIyODhvYy9MTVpkRStKL3FJbVFaWlJwSEFhZWRWbmYx?=
 =?utf-8?B?TFdLTUdVZWltL1FNVmVjR1lpK05MaFN5K2o0SWljVHh2d0JjNHY5L2NySE1Z?=
 =?utf-8?B?cnltSExnZVNJRTlBaURFd0FDaGh0dW0wSWhvaWxhVlh2QnhXWVFUamliV1My?=
 =?utf-8?B?YmptVWJISVpWZDU4T1kyZ3g4dmd3Skxrb0ZDQUpqdXRLeGNVRmRGOXhzTlRB?=
 =?utf-8?B?MXVyOW5ERzU4UTdkbGNZbFJRNlg5R0l4dFNvaGQ1NU1rVEZVNzRHNzZtYmN5?=
 =?utf-8?B?bHdhNkdiMk9VUjMvc1g5dlV5UHN6MWszNi9hbUhhV1BOK2NBbTIvQ3ZHdTVZ?=
 =?utf-8?B?NW5KeTZiS3VCdEFRc05FTUowWFJ1b0djbzJEMHlnOUpiZWo3eHdFcXN3Z0xU?=
 =?utf-8?B?NjJvN2R6TmdYVkVPTjRwaWg1V0ZXZ1BXMkx0NWV5bDg5UklLRVd4anYyWGtv?=
 =?utf-8?B?Y0JhcU5YdC9VYTJ3Q2wzd2xUUWdIN3phZ2EzZzh3dkU0OXFtWFRTZ2ZnRUlt?=
 =?utf-8?B?N2YyNU44V2ozcU9SS09uYUFPaDAwZWZXazJqSElaVnd5aWJsQ1p5dkgveHY1?=
 =?utf-8?B?KzNON2cwd3hGWlhkTW9xaUQ3RWM1YTdvSWJpTmQxdExVazVtTDFqMGNPNXI5?=
 =?utf-8?B?OUFoZkxBWGwwMFdTVFh3WGNGKy9KMys5d3dmNFpKZzFmYjUveUFMTU1NNjhQ?=
 =?utf-8?B?VmZyUUJ2U2czeWhVV0VOckZWTHFkZmtpWVlLMkVIazZGK1IzbUdScmRSdWY4?=
 =?utf-8?B?OVkwcnNCL0xwNkdlT2U4dUF3bHBRbGcvcTNhWjh3QmU3YTczWSs5L3grNGdl?=
 =?utf-8?B?cUhDbERndjlaRkE0SGM3M212N01BVFluKzR1Y2R6RnZFSG9DakR2eXFVT2FO?=
 =?utf-8?B?NkFlUUlIWTg4RXRVOVdqekMyZUdIMXhIQW9WYmxwRWc0K3hzRmRLN3pqY0Z6?=
 =?utf-8?B?V2d5ZGJzVDd4aTVzTnpXNWFmZEN1S2FRTTNTa0Q3clFFQzF2WGdOR3h3QUJn?=
 =?utf-8?B?OTZyUnFsL1RpcjB0QjdTeUtpNkpqY1BWQ3pXVDVZeTIzaFZoTzhETUpobnR3?=
 =?utf-8?Q?qpGth+RQIhKbnlH8=3D?=
X-Exchange-RoutingPolicyChecked: dTetjI/GSBEGHg0mYFJhEAxzMAau7z4aItK6i3Gd40kaAJxwm4SNyeCtlPp7fz2XiiuDVZDvrNW2m0rY4fYUKj1FioAkMn1u6jBUaQENEuZG9b8ovTFo8U7TuZr4ke1LS3VxiSJowDn1SZTYc8QBOVwncolld1cNXDYrBQmQrmDs6h7A8bd+83AdW8aGqJN5/4lpHVALh7Yl3tdfk4NSY8lMS2Gep+LHGJOkHlRD7o+32I0dmJKVKO/3+YUUn0kF13x5PV+q9XFya8jJBJFIG9WIcOq5+ozq1b5m9PzqHM1idj6fZCiKJvI1lNYsy7LB0QkL3DKTej6lbHi14XNAig==
X-MS-Exchange-CrossTenant-Network-Message-Id: 890077cd-5593-4926-a31d-08ded78d62bf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:25:38.3955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EkfPOAswA+foqkM5+yNTX8CciuZdTmbbcegG6qFTM/rZhbYT+1XXFt7NRNyd9paPxWN7P13L3KXsswxjQhJhcOEgeDRdp8YvT7OtO2N3HuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7560
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D37D6EFC41

Hello Nemesa,

On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> In joiner mode, secondary cursor commits may still be running
> even when the primary cursor commit is done. Walking the secondary
> pipes also requires holding the secondary planes modeset locks.
> Add intel_cursor_lock_joined_planes() to acquire modeset locks
> for all secondary cursor planes. Check all joined cursor commit
> status before taking the fast path. If any commit is still pending,
> fallback to slow path.
> 
> v2: Use intel_crtc_joined_pipe_mask(). [Ville]
> v3: Lock secondary cursor CRTCs and planes. [sashiko]
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 63 +++++++++++++++++++++
>   1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 88384dea868b..f8b24865c93a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -13,6 +13,7 @@
>   #include <drm/drm_vblank.h>
>   
>   #include "intel_atomic.h"
> +#include "intel_crtc.h"
>   #include "intel_cursor.h"
>   #include "intel_cursor_regs.h"
>   #include "intel_de.h"
> @@ -796,6 +797,58 @@ void intel_cursor_unpin_work(struct kthread_work *base)
>   	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
>   }
>   
> +static int intel_cursor_lock_joined_planes(struct intel_display *display,
> +					   const struct intel_crtc_state *crtc_state,
> +					   struct intel_plane *primary_plane,
> +					   struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct intel_crtc *pipe_crtc;
> +	int ret;
> +
> +	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
> +					 intel_crtc_joined_pipe_mask(crtc_state)) {
> +		struct intel_plane *pipe_plane =
> +			intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
> +
> +		if (pipe_plane == primary_plane)
> +			continue;

...

> +
> +		ret = drm_modeset_lock(&pipe_crtc->base.mutex, ctx);
> +		if (ret)
> +			return ret;
> +
> +		ret = drm_modeset_lock(&pipe_plane->base.mutex, ctx);
> +		if (ret)
> +			return ret;
> +	}
> +	return 0;
> +}
> +
> +static bool
> +intel_cursor_joiner_commits_idle(struct intel_display *display,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *pipe_crtc;
> +
> +	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
> +					 intel_crtc_joined_pipe_mask(crtc_state)) {
> +		struct intel_plane *pipe_plane;
> +		struct intel_plane_state *pipe_plane_state;
> +
> +		if (pipe_crtc == to_intel_crtc(crtc_state->uapi.crtc))
> +			continue;
> +

Both the helpers have two different ways to skip the primary. I would 
suggest, pick one and use it in both.

> +		pipe_plane = intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
> +		pipe_plane_state = to_intel_plane_state(pipe_plane->base.state);
> +
> +		if (pipe_plane_state->uapi.commit &&
> +		    !try_wait_for_completion(&pipe_plane_state->uapi.commit->hw_done))
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>   static int
>   intel_legacy_cursor_update(struct drm_plane *_plane,
>   			   struct drm_crtc *_crtc,
> @@ -842,6 +895,16 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
>   		goto slow;
>   
> +	ret = intel_cursor_lock_joined_planes(display, crtc_state, plane, ctx);
> +	if (ret == -EDEADLK)
> +		return ret;
> +	if (ret)
> +		goto slow;
> +
> +	/* Check all joined pipes for pending commits */
> +	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
> +		goto slow;
> +

The param check right below can be a quick early bail out to the slow 
path. Better to move it above the lock so we don't grab every secondary 
crtc/plane lock just to drop straight to the slow path.

Rather than special-casing the primary pipe in both helpers (and in two
different ways), can we just iterate the full joined mask uniformly?
Obviously, taking care of any special treatment that the primary pipe needs.

==
Chaitanya

>   	/*
>   	 * If any parameters change that may affect watermarks,
>   	 * take the slowpath. Only changing fb or position should be

