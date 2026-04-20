Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FWIE0wa5mkprgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:21:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C14342A990
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28D610E206;
	Mon, 20 Apr 2026 12:21:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CoeRyiL5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FC310E206;
 Mon, 20 Apr 2026 12:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776687688; x=1808223688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZCmgAb683U4o1J6pEWg9bhAK0kAGZBSj+LWRJdRrV5g=;
 b=CoeRyiL5x6eJMc+oV0U4Ek2lzdCOp8dCPtPuB1vZ0wvwFiWqECnLcOlt
 qytoFfWOJNisLn/O+ux1xsGBNdRlLXQdaGF1JYokcCh4ruqgxoThFJp1r
 mDEds+Gt5ifmmbCoMxs9GzTTPl+ccMcaqWet3RfQFyjKoi1bjkxJVBWLq
 TSxeUdgIf8/SCBDV6dDIIo/Rlok3en8KRWBQ4OM3KpNZPd+VCFceuUgr8
 eQxk/TUIj81MGxx+ITmYD8BMEJZI0i2EAe+06b+7nLp8w6vjyp4kawKdY
 FerLmcD8nyOQvjxDYK47xWg7sxCF+53FfhFKALLUDH858IZiv5ae5fg2E A==;
X-CSE-ConnectionGUID: /sHglyMzQt2tQcwJf6djqA==
X-CSE-MsgGUID: cSTexkoPQomNhmf52QZoKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77307192"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77307192"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:21:28 -0700
X-CSE-ConnectionGUID: HfDSKvsvTKOi4xSlMqXW8g==
X-CSE-MsgGUID: R8ElaTAAQPqLtKCJmXZABg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231991622"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:21:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:21:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:21:27 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:21:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ij5+ixE5NFFwfBe8uUAS1E+T29EE8pXIxniXWQTQQw74N7DEPnO6GRvHU/Qz12CMUdENuIrpdenlVYYS4WER8c5o76LxX8+no+aZpv2DRcXb6wkaNBLEdfMPrO2hBCBdAXT1+dRTOpGJRxSitH/5H4MH3Ofpcryea4Um1MkWUN5SAcO4f7wfEbXqyUMh86Zs49rnoMWPI3vROvr00VcGYmULPTO8Oim25AUooNGffKPqgq7WT7dZZvd9ktXIy88knEdTfgBmwCj36KIkLiqRrODWS5mecTqzPClnWDMTDA66VWDQx4EIggA9EAORpnuME+yIRFOCMjKy1egLOfRtJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WZ3L0z6befsa1VRnrN1ZYBJn//UE58+kznKLFAUcfh8=;
 b=bvwj42zfwee2Cky/SyqvpVNvW3VnaGlxTDnhgVeAcEaSL7CbqRJzje+xkaWUaIcKSScqsvjyvBnIWhvi5ow8WOYGSAU7+SOWwPHQOvCsfO/MBRHBguGeMaL4CzwAELlD8qixBzBnae0O5uBug/GC8uiNwJhBYvI1jvO4WD/WV94U9gSWg6gBhCYV9HIeHduAJpnuOCFLCyEiptn/uE3ptM+vXzBbAtBwet77NvuEZ43tJadx3Teg9OaYpiu/vwvkSDszTMNj4dOhhBWJ8sU3ozWDr70L6tLT14/MZGupR47TiBO0wauBpjF4JxxXZ+PC+NhYAUbrxBK1k+a37tBoCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SJ1PR11MB6131.namprd11.prod.outlook.com (2603:10b6:a03:45e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 12:21:17 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:21:17 +0000
Message-ID: <ed5296ad-ac58-478d-8877-8ddf2a191c3e@intel.com>
Date: Mon, 20 Apr 2026 17:51:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/19] drm/i915/display: Add helper to check DC3CO support
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-8-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB636081E10E13CCCF2D5C5981F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB636081E10E13CCCF2D5C5981F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::16) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SJ1PR11MB6131:EE_
X-MS-Office365-Filtering-Correlation-Id: a4efed7a-8e16-48ca-f9b6-08de9ed75252
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: N3fGMBkzaWm1o/tzTtuzpaLKBn8BCGzRB1fE0X1btak+VXkL+OHD9j5WUAaUSLlzTw8s6r44yk873XEM7DFSssLeNR5BUTDF/xcPt0FbObuj99t2Ec5+R4h8/dt3UKvbRbp5gOeGCruIftNjA/dBzCsBGSAF8FcJDMKwHwvjbBa/hlVAoOWVeUv+/s889xQIy+PlhXZoJsSjgc3J6rHAPf7N5zKLQbPmlO/AzZMJfu1ah+7V486SacV90WfbjBmNai++gY6IwxShywN12Bpff50/mEnWUtX3Ad83r3SgVH/Je79jTN+gFYUeCvR+hb2n97u4KRbDbty2PsyCq1uOQ8oK8YajUpY9Et5yhQrUFMDmAgq8KGXSZ5FQX63dt3IEgMcRmL0ALxt0cFJnTmwApLKuJ8BbeRpPYcud0uh0aL+NMz9pRUffALTkRIdL5ZEm5IOSmQTlzikgYVS7n1n2fifasYtprkO8R4W3Y8aBd+pAtxuT1Sx3tH3whsWtQoe1HRx6Kgz+eFdkiY96b4Ki1nD6Z/3yyf3u8665SEQ/B3WpAeP4vtEKVSEx7ob7XO1LV8pkUssEKa3LLWKyA9VANKONi5sYYMC8GESfX1267D+KqHvLshy01JcvjoYZFFVHD7dho7ftaZp/slMcGON/4m3Dlc1c58DlnG/tJBPXb0XzrTMGWbK25bCCNcApxvvlQOGfDasZQ+ydgp73ZC4VnMNjdWdoWmQodF2WsCM+bT4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW51L3hsUFNMWGFXT2dsTzRoTjJGeFNWekFOTU82N29sanVuRUJDZlUvS0Na?=
 =?utf-8?B?eFlBME0zTlM3MkhhRGFNUCs4RTlqV01CTG5XNmwrMzFHNlhCWHZyMFlNeklj?=
 =?utf-8?B?V0Y3b3g0bzdCYUxkTEhlNkxSN1hZN2NhbHlkWDZuNEJkbWNkbXpWS3VVbzYw?=
 =?utf-8?B?ODBwOVdJTmV2N25ER2tTSUdoWUdwL0tjUVZ5SEprbGwreVYxSEsyNTlHbUVv?=
 =?utf-8?B?bHJoOGV3QzF3RlBxYThCQTIrQlFwUmJNMFlDMmhZcElZUkNYalZJZVZTZ2Nv?=
 =?utf-8?B?S3ZtYW4xMmNaNkwyTUx2d1orcDEwaFI3YkgzUmovZ2ZGUmFHMWhTMDdPQ2dB?=
 =?utf-8?B?SkpLdDk1ejRoa0hKMWNlYktSQ2gvWlBVSW80c3Z1cEE1NmR0cUlwenV3RGN3?=
 =?utf-8?B?MytzUVVKVStVWkJhSjhMSzdjU2FmQVlFNHRQVlJQcHZuNkd4VDR3SlgyZG5S?=
 =?utf-8?B?T2N0bGFYODNUQitaZHZTYWprUHVDS0ZmNHoya2s0OWVtZFpiYUlvNmtoVVhJ?=
 =?utf-8?B?cElPNDBYaWpzUkN6cDBrSFR1MzhLV2sxQWh0M25nbEJpM1ZYWllmRmxRUWo4?=
 =?utf-8?B?ZmlRUnpZNE9ZMWNjWTlhTHpqS0cwcGE4MHZKdEZVZFl2M2VQSk1YUEJubWU1?=
 =?utf-8?B?ZTRjSDI3aVc0QkFSTVd2QU4yaEJpald1d3ZjeGxmaGlTM2RzY0U0ei9YbGFr?=
 =?utf-8?B?Q3EvN09jdGxQZHlZNXRZZ2pjdU1oV0xJTnVNVTVCOVVuWGpIUEVPbzYweksv?=
 =?utf-8?B?K01ORkhZR25sU1RLSzdTSnFzeFk2UFZzNVREaytiZDJKRWF3T3ZscWd6SXRy?=
 =?utf-8?B?K2liYlAxSWFmdHZkTEtzdnJmOWQyclgyRjRTeTgwNkFsaU9CWGtaNk1ZQ3Bs?=
 =?utf-8?B?SFU1VVdLTW5YTmIybjA1dDZpQitmbFFhUmM5OENjNUYyalhIc1lYelRhVVpp?=
 =?utf-8?B?SW4rcnhJMU4zbUpEWDZuMm0yS290Q2NIM3o1ZnJCWFVBVHd5bTR1NWZzTm13?=
 =?utf-8?B?K1ZwbVBEL2pCSW90aStNcVc3d0dla1c2YkI4VXYvRkFtbHBHTTFpV0JtczYx?=
 =?utf-8?B?RXozc0tyQW1GTmc4YjJPbGpxeU52WUxMRlYrWnkvZTkzOHV4UkVNTWxuZGNz?=
 =?utf-8?B?Tk96UGFKMEVBT2k5MVpNSExVU1AxelJhMjQ0WXF1Q0xoSVdZT29tUTh0QmRL?=
 =?utf-8?B?TngrblNzbm53ODlqOUFnU0tLd2V1Um5HVUlSbWplanp1Z0VuK2JKT0JGTU5a?=
 =?utf-8?B?Skord2x2djhnSTRPeS9VeE1tK2ZoczZPUFpSR2xISUhDWSs4bG00MzJjN2Nr?=
 =?utf-8?B?UFVlQ2JpUzdwL2dHTUpkNGpoZm90YmdvNTBzVldwa1k0QmZRZG9rTHBhRW1w?=
 =?utf-8?B?aGJZMkt0NGZCRENMMDdxV3l3NmNwQmxFZys3NHRmR1RBMUU3T1BTTFhjc25z?=
 =?utf-8?B?eXppazN4VjcyWVoxWEYwSnA5RWVrODRFd1lob1lVYXk4ZmdSVmFYdzJTVWds?=
 =?utf-8?B?ME02Y1M3cUphR1JiMmUwVEZ6dHFGK3NnTU5aZzVIaFpCWGNranpLMW1QZFZQ?=
 =?utf-8?B?OFVmVkFnMExhdndBQkNCMjRLZ3pNeGJGV0ZtMHdzOHg5VXovbFo3RTNPdUp5?=
 =?utf-8?B?bFRGcm9aSU83aHNnSGNQQzBPQVlVYXhGS3BHdE1yS0JhNGh0V29LZktnOW1m?=
 =?utf-8?B?REtaNk94TEhkODZKenpIQlVBWVNCWFl3blJOZmU3WGltT2s3YlEra2lDT3gw?=
 =?utf-8?B?dS9IWmtHejZKeml2TlU2OEp4VlM4cU9WSGVObFB1UFVVTHg3VXFEK0FmTGlF?=
 =?utf-8?B?UWpmNDVFR2dDM09UR2JWMXhZTU9rWE9kV0VBQ2VsSFZJSjBxT1FkQVgwQ25N?=
 =?utf-8?B?RW1zZHNVN0RSdmxROTlQeThRcE43VGtKbmxaSS8vRFlGTUNERUgydnQ2M1ZL?=
 =?utf-8?B?dVdhVkJndkVzQTc2WHFzdDdoeitianc2c05TNXRKdVR4akErZkRpbm14Q0J2?=
 =?utf-8?B?MVlaUEdkS3pQU1VwWlpzZnlyMWtwR1BqQ0xNdnNQZzNkc0p5dDBKNkNpTWRq?=
 =?utf-8?B?Z0pWdVBua3VHeFJ0Ky9IZDJqdVg0Y0dyOWZUN0FUTUdpM1hQeTd1VC9kZExs?=
 =?utf-8?B?dEZURmF6cWNSNnhibUZXY3IvM2IzOXpRb3BXb1hRc04xN1JsS2pHNmVLS3Bp?=
 =?utf-8?B?eHhGOGRVc1U3bGtEZ1NWN1VOUVVMQnhRTWRDRDZDSzQ5Ykp1Q2VkUVczWWF0?=
 =?utf-8?B?MnIyM2FtUFZNTGo2SUZDVnBWaTBNS1E1MUtuK0VPclJTQ2I1Y1JzaUVRWWI4?=
 =?utf-8?B?TjErVDkzREtvMUFSNUNqWkxVR1RmZWh4UWxpdEdLRGdYdVhYb0JYZ2xpdTkv?=
 =?utf-8?Q?z1tIosJBjFIAMBUZZg0jPdp2iNeT0zDzDffK14Z33hVjQ?=
X-MS-Exchange-AntiSpam-MessageData-1: xZmq/mSR4huWFw==
X-Exchange-RoutingPolicyChecked: O4q+jYjZldxMsRkBLcotrFyf+UKy1jiZGj3qP5Lm8MDel1sbkvOS8eOqUeSx8AvdjrPgSM0xIsR6+/bUASmMN/PgfZonozGbLjlJ0Tr+0a5R9+x7Z73ZOwxXJZCaSL1m2a7zcralJkHMvBl1PZ+dKZu0QGnG+dQahTUi3NWEQgpCHjc8lIIFoRUHj8uayI0a6CtTlixs3t8q0tDxj5Yr2NzTL39EDB8YJK4QtSBTjunvFGBc9iOpInaueb7rc5/Cd8YatLMvCJ84/xYakm7OaQB23aLaAq69jDFwHcLqEpWPsTYiAlRiSIT1A54R/9pIH9trG09tWT7cXEM1Y8/EiA==
X-MS-Exchange-CrossTenant-Network-Message-Id: a4efed7a-8e16-48ca-f9b6-08de9ed75252
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:21:17.1682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j7jcgcCaTBzBmbdvxM/u3YOp0imL837atA3rZS+zLDLfQPXDAIY8FYRy9yuZXPZ/NoethtUWEPVNOJdDZNJO32Ot2w6qaTns4SLjQjDY2tUFojq7uL4g3w85kWTG6otZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6131
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
X-Rspamd-Queue-Id: 9C14342A990
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 02:48, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 07/19] drm/i915/display: Add helper to check DC3CO support
>>
>> Add a helper to query DC3CO support from allowed_dc_mask.
> Change looks good but I feel this can be squashed with some earlier patches.

I will  squash this into patch 05.

>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
>> drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>>   2 files changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 12967db27c8d..a3b0c8ad8bb5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -365,6 +365,13 @@ u32 intel_display_power_get_current_dc_state(struct
>> intel_display *display)
>>   	return current_dc_state;
>>   }
>>
>> +bool intel_display_power_dc3co_supported(struct intel_display *display)
>> +{
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +
>> +	return (power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) ==
>> +DC_STATE_EN_UPTO_DC3CO; }
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains
>> *power_domains,
>>   				     struct intel_power_domain_mask *mask)  { diff
>> --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 3fb45154864e..f57ce99a6039 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -201,6 +201,7 @@ void intel_display_power_resume(struct intel_display
>> *display);  void intel_display_power_set_target_dc_state(struct intel_display
>> *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>> +bool intel_display_power_dc3co_supported(struct intel_display
>> +*display);
>>
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain domain);
>> --
>> 2.43.0
