Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAyZFgdYsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:54:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B02263373
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4311D10E8D0;
	Wed, 11 Mar 2026 11:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UzyGRah0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0693710E8CF;
 Wed, 11 Mar 2026 11:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773230084; x=1804766084;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6e+UZ/PVGJZXkiR4aUAxvM/m2rfprckPQRQ9Z8Nha/Q=;
 b=UzyGRah091hZ6HOgjlKjDp5pgkpKsULerRoglOD2S+cVDLGFuBQtL0W/
 tpXrWrdou5Ai3PXXCNlmmKccJEbSSTBhctZzMvQUOMtPFlAU7d5UFAUKd
 cgNiQNp5ODLFIio/k1oYH89n+LgxKkuscrdt7d5Fo2zmrWRyUaxejWuAf
 nNW0WUaAfhB6aA9/YV/jAXIBBJ5Y7jHAfSzqPctB7vM35s+wS5lTO9PwJ
 xqARj+6XpdT7ooAZ/YaJDshSDr8ShcftLuAG+E1Gs4dfm/Dz3DJrU/Ndx
 qoa1hVgVBiDIxUSocdHkhM4U2rSwo6DBZ7CLdaKQO5oKsodgNGfzWylZZ w==;
X-CSE-ConnectionGUID: UWs2geFYQemoWW7G8cTVNg==
X-CSE-MsgGUID: dTymC8whS+2cXZjgZ1Qh7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="73489810"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="73489810"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:54:34 -0700
X-CSE-ConnectionGUID: Aona2xqCSJyotyMNaz+Eig==
X-CSE-MsgGUID: xtn9719vSqaYR8UL+Xx1aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="217913607"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:54:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 04:54:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 04:54:32 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 04:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjllxGfYMg+2tFfWYlqcLrskwkIQ47PAmiK42uCtbX1WNENBUixWtMDC6uPCbkNOcHfR8+mI7g50vbbGR0KYxJeJBnQ8Rf+x+c2jGeiDbE1SVL1WsvX4zvwjvYZAbs4I4DbFquMZoo/CMc8PnXjuZHguplaOvuOn9KcYOJS6bYLlief6Vq1Hq3P67xcyFcpf4BEewnPHjr+TtqWaP33O38ULUIElHUoXcGLu86YB9DtrzxgKXmwAS85XWpCkE5N7MTnvQeH5Lhpqm+uJwYc/ghDyzsUuDmvAU2ijq9bIgKkTWg719XrEg4/XjVBlhQNJFZqK0NMw2QhymVlcw+F07w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7NZdn0qxGrb6VY2k5QtjzbdVukl3tQQ0HWpa+p0Iyy4=;
 b=OeFubdpntqRfgzhgOzc2ui97IfW188txK4wScZCPXBZkN7f0EOPX7VWuS38X23erUn+AUMXiPLjBlVRIUy2W3iPbAqY0qYZzU18wTj49MSACJb1bCE9o6zWq4aHn5Xi64VndLLRKzvmSDqExq+4RNvAUGMwuiSmyqKCB0dTUmLCDDtRbLmBpclQLDK06o0BlIPWxAml0kPMfIKeusC8KDcjbi1na9iYMZlqYO4U5nTEr9DTlmBdyHNhCKaBHuwTwquTFgQw0vQDZI1jZbIIIF6jq5/kwRi5R31StTh52rK6yPc3IE76fQYPp8MUv2MNqICn2OlVebzA+T8YhHC054A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Wed, 11 Mar
 2026 11:54:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 11:54:29 +0000
Message-ID: <270d9647-7238-4d78-a942-d45ea846b763@intel.com>
Date: Wed, 11 Mar 2026 17:24:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper for AS SDP TL and fix
 documentation
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
 <aarCQYHTCCEKtB2R@intel.com> <aa_fhRxsFcftI2Nv@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aa_fhRxsFcftI2Nv@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0071.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4522:EE_
X-MS-Office365-Filtering-Correlation-Id: dac4ce97-3f99-4e43-36fe-08de7f64f349
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: UDU4GQJjl8v0VDijhxJEGrHTr0FW40KrNKSdRaLjIKDMZhBPPQJrpiMMJaaaBfZo4qgrx1IPKxFlPI7hPR2/Ohk1/41Nc/WiL1a4QOydymx2kV9z7SWKsLJC3FzW6snYfJy2aiPimUtSjMaMv8nzPiCy93MQvEj9C2X82Xt/QoJOtPGMo+YX6162HSMRY4dGzjejMnShkcd/TPApIQY/mvKLWoMjdvO40sSv3j9Ot02PAjlGavrf5xX1jUz9AfWXI7CTynrABCI8Ny3sugJgMqL4JY+9MgRmnMuOozn1GjCZNNlmv6phZYfqUJRDQ8XUMqGscXiZLi1zCKfDuitkI3NtMVElr+oi0p10cYh0iyaG36cxY56ivoYCGARHNz67iop4oyN6Zv535DxktH7oqCh+1fP0dAfrpraigSrfjfAs5S7O+L0PqGnDCBNhNtWTAMLSvzLiEAj5g4/hlBW8COG4LNE231Q3GaIiy6TAjgQKLlWi25uYHwaFr4s0btRFs/E5l4iuvntgvXXQddQ09TVMAYhaUJUjcbZcDEf+39z5wzGrYtVN0v/2ctloBKmsa/kTk8Kso7o3MYjt3gxH6sm/DeXxyWBSAOzfb2ZzWSWkkd/JnHJz11jX9Uu6a8RnGTzmUEBkBmmbz5vO2ua/uYpO9Cu6EizrzBnTUgi9iSL7kaZRwh6BsBwln4pKNuFcTjzgvliqi973pusv17WePHC3+WHwkcYhdwNOk7wveOE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXAxQitXWEV0dkRiUGR4VkUwcFZRSEhSTnBKZlhSZng1dUcybkNBamZUZ3Bs?=
 =?utf-8?B?SlhQV3dpUUdhU0FyTXVyTGdVazJ2MlhQWnFNRzBrbUNnMy9oZU1ra2ErNS9E?=
 =?utf-8?B?OXJFMHdPSXlMM1JBNGZMSnVpY2dnSDhRK3ExZ1hxck1DamhldFd4N1lRL0Jt?=
 =?utf-8?B?VTBRV3gvb3pkOG9NbnpIckd4R1dUTnZZMlVYRFJZSlY5RFhxR2tJMm50Sitx?=
 =?utf-8?B?cGtteVc2K1ByZFcxdUdlbG5PMy9WeXczejVSU2trV0xTNmtRNDY4TzZVd3FZ?=
 =?utf-8?B?V2Z2cmIzVHNJdTMreFhqcEFSeUFDVnRieVdIcC9ZTWNSZ2VMc3p3bkw5ZUpM?=
 =?utf-8?B?bFNUMG1wcVJWKzE1ajBCMWNNSHhNMVF6ZDBHRlMyUlJiRVZ1b2k1cGNtb21P?=
 =?utf-8?B?VXBKbHhFMDZ0aUdVWU5xTkUwNnBHSmx5ZXN1NDBQa25EZFdIRENIQzZ1V3p5?=
 =?utf-8?B?clBGYXBPbUhEZm4zdXdpSGNDU1NpKzJYTmZsRXE0UDFwRjFNaE8yVjdkY1pI?=
 =?utf-8?B?SUt0VWNVNWpQWDloaWduempxRkVpdkxlWU5mMVpaQk9iVFlpMk91a05jbGxR?=
 =?utf-8?B?K0Z3aHI1a2wyR3Y1S05PQ0FJR0JZRE5ISzh0Rjk4cnB1aUtxbHIxaDErWE4r?=
 =?utf-8?B?VDBNZmtzdjZaNEFTRXlXTmRnckRlVWgyakJROXY0QXJ0QlZRZnJxeSt0WW5x?=
 =?utf-8?B?L25TY1Q5UkJKNFVuMmlzakVGYlIxMGsyZm1VenI0SEdWSFRHM09xbnhBbU9H?=
 =?utf-8?B?ZURPMjN3NnRSNlFWamtwUUZJQ2g3RnZ1dGNUV2l3eUEydWI0MUF4NUFjai9L?=
 =?utf-8?B?clEvOTFNdURBRk8zY3l1OENVL0c0ZlJmdVl4am9PUThvdHl5QmVudEhmS3BI?=
 =?utf-8?B?MVhDbU5ZNnk5bFVXbGh3RFpIWGJwRHdydVlvdFMzNDcyR2hqK1lyaktJZWdU?=
 =?utf-8?B?S3dOeDQ1U0EzYUZvdmZsMGhRc1I4dnJVaEpBWFJKVnZpTjZWalQ4b3BkanE4?=
 =?utf-8?B?bWFPc3JjeTdQZWxHUWFON1VHR2dkT1pmSllXaE1kRk0yQi9JekR3SG1DSHR5?=
 =?utf-8?B?elhFRDg3Uit1QmRXb0xZRmhsTEJaMUIyM3k4azZsMmx6TXNYb3IzMWU5ZmFs?=
 =?utf-8?B?R3dsdTBvdHNsdWNKVjFDbjN5N1NaT0lSK3lZS2NGemRBRnlBV1p2K0RYMi96?=
 =?utf-8?B?Sm1WVCtIN3NiWkxTTjB3cDBXanZWNDBybW9IWldFeERZc1ExOW9JZG9BS3FW?=
 =?utf-8?B?U3lLL3BUSnFwaUJPbkx0dnNKNGdjU09HOXlYcGVyTVo4MWZJZFoxL3pidXY5?=
 =?utf-8?B?NzJqTUdEbmhIOEpUS044NGUycnN4aU84aWdyaWxQb1RrR250VWFreXR1aGRO?=
 =?utf-8?B?K1RvN0wwYWhZMFkvVkZhMmNlSEo1RnR1Vk5rRmRZdEp5ZFdiclhGNlJybDZq?=
 =?utf-8?B?Y2RGOVIxWUlPYWQxWGpLa1NZaXhPeTBjdklrS0FsRHRVS2J6bGdCaGszTHpK?=
 =?utf-8?B?YSsvTXgzNkUwQWExTUNjWDliV0kyZ3gyN0FGaHR5amZ6Q2hiMkpSSGxBTzBs?=
 =?utf-8?B?MVBEUjl4VWh2N2thZ0tqeklkazBabTkrMVBRZndiOGxpcnNlc0N3eUFQbGJa?=
 =?utf-8?B?d3pWL2RyclVFS3ZYeVlYQWlxMFhEK1VHSmcvRlB6SXZGMm1YaWY2ZFVMcTY4?=
 =?utf-8?B?UlIydG5idnFYSm5ibjIydG54blcvY1ZKNVo3dnZoYWVTajFoNFNRVk1Fd1la?=
 =?utf-8?B?Z2lUZ1NVWmMrS29veTFKR2JQVGIwNjF0bHNoRzg1ZGowZTRlUTlVTHVjNHdh?=
 =?utf-8?B?bWRmV3M5N1ZuMzBubnI2S3RhVUlERjVMVTB2WVNPSDV4cGVWeEdUcW9RT3l5?=
 =?utf-8?B?NTJlVXRmcVZhR2lCeGJWanUwTEpOOG1WUmpkMEVMTFhJaTFKTFFnci8yaWJL?=
 =?utf-8?B?Wk8xQ2Q2NVF4ZXBFNndxM1JsY3JEK0xoak53bmMrWTFETjRzT0lVenRmOUtN?=
 =?utf-8?B?RnNjejRZOGdmVk0rWHA5SzFqZVRxSWhhMFVMRGxPSHlLSmJHMm9NRVhRTjkz?=
 =?utf-8?B?ZnpkTDdKdVBCOEQ1M1k2ZmtndWhHdmxEM3lnRmhSR2tZZVkwOVFYUFVmSUxr?=
 =?utf-8?B?OTdnVi9qdm8wTGsxVENUK0JXWnpacU1SZlJqZnc4MmVwTnVoTFQyYVltMVVD?=
 =?utf-8?B?QnBxb0JWWGk4ZWZ5NDFUb2pqUzJqM0FjSU1uV2pkSWc2dUMzWkxFeFZWZUtU?=
 =?utf-8?B?QklYZGFiKzFMa0M4TkM1cEVOMXY5bXlCY2Z0UnlOMVF3Tzl6RlVVQWNBYVpi?=
 =?utf-8?B?dXpGSFcvSHRKM3E1b0pVSDRoYjhUKzRWVmJZOExKSHkxTlZmLzRWYUkvZThu?=
 =?utf-8?Q?I3X7IcoNiUURFtEM=3D?=
X-Exchange-RoutingPolicyChecked: WUz5LPfW0uar+U5a/cRwyoAE3VuYr8uJZBNWbcdts0XPtJPM5Zn3foicApYZW4QToHb/TX0l3FWQYWk4bVsQoEAPvaMVtEsVQ73l4fiuI7nEbzqYG8qS+SoDKEShV0J24ZDhr5jsL8LtheYRAQQ2hBcpsV748dEWaQzyA9c+gK2fw6amt2nt6ND1dFq6eGVbZWkyH7pDZctgyWmJsFanfhDMmqqcdxbg8gA9dUlRgX/FQcZ3998zFk6+EfiNHIfRtDowWPucGE28E8ZaGgu0aFSZJABeDolJVU+RKFQPcXuWp7MNIZPXIa0RWwLvIxnoWQIkU+JoG73KTVsAVVySNg==
X-MS-Exchange-CrossTenant-Network-Message-Id: dac4ce97-3f99-4e43-36fe-08de7f64f349
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 11:54:29.2262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ENUv8AQ8GI/zNkt7wDNA3/hnUu+R9OSOFj1flZy/NEaWVGXRg8ursXeIKX7P0YXNVZwNF0AZ1K3m/RJ3jcaVce0dcXVEM3obfF7qHxON05M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4522
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
X-Rspamd-Queue-Id: B7B02263373
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 3/10/2026 2:38 PM, Ville Syrjälä wrote:
> On Fri, Mar 06, 2026 at 02:02:09PM +0200, Ville Syrjälä wrote:
>> On Thu, Mar 05, 2026 at 09:31:16AM +0530, Ankit Nautiyal wrote:
>>> Add a helper, intel_dp_emp_as_sdp_tl(), to compute the EMP_AS_SDP_TL
>>> value used when programming the double‑buffering point and transmission
>>> line for VRR packets.
>>> Also improve the documentation: the AS SDP transmission line corresponds
>>> to the T1 position, which maps to the start of the Vsync pulse.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c  | 9 +++++++++
>>>   drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
>>>   drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>>>   3 files changed, 12 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 86390553800d..9204a813639a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -7288,6 +7288,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>   	return true;
>>>   }
>>>   
>>> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	/*
>>> +	 * EMP_AS_SDP_TL defines the T1 position : The default AS SDP position
>>> +	 * that corresponds to the start of the Vsync pulse.
>>> +	 */
>>> +	return crtc_state->vrr.vsync_start;
>>> +}
>> Other parts of the code (eg. ALPM) still just directly use the
>> adjusted_mode timings to calculate the same stuff. So this doesn't
>> really seem to help us.
>>
>> Feels like all of our abstractions around this SDP transmission line
>> stuff are way too low level, and thus the same information is
>> calculated in different ways in different parts of the code. There
>> should be a single place that defines the transmission line(s),
>> and everyone should just consult that stuff (regardless of whether
>> the platform uses implicit transmission lines, EMP_AS_SDP_TL, or
>> the new stuff).
> I think instead of tracking the low level stagger values directly, what
> we want to track is just the transmission line itself for each type of
> SDP. That seems like a form that is easier to use elsewhere in the code.

Agreed storing TL will be easier, stagger values can be derived from that.

So we set the transmission line for the packets only if we plan to send 
them right?


>
> And to accommodate VRR I suppose we should use the "transmission line
> is specified relative to the end of vblank/vtotal" convention for all
> of these.

Makes sense.


Regards,

Ankit

>
