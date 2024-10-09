Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F1996CC5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD6310E722;
	Wed,  9 Oct 2024 13:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JCJUHlaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7301810E722;
 Wed,  9 Oct 2024 13:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481998; x=1760017998;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=C3/dK2ZutT6WQJ0kAFlEgE0D871hwbNjjVuptCYsLKI=;
 b=JCJUHlaVm4zYV68/3GTxaMxh3lYk1dnIHwgVeXyGUKY3RTFbJDuZpSYF
 GaRwZj0rLcT/XgY4Vpu8/h7FPH8cfTmqI7WdajY9ntHClUD9ftTxWs5an
 Sm1z3QpicOM2M87Rgfnh/Qt5s8WKxbxC9F4fP5XxFuIYC9pacNBAX1NSQ
 KAcCxO1Bkx5mFpx7093nFVlvvxDmIGE4KF5jRwfT2Tji4pvJtKup06Fdp
 yUUi1F+oXLdSLtaWCf8wX49MCvVtOhGJisjp8WQgSMuONyoUSFjCrNNec
 JS9S+tFAmzdq5bIpkGkDlQ5Pwtg0wyCLe+URXAMeaRUTIaBDPs9ifoA+o w==;
X-CSE-ConnectionGUID: FebCCxedT9+p2LyieACctw==
X-CSE-MsgGUID: nBlYHjsfS72bxf2NolsFlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27913624"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27913624"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:53:18 -0700
X-CSE-ConnectionGUID: 2L1qWWQRQG2xZUS0mdGA1Q==
X-CSE-MsgGUID: SRKZ3L0oQbeKfXRkDeGt6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76480525"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 06:53:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 06:53:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 06:53:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 06:53:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NUgXmOhA2GJPJpOxsEUo/u0GmGGuyqQOEHN1whwL5HQfTIPx3crskn5Yr0Y6wNBLVtYc92hHv8l1FfaBoop+fk2GlU0cPamhcC0eC57mxtR53jaMNpxen+LZQkQF0hMZkl7Xqj4BFHaMkT7XnweCD0UEn+/syxnGA1Vce7BYDIbtqHneA/A82/ZjRZ7kx21yT56DiMDQKDa8bs/QFgY0U8CpiQAwhymiWmi3HqEo8/86gjg8SNMUL8UEElbBh+wdtUy/AYWdJeHbks04ZWN5G63zKy0DoWx0RvTQf2BSY0HefbU56LjjvVRNNdaEKPANFZMh++q554yHejcMVqfJTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E9m7PHFVcdbGFGahrp39BQAg9TO9mDYJi7+RW2N7O14=;
 b=XoZxmozn5tJCpUAUqDuWjaFHbuIF2eEdaa2ECIEVR8/HNsqZigq2kXrc2gzS6Juc+qy0tUQt7ae/t0ayImHGn73bX00Dss9bEXOxKMNRxp+VnWXF2ddJJuy3ho5XCQS2k4lCLM0lbCVF/QVWJ6LH3tjmpcjVYTuy3u3saNTH6P0m+37Wofy4a79WvlZoXmzdLdOx+I/6VWxCspwGWYneX1FF2sn+m42sTe3sau+IH5C3Sm/ryFwYeUvNEtfRvsFtaZtP5yg52jg1kmanfUGBD7HPsib1gPAAH+TQ+7YJuFtqut6A4Y8IXHYfEUHmjN2TNjhIyFHhJVld99L7f2po8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB6868.namprd11.prod.outlook.com (2603:10b6:930:5c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Wed, 9 Oct
 2024 13:53:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 13:53:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a5098650331d153387ef54372c55a8adec56cde0.camel@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-5-matthew.s.atwood@intel.com>
 <a5098650331d153387ef54372c55a8adec56cde0.camel@intel.com>
Subject: Re: [PATCH 04/10] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Date: Wed, 9 Oct 2024 10:53:08 -0300
Message-ID: <172848198829.1487.7852532371696966063@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR02CA0016.namprd02.prod.outlook.com
 (2603:10b6:303:16d::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB6868:EE_
X-MS-Office365-Filtering-Correlation-Id: b0d4fd57-f72c-4149-92d6-08dce869b85c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?emQ0NEVTc3FCL2RZTFpqa29tY2ZrR3dQaEdHZk1DVjdrMjhJdy9qYkRwZFNm?=
 =?utf-8?B?K0VZK2U1V3kxUzlUSjJEUFNhZ2VDWW9YNGtLUUJTSCtmTXI2Zkx6NmZMNGhU?=
 =?utf-8?B?MjRHeWtQeksyNFA4ajM4MFAzbGhRL0x3d3luRFR5YXZrVjRWQUxQeHF0MW1o?=
 =?utf-8?B?UXpPWVVLbUo0ZmtvN1F5U1ZxWHltNGpKWEtuaGtJYkNjLzc2M28wY3dCUUlH?=
 =?utf-8?B?U2F1eHl1VDFYZnl0RC9YSEgyUlp0S0xpNE9Gci9qMFF0R3liM1ppK0c5ekJZ?=
 =?utf-8?B?VFRsVFp6djBDV3NyZU5sMUNOcGVRL0V3SlpYb2lEdXVnTHR3bUpPaHd5blYz?=
 =?utf-8?B?elg3Z0NrU0tKVmVWNUl4NDNvdlFsOUVXSStKSi90dzNkcG5jT0ROUGdsNXBF?=
 =?utf-8?B?elB6YVVKNUlKUGZpNitKZXkvK2l4MUkxZDJUci9kRllBN3IzdDMvVkRuRC9N?=
 =?utf-8?B?OXhBNElvTldTT09sMjMyL0ZZUFhGN1dJamlmTGlvelB2Q0xCOWNValJvT2g5?=
 =?utf-8?B?MENiOGNieTkxYVQxRm9rSCtlQkZ4ejEraWZ3NjhCMUVaT0xqcEg0bXNFS0cw?=
 =?utf-8?B?dVd6WTQ2cjRIckplL0I1ODZRa2tjUmNnS1ZtT0p5MXJ5N0JyY2duNUhZVTNj?=
 =?utf-8?B?S3V1SWpHT2ZjcFlKNHRCK2w4eG81THRHNE50S2xMTFpsZFBYTkcxWkFlRFYv?=
 =?utf-8?B?ZS9qZ0pHMDBvc0N1WFBIeDgwTE8vUVBYSVRrZkRwWFBmSTVqek9yQkhTOFBM?=
 =?utf-8?B?dVdDalgyQzRueVRXYzN2TVpwL3E5d0l4ZWJndWN6TGR6ajdFZEsrMHF5Y2tR?=
 =?utf-8?B?WXphNVhUeTN6NTlKYVVvNDM4S2trck5YKzREK05DZzJkWkdJSUEzNkhVWjQ5?=
 =?utf-8?B?WlVIcTlnTUxEc01KcmY3ZE1oZ2VneHNHaitIMjExKzhZekl4bU5VeFR3YTlo?=
 =?utf-8?B?UGltcElTMUdkSGEvemR4QzBwOTltTVp0czFvK0E1MTJSTkF5K1lWdEJUcm0x?=
 =?utf-8?B?Tzdyck1zY24vOWphc0duL2NHeGZoSUlPTFFSd2pJVC9qVDV1THp2TWN4Q3hz?=
 =?utf-8?B?UGI5a052NW1yRFNpSzc3ajAzelZ2dUVkK255UWU3SzAzUWNsR2EvV2dlNGhJ?=
 =?utf-8?B?MThyY0l2OWZESHpOSVdGRHNickpOTkt6SFpIV1laOXVoeWhXY2Zxd21HQ25a?=
 =?utf-8?B?M05QV3kwRkkwSnVURDNPNWxaTDEwVnpnOExBWERjOGNqLy9iM1J3MlZWbzAv?=
 =?utf-8?B?UlJ0RlFaNTU2N01Td0VKQWVkRjBjN00vRWE1OFlOY28yQ213c3V5SnNETnh5?=
 =?utf-8?B?NGJCeGdYeEJlUjFVTE9LVW5yYkJPTExKY1RpMldHcWhldi9aNGdtQmgrSmtW?=
 =?utf-8?B?bWk3aGF6ZVYwcFdORnJCT0ZNdHZNVG1ZT0Z3bGJzcEdjVlcyQytJLzJUdzcz?=
 =?utf-8?B?ZEo1OCtwT0IxeUdBMkVuMGJWT1diQURBQUFDTTNLSVgvTTk0UmJTQjZmUlRW?=
 =?utf-8?B?S0srN1hxQUF2Z3RIV04zbE5jV25PL3JtcW5ReTNiS1czTzl4WitLWkEzc1Vl?=
 =?utf-8?B?eEhDUGV6V0pQOTZsZDZ4dlFnNG1YQVJKbi9ISXFjWHhta1lsSzhXbEtLM083?=
 =?utf-8?B?cnJJTkNFaTBhWk1EZlZuZjZHZmtMdk9ReklVNXp5RlBlaHFRRWt4d2xhNkJ0?=
 =?utf-8?B?Z1hmc2c4QWhEakMrQ0dscVY2c0Z6cGZCb2o5SGw4b0NYdmszRzdnVTdRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTA2eHBzUTFOREVCZEZxeWxKaTVoKy9GaWlMNmhqY01LNE9KTXp1NVpNUUdE?=
 =?utf-8?B?Y2VBMTVDVkl1dkhPb2s5S2NVemt6Q2J0T0c0MlZ4b2hodWZoczIwRll5dFZn?=
 =?utf-8?B?bW1pUCs1YjNGUFBMQlBXTTllUlhEaFNLa1B6V1U3NnJzbitxVUYvai9DTUF3?=
 =?utf-8?B?cHRkUTFSUmRURnh3SUdBK00zdFQreUhoTDN0bm9MbFdPdlBpMUd2d2pwQjk3?=
 =?utf-8?B?Y1ZhMU5HWWtWNll4QVNIbHI1cHFlNWJDaDY5K0tTUEk0ZlZNMnpudHgwLzFH?=
 =?utf-8?B?VEc4cDNGcHpKdlJlQ29yRVNwOGhyUzBUOEZqS0VjNFVmTnVWQnBqMWEvc0pZ?=
 =?utf-8?B?aUd0ZUtjWTkxQ2F5YlBaV295RXpaa1dudVpZWGliampneUg5NWF4YmlrTThQ?=
 =?utf-8?B?dEFpUDgxN2xNb1NjcjV1TmdBb3dLVEo2eWJNaWh6bFVGNzFpbXpJWmc5Z3hV?=
 =?utf-8?B?b0xPR1VONzFYdndGbDZhM3lqTklOdElFbitISVB3MnNzeC85UUxmU0Z3dzNE?=
 =?utf-8?B?b3FKWWdpTGh4anVQSFdnckxja0Z3U0VQcUtsTXZ1UUFWWFAxWjA4VldIUVFl?=
 =?utf-8?B?eHpaTkJxNUFJMFRaUThJRWkzQndXNFpFSmxCZFMybEZpV0VKalVkRG9sdVJE?=
 =?utf-8?B?cW5FeTdJK3NTc2dmNStkMWd5ZEZFMzRmMGdiNWRMWDZLVkZGckpsY0IrNjJo?=
 =?utf-8?B?RmJXMnRhOFVoVTFBZXh6Z3g4Z2VTSTdLa1QxY3pGekx3RXJLNTkwTTMxZ2VD?=
 =?utf-8?B?a09DanRqVjZkZ2hOcUk2UTQ3ZU9zYUlMbWlUcDZKOWc1ZjN2QnhBZ2dDRWdW?=
 =?utf-8?B?Y2ZRNG8yVkNONm5YRUxiNFpZV0RRZnJnWDdoTWIybVN0U1F0cHg2b0hUa3l2?=
 =?utf-8?B?SDl5Vmk3S0xPS2ZramNoRVhpZ28xNzYwdmRqUkxNRzkwenp1VkF2LzYzVkI3?=
 =?utf-8?B?ajZudStOTFYvc2huZHU2b1ZxSW1BR002dXpHQkh4NkJqK3NzTXZQdVhvRnBa?=
 =?utf-8?B?N3ZOblVib2ZCZHhUb1JPKzMrbnN5RjcwK2RlVWRTbFAvcUU1cHkyTzdVVzJ2?=
 =?utf-8?B?eWlWVE16c1Y1ZU9wSTdrbkdTU0VaK3l5QmdRSjhxOTJDWFRhL3VIQ01QdDJS?=
 =?utf-8?B?WStnK3BVak4wdjZwSFdva3FDbmcyd2VwaC90TUhaanVPWEpyM2JqaE5WSmVi?=
 =?utf-8?B?aXdpZzNkQkE5cnVIRFlBTzFPUTdHUGFxd3FWK0tKZG50aHJJTkdQSFd2WE4v?=
 =?utf-8?B?V2hGWUJVQy93VTROdFUvMEN3VHMrcFcvUVNQRW5odG1VTk91aXZlNzhZTVlh?=
 =?utf-8?B?V0w0b0V3RkJ6N3dvc2cvcU8vTmMzY0UrR2hkMjlzaHh6VUZhVFpPTTlYaXVZ?=
 =?utf-8?B?b0tXbktFSGtGTHdXWHA5ZTFmVGxUNlYydWo0bU5GcEg2L1hXY254U2kzVzl0?=
 =?utf-8?B?RkY5VWxaOGJkUVZpK1dmTzVjRmNNZUZCcmZDVkYxN0poUHJwNW9WcDZnZUdV?=
 =?utf-8?B?RWR0UkNuaE05S1lpT2RqNlJ6MnNIMVIzWnREMFRHaWJ3cEtFTDNaTll5WSt2?=
 =?utf-8?B?WmdnZlFlVFpGNTNkM3dpMFNTUFBRdzVQRlFJeHA1U1VFMENpaFJoRjd6UFBr?=
 =?utf-8?B?TUZiY0owWHlVcHJLY0FJQ0dDSEFkRWV5YTdPQnNWRktXKzVXNWZlYjNnYTFs?=
 =?utf-8?B?NXZ4bWVQVGVBd1NLR0VzTjBhL2YxUE8vSlU5U2ZDNTFMMk9MQUhqaElKN3Az?=
 =?utf-8?B?Vmk2bVF5a21lNExsQXJCdk1LODBTaGNmeHJtUnkveTVmSytXdXBaMGVzcFBa?=
 =?utf-8?B?MXRSN2oxQkFkUUF1bitKNTBKTEM1K1VQMGEzY0pKb1FDYWc3eU5WN1U2dTlr?=
 =?utf-8?B?VDNkUXdVcHlBQmh4bEU4S2FHMkloaFNXVHNwS2VZdFVqMERxUVJwWmQ3MVp0?=
 =?utf-8?B?eXM5TGFLR2RMZmZMb3p4TjRvR21jOUFOZER1WFA5Wk9pazhkdlllK1U0WHJO?=
 =?utf-8?B?SFVEVlkzRFQrYnFDb2ZaeEZRbTVncVYxQjVVZUVmSjRRTklqWlFTaDI5OW1w?=
 =?utf-8?B?alk5aEZXQ1VqNmpJYXkzM1VhWmsySmpkLzJHS3R1c3ByME9KTExiWkRvcER2?=
 =?utf-8?B?b3RvUWRpdExFek4yaFQ3U041NVFTUUNYc0d5MC9VMCt5TnFZWlM2NUhQd2pk?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d4fd57-f72c-4149-92d6-08dce869b85c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 13:53:14.3389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G9wSWbBSuHxf7KY7NpvNcBG1Ca4xsnjjSYs72dOVqp8MyalEsv8+3ZiYPdSFDjxidAjjs09nSQDsMbkdyxu/4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6868
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

Quoting Govindapillai, Vinod (2024-10-09 10:09:45-03:00)
>Hi Matt,
>
>Probably you missed one change...
>
>On Tue, 2024-10-08 at 15:37 -0700, Matt Atwood wrote:
>> From: Matt Roper <matthew.d.roper@intel.com>
>>=20
>> There are some minor changes to pmdemand handling on Xe3:
>> =C2=A0- Active scalers are no longer tracked.=C2=A0 We can simply skip t=
he readout
>> =C2=A0=C2=A0 and programming of this field.
>> =C2=A0- Active dbuf slices are no longer tracked.=C2=A0 We should skip t=
he readout
>> =C2=A0=C2=A0 and programming of this field and also make sure that it st=
ays 0 in
>> =C2=A0=C2=A0 our software bookkeeping so that we won't erroneously retur=
n true
>> =C2=A0=C2=A0 from intel_pmdemand_needs_update() due to mismatches.
>> =C2=A0- Even though there aren't enough pipes to utilize them, the size =
of
>> =C2=A0=C2=A0 the 'active pipes' field has expanded to four bits, taking =
over the
>> =C2=A0=C2=A0 register bits previously used for dbuf slices.=C2=A0 Since =
the lower bits
>> =C2=A0=C2=A0 of the mask have moved, we need to update our reads/writes =
to handle
>> =C2=A0=C2=A0 this properly.
>>=20
>> Bspec: 68883, 69125
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_pmdemand.c | 61 +++++++++++++--=
----
>> =C2=A0drivers/gpu/drm/i915/display/intel_pmdemand.h |=C2=A0 4 +-
>> =C2=A0drivers/gpu/drm/i915/i915_reg.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>> =C2=A03 files changed, 45 insertions(+), 21 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> index ceaf9e3147da..9af2f83d3a75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_a=
tomic_state *state)
>> =C2=A0
>> =C2=A0static bool intel_pmdemand_needs_update(struct intel_atomic_state =
*state)
>> =C2=A0{
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_private *i915=
 =3D to_i915(state->base.dev);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_bw_st=
ate *new_bw_state, *old_bw_state;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_cdclk=
_state *new_cdclk_state, *old_cdclk_state;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_crtc_=
state *new_crtc_state, *old_crtc_state;
>> @@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct int=
el_atomic_state *state)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_dbuf_state =3D intel=
_atomic_get_new_dbuf_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0old_dbuf_state =3D intel=
_atomic_get_old_dbuf_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (new_dbuf_state &&
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (new_dbuf_=
state->active_pipes !=3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_=
dbuf_state->active_pipes ||
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_=
dbuf_state->enabled_slices !=3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_=
dbuf_state->enabled_slices))
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_dbuf_s=
tate->active_pipes !=3D old_dbuf_state->active_pipes)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0return true;
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) < 30) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (new_dbuf_state &&
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_dbuf_state->enabled_slices !=3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_dbuf_state->enabled_slices)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return=
 true;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_cdclk_state =3D inte=
l_atomic_get_new_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0old_cdclk_state =3D inte=
l_atomic_get_old_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (new_cdclk_state &&
>> @@ -329,8 +334,10 @@ int intel_pmdemand_atomic_check(struct intel_atomic=
_state *state)
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->para=
ms.active_pipes =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0min_t(u8, hweight8(new_dbuf_state->active_pipes), 3=
);
>In xe3, min could be 4  (11b for 3 pipes and 100b for 4 pipes.)

Good catch!

In this case, we could either:

- Apply min_t() only for pre-xe3 and just use the value directly for
  xe3. Bspec mentions that Pcode should clamp to the maximum defined
  number of pipes.
- Define a local max_active_pipes variable, using 3 for pre-xe3 and the
  number of possible pipes for xe3. Then use that variable in min_t().

I would prefer the latter, which does what Pcode is also supposed to do.
This little redundancy doesn't hurt and make things safer.

--
Gustavo Sousa

>
>BR
>vinod
>
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.ac=
tive_dbufs =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3)=
;
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) < 30)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.active_dbufs =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0min_t(=
u8, hweight8(new_dbuf_state->enabled_slices), 3);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_cdclk_state =3D inte=
l_atomic_get_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(new_cdclk_sta=
te))
>> @@ -395,27 +402,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i91=
5_private *i915,
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg2 =3D intel_de_read(i=
915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 1*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.q=
clk_gv_bw =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1=
);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.v=
oltage_index =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, r=
eg1);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.q=
clk_gv_index =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, r=
eg1);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active=
_pipes =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active=
_dbufs =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.a=
ctive_phys =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 2*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.c=
dclk_freq_mhz =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2=
);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.d=
diclk_max =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg=
2);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.scaler=
s =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 30=
) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_dbufs =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.scalers =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0
>> =C2=A0unlock:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock(&i915->disp=
lay.pmdemand.lock);
>> @@ -442,6 +454,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_pr=
ivate *i915,
>> =C2=A0{
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 dbufs =3D min_t(u32,=
 hweight8(dbuf_slices), 3);
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PM Demand only tracks acti=
ve dbufs on pre-Xe3 platforms */
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 30=
)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_lock(&i915->displa=
y.pmdemand.lock);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drm_WARN_ON(&i915->d=
rm,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0!in=
tel_pmdemand_check_prev_transaction(i915)))
>> @@ -460,7 +476,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_pri=
vate *i915,
>> =C2=A0}
>> =C2=A0
>> =C2=A0static void
>> -intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>> +intel_pmdemand_update_params(struct drm_i915_private *i915,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *new,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *old,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 u32 *reg1, u32 *reg2, bool serialized)
>> =C2=A0{
>> @@ -495,16 +512,22 @@ intel_pmdemand_update_params(const struct intel_pm=
demand_state *new,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, qclk_gv=
_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, voltage=
_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, qclk_gv=
_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes=
, XELPDP_PMDEMAND_PIPES_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_dbufs=
, XELPDP_PMDEMAND_DBUFS_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_=
phys, XELPDP_PMDEMAND_PHYS_MASK);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 2*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, cdclk_f=
req_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, ddiclk_=
max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, scalers, XEL=
PDP_PMDEMAND_SCALERS_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, plls, X=
ELPDP_PMDEMAND_PLLS_MASK);
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 30=
) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK=
);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_M=
ASK);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_M=
ASK);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK=
);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> +
>> =C2=A0#undef update_reg
>> =C2=A0}
>> =C2=A0
>> @@ -529,7 +552,7 @@ intel_pmdemand_program_params(struct drm_i915_privat=
e *i915,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg2 =3D intel_de_read(i=
915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mod_reg2 =3D reg2;
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pmdemand_update_params(=
new, old, &mod_reg1, &mod_reg2,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pmdemand_update_params(=
i915, new, old, &mod_reg1, &mod_reg2,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seria=
lized);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (reg1 !=3D mod_reg1) =
{
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> index 128fd61f8f14..a1c49efdc493 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> @@ -20,14 +20,14 @@ struct pmdemand_params {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 voltage_index;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 qclk_gv_index;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_pipes;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_dbufs;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_dbufs;=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* pre-Xe3 only */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Total number of non t=
ype C active phys from active_phys_mask */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_phys;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 plls;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 cdclk_freq_mhz;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* max from ddi_clocks[]=
 */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 ddiclk_max;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 scalers;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 scalers;=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* pre-Xe3 only=
 */
>> =C2=A0};
>> =C2=A0
>> =C2=A0struct intel_pmdemand_state {
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 818142f5a10c..d30459f8d1cb 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2705,6 +2705,7 @@
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_BW_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GE=
NMASK(31, 16)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(14, 12)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(11, 8)
>> +#define=C2=A0 XE3_PMDEMAND_PIPES_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(7, 4)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_PIPES_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(7, 6)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_DBUFS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(5, 4)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_PHYS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(2, 0)
>
