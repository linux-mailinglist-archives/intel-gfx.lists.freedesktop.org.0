Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6V1uBacSIGrwvQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:40:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CB637260
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:40:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UCRO2nOx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCBB10FC99;
	Wed,  3 Jun 2026 11:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A68C10FC7D;
 Wed,  3 Jun 2026 11:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780486819; x=1812022819;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=POv6ncyBhVhtLkhQsy5NbuayKgX5eSJ5GMVxKBVhuQc=;
 b=UCRO2nOxZ6S9wGCXCl86K/hUaPhb6aWmzRH//yAyHCnnBYiryQtIH7aT
 QivT8Hl1iY8dSoJRMdW0Txln4lgFI08IMxjkvOcqbasi7Gx/n3UldAaJp
 b+eFgzk7orkWF0GggyjQBmqKxGTr9fX/WUoUb2xOqUt+/VhojViK5ACoT
 tYcIArq63yzgF6SGYN7HcfzWIClhIBf/PntFUZraLhfSDGvPsvBvrbwXz
 BRr2ndSytHkEVNuwA8UcVjC5C/Dz7z3Nx2rY/AesSLeOm1/wz8RoiawJM
 in7bMH4HU/yB5rVg6wx/VLkidQzeXXq3EjDBgl4TZMSgitLKIv2KjNvwK g==;
X-CSE-ConnectionGUID: g0xQJfVXSe+5EcR/xW+6FQ==
X-CSE-MsgGUID: 1ifO63CWS3i5Pa2JR+jalw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="92667443"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="92667443"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 04:40:19 -0700
X-CSE-ConnectionGUID: 7fJOz00nSw+VgJhYzfwMNw==
X-CSE-MsgGUID: zwTtjn72QfqSPJ4t63CL3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="282314735"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 04:40:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 04:40:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 04:40:18 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.39)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 04:40:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b01/aFX1iGfxrt/ccXlHZNqA44TOIbTrDpAWV6wyhU7GI6TftynPzHAc3PojWFeYMVLU7BZ+9gTBLS16K2SQCkep2H5I59SHlqYj+TYUwIzDYbC2ZsfpOrayudrctnDlObG2MZIvZgXVwVgxkqgI2zx/voibp4HScLUBUijx7FZdxreSE78pyImV2NulzOaxnDHdx1oH792EaVndzmwTP1M2UPHjOat5/rb4z6li68a5ArDap/Ezm5HzBXB8dn4A3V+ckGsQ0bVuBcvqkszSmjF5+kAJlC0COVpEAiUkGwYxnxQF2rAf+AM1n/CDKt+Z/0U1W7dmGie247ehZ0a9JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k6i+1LLWuk9m09J5X/0gjAyKE1m+gAx99w9/3x+psas=;
 b=o8mjU0M8k8fkLacSmt49dvhIBZB8uM98zjkOc1kAp75O701AJHhFYHk5KlfHMXVqEN876c/mH05+O90gzZKxJ+cwGMTodojVlhs1udVGYGNCnaL8xRkAzf/KTSPHp2a6XYQ72bcESaacVY5vCaJNwYurTpd3WKGRzFh2Qr/6Wxnf1PWCdOUBMkxCNlhXZB+YhawoNtkUdBrruqYvpcmPaSZOePIBz1VUcgEbnR5u2hQZCiFkEnt37jL9P1HJQIOFYOY7v67Vs9L4Car2OondF8Fx5fKEpjSOxaZiLt593Btbo3wmSyzfAc5/bK6TApeEB6NMB9IsdlZIocUvtXMI7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA4PR11MB8962.namprd11.prod.outlook.com (2603:10b6:208:565::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Wed, 3 Jun 2026
 11:40:14 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 11:40:14 +0000
Message-ID: <68143a59-ca3f-4e57-997a-8342021ffd53@intel.com>
Date: Wed, 3 Jun 2026 17:10:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/dp: Handle VSC SDP revision 7 in unpack
Content-Language: en-GB
To: Juasheem Sultan <jdsultan@google.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Gil Dekel <gildekel@google.com>
References: <20260601212613.3682640-1-jdsultan@google.com>
 <20260602205422.1792007-1-jdsultan@google.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260602205422.1792007-1-jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0202.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::9) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA4PR11MB8962:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fc61277-9dcb-4d83-e87d-08dec164e08c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CeS2hxYyPEqjOWpVZXuOOqC8BPYRMi/FJmPDpHNFEhVB7lae0eOY3Hn+S10pfVOIMwXUVwbyvsMV1dhx3SVo+1lMM+/nhPjrbgCZw2vLT1voqB0L0EfHhZPFxHLWvEBZWHZ7TTBZRZ6sSck5AD5YDFwIPnKB0CQmYZb7J2hMDEa4+x/s3O4ss4uC4roWNIyaRfu9O9E5/zNgPZtn5YQZD6YCqD0Z75+HADLamcCF26X0yiLZ3B67HGEOCDerWvWdRqsewq9dy2awbvqBXBYMDZu0XxVlKQeEYyTCIUEMkBul6vMC2dqRAFzoeniWfAkkjJrBStd6IhuDCeLn7alcG8UFEP/o06/8m9Xx9160fhHNHqIlIGuaIHvbNSCm4b0U4QdEBLZ0mBMpk3g2TV/eZNspXW1mxVcU6L0Y+LGFuFt9viUTYxSLI5AXz9Q4ZK/X7YrgNdB8W/N93tnBUaPIm7LefuQdP2T1lT9m7SJk2LrKmjDkUPw4BwO6U4Z0m7e49j2nP8XonEUNt6h26E5F1jboleYFIyucabSfXQmLBiz5QFQ2RbsBDg6FF7bFm9I6mm2sQquS1ed1qOLIkGJuF5PhB8Er/ingT11nQo7x5IJMlUxF6ELv+L/A2w7rojYDp0ABEUnhcQUSz+yIk6KClvi3hrzf1ewZ44KmTcYL/p6t67VaTMOeidvIFMjakUh1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0RHa3JRUm1PUzJaQVVVMTk1Rm1hdmVDVHM4a25nbCtEN2tpYzlTOXF0NVp1?=
 =?utf-8?B?LzdKaXlmRVc0S3JWVFA2OHA3MjRESmYyeldBNHhacU5KUjNqYnlqR1RwK3Qr?=
 =?utf-8?B?Vit5RnpITDh5QmRrYWFnbG5ObXdnMkh2RElDSUFWMzVCS3JlYnNMbG5BZGov?=
 =?utf-8?B?SFdIMkk1Mkx1QU5pY09iMDFydHNDUnNPQWlpNHJjSS9BUEExWkxSTHlhcW9I?=
 =?utf-8?B?MWJLeFJUaEM4TVNadTdQVEdkWTB5eWk4UERtSGFDWWJzM2oyL1E3cWtrL3hr?=
 =?utf-8?B?NVdOUW1NZ21BeUVNWXRtVGkxL01BbWRTdWZWWitzcFFXblExN0xCeWk0QTYy?=
 =?utf-8?B?T1ZmZlU1ajVUQnRaQkVJdmpwWUJUaE81aStsSmcyb1lYQ2EwNXNFYkZGYmR3?=
 =?utf-8?B?WTVxNHRESlpIK3E4elNiNC80Z0h1cGIxR3hpbWNrS3AxUnNBdmphd0RVS0Ro?=
 =?utf-8?B?bE80RlJTNmY4ZG5CVmJ2dVMraDRrL0YvVFZtbkZGUE43cVJCV2U3V3pmMkNJ?=
 =?utf-8?B?Z3dPdFVxTE1ZRW9uM0t5NjVNeG0wMXVJWHFTWDlEOG82QjlJYWQzL3lRNXJ2?=
 =?utf-8?B?T240YUhNUlFEOG9PSEg2R2pTYUxyUkM5NzVZanZITExDbElNL2NTSFliaTVD?=
 =?utf-8?B?NnEyb3YvUDh2WDZuM2lON2ZEZEx0MFhWZmFoQXNIYStaT01SeUhlWTVqR0N4?=
 =?utf-8?B?UUtSb2NZUjFVaFQ5N3NhWEhGSDhMMUpyU0RmWmJMK3R1U3hnVmJKYmxoNnpI?=
 =?utf-8?B?bGE5Q1Vndnk4OGZZUzNGcENLM3RlbjEyLzBxVVRGbFdzSnI5U29FVXZoazBT?=
 =?utf-8?B?ZFlCVEVXNnowUnNSRFBYUzJXd1pCQyt2MWsyWFdYZ0NxSTQwaGFvcHgrTjFo?=
 =?utf-8?B?Vmh1cU5IVXp2dFArT2FkT0VjTEJGQlg4MWZEMEx4MElINHQ0SWsrSmNmZXRR?=
 =?utf-8?B?ZUxnVm9wTHRCUzZQRy92SVE4UWZRWXU5UUVkTytBT01VZDd1M1NxSnRTOUFt?=
 =?utf-8?B?UzJjcWliUFBIdEpUZHJkQk8wd0g3QUJNZUFDbnY4UlliMkMxcGErc3VmUlk5?=
 =?utf-8?B?REhtbldOZ0VOMEhSSE5WREpoSWpnNFpaYldobUtsR1NFMk9FaFZzZ0ZVYXI2?=
 =?utf-8?B?aFN5M3ZYWk1GaVdQd3Y0cUVxQjZONXl2ditlNVRSK09mK09ROWRVcXNhVTJ2?=
 =?utf-8?B?d3JjaWo3TWtKRkc5ajNzenUzd0x5L3k3d3h5ZW0yOExDQWFrQm4zaTgyeVdx?=
 =?utf-8?B?Sys0ZjdoaytUYmdrVkkwUDJmK21hejcrRXFwK2dkL3ZEZTh1eE5tb1FqRE12?=
 =?utf-8?B?ejgxd2dLOU5jZm8vOU5KUVp6TmsyNXNZYUJxRzNqcXBxNXdHRGhmekdvcmpy?=
 =?utf-8?B?T3JZM3VwZzl3R3VaNG12RkdORHhWbWRjVGpOSE1rV2xPd1Q0ZlRYcXkrYktj?=
 =?utf-8?B?SjRJbSt2Qkk5SXRIbG0zWGpET0xyaDFlNE5LSHN4MHRvSk1oMHJpWncrUml4?=
 =?utf-8?B?U0FjblF0OTY2b01SVUswSEt2TTF2RmdnbnkrdzBRWXYxVkhrdS9EMlFGaXlh?=
 =?utf-8?B?VWJwa3hLVDIxQ0VEZ0E1V3FHOEx5YkkvT3dtT3F2bjJKcEpBRXJCbjUweElV?=
 =?utf-8?B?OWNSc0tNMlFzM0M5SFZvSUxkNjNCNkFQei9wdDh4OGVjYUZqcGY2U2VETVoz?=
 =?utf-8?B?YlY3RjBrUWxVTjZZTWYzNEsvOXN5ZFNGcXA0N1ZhNWkyY2tGY2FtbzBTMWVH?=
 =?utf-8?B?eXVFczFaK3ozSllaUFFWb2pJanVHTlpYUE8rakxLTzA0YkZ0cHF1MGtVbFhp?=
 =?utf-8?B?M09VZS9pUkJUQ3BTR2NMZi9pVzBNcEYybmhVRTB6bkdBKzd4b3E3cFJ2dzZa?=
 =?utf-8?B?TE1lM3g2MHo3Tmw3T2tPT2N5ZG91UlorRGJxTHFneWM3S1pEUVZ2VG9DT1lC?=
 =?utf-8?B?WGRHYjJ6YWYzQjFja2I3MGZsRWgzK0hNRkY5bkxuODJib1pXTnpuS2FNTC9M?=
 =?utf-8?B?d21Dd2dveitGU210T0RZRC94amZBTCsreVk1Ky90NUczelRMcTNWODRzbm03?=
 =?utf-8?B?R01oa1ZiR1FtNDc4SE5OQnZxUlUwWTJtWXRUSjFWZCtFY0ZsVEhJWGZDU240?=
 =?utf-8?B?eHkzSmswa0EwQnVJZEpzZmtISi9VeWJQVDYra1JzUUt6amFJUHBqVEx6ckwr?=
 =?utf-8?B?T1JNTEc4Q2JTbi9LSmhCMm1kK3lJV2JsQ1lOc0ZkemF4OHBHOXd6OUdyRUpI?=
 =?utf-8?B?OVI5cklQUW9peEt3UnV6b3lwaW04TVVLMUN3dGR1S2lyNlluL3hkMmM0QUNW?=
 =?utf-8?B?OU9tMk5EL21VUnp4NVlabzJ6UnpZeGs5dlgvMUdFdGZMVG50aFJoOFRaWFh3?=
 =?utf-8?Q?RtG0C/ABx0sFUI5E=3D?=
X-Exchange-RoutingPolicyChecked: dO5WLezc0waHC+xP7+FvO8jX4T4iVC5HNNIvU7OW154TiAdG9D1wl680IPcoqdsIY5VqcTaI1TLrGSSnSJ5OISDlTFb5ny0D4Vl7OY0FWVMDEzNcBST2CHII1swqxHwnYY4neWF6DFQJde0B4E+IaT+Oo850Qs41JYuioR0venyY3kOL2Dhrf1YawNBDJnoWat7EOaZWDZp0pzlgsnn0zq+ZXNGz5Rm6aKergUnH38xtlNs0wWnEifHA+476h4jNY7XjZ+d3PeuTZR7YcZcUPXYpw1whlggRhaypS+5PXmpfLzu4aliAnVWnRB7bE0LVOp0HummR5Ko35fhMKRHeIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc61277-9dcb-4d83-e87d-08dec164e08c
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 11:40:14.4161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5282QN3xgjhUMEyI13FnGmU/M+gvzLqRIBGz4h2PZon5cxu4NGPSg8Oi0I04poMYw89vg6/j9iDFo3MDCk1CUtFxFWlwR6hiYWR/uilveE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C7CB637260

On 6/3/2026 2:24 AM, Juasheem Sultan wrote:
> VSC SDP revision 7 (Panel Replay + Pixel Encoding/Colorimetry Format)
> unpacking is missing in intel_dp_vsc_sdp_unpack(). This causes pipe
> state mismatches during state readout because the VSC SDP state is not
> properly recovered when Panel Replay is active with colorimetry.
> 
> Add the missing case for revision 7 to intel_dp_vsc_sdp_unpack()
> so that the state is correctly recovered.
> 
> v2: Rebase onto latest upstream
> v3: Fix git commit description
> 

LGTM.
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Chaitanya Borah <chaitanya.kumar.borah@intel.com>
> Cc: Gil Dekel <gildekel@google.com>
> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ef2a0043cda..b8746dab051c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5343,11 +5343,15 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   		 *   VSC SDP supporting 3D stereo + Panel Replay.
>   		 */
>   		return 0;
> -	} else if (sdp->sdp_header.HB2 == 0x5 && sdp->sdp_header.HB3 == 0x13) {
> +	} else if ((sdp->sdp_header.HB2 == 0x5 || sdp->sdp_header.HB2 == 0x7) &&
> +			sdp->sdp_header.HB3 == 0x13) {
>   		/*
>   		 * - HB2 = 0x5, HB3 = 0x13
>   		 *   VSC SDP supporting 3D stereo + PSR2 + Pixel Encoding/Colorimetry
>   		 *   Format.
> +		 * - HB2 = 0x7, HB3 = 0x13
> +		 *   VSC SDP supporting 3D stereo + Panel Replay + Pixel Encoding/Colorimetry
> +		 *   Format.
>   		 */
>   		vsc->pixelformat = (sdp->db[16] >> 4) & 0xf;
>   		vsc->colorimetry = sdp->db[16] & 0xf;

