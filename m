Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AK9zIzN0y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:13:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F86364E41
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF14710E87D;
	Tue, 31 Mar 2026 07:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+AedIOy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F3A10E87D;
 Tue, 31 Mar 2026 07:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941233; x=1806477233;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X020bhCGw09UWpmNX3w6mpMgw+QiDR+xuWx3/Ssr8+Q=;
 b=S+AedIOyrsT4w5iRISeuSYLn/IhP6sly5pcuYIsngFYWv5aocO6P0EjE
 39NGNOw818/g3N7+vsx+pDfK2tr1OstYfOWgr566TZS1R5csHzMkBKHai
 h/OFF8BnRAalZCVeC28kWQY5lhuOk3rksZzRz10ulgfawBqibAydZ0BCC
 vOGWbJeoJ/WdAkC+GKna8xrdUQZRucqUpzrA5OwaadBCMZ8sjtXcsuJ+S
 0SiUIqxU+yzH6iuVDEQIU0+Is67IBjbxt71ZFGYBh/+n1l/4E8sQs/hrp
 PZLTFMX1RyVUCpAFCy4SGLMJIzy0QQQQtbqI2BZGiMIG3xT9jNfz2QrJG w==;
X-CSE-ConnectionGUID: +TxjwXIqQiWNe7JdYuPe1Q==
X-CSE-MsgGUID: HCJzlgXzRnuqZQiJw8Dc4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75910768"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75910768"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:13:53 -0700
X-CSE-ConnectionGUID: 5DsDTDsXSzKp/Oxiqu7qZQ==
X-CSE-MsgGUID: 4BkB7ZOST1KgP00HVErT3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="249325803"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:13:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:13:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:13:51 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:13:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TmIqHQBSzyC4sNwsvae2vhVKTjG+n/VtsLvu7ZYt077pbHjrHtkGZXZBjRLpQYtihLSy6qHiJzX19mfPWM1ztHuJCdNfhphcZ/Jxj92wCVJc4j0HL3rnGPZsVUq6gSubtoajBzoiKTjF1SV7n/9SzGWNjjq+HeDIaoeyUGgb9zayEdpnO7oOFYH8IJMDrIwc0dLykEmKmzOTKGpWYi4bsOn3yyEMbUk5Snj7SY4mSw/07AwgsVFkEFzFyVUkXoQelkytG6Hpnr3fPecrW+biJlwdI+y/MxjLbVLilO0P/Eh4UXbeFe3g9lAlngAIxGgRHeFj1wD+MDxD47hualT3OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6K4Yv1fW/qYD51d9uE3eB4BIBWwjiHhH0Bxnab6NBQ=;
 b=OqjevvBXCIQqK/+44whRDcCsEgjMGpwmXk8WddLu+b2846dhD1b9tWNbY3E36k2RqUWW+5kU2YJEJ9ZFRw4SYZR4QZ23xt0SsCVQD4JQH4uzTTAtdcOFiaKkXts6fQHh8Dsi+U1B6eTe48dPhueHmjlkE6jCMmKDiLpSLvb+7CeAwMN1NQSra2UjYp+wP0dora8/Iy3HaD/LeTptiwfYkK3H4M5Meo0XhxLzQfunXyVeFwIZFAeLHx6oxJI7s4HiYjKR4wVZDhkOgjtHV19e2r2eA6kEZYAybykqoeV68c+rtT37axakLX0QS3+/t2QxV3IVEobzJTF2pR9h+szZvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:13:44 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:13:44 +0000
Message-ID: <6a04bcb6-6cea-42e6-9886-2ef9fee06ce1@intel.com>
Date: Tue, 31 Mar 2026 12:43:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/26] drm/i915/writeback: Init writeback connector
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-6-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::8) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: f0f8892c-3e41-455b-1503-08de8ef50b52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: D5fnAi9WRySiFG35QjPfBuJ95kIIWpSdGZTvL8vezQ8NYgDE0XozIece5foHSyG/8qVOS3eWXO/6BLPcuHGkAX0rsnJSubAia9qIRrmr0rK2jyycnDnXE8Vt8sgNQ0cGLqH1QJl8SAiR9hdm+nny5M0W7uS/qflXrXC9dxb6l7+MqHlcD3XbG1dDEu5JOHtvQME06NWgKUqIpwbjaHK27ZyjfSL6ShRkVofrirLGlRbGZfkpxuQTLP3TY1CrPuEPbQDIb4ed6/8nXAUfBAC8gOwtAYN1PN4wC+J2E9phaUd6kwYTgDZvo3y6bLE2Tc1ltn7/UFOVrLX0E0LW5ezi5ADsebWr/zDYAAlRqXA5E9NEfifyuqSHUT8cffTLfxlUoVByb+sF48hurZDHqdnoqMY1/hiioTJdrRS2nEOak7EbzFYWhzhZ/798kwrksgg3bzIeIWRWe4nH+I/s9Vj0AH3f4RDzEEIxEcVK4o434ZNUzkuMYWLcEfiKBZfpjBqyn0/CbOzQK4UHg1QkxB5AGjkp02F8ZZnro08jKFQMznvFPnegJWy9VMz6pcBQe+eV0OmjkcgT2EXFHcK84J6oOzOYkSFm5fthUxlRbxHdKjTaFXL8sNElCkR6uV/Ry2jqBalQ07llzyh6T/A96UnaAUWS6CjcgN4//n/o/mYE/IOvyjiwHFm9Ag03eqG7ALjhUUkA1/C2PKAbIV0eZcKpdbmjr8YUMURAcqvyD3aRzaI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0RlRVVzQlhVcXJ0N0krNitIZTE1QTlkeGFCRXZwU3BCVmZlcWRZQXZsdFNT?=
 =?utf-8?B?V2lyTEJRcmtDSmt1RTVlY0R6K3hhbTIyaExONVJ3TEdvU2Q2VGdjRFFjQk41?=
 =?utf-8?B?MjR3b0M2M2dNMzRnNjZGVDBrNFpORXcvSk0zMG1zendnU09XMEcxK0lLZUxq?=
 =?utf-8?B?SlFIb3dkR2NXcDRJTFFHaS83akRVMHVwa05IYm1TcC85cmtDd3JxOUg5OU9C?=
 =?utf-8?B?NVFoVEQ2R3M0TXJReDJiZ0tQZlNJV3RCOGF4aXAyOS9WUW5BZmVqNXRHWTdy?=
 =?utf-8?B?QWtERVN4SEJaeXlKR09rUVF4S04zRklJZXVpK0dWNytkbmJZWEU5cGlUOEt3?=
 =?utf-8?B?K3REYVIyY1JlQnRKa2wxYmRBcG4wU29KWTUwd3JPRlhsNUp2UXRUbjR2WW9i?=
 =?utf-8?B?bW0zV2JQV2E4UzlScWdrUGlyaWd6MzhGdHVwVG5OMDFsRDlhWndYM3pqdDZz?=
 =?utf-8?B?SVo5b3FnRkZGWGQxSUlCNXpzS0JWV2lVeDRXYlJZZkVaNVRIMEFsUUw5djR4?=
 =?utf-8?B?RUY1VWJsUkE1bnp1dDhsczJkSGlha3ZIYUVycVdKam5hWWVISlRhamJyN3BG?=
 =?utf-8?B?WjFKMmlBdmVCNEJSeExEV0JGNzA3UW8zQXM2YStHT1NrWU9kd2MyV0JNWjlm?=
 =?utf-8?B?OVJsRE43UkJwVTAwT0kxeWhrVmJ1TEpoVTRXUjdCdVhkVEF2SDI3QUoyT0E0?=
 =?utf-8?B?OHUzQ281SWJSRDRjN0EzRzdTMVh2TzRvTVo1VnoxMGRYT3hIM09icWg5WC81?=
 =?utf-8?B?SzlEQndnK2NZZVBQeDcxb1RUQkJpd0xBdWRjVDlqckVuNlhNMmx2UzlsbTJh?=
 =?utf-8?B?Y3k0d1kyWHZSbjdxUXZvMEtLMmFuTFBQTnU0d1NuMnozMkN4K3pDY3JnaGlW?=
 =?utf-8?B?bUlHN0R6VXpYTU9FNVNvOUROK0J3UWJsSVcwcXU0SjdMc1VMN1Y0OE54NzNV?=
 =?utf-8?B?OVJMZVpQN0lwSnAxTFBrNDE2eG91Ymdza25DcGFUTWpmcVc5dW1tOCtVYmUx?=
 =?utf-8?B?MDhLeDl6cXBVaTdiWXNqUmU2TUpjeTBySjExNjVvbWpTaVNjZEtZRlJHQzk3?=
 =?utf-8?B?YzFxYlNNaDFVVG1ybXROR3RTSHRhZ1BiVzRodG1rNkQvRitDRDJ5NGN0WGpH?=
 =?utf-8?B?aUY0U2I2L2UvMy92RFMvYW9ONXZMQnI0TWhIT3NJbG52Wmt5T1F4VytXSGUw?=
 =?utf-8?B?VzhhV0lSa0ZpZDNJQkl3ZXJjemNiRG55TWNCZXd2NEpVUGxPZFhUcDlqcWR0?=
 =?utf-8?B?UUUwam44YVcyZzJHTWpyUWI4UXp3Zy85c041QTFuRDBKYnM4eVFWb0lySHUw?=
 =?utf-8?B?aGo5bGcvNWNaV1RaQzJ0Sm52Ri9BLzV2dE1LNXQ2dlNEYmdZdDVzZ04vUHpU?=
 =?utf-8?B?OXN4T3ZVbGZoQ08wZW1VVDY3clJ1bk9YVnJ0ekZRc1hSSEM1ZmowUWh1cHhs?=
 =?utf-8?B?QWtOaHJtOW93blNwdldmTE5EdGNHR3gvd1hSSEthM0lTM2hZRm1yV1ZXd3RO?=
 =?utf-8?B?RmswYkw0VG5vRDViUW9jQnJpdFBpVWdkOWVOYTVMVkRsSTFyMUtXVlZTMmZh?=
 =?utf-8?B?cWRVMXZrVjlJQzVVSXlkam0rRXhURitlSURob1BXdC8zOFFjSjBXaUhLL0Vk?=
 =?utf-8?B?dWlybVBJSkt5Yk96aVdNQk5EOTZnWGxaQ21wRm5ETEUyaVUweUpvOHkzcXJI?=
 =?utf-8?B?UEpQejNNWlRLdFh4Q2R2RXZ3OVJ2UmhPZU41QS9KbW1PdjV5K3BnMlJjZ2tG?=
 =?utf-8?B?cWZzYTNjTkxwNVIyL25xREtiZ0VjeEU3eER1SXhrcVpMbkJFSk84aCtHV3hP?=
 =?utf-8?B?cnhuR0s4QldrM1pUbkxBV3RIYVNjeE0xYlRNZUxrcFRsT294OC94MW14M1Ux?=
 =?utf-8?B?Sk9RWjUwQlEwY1RNWWFjM3Z0bTY1STR3RGxKaVluSWdnYnFBc2MwcW1MSDd4?=
 =?utf-8?B?aVdxL3FxenlCajBydi9Id2ZzNy8rUjN3QzJicjhsbjZJY2pyaThnOEtTSmZE?=
 =?utf-8?B?QWFVUUVWb1c5blRMbkpFS0VZcmtYSCtKTEovd1pTVE1aR2pKZjBESC9LTkZL?=
 =?utf-8?B?Z244RFcra2dYNm1LelZySVQrcFF5OUs4R21vOVhiamFibzRoT0tId2pKek5E?=
 =?utf-8?B?YktjKzdOdmFJdDkyTFZUYVU4Qmh4TVRFWWFuRUoxZHlyYXNhb2xjZzBMTFY5?=
 =?utf-8?B?Q2lkdm1hQXZUN3diODQ1YUR0RlFHNTBkL2tETndTMTAwYXFSb0dxVUs1eXQr?=
 =?utf-8?B?NDd0NWhSaTJaMTVzOWpIcldUaUt0WVdFQ3JkSzhVWW4rODFpcEM4YThvaVRz?=
 =?utf-8?B?c3JvQjAyYU9HV1R0SzVJdEJ3am9QQXJyT05YVVR1cXlVbHZCbVQvYjg4UnZp?=
 =?utf-8?Q?xCYVmpilafvlXKOt8y+MT6wq57KbaRHM6jwnx?=
X-Exchange-RoutingPolicyChecked: XkvzuLl7FQho85hggGA+1Mj1VAvecVt0d+/ItJLEBEc2Z4NP7/dfm7QMqdOgRyjGcMT+zzWnZC90SQZtRSt62lZcS5Ap8htXID3JqSdnaeSN4iCLNQfLxk+d5jyzKOXymjhIIvSusXPHgt5BEAgjCAzJIQNWu0xRQu9j8QHMI0fgNgOYDL96FfGdZmYOGKeZsydjmdKcZ9U95pIDvgGKMB0p+kv88aYvK6MSHI0rx6w/axp92bRY9TLhbHKKsBGlyFzaBspceVpNDmG1RtzI3ct1NtJGGcqA8GPGEdoRbno14CikrbkIIu9eVG5jWKI8CiXSgw1LwA1mOO058elYtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f0f8892c-3e41-455b-1503-08de8ef50b52
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:13:44.4508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zHA+QmkwjIwWxw2RsrVIqBIRHOI2X9MX5LpinShNkDTixjSE3g2/3nnCUVTrky9yA9nT0cadAMYqDKeNomMRJv/wFdHMWvmSxmjwXGrsdjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 23F86364E41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Initialize writeback connector initialising the virtual encoder
> and intel connector. We also allocate memory for drm_writeback_connector
> but not the drm_connector within it due to a constraint
> we need all connectors to be an intel_connector.

Not true anymore.	

> The writeback_format arrays is used to tell the user which
> drm formats are supported by us.
> 
> Bspec: 49275
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   .../gpu/drm/i915/display/intel_writeback.c    | 126 ++++++++++++++++++
>   .../gpu/drm/i915/display/intel_writeback.h    |  17 +++
>   3 files changed, 144 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b677720a1c2d..1e9140e7713c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -315,6 +315,7 @@ i915-y += \
>   	display/intel_vblank.o \
>   	display/intel_vga.o \
>   	display/intel_wm.o \
> +	display/intel_writeback.o \
>   	display/skl_prefill.o \
>   	display/skl_scaler.o \
>   	display/skl_universal_plane.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> new file mode 100644
> index 000000000000..73101ee17d74
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#include <linux/slab.h>
> +#include <drm/drm_atomic_state_helper.h>
> +#include <drm/drm_writeback.h>
> +#include <drm/drm_modeset_helper_vtables.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_encoder.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_connector.h"
> +#include "intel_de.h"
> +#include "intel_display_driver.h"
> +#include "intel_display_types.h"
> +#include "intel_writeback.h"
> +
> +struct intel_writeback_connector {
> +	struct intel_connector connector;
> +	struct intel_encoder encoder;
> +	enum transcoder trans;
> +	int frame_num;
> +};

As I understand, this struct sits at the same hierarchy level as struct 
intel_digital_port/struct intel_dsi.

Something like the following might fit better with the existing framework

struct intel_writeback {
	struct intel_encoder base; /* DRM_MODE_ENCODER_VIRTUAL */
	struct intel_connector *attached_connector;
}

I am not sure what is the implication of this for the rest of the 
series* but there are already signs in this patch that the current 
structure does not work well.

For example, kfree(&writeback_conn->encoder) is freeing up an embedded 
member.

*My guess is we should be good as long as we attach the encoder and 
connector properly.

> +
> +static const u32 writeback_formats[] = {
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_XVYU2101010,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_XBGR2101010,
> +};
> +
> +static int intel_writeback_connector_init(struct intel_connector *connector)
> +{
> +	struct intel_digital_connector_state *conn_state;
> +
> +	conn_state = kzalloc(sizeof(*conn_state), GFP_KERNEL);
> +	if (!conn_state)
> +		return -ENOMEM;
> +
> +	__drm_atomic_helper_connector_reset(&connector->base,
> +					    &conn_state->base);
> +	return 0;
> +}
> +
> +static int
> +intel_writeback_connector_alloc(struct intel_connector *connector)
> +{
> +	if (intel_writeback_connector_init(connector) < 0) {
> +		kfree(connector);
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
> +	.destroy = drm_encoder_cleanup,
> +};
> +
> +const struct drm_connector_funcs conn_funcs = {

To maintain consistency with the style used for other connectors

intel_writeback_connector_funcs

> +	.fill_modes = drm_helper_probe_single_connector_modes,
> +	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +};
> +
> +static const struct drm_connector_helper_funcs conn_helper_funcs = {

Same,
intel_writeback_connector_helper_funcs

> +};
> +
> +int intel_writeback_init(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +	struct intel_writeback_connector *writeback_conn;
> +	struct intel_connector *connector;
> +	int ret;
> +
> +	writeback_conn = kzalloc(sizeof(*writeback_conn), GFP_KERNEL);
> +	if (!writeback_conn)
> +		return -ENOSPC;
> +
> +	encoder = &writeback_conn->encoder;
> +	encoder->base.possible_crtcs = 0xf;
> +	ret = drm_encoder_init(display->drm, &encoder->base,
> +			       &drm_writeback_encoder_funcs,
> +			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> +	if (ret) {
> +		kfree(writeback_conn);
> +		return ret;
> +	}
> +
> +	encoder->type = INTEL_OUTPUT_WRITEBACK;
> +	encoder->pipe_mask = ~0;
> +	encoder->cloneable = 0;
> +
> +	connector = &writeback_conn->connector;
> +	ret = intel_writeback_connector_alloc(connector);
> +	if (ret) {
> +		kfree(writeback_conn);
> +		return ret;
> +	}
> +
> +	connector->base.interlace_allowed = 0;
> +	drm_connector_helper_add(&connector->base, &conn_helper_funcs);
> +	ret = drm_writeback_connector_init(display->drm, &connector->base,
> +					   &conn_funcs, &encoder->base,
> +					   writeback_formats,
> +					   ARRAY_SIZE(writeback_formats));

Probably means that we have to call drm_writeback_connector_cleanup() 
from somewhere, which is missing currently.

> +	if (ret) {
> +		intel_connector_free(connector);
> +		drm_encoder_cleanup(&encoder->base);
> +		kfree(&writeback_conn->encoder);
> +		kfree(writeback_conn);
> +		return ret;
> +	}

would be nice to follow the standard pattern of goto err instead of 
having this code block here.

> +
> +	intel_connector_attach_encoder(connector, encoder);
> +	connector->get_hw_state = intel_connector_get_hw_state;
> +	connector->base.status = connector_status_disconnected;
> +	writeback_conn->frame_num = 1;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> new file mode 100644
> index 000000000000..5911684cb81a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_WRITEBACK_H__
> +#define __INTEL_WRITEBACK_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_display;
> +struct intel_writeback_connector;
> +
> +int intel_writeback_init(struct intel_display *display);
> +
> +#endif /* __INTEL_WRITEBACK_H__ */
> +

