Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DBEB57DF2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB5410E2B5;
	Mon, 15 Sep 2025 13:52:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1FDVEeJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4700410E2B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757944347; x=1789480347;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=VGm7w/MBBGgEU+la/zr/xm4gPn5hX/jrbJ9ZnSUF1fw=;
 b=J1FDVEeJBDcjweZIqoqtDEVcf7Pnj6Gw+YrAAKJrNob9OWERmLrJOCEI
 0+lqV5eE8wRaA8LHXYudB3I5y6MeJ2CnSvDD4haBpVG1sKK3kyEMedJ57
 Tkdz3kpUbhSLYO0clioTy7oY88tP3NpgluBLRFhNWqPOSHwQZhgUGMOzX
 pwVpcMollhaxzwI6UsIOq+pEQBl59MkxLoA2qawWMT8+/SgZul/eJPUa/
 TBiFXB0BTgHsQH9Rn2g7WD7HX5gTPSf9XMRZrlrRNjPZ7hscMub2alWqC
 K3u6pHdhjOOmrsSDHWzp4wkMog2qSwR3J77ThpLvxC2EasFqmCYfYHjQh w==;
X-CSE-ConnectionGUID: LFcf3GG6QuaB/4i6TYWxrw==
X-CSE-MsgGUID: 43K3xaoQSx+yVeUGczeqNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59424236"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="59424236"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:52:27 -0700
X-CSE-ConnectionGUID: PB01jwngQ8CRfk/UuUUN3g==
X-CSE-MsgGUID: g0xn+nlOR0uL4hpK2pEBxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="179893035"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:52:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:52:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 06:52:26 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:52:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NW7W/m1wp39Gw1weAqHTBbAlVYYdyRkzWM2SxInQLmGbT7c43yuVQcRVWdOl8vHM4hLeTk2yKymTLgMjWE2N3hFrk8Vi02e/79jS2NALiNXUWOHFHAczkuVx4d4X93sSH93glEljFh10TyhpsbjONOanBPQl/u6LdQPOJV/tltdK5GIIfdcCKc3I9wpaGDZIayL7s3JSs5MJ2ZE0MbBuHuVlPpxEfav5c3D41ggcmcoNNlqGjiT8HqZcj+KVa1VnyRfuEhOqaUeuHTcPkk2O+KUcQTkPLDpFQW1VW5mTkhmB1MMWtFqlsGACK6AGIpqc21KBioW2SNJY5o/5obJCEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BAFD3Fvx3nWvQR1Q69JG6LTDknGil/oO2qj+QYvfHtc=;
 b=I4PsszFSNoWVBc24+bFh09c8uzY9b3vF0UsYKfnDc3cBndjlv0PZiqVG+qa55hQcGVwvPO78NXEDBcKpWdoOzYFIUbgWXvEzQbOcP5v//rXxg1Wq0beKP/K6vF2uvkZ6sIOaZA+97zT73C6yBA8k9HXQvP9ebEX7tBX+st+BiA1ThbsQSNpThFoh4S8w+qqj0InEZxJ6pJGx6Zjj2FWVQt3OOqkZV2lCxfq3Vgvcq1IKUlK0gjI6jaskruMik4ZPc0Kiwkdmc0r65TVD3JY4jZ9eUmsiToBpL5z9lOWQcJNvx+g15OGuYMS5lmtTNSQLgGo6GOburXwK+I4IgX/jJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB6621.namprd11.prod.outlook.com (2603:10b6:a03:477::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 13:52:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 13:52:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <175794363121.1613.6250224933429429857@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <175794363121.1613.6250224933429429857@intel.com>
Subject: Re: [PATCH 0/3] Add WCL as subplatform from PTL
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <matthew.s.atwood@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Mon, 15 Sep 2025 10:52:20 -0300
Message-ID: <175794434072.1613.7031699748677413383@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0082.namprd05.prod.outlook.com
 (2603:10b6:a03:332::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB6621:EE_
X-MS-Office365-Filtering-Correlation-Id: e6a497d4-4182-431d-25b3-08ddf45f198b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUwyblI5NTVKVFVQTG1BK2JlNHhGS2FqMzRhVzg1LytYQUVuVnJFdmFDYWgx?=
 =?utf-8?B?b3hqblFnaW0rcHlwMWNjaU9rTXpVSlJRdG1XQWVBQms4bk5paHp3OGlQeXFE?=
 =?utf-8?B?R3AvdnMwcXJvQmFhcFY0dzVDYVMvc0Rsa3Q2Sjg0cnpQQldqNkkya2RXNkxo?=
 =?utf-8?B?b1krRWhDTVJqQy9oTVBRQW1teDN0MGZLRVpOUEJSQW9aZ3doM3J3Z3JleXhZ?=
 =?utf-8?B?Yng3SGU3OHZkcE1sSjdlaVBocGlOSWpCMU9xMDUvcTRhdFl0YnIwdExEQUor?=
 =?utf-8?B?czhXL2ZOT29uZE02ck9naHc0REkyTW50d3RyV01SZ0ZvOVhhamorbWpseWYy?=
 =?utf-8?B?MXAvUmtBQkw1Ni9NTWRrbTI4R2ppZWUzOVphaTRld1F0Z3hsRzk3a2dDUVI1?=
 =?utf-8?B?T0laWTFqVHcxWlFZKzFVOVhQRjZrRjNsRWlDbUczVHp2MDVjV0tpSjFldzJT?=
 =?utf-8?B?czhsRXZOVjRPUlIzOWROamlQTW5TWVVoS1RCYmxFSDIwL0tHY1BUYzYzUzZh?=
 =?utf-8?B?WXo1TnVYeUZXWS9aUU9sRFNGNkxhQzJaWGg4MGFGcDJwZHRmdkdYMXloelpY?=
 =?utf-8?B?T0FjbGxjNytzd3BMa2kvSytxR3NFdzhuSWR4eWZKYmI2NnYyQkRCb0F5Mktr?=
 =?utf-8?B?cWd0RmQ4WUpQd2RMV2FJZWpGNGNyQ3JnZTk0UllwNkphOVpSdXpLNWpxejBC?=
 =?utf-8?B?Qm1QTWRmNmd2QkFidGZDT0FQdUpjaXR3ZDZUZUFSNHQ5OWxIU3UyeDVJUWpC?=
 =?utf-8?B?VVlJb3RqWmcyZzVveFpFL0ljV0pmVVBocW4zcVFtRy9wQnR0ald6V3lndUtn?=
 =?utf-8?B?WmR2U1JJYmpZNnVIMVptWVVXbzVldm5vcnIwVTlUWC96RWlsUnA4Z2FWcyt4?=
 =?utf-8?B?LzBmcVhwclgvWVNnejdqODdsTU8zRVp3dVRaVFNQQjZBaklwUzBhMkFlSzZD?=
 =?utf-8?B?VTBnR1BKazE5bXY0byt3cU5sYkdPcUxMdG1wNnNBV2VSQVBPdnphVVRTT3kw?=
 =?utf-8?B?elRVeXk5N3c4VWVGa1R3SjFoZ0wvRTRsaVpHT1EzeThMOEtuSUhXMUhYNCs3?=
 =?utf-8?B?VlhmRVdMSGRnQnFXSDJvQWNrd2FoUmZ2azBkTlZZdHFBR2gyWnNPV0hKT0RM?=
 =?utf-8?B?M1U0NTh2Ym5qQkNSZ0xsVTZmNi9GYzZZUWxBTkRmbHB0ZjgwTVdPQlAvQ1B5?=
 =?utf-8?B?aUxnNGduSXBtaFhJTDN0ZEJJdWRPeDNkenZCNzEwQ3pBVFJqVUdsYTA5Z3RT?=
 =?utf-8?B?cm9qUnRyZ1lFSjFIQStwZ0dMQVZzdENhNUdCYmw0OVcyRkRxRVdIa0FDU3ZG?=
 =?utf-8?B?bVNqbGhiU0hROVBNSzdDSTMwZnlxTmg5c0UxL0JXdlFVT2NrTzY2c0JyVjAr?=
 =?utf-8?B?dW1STDd3dk0ranlFTGVXeEIxYWVLeUYyTjBQQ1lRWnI0T1pnQWQxR1d6MDJT?=
 =?utf-8?B?dXJ3SHNxRE9OYjE1MUltTldQOTlwYWtQakFKZ2h4Mi9hOU5kRmdrdGJtMCs4?=
 =?utf-8?B?RWw5cC9YcHg3bDdKeGJtNXBaZGVRcUVDZS9Va3grOUVwbG4xYmwxQlpqQnY3?=
 =?utf-8?B?UVZkbzQ1ZEl6bFZCT1dzcDZiMTM1VGtNd3B4Ukg3RXFWS2NJU1RHbnN4MmxB?=
 =?utf-8?B?Mi9Pai85aFFNc29USW43UENsOGJmUWNzWkJsMVRWSkp5d0FxaW5PTW1CZlBI?=
 =?utf-8?B?aXhNNURqb1diU0k4bnVpTXpxaXdZSXJMYXFkTm8wSThDWmdIcFZaU2JoNlUy?=
 =?utf-8?B?S0VHZE1LdWh3eWo1elQrZ3NXSVFkLzdacGpRcDd2cGFzNGdBaXpNY2pXcnRQ?=
 =?utf-8?B?emJBT3M4RjJTbnBoMHpqRTlnM2tSZHV5dHFQWDJsTUFTa3cyRVhSMG1hNHJ2?=
 =?utf-8?Q?0rM7SgcPpXihl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTRYNnNuSk1sTVBzdDF0a0s4SU5EVUxkay9oSlkwRURGZWpXbWFraXNPaTk4?=
 =?utf-8?B?ZW5scG81eExmQlRxd3ZmYjNXdXJOcnZRS0t0czBOWldEWnFFVno1Z1Btek1N?=
 =?utf-8?B?SWZ6blFyc3ZJL0N3SE1ZMmtSeHJCR3UwSHp5RnZMSnBSdDV0bWFFbzBxWEl6?=
 =?utf-8?B?Y0swd1VYUE05eHpmMlBOWEN3U2NZS2xDQUJGbWVvMlZnZEMwZmQ3YWZ6ejdR?=
 =?utf-8?B?elJrSVhBZUR4V0FQVFpleHBWTTJzWHJOZ1VkbFdRYXIyZFVTUmcyYkIrbVFm?=
 =?utf-8?B?NDBOSGVWdmttaFZoc3VxT3UrMlM4YmxTc055QkRDc0VVbjk1b3pOcDhRSFZ4?=
 =?utf-8?B?c1ZkdHNJR2laLzEzUDhSd0hqVDlsSTZERHFFQXZHZWhubWYwL0w5N1JidTRQ?=
 =?utf-8?B?MTZmalVLWm5zWjcrbGliZks2RU8vSVB4Z0Zxcldxc0R1ZWpYRU1ZNU1tWThx?=
 =?utf-8?B?OWliV2cvWHBBOWFaVTd4cDF0VXpxam45THZFd3BYTGhQSlIyNEw1clRGK1hW?=
 =?utf-8?B?bWNDZ1hHb29LVEhlVS9NVitVQ2pMRitrUlk3eG54RU9SenI1ZDVRU2hNQjR5?=
 =?utf-8?B?b2p6UzRsbkh6ZzlsMG96MEExZXl4NjRWK3RxMkk3aXRPYkFjVWVOT1V0Nmp6?=
 =?utf-8?B?aTdXSlp4Q3oyOUlDSjBENTJWWkRiZk1LS2lNTVRyMjVac2doYmZXbjFyTFNl?=
 =?utf-8?B?Yi9SWnhJYjc0d2xiWmFqRTBmcy80OEhWUHpRVWZuZGtsVDNvTW5Ibm1JalF6?=
 =?utf-8?B?cmdNSi8rcjVmeEZwSXdNR1F4b1lESlRTMS9uVDhxM0JuYnRuMVJmL0JjUWhU?=
 =?utf-8?B?OFBmc090Zit4VXdJMmh3cXk4d2FlMytrazVhT1VsNGVzRFdwN3dvcGljL3d2?=
 =?utf-8?B?Qmg1Y0xMMHRPN0ZYTXdkTWRaTmw3Vm5jNjBhbHRUZVN4QlUvNG1QWnNIb1pH?=
 =?utf-8?B?UEsraUZzZllkWTg5UkVBTTk0MDhiR1hDUFpoNFRtU1o4d1lieUlRQ0E2cTdy?=
 =?utf-8?B?KzZyTVMrRW8zbFBHNFZOQzhaNWtGMGtKNURLRno4MDQzc1VPZjc4ZkVZRzhY?=
 =?utf-8?B?UGhabHRrM1BIaGRSYjFkYlluNTA5M3o1Y2pnNGNpNkVUL1JtSTcvWlV0dUtH?=
 =?utf-8?B?YXpneHFrejVWV2xZWU9rN0ZScGRNOXU3aUl2ajZEakhsczFxcmhTakl6RWdp?=
 =?utf-8?B?S3JiYmJ6d1N5TjNsWlJZa2NoL2cwS0dTdHdVOU1VR05jQnljaWVQRkE4OUx3?=
 =?utf-8?B?VmRaamJ4UUNXallDNWZWOHVzUnJvNHpLdTYwQXpROUFCaDdXaThPa1N1MkF4?=
 =?utf-8?B?Z1dKVUI0S0N3NzJVRFdwK2FqZVlhaGVCQndnRDlBVW9WdWJEY09RaktMSGh0?=
 =?utf-8?B?MjZsSzlEOE5zNUtwRjRNeDRoQVRqZU90NElhaytNNTUvV0RuUmd1dTJUVjBK?=
 =?utf-8?B?aE9yanM2UGxNUGJtd0kwTFZFSnZuc0NPbjZpaFl6dWJXL05PZFlvVkI4dUZB?=
 =?utf-8?B?V0VnaTBhdy9rQUo4THhGZldLa2tWRW1zSjd4Wm5hVUJhRHcrMWZOS00zbjFl?=
 =?utf-8?B?a3VPNFJCTHBIY0o5eFlGY2hibHdaNEtuNWdmM3ZqWk5lZzBEMCtaRDhVWFhQ?=
 =?utf-8?B?MmdkUFJoSktvRFZ6cTA0Tm1lVjRGb2FXM3lOS2Q5cTdMUFB4V1AzK0pwS3hm?=
 =?utf-8?B?eFRYOU4zM2Jwajl4WTN5OVZQQlhET093OUpXM2JLTnZQNmF4Yy9iUVRrWDhP?=
 =?utf-8?B?bVNYdjVmTGsvTTFnWDMyTXNURW9zV1prZ2pPbmFwT01aNXQ1MXRTR3BXZnBK?=
 =?utf-8?B?K3RieFVBdUhWSm9wbzFkWEdlYk9tYm1QUkhlWTZPaXRDT2VsMU5xRk4yZS9Z?=
 =?utf-8?B?WTQ5VEg1VUZ5OFB5bkVzMzcwSXFWb2tmS2RvZzZieWNCSWx2NHMvekJvNVRa?=
 =?utf-8?B?L3NFU2FCUTdlRlRMQXNGNTZtWUR0L3YyWjVuSnpFR3M4eGlGaHZ2em5Xa1Jl?=
 =?utf-8?B?MWhFd2FNWUloaEhvcmV3VEVqU3dFNFc1YUQ3SHFoRytPSjc5Rm1zbHBVMlVT?=
 =?utf-8?B?TnJ0b2pVajVFOTlHT2tMcDBPK0w1UjI2bkpibmZlVEtkWHkwc0hrK255Ni82?=
 =?utf-8?B?c2pVeHVBNE9nRUxBdDVWKzZ3YkVlb0hLYkMxZ2I0dVRaZDI0Q3RWSUVxZk5E?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a497d4-4182-431d-25b3-08ddf45f198b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 13:52:24.4884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rpnhEgFOLcmW+EwpzWvYQdeq4DloG1DzKJvEuUfUcmVWZUM4X0E5jTv55kUzUImv1R5KfUoMHH8sWM4X7OFNog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6621
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

Quoting Gustavo Sousa (2025-09-15 10:40:31-03:00)
>Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:39-03:00)
>>- Add WCL as subplatform and update the definition struct.=20
>>- Update condition required to distinguish WCL C10 PHY selection
>>on port B.
>
>I have added comments in individual patches. More general comments
>below:
>
>- The title of the series is a bit innacurate as it just refers to the
>  prelimiary work for the final objective of the series. I would simply
>  re-use the original patch's subject because (i) it would help people
>  see this series as a next version (considering that you used v2) of
>  the originally single-patch series; and (ii) it is more accurate
>  regaring the final objective of this set of changes.
>
>- This series should also be sent to intel-xe@lists.freedesktop.org,
>  since we are touching stuff related to hardware enabled in the xe
>  driver.

Huh... I just realized now that this was also sent[1] to
intel-xe@lists.freedesktop.org, but as a different mail thread and has
already gotten some feedback from Jani. Usually, we sent a single series
(same thread) to both recipients (intel-gfx and intel-xe). Sending them
as separate threads is not necesary and make reviews "fragmented".

[1] https://lore.kernel.org/intel-xe/20250911210514.389014-1-dnyaneshwar.bh=
adane@intel.com/

>
>--
>Gustavo Sousa
>
>>
>>Dnyaneshwar Bhadane (3):
>>  drm/pcids: Split PTL pciids group to make wcl subplatform
>>  drm/i915/display: Add definition for wcl as subplatform
>>  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A
>>
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 11 ++++-------
>> drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
>> drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
>> drivers/gpu/drm/xe/xe_pci.c                         |  1 +
>> include/drm/intel/pciids.h                          |  4 +++-
>> 5 files changed, 24 insertions(+), 9 deletions(-)
>>
>>--=20
>>2.51.0
>>
