Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EFDA008AC
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083C610E88C;
	Fri,  3 Jan 2025 11:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTwCogYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0786610E88B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903921; x=1767439921;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lBTy8TlqbLjMA//jyYPu4UxnV0Oa9ATnnHq/Bc/Wejg=;
 b=hTwCogYbZXCmXZ5/88d1HuI/Tqo9yAUosZG5M4wOtQkloytxIt34zgCk
 KEYuwtgqyO5EeLcf5a/E3sah0XZG74WQZzyTSM+UlK+sTNLPmSyY0J3MJ
 NqTghzEvENY8MbGdfodqPeaNwoCPvmMn1qznIL9lDwfAMOwwCBA1CT7S5
 5NSiSRMIh+lg/AFDexZZpBUZfP5GNBftpSC6wtCouEpmk1aTTbxn41LBi
 Gjc8zIvduCmD2spzKxxWQcBnje5DB7zfEHcTwb3d5hObD4fwGD735sFOE
 dutRWF8W3lzLaXpm5+Gv+Wtr6SL/6E03agQPodA4DMA90Q8LP6t8eq65l g==;
X-CSE-ConnectionGUID: Vx7uuXmgQ3Gq7omfl2GJog==
X-CSE-MsgGUID: DzrlMcdvSNCd0bdgBodG5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36056852"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36056852"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:32:00 -0800
X-CSE-ConnectionGUID: xH4aId2kS1GpqQ5HgVbABg==
X-CSE-MsgGUID: PwImfUhoQe2eMEVZodA7XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="106748024"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:32:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:31:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:31:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:31:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LAGzz3h1IOLsJX83kLMgxXOoOVTpK9d5buISDSMyav2vupL4oc5MYIic+8Z6rF7qBTYjlmJPlMLPimzbdfGyqwwogF7/182PSrG08TvYTnIseIz0z0C1nQiul5uq6o0fxLWuRcfBS3/IBWKdQYE8b1FkmkZ4d1000VRxVPu0G2XMB+10WNDaOG4j+QipvgGpJ3v464pcQJHsVYjb9a/LT+XYT+WXYS+eOFeglYcZZmv7it8C3go6YuG39nTU5atp3/hAnZ+4F2+nTI+5Kuf+nkbTacIdvFtLiHTcUIVe3K0Q/ZWzukPxnlpWmODa13+nSKNU7TxVoYkISXUiX4xGAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9tYxjC7U84tZ8zoZC+gNcYPKV7T7XBxpFrIgjaNTGOM=;
 b=fOafFuuTtp9mTOTa7NBoaRo693wx0GoKLrM0UK14qviKmb+lCbl1tKybqx5dYrCCZzwEHOT0zgk9O6Uj+rnNAs0rWqqUcWmnWteye540ZtZR4Lyv3fIALQQhiWZxpIwXjKfnqisSxvEBuF8NKW7szkBwdWMM3WNkseVV7rIdeDUYjVISK4zZZjS28nlof/4mz/hXhr0hp9SGNzGzwv9Bgt5ZjpJ7rDQTLw2gHGLkmRSCc8c3L/OyRCUX+Wq33BF2muWBSBen6cBOsNtvUJuUxIt73VWCO+4kefCNAMW0+ZPGQkgBx/KRBCdSooSEaaazqlrxL59eGuJ6G2gP/35jEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:31:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:31:54 +0000
Message-ID: <f989552c-6448-4c4a-b147-a0d72e1ca9f7@intel.com>
Date: Fri, 3 Jan 2025 17:01:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/18] drm/i915/vrr: Improve VRR state dump
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-8-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0207.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 77639d6e-15ef-405e-090e-08dd2bea3925
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmlmRHlWWCtEL0dSSnBoVEdtVUZNc1R4akw1WEpPYUlVOFB0VDlQdWNUQXYz?=
 =?utf-8?B?SFljNGljbkV1K0tqblVDejk3SVplaFFxRTVENldXVmhlSWdXdkF4eXFpVkFz?=
 =?utf-8?B?VXNOeDlGcjBjdGZyMGZOR2FUUkhoTi9aR1grdEZpU3dSd2hSUzdGQ3F5K3Er?=
 =?utf-8?B?eElpaVNGS3U5eStwQUplZkFkY2dJVThtOE5sbEFSV1NMMjFUNkdyQWlqMnVS?=
 =?utf-8?B?S0VOSXhNUzN3dlRWdlZDYUszWncvT0NEOXdYaUpDeUZyMzg5dmRYWFVkM0VC?=
 =?utf-8?B?UFc4akxEUGdPQUVRaVNnUUFid2NWU0t0SFBNMVNpTkJRNi9LTytpSkhSZEc3?=
 =?utf-8?B?clRCc3hCc201RjlER3pNZlBmMFduZDVZanhzS0JZWXhocnhzSXVBaVNhcEpv?=
 =?utf-8?B?VEg0ZHRwaElFeTl1SysvMzFjU3JkVWtWd0djbk9QMkJDWDR0dkxidUc1NEJB?=
 =?utf-8?B?eExGR2NxTjJjN3FIbTQ0MERXKzVNRThpZnB3UUk4dFRwVkhYdCsxWSszNW41?=
 =?utf-8?B?Zzhyb2x0ZEdveTEyL294YXF2eHUxaU9GYlQ2a0pDMThQdGFsWHZRRDlvaWNq?=
 =?utf-8?B?N2JLcTNRVEdYVkNyQ1I0ZE5kUGRMbHFSSnEzcDBsaXJ4WlF1VVZYM3RNbmVF?=
 =?utf-8?B?bXJwM0tER1FHQ0hoUHhpMTdwWWk0QmFiYitiVHVpTTJqcStkeUtjSE9HMnlD?=
 =?utf-8?B?VFFFQmhWQk1RMjF2RXdZZDNzTDRlQWM1bVNlYWZFQVY5USt6VUNvMWwwNDl0?=
 =?utf-8?B?bHdOSXFxMExKdER1bWR5bzg4N1J0M1JZUjB5NG10TUZqRFhIZXJjTkZUUzhn?=
 =?utf-8?B?WFBTMWRPNHYxNTBWdDkyazFxNjJkZXc1aW9NRWFsb0FwUFF4UHMrUWc1OFVo?=
 =?utf-8?B?NmZPWmNGNGJQZXorZWE1aFVUWVlOVWFHeWI4WDV2ZE00TW5XNHVsSVZJRzhM?=
 =?utf-8?B?OWp5Z21XdmFYNWpmMTRrYVYwYjRUekFLRGNqRVBvblFSRldyc2JiMGdEWHlv?=
 =?utf-8?B?RjdxaHpxMDNXNFMwV2ZsVC96aHQwNm5mOGxlRlJzcjU2RDRvSGJYZloxU0dK?=
 =?utf-8?B?QlRMZlZST203eDF4YkE3STV5c0h5TUJzWnBOUUF0MlFKUWloTlZhL0IyOVMy?=
 =?utf-8?B?bkhQTEt0aU9ZZDBxcjlTOWladFdLNUkyc1RkZ3dHZjVOQWZHcVRRNjRZSTM5?=
 =?utf-8?B?TE8wKzdzalEzZlo5SkNFdGwvSVpiT0J1SXJVeStnMzBPUnBwUVVIazZDU0JD?=
 =?utf-8?B?a05BVXA1N0N0c25iYTY4VWpLSmhWUHh0Q3dLOGlPY2VSYWw5SU1HUWZVaitu?=
 =?utf-8?B?eENRTWR4WDdPbGdiRnduMEVCS0VxQlBsZ2hOZGRRajVOTGVrN2VpN3l3d1ph?=
 =?utf-8?B?amVRRjYwZ0hST3NnTXhEbU15TFNYTnBBSjdKY1RrbXNVcVBhaE5IZFhTZUli?=
 =?utf-8?B?YklGWkV6WERXM2VRRDcxQnNoOVdidFBVb3Jzd09HUHpQTTVZRmtTMFd3cDV1?=
 =?utf-8?B?SmkwNFhTQ1g5M3N3N1lvV0hhUlhTQ1FPb1ZLbkM3eUJHWmJVczlGR1lHTVkv?=
 =?utf-8?B?S1pRdmlQNU4zRG9ueC8xN21jandzaUZJanBURmlIR05nSHg3dEJKbFdJWGNz?=
 =?utf-8?B?QmtzVXE5dFpnSXc4MGJ3S2RTZDNTUlBkSmhYa3ltcE1oQU5SMjJQaHhtaWIw?=
 =?utf-8?B?Um41emQvUmVKOERZWDlXemRXYWJDWWoxL2JnQyt3WkZWUCsraWFkdENJR2R6?=
 =?utf-8?B?VDRERlQzVGRBSVc2U29PQ2JPaDBHeHV2MGVwRkFrT2k1bS9ZZmJFZnNtcC83?=
 =?utf-8?B?NDhudnF0Wks4OGc4VnUvWkRRMmxRMm04Z3lHeDc5TjJzRWFJL05JZUFvSDdh?=
 =?utf-8?Q?IXv88cx/7hQKo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE1INTZoSUdwUXMwMEpYMFg0Qnk3QXI4NFlGbUJreVJxcHZOWmZpeG9YZ0Vj?=
 =?utf-8?B?UnBLdWxtU0NmMHFtQWpsTXgxSm1rY3ZmUENheXlMVjU2RGRDT1pYODUwMVcz?=
 =?utf-8?B?YTBzbUw3NEZCaFAwajhReDBGRDhLejhhUEtMVlpWWlRvOGtBSHB0NDRqVGIr?=
 =?utf-8?B?WEh4ZFNQWWpXZG5vaHNpclY1VnFHZ01TSjJNVElQdUFvRFNPNG1GUEQrcHJ6?=
 =?utf-8?B?RmhLaDRha2IyV1U4eFk4OGQ1WXB2d01YQmhNYXRiV3BpeUlQN0NaNmtQY01X?=
 =?utf-8?B?Yk16TW1oeFhlb2FwUW04cjhsRXNsQVBUODk0VjcvRFNVZFZvK2FaR0hKc1Vw?=
 =?utf-8?B?NG5CcDBSRlFaNnlVSk5lekdQdEFlS3lFNjhvaVBPL09IcG0rRTROdnhwd1lu?=
 =?utf-8?B?QWlKbEZtYXJBaUwvOVlnSHpoYlZhdXhqby9paWJCb1o0emliTHlzZ0lHYWpx?=
 =?utf-8?B?ZWQza1VUOGJrMitGOHVUNWw3SmRZVVFza3hXWEp6Rm9qenZyVWhDZ3hkUUdY?=
 =?utf-8?B?U05UYlBtVi9yMVhOWW1YdUVRQ2lhcWw1V0ZDQUp6Wk5vYWxuR1JWY0xpeVlq?=
 =?utf-8?B?azRBR1Q2U01wVjFDdzFGcmtoYzZ1dnJUVnoyMWVyYVFGMGJaVmJyaHpBc25C?=
 =?utf-8?B?ejlkT0I0N3EwMVRZL0ZKOU1KdWs5bnZuM3k3QlAyUy9UNVVnL2UvR2RCRlNx?=
 =?utf-8?B?bXNGV1FmRzA4STNiZDNRcnFTd2szaDk3U2gyTUxVNy9JUjA1Sjh2TU9Ra3Zm?=
 =?utf-8?B?M05raVBETWxFaDJGRmwxYTRUdEc4NkdmZ3FvSHRYaVdVaUZBUWVZTTQvM2oy?=
 =?utf-8?B?SXIyTEhzVWt2SkRlQmljUmwrL012akpaeldHTEx2dGxmZS91RGdPNWpRY1RP?=
 =?utf-8?B?UDlOVXZPUVJuUGF2WkZvNExPRnhVZGdFTnE3c3NISmlGUi81M2NKSTYrYVhr?=
 =?utf-8?B?SnRwSzZ6V1hXY2UxV3FlYUxQKzVLcmJwWjZMMlVLMlJHeldmSFV0UlBEUzRN?=
 =?utf-8?B?dGJtSlBZRm1SeWVNRDUzSkdFSTZuR1pBS2VmZzJsRkczMFoydXNhQ092RlVE?=
 =?utf-8?B?U09ZQ3ZNN0paVVk0MlpzVWk1UlBwVXNRU0pvOHVDWHB2MmR5T0pYN2p6Umds?=
 =?utf-8?B?elI3M1UxV1JDLytCRk1sbjdSRytXRnB6UDc1U2dEUW93VnI0YzFWem9xcHN5?=
 =?utf-8?B?bkU1c2FHVFlIOCtPM2VXcmdZRzd5WEVyRm1rQzVpaThJRFZ2NFVJRTVvSXNi?=
 =?utf-8?B?ZFZSdmE2cmJuSGt5NXRDc0tVVmV3Ty9wWmE3cTgxbERxT2tSRnlyQzZ5ckJi?=
 =?utf-8?B?cEdoVllnVnNrSnBodnYxWUtzR3RObUZnWWk1ZDNhRUhLV2hKTmttU0I4NnNs?=
 =?utf-8?B?ZEFvUzJXdVFFUFlsdWhsQkE0TWxSQUZhckdDZFIrMVFqZS8vaEhLS2sxUzE3?=
 =?utf-8?B?Umt4V3Q0aHk1ckdMYk9MQmFYckJMSzVYZHNkUG5yV1JiMkhzSXZQVDdLWUtI?=
 =?utf-8?B?QVRVaEt3K1hiMWZGWWM2RFZNSk5WNFhXMEI1aXRuSnppR0d3RTQxbG1NUGhV?=
 =?utf-8?B?ckFBeDVnRXZ2UlF2aUZvQk1IMXQxWWVYWFA4aDE3and1Y2VRUTlVODV1QjJM?=
 =?utf-8?B?bE1kNncvRnJ6RTRaTk9Bc0UrUmVJL0Z2SnMvdm9wV1QzSkwxSUpuTm51YU43?=
 =?utf-8?B?cEVuejgySnVZZ1VTeHZmTEtqOFk4K0s2SnhUZkg1SzAxZWpZM2lWTHNXM1VI?=
 =?utf-8?B?UjJLZ2ZqM2xkQVJXR1Y5ejFReU5rZHNNa2haUVhvU3dTL09qVldKWlN6SEpN?=
 =?utf-8?B?REloQmhaY0tvVXRFeEVUakdnS0o4TlpOcUppcmI4cm83eXNCLzZwY1NFN01E?=
 =?utf-8?B?ZndGTm9kODFRdUdDQ1ovdzQ4bDhxbXhVbFJaemJkblo4aUJjU1Z6N0hna0p0?=
 =?utf-8?B?NWtqcjcxYklpb1VwYStFSmtHY1YrdHJOaTJIT0F3alNxcGZxSzdkRUxZRy9N?=
 =?utf-8?B?YzBjaUxIK0hsay83U0hVdFBheTVKZFBoVjBqTHFEbGYvQVFzT2M3bmpRaDlD?=
 =?utf-8?B?b2t6Tnk0enlLcmY1VjgrR1Vad3EwL0ExcnRuM3Mxc0lRblQwZ3NLSWx3d1ZV?=
 =?utf-8?B?bUY1RkNOQlFTUE5jMDlxT25mSWMrNUlidW5TRFRXTFJzYmt2NlFvdnlpTmdz?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77639d6e-15ef-405e-090e-08dd2bea3925
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:31:54.0917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GB/bHL0geqtYq0uIgVDnKZbWE+f4V2aMveJM+Vqceu5ql/qvZeJYCLbx4PhODYW99pxG5yA+8NmJwA/4OZGmVX5YEnnyADdXks+JMJRQ5io=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Dump the calculated vmin/vmax vtotal values in addition to the
> raw vmin/vmax/flipline values. Makes it much easier to see what
> kind of scanline values we should be expecting from the hardware.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   .../gpu/drm/i915/display/intel_crtc_state_dump.c    | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 27ce34df8482..97e3cdccda01 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -288,13 +288,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
>   		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>   
> -	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d\n",
>   		   str_yes_no(pipe_config->vrr.enable),
> -		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> -		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> -		   pipe_config->vrr.flipline,
> -		   intel_vrr_vmin_vblank_start(pipe_config),
> -		   intel_vrr_vmax_vblank_start(pipe_config));
> +		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
> +		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband);
> +
> +	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
> +		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
> +		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
>   
>   	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>   		   DRM_MODE_ARG(&pipe_config->hw.mode));
