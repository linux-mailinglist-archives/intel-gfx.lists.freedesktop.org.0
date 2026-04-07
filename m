Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMn3KlAI1WnMzgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:36:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C693AF3E9
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8999510E425;
	Tue,  7 Apr 2026 13:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHih0Ve9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0C510E41E;
 Tue,  7 Apr 2026 13:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775568974; x=1807104974;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C3aHuufqxlOEja0f88eboabSfsv6I4dL6yZNIYnJiRg=;
 b=oHih0Ve9FncFjIMXQgMVNM84S1SAshPijns7xr4bKZRcXplXHkqV70bP
 2cjMEEaP2S2ofuzBs5XbIBAyE+TCz4hkf8sg4UyuR8MNGo0bCg92jh9Tb
 2HaaqxejTEM/C8UXZ275vwcK1zDr3k4PSsL4jkQMaXegRUcz5Zl7oGaU7
 2f2V9qKxcsi65j9655D1SGYeWM1JhU7z3kQ9jtZkgJ/wHfZ0c5FDrXKkl
 5iPbdqIqAC7QJ8ewKCOvwLNnr6gND4T4TahzWRFn/81+ykx0HN82Ef70C
 1/fCDrNiTyRmC5+C6Wfb7NZCjwGyHoxyplED2N9QotKEWY3JpIN1R7l2U w==;
X-CSE-ConnectionGUID: WLyMZwC9SFmtBbiWugAtRw==
X-CSE-MsgGUID: vjQgo9nNRpuDhhH4JaLCyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76413876"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76413876"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 06:36:13 -0700
X-CSE-ConnectionGUID: 1om/R2ZMRO6NAcWhXanN+Q==
X-CSE-MsgGUID: 63aVk78YR+Cbl3SEl6BjHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="223383493"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 06:36:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 06:36:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 06:36:11 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 06:36:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NvS1UVqNYXJMwmOlPUitlZA3VrmV8EFBcruugD+dX48AWYGWxjHGOMBJ1wZXX/v1bSJqLsfxR3gaGDVrAFgY32tPJWBOHfVutGD5VI4DsD09jHvIH+xtrQkFMhIKYmStTL+KuWkkgak5fnIF8YoXv0NK8ZM39Z7C/buu1G/z/3VbBS7nSPdWQ8glGgXlC2kohEqqW+xR1BEAKd2k6uxIJragPKBoHubBIhTWJym1E08PEg/sZNui0etUy5FJ/ZZgJa6Ee6M5VW45vtazn815dk05XcRaj+3T9VObezVA2j4x0P7EgB8ngW/Ala5/TfyLeqI2paXv+czLI+5yLWkNJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIVDLZmkEiRZxvEIg+zJdcV6PwtqzZ2sBrbjgeflRuM=;
 b=XOiXi1+JmOaUchUjvismC7qDxP9nuRJjGoWbmKgagWQjXSDSmcpB6R/cR4BfcIOh+c/D+xoE6v4HHl9pQNn5j6zZbOPXPMiAKjVwo6U084mr7th6qbc14F34amK+QpqCwA9yviAuBUoFa1HqPystST6EZOjDNl+VRBylt0BuUymWkFD0iXZo/5GIMZ/6C8kJ2rUjaIYw4/pkfdE+j/6NZN1g1YZu9piGy2alhyph84FdHaAEqKoBv838Q6QkEVhWrOeppZkvhQFBeaDr1eMA+x7pibGzHRSd9Rtn4TJUYAVwAOeHvQPbgc4uDuuwIXeG17pThUzowOrR6CqH+OpF5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 13:35:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 13:35:58 +0000
Message-ID: <791d95e9-8547-4f30-bcac-a2b0562d63b3@intel.com>
Date: Tue, 7 Apr 2026 19:05:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/23] drm/i915/dp: Add member to intel_dp to store AS SDP
 v2 support
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-15-ankit.k.nautiyal@intel.com>
 <ac5NPL2yG1aH12DF@intel.com> <ac5mAUhmxqn-_J0W@intel.com>
 <e84ddfe2-181e-4b74-8681-0b33545da61f@intel.com>
Content-Language: en-US
In-Reply-To: <e84ddfe2-181e-4b74-8681-0b33545da61f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6310:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bc3d68a-2ff7-4062-097f-08de94aa9a21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: IlGzRDl2NJSopoSjD6glkbdbcGS8oYFGD5khNMRrZggfSt7pFqsFFq/TUBIcpZTewg4uVFQL8AaWWNkATkjCl5CXR4yJAUbVRLNeBYHvSLIVECB9rog2kKMwaQvgX0eac94ij82aSlIokSShq1mStbFf8M8vzGttYPh/nHVXKhdhMECYJfWHnIPh0giGe8Y3jM17qes3H2pd81x57ebpongaw4QhCN/QpsIdcctLso0Ia7lrze2TICaHdlr8P+SU53BEbquz3lTp5Sg5F1y4ZTVWOdqv/DowJK9Z9FM8uY1CS1gerMr5aAlve72VKbttnHXdvBqpC2Iki5lR66BEtV1Pkn1IDfe+htrqWBRspz1w8sZCTQCoXh5rXQxwJxSqtvGCWElzvQDI2d3NIGZxd2IdE1BrqUqYF87jCOZkFG3NfR+k1nZ1wWQSNqigBLrCUyb87uleweEuwZou9QhduXA1zBrn5FTbCjnTgGqAIbkPVjT2ttEan1Lo6WTNLeT7g7BQfayxcZ9aX0K0kPYGsc8jMDZ1sXpaAfRvZVkBrzyZ0BxOckga9DD1bz0J6YVdRwHTmvHO6S0CtyD9tnzeTNkfEcSR4MKMB+97lVqkKO2CRh1+eouPdqrMkjOguqeQGuKqFGedeAyAds8C/W08UAvOKOsGo45ZvMNVtRdNX6PfMvminaetvYrkQ9JSXgLQTO5WV6W6GPWIlPt5tpbCm9Ua170MSrIleIOr7nlzcsg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dStFbVNXanV3R2ViYllVbFkzMmhFeVpJY3hLR2gvdlN3Q1pwMUtFUFRVTG1D?=
 =?utf-8?B?OFJXTmpWU3FaSmxHM3NiQzcreis1aWlud204WFlTMk1KRjRmd1BqOXM3aGdw?=
 =?utf-8?B?SERURDRTMEJlN0wyNDM0bXl5a2YzcTVlWmlqS0dnUmNzTXE3OUdBQ0JGY2tz?=
 =?utf-8?B?STVKaWhvaklNSGVWa0ErWUZZS05naWVXRjBuZUlHb0tOcC9RUjIxRFNBY2k2?=
 =?utf-8?B?Y0lOM0h3SHZqbGk1bWlWbUF1SHVHdXNjVDhvTTBRRUhEWUF2b0wzcVBHSURG?=
 =?utf-8?B?S1Boa0M3dW9BY0VMbzhVUktvVzRWWldPbFFNdndPWEtQakhoSTFQYys5TTVl?=
 =?utf-8?B?NXZzUFpyUWdjc1BobENKbUc4RElZT1k2TXFiRUtGaFBtZE9SOVFrRVJ2REZr?=
 =?utf-8?B?amJqRTVmamh5UkFUWG4yS05sci95azl0NFBhUlpVZm0zcDJIMFV0c0xaenNR?=
 =?utf-8?B?bVUvR1VkYTZJMFpITCtXb0k3SXZnMUQvNmlqVktlVFhmV2NSTUl5YlQ2V2lv?=
 =?utf-8?B?RnpKeG8xQWhubVMxYXI0MnRwVmc1aWZXK0RGRjFBZktvT3hoRjFmc01pSlFk?=
 =?utf-8?B?ZWxrcG5TWm8rL05EZ2M3Sm1qWjdKOSthNTB1STlZVjRGNytVdEp2VFVwdTg0?=
 =?utf-8?B?STFQb3hyRGpGaXhIaGQrZmpxdnlRNUZjOTYwL0RhSlpVdkc1M2w1d0F4N2dv?=
 =?utf-8?B?eDVlTU9JWnhvMWh5T1B6Zk9WeW94alVOWEpNbFZVb01mY21oZldqU2lRUzZR?=
 =?utf-8?B?dElKaGZKdGthY2NGaUFQQ1YyZEEyTWhUUURYLzl2bHdqc0xQVUt6NWhiVEND?=
 =?utf-8?B?Q3AxaWdia0hENitNeXNhbExqenMvL2RhVGJxd2gybllTMUZkN3Rrc2JMdjky?=
 =?utf-8?B?V2ZiWVlkRG4vSUw0dGtqaENKYWtDVWxYaXQ1Q3dHR0FaQkduak5iQ2c3bG1u?=
 =?utf-8?B?Ly9GUWJ3OXdFV2VGd1VHZG5OdnRKYXQyR3E5NGx6Q3A1eUxTZEF3blFjU2Q4?=
 =?utf-8?B?bUh6UFlIOUlVcFUyTHNocFR5M0tjYnNPNkV4NkVKTGVMSTUzT21RN3JYTUs0?=
 =?utf-8?B?dmd5TldXUUFyQm40aldHSlJ0ZFdVa2hOSEp2bEZ0QzlhZDRKQkJ1bWVuRlpj?=
 =?utf-8?B?K21sd1Vqc3lpdmVHZVI4Y2ZkOGJGblR3MDhpS0ZVVFBKZHZCSTBVRjNOWnM0?=
 =?utf-8?B?L2w5d3hQVjlJaTl0a2FSK2tCOTdsRDhldnBiNHVFZmc1Tldnd1JoZFhzS2Vo?=
 =?utf-8?B?b0MyUmxKcVNOdDE0S3hiQjZCUDlHaW9FOE41dlJtVXlWQTAzVGFQOFBCREEv?=
 =?utf-8?B?L0I5UHA5bmVLSXBEeFpmK0hsT20reEFIZUx3Q1IxRURGcVZCWFFIK2JJVHo4?=
 =?utf-8?B?cVJkTDdwUnI5N0NwVkIrMXhQZTl5UUl4MTUzWlZISG55SEQxUERRSTl6djlC?=
 =?utf-8?B?WmFjS0M5U296MHBORzd6OXh2Y0VlR3BHUFhNUGZTeVR5clZCbXFPNWxmOXF6?=
 =?utf-8?B?TnFualRwS1d2THZsMDYzRWNCc0FjdUlYMC91TEtYdTdBZktZdUpXdlovU2tU?=
 =?utf-8?B?Y3V5clBRenQyK1U5RW41N01MOHVtZmJCTk5HRTc3QVlMdVorSkhOOGZrZXdj?=
 =?utf-8?B?OUR1Y1hLc2JkcWVxUUl1eG1yajVYTUlBT2pnNUliNjBKQS9RWFNDY3ZSSHB5?=
 =?utf-8?B?WSsrbU50c2Vhd0pOcGJHQXh2cS9BUnovYmVZTlFtRVdoVXZtU2N1RTJnemFp?=
 =?utf-8?B?L1NDQmJ0RlZ5VEZpRmhTYWFnbnRIQ2w3clNjZzJWTThsWHZkaC9oSWRjWUtr?=
 =?utf-8?B?S1ZYRm1LSXA0Mno5ZmRPdE15OUJGbHp3QUYwVFVONXlsVit0MnZRVnlkNlBv?=
 =?utf-8?B?dG1HSHMrNUlOUS9jK1ZuV3FmdURhcHVIL3haTUxBeVNnYjVudkV2UjNKRjl5?=
 =?utf-8?B?ckNaMXhuT2VZVFEybzRRTWJubThCWkZ6QlZrSFVHTVY0Wm1yWDZNWVdLNjZi?=
 =?utf-8?B?SXo0WCtWZy9SbFcxQjdCZ0lqSzFncUhRWjJjSlFQTll3UmVOdExNZlhHRnhv?=
 =?utf-8?B?QzlxRC9BYjBRV2t0Y3l0ZW8zQmR6a0lLSGJiMjQxYUdNZGVkbi9HTnZLdUVC?=
 =?utf-8?B?NEVUeHVQSHZiMlpqOUk4ZTZLeHlsZWw1QzZTcDhaNG9BcVRubjFORkRJeTV4?=
 =?utf-8?B?QWp5b1lsOXE0UXdJeFpkcjgxTCtLNTFUbHo3SGZEQkI0NFZMR28wdWZySUg0?=
 =?utf-8?B?WCtyN3hiK2owZmNCT0dVUVdLRmJtcC9vTHBhdUFaZmprbTh0WWhEWCtQS2hM?=
 =?utf-8?B?aFAydnVDdTJuckdFVE53QkNyVTlldzFRMWdxRHFaeGJDV2p1eXpMUklsUzlt?=
 =?utf-8?Q?KMpJerUKtmGDW7hs=3D?=
X-Exchange-RoutingPolicyChecked: ImRdtxzO8fSzBp4BWOz5bBrOVnvH56XxRBd74A9Tzh1wusTnbbQVO/uUW2jFbIMu+PLSV+vA8bYuDw0Vta8SnNcBjGEKnuw/TwrS4VypMQ2vx9FGIJqxTPdwHQFODjDPhDLkstcOO/HHIO8Ib61GLMjM0gYTgxHS1wNoUeqlRaebG8QD+f2JFnPMufrRAifzx3AJydjpw7AAlOwQdElCnQseHlj/epD/zMjn7MoON+5TqJaySRTOwzQNW973lbhaqdXXHvAq0BsRfK8yHd23jvrCfMPHa/e4EeWbAyvCrWJgNyTavTchJTEB1j1a23K5SfD4SFChu8MwnQlS/sNMRQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bc3d68a-2ff7-4062-097f-08de94aa9a21
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 13:35:58.7955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6qBdDNEQ+oMCw5I08PFBwCJ0qti+IZ5AVqEx5AHWxhW+Ftp6/woKMRVJvBV7Dp3XGgSKD5wBHAX7U9h8cO6VnTHtHoiPxYxgGBFB/Wo6Fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6310
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E5C693AF3E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/7/2026 1:50 PM, Nautiyal, Ankit K wrote:
>
> On 4/2/2026 6:20 PM, Ville Syrjälä wrote:
>> On Thu, Apr 02, 2026 at 02:04:28PM +0300, Ville Syrjälä wrote:
>>> On Thu, Apr 02, 2026 at 01:34:14PM +0530, Ankit Nautiyal wrote:
>>>> DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
>>>> 0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP 
>>>> version 2
>>>> (AS SDP v2), which allows the source to set the version in HB2[4:0] 
>>>> and the
>>>> payload length in HB3[5:0] of the AS SDP header.
>>>>
>>>> DP v2.1 SCR also introduces ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR 
>>>> in the
>>>> Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is set, 
>>>> the sink
>>>> does not support asynchronous video timing while in a Panel Replay 
>>>> Active
>>>> state and the source is required to keep transmitting Adaptive-Sync
>>>> SDPs. The spec mandates that such sinks shall support AS SDP v2.
>>>>
>>>> Infer AS SDP v2 support from these capabilities and store it in
>>>> struct intel_dp for use by subsequent feature enablement changes.
>>> Hmm. After some more reading I think we might actually want to consult
>>> the DisplayID for this. The presence of the new adaptive sync block
>>> there might be a good indication for AS SDP v2 support. While the
>>> DisplayID 2.1 spec itself doesn't say that AS SDP v2 must be supported
>>> when the block is present, the DP 2.1 spec does at least say the 
>>> converse.
>>> Ie. adaptive sync capable DP 2.1 sink must have the DisplayID block. 
>>> And
>>> DP 2.1 seems to be all about the AS SDP v2 and not AS SDP v1 (that's 
>>> a DP
>>> 2.0 thing really).
>> Hmm. But the EDID comes from the display, and we could have a PCON
>> in between that doesn't understand AS SDP v2. Sigh. What a mess.
>
>
> hmm yeah. Is it alright to have a #TODO something like:
>
> /*
> * TODO: Check the Adaptive-Sync DisplayID 2.1 block once DisplayID 
> parsing
> * is available. This may help detect AS SDP v2 support for native DP 2.1
> * sinks that do not expose FAVT or PR-based capability bits.
> *
> * In the presence of PCONs, check PCON support from DPCD and sink 
> support from Display ID.
> */
>

Going throught the eDP spec, it seems for eDP,  if AS SDP is supported 
it implicitly means AS SDP v2.

 From eDP spec 2.0

Section 2.8 Adaptive-Sync

"eDP may optionally support the Adaptive-Sync operation to maintain 
video timing
synchronization between Source and Sink devices (see DP Standard, 
“Adaptive-Sync Operation
for VESA AdaptiveSync”). If supported, the Adaptive-Sync SDP version 
shall be v2 or higher
(HB2[4:0] = 02h or higher, and HB3[5:0] = 09h or higher)."

Also, the FAVT Payload fields parsing support is not used for eDP and 
will always read 0.

This however doesn't mean that FAVT is not supported, the support is 
implicit.

Section 8.7.1 Video Timing Synchronization while in a PR Active State
with ALPM Enabled

...Source-to-Sink device timing synchronization during a PR Active state 
that uses the Adaptive-Sync SDP may be enabled in
Adaptive-Sync (FAVT or AVT mode) operation (DPCD 00107h[7] = 1) –or– when
DPCD 00107h[7] = 0..


So, I will update the logic for eDP here.

Regards,

Ankit



>
> Regards,
>
> Ankit
>
>>> I think there was a patch posted very recently on dri-devel, adding the
>>> adaptive sync DisplayID block parsing. Or at least some DisplayID block
>>> related to this.
>>>
>>> The intel_psr_pr_async_video_timing_supported() check I think we want
>>> to keep regardless, because you could have a sink with PR but no
>>> adaptive sync. But the FAVT check could perhaps be dropped if we add
>>> the DisplayID check.
>>>
>>>> v2: Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
>>>>      determine AS SDP v2 support. (Ville)
>>>> v3: Use helper to determine asynch video timing support.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>>>   drivers/gpu/drm/i915/display/intel_dp.c       | 33 
>>>> +++++++++++++++++++
>>>>   2 files changed, 34 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index e2496db1642a..efc609eef4f5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1870,6 +1870,7 @@ struct intel_dp {
>>>>       /* connector directly attached - won't be use for modeset in 
>>>> mst world */
>>>>       struct intel_connector *attached_connector;
>>>>       bool as_sdp_supported;
>>>> +    bool as_sdp_v2_supported;
>>>>         struct drm_dp_tunnel *tunnel;
>>>>       bool tunnel_suspended:1;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index cec0f3d03c2f..9fd768447f28 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -6306,6 +6306,36 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>>>                              false);
>>>>   }
>>>>   +static bool
>>>> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
>>>> +{
>>>> +    u8 rx_features;
>>>> +
>>>> +    /*
>>>> +     * The DP spec does not explicitly provide the AS SDP v2 
>>>> capability.
>>>> +     * So based on the DP v2.1 SCR, we infer it from the following 
>>>> bits:
>>>> +     *
>>>> +     * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates 
>>>> support for
>>>> +     * FAVT, which is explicitly defined to use AS SDP v2.
>>>> +     *
>>>> +     * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR indicates that 
>>>> the sink
>>>> +     * does not support asynchronous video timing while in PR Active,
>>>> +     * requiring the source to keep transmitting Adaptive-Sync 
>>>> SDPs. The
>>>> +     * spec mandates that such sinks shall support AS SDP v2.
>>>> +     */
>>>> +    if (drm_dp_dpcd_read_byte(&intel_dp->aux,
>>>> +                  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
>>>> +                  &rx_features) == 1) {
>>>> +        if (rx_features & 
>>>> DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
>>>> +            return true;
>>>> +    }
>>>> +
>>>> +    if (!intel_psr_pr_async_video_timing_supported(intel_dp))
>>>> +        return true;
>>>> +
>>>> +    return false;
>>>> +}
>>>> +
>>>>   static void
>>>>   intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>>>   {
>>>> @@ -6313,6 +6343,9 @@ intel_dp_detect_sdp_caps(struct intel_dp 
>>>> *intel_dp)
>>>>         intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>>>>           drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>>>> +
>>>> +    intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
>>>> + intel_dp_sink_supports_as_sdp_v2(intel_dp);
>>>>   }
>>>>     static bool intel_dp_needs_dpcd_probe(struct intel_dp 
>>>> *intel_dp, bool force_on_external)
>>>> -- 
>>>> 2.45.2
>>> -- 
>>> Ville Syrjälä
>>> Intel
