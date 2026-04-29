Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HMdDa+t8WmwjgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:05:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842634902C7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DF210E0DD;
	Wed, 29 Apr 2026 07:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpAKfhd2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE0110E0DD;
 Wed, 29 Apr 2026 07:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777446314; x=1808982314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E224ycKlQsul4D7+gjyHEJCCubdcE3x2EJA+J6ObBaY=;
 b=RpAKfhd2bhkHwlvpU0GO9wU3c67Ea1+JGNL/JZBlyqu0q+Iq0P38MEXq
 D+aWj5zGFDuWPcadai12amyRfCsd5DDh3yUyX5ktGE4Sz4t+eFoQGGmMI
 0aBs6HY6vKuWXXoD6MbJ4xy6tfDHrYr2AKypRi7q2H9JiTg9EM/BA5yap
 WSgjxqzigWlYwxRgjO+K5ZpMZfBTbK2DZOjP0F3FvCCVEOD2BmqrPMDSB
 kZ3Nc0wwFIVjtIiUVRGWmX+6RiE9584j2X+aIQP/ukhSRP+3NbrwWdSlL
 aXCu1Zr3LhOSaY30zrYNSJFe3pdAFkGBQ+jBBBobwwuk3zGEtOOWL86Ky A==;
X-CSE-ConnectionGUID: TAudx0P1Ty2uzS9JvJGupQ==
X-CSE-MsgGUID: 9FcUMpFVQKeNWfDrci3jKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="65898762"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="65898762"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:05:13 -0700
X-CSE-ConnectionGUID: wmcc36hfT+WkEJ4myxZLBg==
X-CSE-MsgGUID: cdsqL1p1RlWdA002488ZDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="229589966"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:05:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:05:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 00:05:13 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:05:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IcYsl4ccbWGbKUJTsjNbNbsUEwRm6cBfsT43eCpBbFa4yfEwCopQ92iLyFghpdbz/LkVSixDiYbZ4Yt9z7pucym5VSYCejjAqb5Ca37G7dm+bEVJH6h6HRpPphJap3KNCqIUDQM4GNQ9jnCP8/+8ECoiJocvrmN+FdtK1Nai2uDUXKEufgHqJNv0ZnwDlMJok0YYsrp0sghayFurGctza2SvR5zCTJ4aymaC94/En0fBe90pVXs/a+bD5AnNCk3zpvkyqHz/DsTKcj01y+vDkmGOPYnclQmueQtqMpO/S910u0/ggEzxuK8JHbPIayIxvTwM/GB0TpUGcaHqSgVfUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8+nXcAcsuHnUmlHZNZZ12M9U55v6SVaMJkPJZn8Y2k=;
 b=nbN+VXSKOnmvA8AVc+NQM0bUjoxmBn5zzedJb+Ft7UUn/z21pRuZAOZ2L0HuLvII5JSvmCGRrPOhf0VexGiglWSOmhS5JjBgasfVT8z0cBv3/0pXQz5l4gxH8wKaxmAg3Z+RHBjJBNDHXOAVom3UQSLLkfWNtkZ9XM2iMHFuPd0gY7Iod+Uf5H7H9fDNlX2/e+Q9CSfTWTCZUmcAZf41SYRwEAxAadXnGuN1F5Wk3Z9H5aM2BPF0icPYSZ18SbtxlUgcCXLaTve72tdsOTWE10AZIL/6V8dJ4J6cU/yw81jUs97Io0tseLYtW+Of+/XPbmGUQRDPYnWSU3YP2sa8Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH7PR11MB6908.namprd11.prod.outlook.com (2603:10b6:510:204::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Wed, 29 Apr
 2026 07:05:11 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 07:05:10 +0000
Message-ID: <7c63293e-8233-4428-b169-7b7038d73f2c@intel.com>
Date: Wed, 29 Apr 2026 12:35:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB80492B89EDB40A33C80851E7F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB80492B89EDB40A33C80851E7F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH7PR11MB6908:EE_
X-MS-Office365-Filtering-Correlation-Id: bba80f7e-aa35-4165-9937-08dea5bda73f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: LAEAXyqyw8OBoYQ+QMPu+3j8pUDOQyzgnSWNbk6IfyKEwbSNQzZK/wHd8Z6fM04+FlEOH4G3d1L/M0/xx+Fv806ZzfVJHkI+IA06ta4AdQ6D6cbh1D2rboMbs60sZeGiIv5d0lIgDNy2CjxQnOosxVruL0j2oC31SEZDxFE6UjPurvww5Zma+MTLqTiDoEjw2rEfsWZzoEa04RjYu5vHZQJsvTB+HgZajE4Wji+JcWMuuDksCbKnGdVhf2/Epr/CEORYd7gr6+flX07fNQoYbqSwqMY7QI14b4OaS6eMylK7fu8xBmCPb4UOApm5s2Fyh6DicIVQ3qQWOrSZD7z7qV23HL8/CA0yVJC+RwN+28hcG3TX4zqXAkvRjO/X/inicd+fitBUPy6dvzh+QRkp07faf9QuP2/ibga/YUAkS3NrFh/nymRV6+YRNbUKHH5Cvxv00UOX9S0zfd6I4howKdWN8hnNoS0kPIpr6pV/p4RItBAyFyH+rTZf2orhl8JCCcGXyBN3NkHrSVI0R33QjRz8v3x3Fe4Qy06oTeftnds5SzSu1zv2ElXZv+ViKrLLZ896z54Vub/MpYoxaa5EMyFOGAAYd38MZY4z6GhclJ7XENdsTVUu0l/hzq6QG2IOQ2uC7IfZdgtNVsDh2NheDxrjpVKyIG5bn0wi/AszV8wSkON5bHm9TalgR6vpm+QvKKgaESzMKNIo+rtUr31V9kyKJguzaVeBRRAf+8Q69sw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wk9LWklFRG1CWE1RM29ETEt2QVZaeXNUTldob0F1WkdLOFZMeldHV3NWdmdU?=
 =?utf-8?B?eUg0U3d0bnVYbmcxZkdSWjhYd0tqQXhURWlVeHZMNkxzN1k3a2ZER2hGcFFi?=
 =?utf-8?B?Ymw0WHRKbFI2eFFPVld6MEp4alZaY28wNzVwSk96dTFSemJCM0xEcTc1eXFT?=
 =?utf-8?B?Y1ArUFRmem95WlhOOG5QdG4wZ2toRFI4M0FqNTJJVGRxdkhHemNxeFl6by9X?=
 =?utf-8?B?TFExRzUvRlRpNm1Ha3IvVWMxYTN4R29xZ0VRTCtWUjVmcTEvMFRSTlF4dkh2?=
 =?utf-8?B?Vy8xVGltWTNneE5aVW1GOFluZ2RjT0pnMWRCbHhVZS9yRmFWUlZEUEZXRWd3?=
 =?utf-8?B?bVQzemhLWnZHbWNPYXRWK2JnR1BOU2hQbXo0VXVZYU51M2xHVUFEeFFCTjBa?=
 =?utf-8?B?cWs4WE10Y2w4cHdMUWxJNzBTdDhNNk80SjEya2NTUmp0STh1eUEwU1RZdzBM?=
 =?utf-8?B?R3BzVS9SYUwxeDI3NEI1dzdDTGxCK1dvVXlJQVhPaUxScnRic1Jjb2Ezd0FE?=
 =?utf-8?B?S2F2Yzh0NXZVUnhpdS84djNBRzVGRy9HZXh2WmVrVWVMQlFNTVdTemlpc0Fx?=
 =?utf-8?B?c3JydHEyaVduVmpJa2hyQTMzbXFQZ3JjSG4zRmpsa1AxbzEyQXY2L3kzdnEz?=
 =?utf-8?B?bFRCMnZmRW5xOHprTDhBTUdPYjBTN3VZK3ZySHZySG1TcDNQUnp2akNYdHJI?=
 =?utf-8?B?dzRyMHlkRUUyTHBIK3pEYUcySURLL1Z6ZUtaRG9NSk9GVzNia2tnSkJjK3I1?=
 =?utf-8?B?TkVFbHpzRDZlbzlkSWkrNHpHczJTOHFJUllmMDdwWGllQWVHeCs4VTJ0M1BO?=
 =?utf-8?B?VU0zdVZ5ZmNkQXYvbVErL0JLT2pCSmhla2VkaDlab2NVbC9sNlBLeVZaSTB5?=
 =?utf-8?B?NjVESmhWeFJmZHRicm9VdURiNlgrQ0ZWNXhneGhrbWJOcVBHb0ZmR3poSjlS?=
 =?utf-8?B?ZmhQNkl0b2dyUnloZmhuSTluZkhLbGpUbnU3S3BkRFZWOGgxSHVudXBBOXQz?=
 =?utf-8?B?MHZKRnp3Vnl2aVFuZFRObDJ1Zm16aXdHbzJCNU9BYUZ6VytMTlBadUROSDlt?=
 =?utf-8?B?WHJkNWpjU1ZYQVhsTjgvNDd3RXZKVE1kSC8zUmUxRzNNM0NPWmtiY0ZGZzN6?=
 =?utf-8?B?MmpoMWtoOEZZeWN3azdENEVVcDB6UHBOTGZ4ZTFiSkFPQUZsYitIWjkyUld3?=
 =?utf-8?B?RjBOcnBnalRscHNvdWJUZkFtV2JsQXliZWw0aExYMjQ3b1JLTXkwMDN5cTZK?=
 =?utf-8?B?MWhJZXdZR2F4V3FSM055NFBvZ0lpMXBMUzVTWWFjcWhrSHVSZHBSazlPOEJI?=
 =?utf-8?B?RzZ0UGkxQ0h0bTl0S015Z2UrK0NEcHFPZmZnbnZrZG1BcnZSTFhOTlBOdUFB?=
 =?utf-8?B?cjZ0MjMvV290N3orZjZTY2lGZGNmcnIrWGc0blJPOHZ3b0g4bVZQbWdRK0kw?=
 =?utf-8?B?U0RhN0dTNStRUmtsUzVMejhCT29hdE1LaGRIWWxzRytRWEFQbmdDbHUwRFQ4?=
 =?utf-8?B?SkJlaFp6VHBoZXAyRUhxWXM1UjVzVFlMNmd2aWpLQVpDZXNDR0Y3T0x6ZHNo?=
 =?utf-8?B?VnMxVVNqMnVCdlQybGlvb0YzY1RmK3RjRktIV09wb3NQM1lLb3NtTFNWQy9i?=
 =?utf-8?B?cnVsSitMTVVDK3EwSnc5RmdhVEpzTTNPWngxbXgzSGNDekx6Q09kMGF6Zzhx?=
 =?utf-8?B?ZUVEZkF6UVZCSmhRMi84aTFxTTZBN3l3eG5mMDRoZXJIdDQ3U2RZVzhuLzhK?=
 =?utf-8?B?bjA3UmQ2Y2k0Ykdick9ZSzlmc1ZGVmJVWmpUbUNjMEFYVy84cHFrSWFPY1Bs?=
 =?utf-8?B?c1c5bUFqL2l2cVZXdVRIRlBwK05mSjVUTldVL3NjSmxmREkwdXVYRE5UQTlI?=
 =?utf-8?B?OGNkTFNlM1VSbU5qZVVxM1N6RThxN0k3ZG9OMUtOK3FBT3BPdVFlSldmVXZQ?=
 =?utf-8?B?Zmp4VHZBUGUzOFhNeWQxR0FCaXVSZDgwN0h5dUxWQlpRck42SDZPODJwYzFL?=
 =?utf-8?B?cks0VE1KeE9jYUN6QjdFQTBhdGtaUEtEd3kxZEJNWWZ4N1QrVnZyMEF0cVVl?=
 =?utf-8?B?aUN3b0xOQ0RoUGltaFFFYTBNOHJYSjV3WjRkV25uSXFWcnk4STlKOEVnRUpW?=
 =?utf-8?B?TWRybHZnY3dZakIxZDZjcWF6T1NqRWg4SGxVSVVxU0d4TDJRQjdWMFVkOEVt?=
 =?utf-8?B?cmtHWktFMFZyYlBFY3kwMWZMVmlmanJoQnRCUTBwSzJENnlFSncrcllDSFhw?=
 =?utf-8?B?a1lBN2Y5bUMwTXhSMVFvekNaLzZLUnBCbTM4VzJBNXBCU0ZORGd0R2FsWXlz?=
 =?utf-8?B?SkdML2U1aldvNFZrVVcyVFB6UUd4bGwxOWJMVkFySDROTDFGV1FhWnFubHA0?=
 =?utf-8?Q?f+Spxot3tDpL7Y3zYJVBJYESx9UjdksBQfr2l0Q53ZeHI?=
X-MS-Exchange-AntiSpam-MessageData-1: hyxH970njWQm3g==
X-Exchange-RoutingPolicyChecked: rP2zdCkskhdmCSS9nQgmn8aHzRlXJ6g6ndPGzt3YuWnQBUpPyGnorrSQ5EO438hU7qhf0aqAL+Ynp1/3hvwi6c7ecj8XGCp/tkWcFeGcOAZ+2dAsngM2LtrGqJh5OHyh+/4XlrcbZwvOaRP9KE+DPLddJByYrk/yRh6cZRT3NugkI6zcP35exDCTKUnbCmcJ6oPG9sWMMNQYvNdFV7DolM62iU88rOUX3Dz3DonmWY2r1fn/fuYOpjh9cT/nwWFcJd/2t9DDvi/OL4q93puzekAAzyCsCBu3dfHs/FMquv/ihLMYCYZ4CvGahYLgtu7Mx/ebBak09PuVuMveXHKXSg==
X-MS-Exchange-CrossTenant-Network-Message-Id: bba80f7e-aa35-4165-9937-08dea5bda73f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 07:05:10.8130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l9Pu5elsIGj1dJV30yUlHa3ywVJ/Jq4o1pecxsHglilDcNrHyHDumqwkbKcCuW48Do959c2wgadEIBmxh+A7BqUYfmad1c7V/Y0YuihjjWbfiuheJjuJA+K/3K/pZQ6z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6908
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
X-Rspamd-Queue-Id: 842634902C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 29-04-2026 11:12, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, April 22, 2026 9:56 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
>> computation
>>
>> Compute DC3CO eligibility during atomic_check based on pipe/port
>> constraints and runtime triggers and store result in display->power.dc3co.
>>
>> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce
>> the DC entry delay. Otherwise, retain the existing delay and set default
>> DC_STATE_EN_UPTO_DC6 .
>>
>> Changes in v2:
>> - Move dc3co state from intel_atomic_state to display->power (Uma
>> Shankar)
>> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++++++++++++++++-
>> drivers/gpu/drm/i915/display/intel_display.h  |  1 -
>> .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>>   .../drm/i915/display/intel_display_power.c    | 30 ++++++
>>   .../drm/i915/display/intel_display_power.h    | 22 +++++
>>   5 files changed, 141 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 674a4ece6d0f..de493d04a622 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5870,6 +5870,69 @@ static bool intel_pipes_need_modeset(struct
>> intel_atomic_state *state,
>>   	return false;
>>   }
>>
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state
>> *crtc_state) {
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B; }
>> +
>> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	int active_pipes = 0;
>> +	u32 trigger = DC3CO_TRIGGER_NONE;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	for_each_intel_crtc(display->drm, crtc) {
>> +		trigger = DC3CO_TRIGGER_NONE;
>> +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>> +		if (!crtc_state)
>> +			crtc_state = intel_atomic_get_old_crtc_state(state,
>> crtc);
> New crtc_state is overwritten with old_crtc_state and used below. Not clear about the need of new_crtc_state.
> Maybe good to explain with a code comment how new_crtc_state and old_crtc_state used in this function.
> Better to keep separate variable new_crtc_state/old_crtc_sate  and use as per need.
>    

The assignment from old_crtc_state occurs only if intel_atomic_get_new_crtc_state() returns NULL.
For the DC3CO 'allow' decision must consider 'untouched' pipes as well.
This design maintains a single variable to simplify the unified evaluation logic.
I can add comment if needed.

>> +
>> +		if (!crtc_state || !crtc_state->hw.active)
>> +			continue;
>> +
>> +		active_pipes++;
>> +
>> +		if (active_pipes > 1)
>> +			goto done;
>> +
>> +		for_each_intel_encoder_mask(display->drm, encoder,
>> +					    crtc_state->uapi.encoder_mask) {
>> +			if (encoder->type != INTEL_OUTPUT_EDP)
>> +				goto done;
> intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) can be used which will use crtc_state and the above looping can be avoided.
>
>> +
>> +			intel_dp = enc_to_intel_dp(encoder);
>> +
>> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
>> crtc_state))
>> +				goto done;
>> +		}
>> +
>> +		if (crtc_state->has_lobf)
>> +			trigger |= DC3CO_TRIGGER_LOBF;
>> +		if (crtc_state->has_panel_replay)
>> +			trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
>> +		if (crtc_state->has_sel_update)
>> +			trigger |= DC3CO_TRIGGER_PSR2;
>> +	}
>> +
>> +done:
>> +	intel_display_power_dc3co_update(display, !!trigger, trigger);
> Not sure the usage of !!trigger, maybe just pass the trigger and if it is not zero then set the allowed inside intel_display_power_dc3co_update().

The use of !!trigger is intentional.
It's commonly used in the kernel to normalize a bitmask to a boolean.

>
> Regards,
> Animesh
>   
>> +	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
>> +		    !!trigger, trigger);
>> +}
>> +
>>   static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>>   				     struct intel_crtc *primary_crtc)  { @@ -
>> 6544,6 +6607,7 @@ int intel_atomic_check(struct drm_device *dev,
>>   	if (ret)
>>   		goto fail;
>>
>> +	intel_dc3co_compute_state(state);
>>   	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>>   					    new_crtc_state, i) {
>>   		intel_color_assert_luts(new_crtc_state);
>> @@ -7415,6 +7479,7 @@ static void intel_atomic_commit_tail(struct
>> intel_atomic_state *state)
>>   	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =
>> {};
>>   	struct ref_tracker *wakeref = NULL;
>>   	int i;
>> +	int power_async_delay;
>>
>>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>>   		intel_atomic_dsb_prepare(state, crtc); @@ -7621,11
>> +7686,28 @@ static void intel_atomic_commit_tail(struct intel_atomic_state
>> *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>>   	}
>> -	/*
>> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> -	 * toggling overhead at and above 60 FPS.
>> -	 */
>> -	intel_display_power_put_async_delay(display,
>> POWER_DOMAIN_DC_OFF, wakeref, 17);
>> +
>> +	if (intel_display_power_dc3co_allowed(display) &&
>> +	    intel_display_power_dc3co_supported(display)) {
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC3CO);
>> +		/*
>> +		 * Use minimal re-enable delay to allow DC3CO entry on
>> +		 * the next idle frame, unlike the 17ms guard needed to
>> +		 * prevent DC5/DC6 toggling overhead at 60+ FPS.
>> +		 */
>> +		power_async_delay = 1;
>> +	} else {
>> +		/*
>> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on-
>>> off
>> +		 * toggling overhead at and above 60 FPS.
>> +		 */
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> +		power_async_delay = 17;
>> +	}
>> +
>> +	intel_display_power_put_async_delay(display,
>> +					    POWER_DOMAIN_DC_OFF,
>> wakeref, power_async_delay);
>> +
>>   	intel_display_rpm_put(display, state->wakeref);
>>
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index 1e76a455d7c4..2795e4b9e799 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -521,5 +521,4 @@ bool assert_port_valid(struct intel_display *display,
>> enum port port);
>>
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
>> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> -
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index c5a07090cba6..13e9b986b6fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -535,7 +535,8 @@ struct intel_display {
>>
>>   	struct {
>>   		struct i915_power_domains domains;
>> -
>> +		/* DC3CO eligibility state */
>> +		struct intel_dc3co_state dc3co;
>>   		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
>> read */
>>   		u32 chv_phy_control;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index f626803bbd88..ff1915be59c9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -372,6 +372,35 @@ bool intel_display_power_dc3co_supported(struct
>> intel_display *display)
>>   	return (power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;  }
>>
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	dc3co->allowed = allowed;
>> +	dc3co->trigger = trigger;
>> +	mutex_unlock(&dc3co->lock);
>> +}
>> +
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +	bool allowed;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return false;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	allowed = dc3co->allowed;
>> +	mutex_unlock(&dc3co->lock);
>> +
>> +	return allowed;
>> +}
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains
>> *power_domains,
>>   				     struct intel_power_domain_mask *mask)
>> { @@ -1051,6 +1080,7 @@ int intel_power_domains_init(struct intel_display
>> *display)
>>   		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>>
>>   	mutex_init(&power_domains->lock);
>> +	mutex_init(&display->power.dc3co.lock);
>>
>>   	INIT_DELAYED_WORK(&power_domains->async_put_work,
>>   			  intel_display_power_put_async_work);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 05880e9da89f..0b1a06f88ae5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>>
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +#define DC3CO_TRIGGER_NONE		(0)
>> +#define DC3CO_TRIGGER_PSR2		BIT(0)
>> +#define DC3CO_TRIGGER_LOBF		BIT(1)
>> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
>> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
>> +					 DC3CO_TRIGGER_LOBF | \
>> +					 DC3CO_TRIGGER_PANEL_REPLAY)
>> +
>> +struct intel_dc3co_state {
>> +	struct mutex lock; /* Protects allowed and trigger fields */
>> +	bool allowed; /* DC3CO eligibility result */
>> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend
>> @@ -187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct
>> intel_display *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display
>> *display);  bool intel_display_power_dc3co_supported(struct intel_display
>> *display);
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger);
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>>
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain
>> domain);
>> --
>> 2.43.0
