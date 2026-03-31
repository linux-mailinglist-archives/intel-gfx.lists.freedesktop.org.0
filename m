Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHTGANh1y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A1365054
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325BD10E888;
	Tue, 31 Mar 2026 07:20:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CqcO5RYa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598F910E880;
 Tue, 31 Mar 2026 07:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941653; x=1806477653;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/At7WK0n7IcdD1yBttnIqwWcubbOV5bbRZpRodr0tnE=;
 b=CqcO5RYaz/P8SYoOOo7CGo66Eqty+ir6lN/OOWHfndzOw6Ahtq+M1Qv1
 P5yt1N/UmSgezXKYQB1k594WGU2diGwrNfjMS3famSOT1ORXMGpYoxEdP
 86/vMF4sTFhE7RVzwQCYT3ynG5zdCtort/rbmRd5gZ+Bg53m0ueSzXTqw
 lCGpjueD3VJITwzrdUJHpKbnXX+UbNCJnCrc9ZSm7HKmPCxBQcdUHuXAR
 pTULw67ju1DOZuyBYL2CMidYBsdgrjwfMmkg5KnL5B7zFeN5+8lVcrakD
 Lg1T9aUUb6BJ65PIdrRDKrRhgOw3UsW/hXbmSy3BnYPjqiphyUw/ROK7T A==;
X-CSE-ConnectionGUID: vr2Rw0VzTCC6EPbyywoUoQ==
X-CSE-MsgGUID: EMXmw3jIRICpkSnG4wnNgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="93328568"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="93328568"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:52 -0700
X-CSE-ConnectionGUID: RGZRwMYjScCpL5ghIQUggg==
X-CSE-MsgGUID: YTnxcEfnQUemTq0y3EsNvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230742506"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:20:50 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7RrNz1g5vI4WPrzpr40BnE7dbWC8ELzxg3jaRSBSetF8NCJdyULLMg8apZsSN/weaooY6xG5Bj0RuKMSg6zCb/ZTbJ7N6+86xiLKPJM12Vmox9Kx2LSAH2wRZM9iDPfE1SQNNEf/BH+uDRoOotvaT8/zkKGYt3MmJOJO5Js5T/6EsMRAAqrROM2hupictMw2Qhb36fD/qnxCsE9xgRqzWwLruxpKNhklnhYBvXQwvUFU196DOOSF54QGJ25c+bnw0DkjWtY8nZFzvR6hzRBjlJUdm6fUyxM1lQq6C5mQ2ime2ZHu+jBOvrGUJSpSzPJkwV/dtSA+8KRPEbo62c/EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cj6fHsePSvek0/8zAiKbAZc4/YsSNLfzjxr8tB6oc6w=;
 b=N6sO1RZG2kfavYz5pOS/WIWn7ykbOmk+UUSpKnJhR0m/8OSyq7RFwJfA4MFvDBFZAxm+mfjheRorcppeiZc/qGN6uYpNOVAOyGYOzOx4lL0oT+sVJTGHwriWXi6oDmWir6CoJPD+lqxvM7NFTSUlA+791oNUeOmCZLRSxK4vps/jiRs6ODb0vEBZIAk6BdmwE5MN+Kwm5zZnQ1K4q3Mm2lTUREdzvKNjCjCEutUSMpzpkTh43QOF2CzvTHMlhonYJbxUR5kOCn1v8Tha3S4XQDwWwY2XW3bqivM1vYm57JsxYhKB3IQQYvJ2cfCU7S/9S6Emud9s7pRNe9vhQwx/pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:20:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:20:47 +0000
Message-ID: <be3e5ec4-6003-40b5-997e-2dae4a62d3e7@intel.com>
Date: Tue, 31 Mar 2026 12:50:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 25/26] drm/i915/writeback: Make exception for writeback
 connector
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-26-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-26-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0091.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::13) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b7263c6-7fbb-4215-d540-08de8ef60716
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: SpkVPRTdQdhjP3Bzc3OKc4ZnPjEj1YUU3u0UpMH1z7HA3f4xRFqYBNbXlMfqUF3jw3cJfMF2XZJ54IgZeBSMco9R3GN9kB9kxsKCwEqr6LlR6YLUIM+L2XTtKeLv671VAU7aveq82IOOeROc/j9m0i1opL0nEbmlaBy1ossPDI8qYHc0+4MZmDoLEKbhRdut5iJ4uE9UjKM5ToZ4H5RCuX7QtiH4MUE+lCfTZUFtz3nLJGczH7iuqHXgB7WP1ocB8wrDgTf85d2P0RtwUu4VzbgFp8ta+W3PmYYswnqp7QnAAb5+HHNyYZlGqh3To0Wd8tkcBtBLbbajnBQXYP9ryKJXfgc+R/EWc2qVHq9NEiyGtT8LWV87mfiefIlPhFZfdtNDtJSH77DjOOI+p/bqn8Th0GdPLXOXyjzJXKrOdHqLTwXbV6yOxcFty0WSOOk+j6D8/82yBlRA8TqSLx9ht/2SkpD+Us1aMhnabVc7UD9Eaof+z5/VLGXK7W1bCyLMCcgUYlxuusCfGUZwecqCpXu087gDEb/ss92HJKsJKM0atshwIF6ggLUPwXj6WcGm2QzgqClABdatjQx2YjhBMdPsIn64mfsnPJS0G5MYXd8KWTDzrJCRGoTxke2a1cbOJCKHBCo+QOwxiz7x4c7j4dE6aAxUZFZ4UQ+XiNlUgtODRt4Kg5c218+5qYuoOYv3ItYAnSeXrtq6nhYloNdgjPI4IWd7QEXhBu+UcFe+Pds=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0VWZTVla0RxQUg1V1hmeFhUUjN6ZE84TlMyeURSQU11SElnTWNkMFdCd0Fv?=
 =?utf-8?B?NzZuZFdsODgwUXVzZDlySnhlU1ZERHNQUnZxOUJkYysxVnNnaXZ6dmtrT052?=
 =?utf-8?B?MldON1pGY0NrN0Z2ZGpqckJsZS96WGVEYTZKcE9uVEVka0pScmpOdGhuWHFz?=
 =?utf-8?B?dVRlT1FKODZZeDd1WFA4N3Y3QURxYWZpb0l5MXc0SlpVSHA0QUtNcjI5bm9E?=
 =?utf-8?B?dXdXWjdnL2F4RXoxeHRoa24wT1VvMnRvMWxIZEZETk5WTEwvaGp3M0FyZ2NE?=
 =?utf-8?B?ajdIWHg2Q0R0cnNzS1crL3JjNW1IZHM3c3YwTDBVN0VIS0ZjaTBnS3FLOGpN?=
 =?utf-8?B?TSsxMEpYNDJxYmx3cFBxaWxyQkg2VEY0ejNEMzlzdDdPVDR1SVBoSG5UTXJm?=
 =?utf-8?B?c0xYYW9CNHErSThoa09XbzVlZld2R2FyVFZ1NnorcFBReFR0blRGTGlISVlL?=
 =?utf-8?B?cWZ0c3JQOXp1UUNLclNkc2R0UTlGUmxRVVZYOEFuOHVOTWE3SVd5WEw5VXhI?=
 =?utf-8?B?dCtYNjgveWhTUFdaS3dsSEFGOE1vTjIyUG9NMWRhLzFTWmtPT09wMEFnc0ZG?=
 =?utf-8?B?Qmx3SEw2SVFYT2daYlRXT1hvK3BPTnBzRVRDbXZqRVdTeFlndm5zVmNpSUZz?=
 =?utf-8?B?ZTRnSkxQMEpwaS9KM1M4M1FHVTNWSmZXcHV4QzZwNUtzR0RuTy9Sb3F1RlNZ?=
 =?utf-8?B?eFUxNDlDNzdWYzRaUXRzcU9OOHhqaXZtTmVUVW5jRHgyc0RLK212RnhCNTA5?=
 =?utf-8?B?VHNrT3NEY2liQUE3dnN4RStNY0hWNUlmRmlzTnZiRTMxa0ZzY3BPTjFXakZo?=
 =?utf-8?B?aUdqVy82K1FzSmVWT2NIVk9YL09pRHZ5SlgxczR1cW9CbkM5Q0ZGeHpDZVZ4?=
 =?utf-8?B?ekQxRmpiR0pZWXlGWVdqd1k1TTBpdXJ3TzdycGFDWXV4andGK2xyNnI2Zk1F?=
 =?utf-8?B?STExa2FDSG42NjQrdzNVUDNYSm4xMkRqUFBGMU5QUUEwbkxOME5mWGRncTdX?=
 =?utf-8?B?RkJEM0d6L1liUEdlekh5em4zK0ZFN1JRc2hnUnk1eGJhN2d2RUZZc1lIM2Y3?=
 =?utf-8?B?Q25OM04yWUtRRnlWSjJ1L1cyekpyc3RZNW9IS2p4NUxKWlFWdlhod21GRE5Y?=
 =?utf-8?B?NVBBMTl6dFBmZTlyVWdNOFpRV0RUNjN4a09wRlhhdFc5M0Myc0o3b3U4ZG4v?=
 =?utf-8?B?MFBVaDVlS2lkQXhVSS9pRDRid3JpSXY1UGlReHlJZ0ppVk1BNDI0VVp0KzVy?=
 =?utf-8?B?Y1BZSlErVkYxRkNjelUxb01EWHFmSE5QMEFNazJaYnhpVUNFdWNuTkQ0ZlFM?=
 =?utf-8?B?ay9rbFlNb25JdTEzckNUalFBbkdzUnNDUW1DeHMvTGtJSzJPM1EzakZpWWNG?=
 =?utf-8?B?aTNweUI4a0ZveHkzOGNWS0FkTkJiQ05ENisxRkQ4dHF2c2hmK3BTWUQvZXhy?=
 =?utf-8?B?V2xTWHU0WkxjM08rMDduV0E5MjJQSnArR3hYbTBKZFpxUi9obkpnWVhVV2U5?=
 =?utf-8?B?OHROZm5zQmxoYWhQMG5tYUhWNStjSCswU0wvRVFOMkY0Q0Y5NW9uQ2tsNjJQ?=
 =?utf-8?B?d2RmT0FSU2MwRmpJVHlzN3FuRDJyNjcxSTJFVk12eUIzY0dJRUprRTFXbkZS?=
 =?utf-8?B?bi9wQUZQQWI2M05UYlJkL2pNL2ZxWnRzMWpCVUJJZUg1UEN4OVV0bkFEL2hI?=
 =?utf-8?B?OVFXa3JnSjBzWWo3M211cit0OU04cmdBaXkyQTlhL1h6TGVua21PelNiVnNn?=
 =?utf-8?B?MHp0bnFlRTlRM3REWno4aXF2aEdIVjRFV0hTclJEWktPK2lHbGN4VFM5MjdN?=
 =?utf-8?B?cGw3TURhMk9LRFQ1aFg0Ly9TaVBocDZpQnQ5OEFSV0VmZmpmRVZKS25qa3Vv?=
 =?utf-8?B?dVNYZHZBaHN2czVVYmh6L0JQbG04QnpLZ0krNE9peXlmZWFnYjVtRWNRS2xv?=
 =?utf-8?B?QXd3dStESzBQOW9vbURzWW1DSTdqeWczZ0VvSEN1am5rZXBMTy9ZcFBtTHJW?=
 =?utf-8?B?RlRmbFVjcVFMY1BpNnFTMjZ6TjBYU0FGVUdnbmNac3NBZWVvaHBBN1NUaEwr?=
 =?utf-8?B?OHBWVldnSENLMDIzV1NZWTh6dHdqdVYrOTRUNGNwcVZVMjhLdnk0OVZPUFI4?=
 =?utf-8?B?S2dEL1p2QVZYbnFHcVVLNEFrN2pLRVdkd1MwL0RCN2dtNGR2bFpMdDMvZWEv?=
 =?utf-8?B?YlhMU0M4UDFlSlZ0a244b2k1YXkrNkpHMFJodEE1Sm5NOEJnM0J4dThkT213?=
 =?utf-8?B?TThGaitINzRUZ1FmRW1ISWVWdjN0bXMwa2k2SEtCQWZTYWZjdUJOYWVVZnlW?=
 =?utf-8?B?cFl3VHcrRDNoa3hodGlLV2dWM0NtcmtlcHlsQjJXdDkyYkdwanJXQ2daRFNY?=
 =?utf-8?Q?AFG9ecFflcgw+0S9yyPkphIqxq1bmg9woxtcC?=
X-Exchange-RoutingPolicyChecked: iapH3Z7vVikLcLEw8qaB3iBE1BXxCJHKcpe23uWTHhyjJABcZDrVnPSwLqAOlCbOfcQ3i6FAwYjBBdpvS/04zUkr9CW4NGtFvlXZWsRGx9In+sunX9ko/6mrjUef6JYxUUzczKtNW/ucRwwW5g7WjUgciMK+19buj3xYhsniKTOm+aCljxt5E7D37cyLJAB8JKtDOUq3tBA8LO0MvMPtg0eYvQix4DsYA5o9/2teDpHB1aWV/gmF+LWhGFsw5qefdUYr4720xoNeUCLuHURpfxdWi88mPh9Iz7xMOVZRv7VwPkrEh/zX+lIm3sELNmGCpCBrerg3eWymq/ImCmo0vA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7263c6-7fbb-4215-d540-08de8ef60716
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:20:47.3656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ldOPWDAyrK5Xr/8ytRRltnXl1ghM5mqMfVLRJmpAufsKCribDpq+JjK8NlMrx5Sbq6hqNVTKGaeVouNfrkmGpy72UfiIsXskR705IL1GJgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
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
X-Rspamd-Queue-Id: A33A1365054
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Writeback connector is a special connector as it does not actually
> exist. This means a lot of checks and computations need to be skipped
> and exceptions need to be made when it comes to this connector.
> This commit contains all those changes for a writeback connector.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  | 115 ++++++++++++++----
>   .../drm/i915/display/intel_display_debugfs.c  |   3 +
>   drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
>   drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
>   drivers/gpu/drm/i915/display/intel_pmdemand.c |   3 +
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +
>   .../gpu/drm/i915/display/intel_writeback.c    |   5 +
>   .../gpu/drm/i915/display/intel_writeback.h    |   1 +
>   8 files changed, 110 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4cf7153b7c8..e47b4e667fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -127,6 +127,7 @@
>   #include "intel_vrr.h"
>   #include "intel_wm.h"
>   #include "intel_writeback.h"
> +#include "intel_writeback_reg.h"
>   #include "skl_scaler.h"
>   #include "skl_universal_plane.h"
>   #include "skl_watermark.h"
> @@ -1639,6 +1640,9 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>   
>   	intel_set_transcoder_timings(crtc_state);
>   
> +	if (intel_writeback_transcoder_is_wd(cpu_transcoder))
> +		return;
> +
>   	if (cpu_transcoder != TRANSCODER_EDP)
>   		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
>   			       crtc_state->pixel_multiplier - 1);
> @@ -2687,6 +2691,10 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>   	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
>   	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
>   
> +	if (intel_writeback_transcoder_is_wd(cpu_transcoder)) {
> +		return;
> +	}
> +
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
>   		/* the chip adds 2 halflines automatically */
>   		crtc_vtotal -= 1;
> @@ -2881,6 +2889,15 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>   	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>   	u32 tmp;
>   
> +	if (intel_writeback_transcoder_is_wd(cpu_transcoder)) {
> +		tmp = intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder));
> +		adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
> +
> +		tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
> +		adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
> +		return;
> +	}
> +
>   	tmp = intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder));
>   	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
>   	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
> @@ -3794,32 +3811,59 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>   		u32 tmp = 0;
>   
>   		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> -		with_intel_display_power_if_enabled(display, power_domain)
> -			tmp = intel_de_read(display,
> -					    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
> +		if (cpu_transcoder == TRANSCODER_WD_0 ||
> +		    cpu_transcoder == TRANSCODER_WD_1) {
> +			with_intel_display_power_if_enabled(display, power_domain)
> +				tmp = intel_de_read(display,
> +						    WD_TRANS_FUNC_CTL(cpu_transcoder));
> +			if (!(tmp & TRANS_WD_FUNC_ENABLE))
> +				continue;
>   
> -		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> -			continue;
> +			switch (tmp & WD_INPUT_SELECT_MASK) {
> +			case WD_INPUT_PIPE_A:
> +				trans_pipe = PIPE_A;
> +				break;
> +			case WD_INPUT_PIPE_B:
> +				trans_pipe = PIPE_B;
> +				break;
> +			case WD_INPUT_PIPE_C:
> +				trans_pipe = PIPE_C;
> +				break;
> +			case WD_INPUT_PIPE_D:
> +				trans_pipe = PIPE_D;
> +				break;
> +			default:
> +				MISSING_CASE(tmp & WD_INPUT_SELECT_MASK);
> +				break;
> +			}
> +		} else {
> +			with_intel_display_power_if_enabled(display, power_domain)
> +				tmp = intel_de_read(display,
> +						    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
>   
> -		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
> -		default:
> -			drm_WARN(display->drm, 1,
> -				 "unknown pipe linked to transcoder %s\n",
> -				 transcoder_name(cpu_transcoder));
> -			fallthrough;
> -		case TRANS_DDI_EDP_INPUT_A_ONOFF:
> -		case TRANS_DDI_EDP_INPUT_A_ON:
> -			trans_pipe = PIPE_A;
> -			break;
> -		case TRANS_DDI_EDP_INPUT_B_ONOFF:
> -			trans_pipe = PIPE_B;
> -			break;
> -		case TRANS_DDI_EDP_INPUT_C_ONOFF:
> -			trans_pipe = PIPE_C;
> -			break;
> -		case TRANS_DDI_EDP_INPUT_D_ONOFF:
> -			trans_pipe = PIPE_D;
> -			break;
> +			if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> +				continue;
> +
> +			switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
> +			default:
> +				drm_WARN(display->drm, 1,
> +					 "unknown pipe linked to transcoder %s\n",
> +					 transcoder_name(cpu_transcoder));
> +				fallthrough;
> +			case TRANS_DDI_EDP_INPUT_A_ONOFF:
> +			case TRANS_DDI_EDP_INPUT_A_ON:
> +				trans_pipe = PIPE_A;
> +				break;
> +			case TRANS_DDI_EDP_INPUT_B_ONOFF:
> +				trans_pipe = PIPE_B;
> +				break;
> +			case TRANS_DDI_EDP_INPUT_C_ONOFF:
> +				trans_pipe = PIPE_C;
> +				break;
> +			case TRANS_DDI_EDP_INPUT_D_ONOFF:
> +				trans_pipe = PIPE_D;
> +				break;
> +			}
>   		}
>   
>   		if (trans_pipe == crtc->pipe)
> @@ -3908,6 +3952,13 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>   			pipe_config->pch_pfit.force_thru = true;
>   	}
>   
> +	if (intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder)) {
> +		tmp = intel_de_read(display,
> +				    TRANSCONF_WD(pipe_config->cpu_transcoder));
> +
> +		return tmp & WD_TRANS_ENABLE;
> +	}
> +
>   	tmp = intel_de_read(display,
>   			    TRANSCONF(display, pipe_config->cpu_transcoder));
>   
> @@ -4017,7 +4068,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   	    DISPLAY_VER(display) >= 11)
>   		intel_get_transcoder_timings(crtc, pipe_config);
>   
> -	if (transcoder_has_vrr(pipe_config))
> +	if (!intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
> +	    transcoder_has_vrr(pipe_config))
>   		intel_vrr_get_config(pipe_config);
>   
>   	intel_get_pipe_src_size(crtc, pipe_config);
> @@ -4030,6 +4082,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
>   		else
>   			pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	} else if (intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder)) {
> +		pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>   	} else {
>   		pipe_config->output_format =
>   			bdw_get_pipe_misc_output_format(crtc);
> @@ -4056,6 +4110,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   	hsw_ips_get_config(pipe_config);
>   
>   	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
> +	    !intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
>   	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>   		pipe_config->pixel_multiplier =
>   			intel_de_read(display,
> @@ -4064,6 +4119,16 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   		pipe_config->pixel_multiplier = 1;
>   	}
>   
> +	if (!intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
> +	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> +		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
> +
> +		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
> +	} else {
> +		/* no idea if this is correct */
> +		pipe_config->framestart_delay = 1;
> +	}
> +
>   out:
>   	intel_display_power_put_all_in_set(display, &crtc->hw_readout_power_domains);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 2614c4863c87..350de3b3589d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -202,6 +202,9 @@ static void intel_panel_info(struct seq_file *m,
>   {
>   	const struct drm_display_mode *fixed_mode;
>   
> +	if (connector->base.connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
> +		return;
> +
>   	if (list_empty(&connector->panel.fixed_modes))
>   		return;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f5d4f7146fbc..4e3b655dc025 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4830,6 +4830,9 @@ int intel_dpll_compute(struct intel_atomic_state *state,
>   	struct intel_display *display = to_intel_display(state);
>   	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
>   
> +	if (encoder->type == INTEL_OUTPUT_WRITEBACK)
> +		return 0;
> +
>   	if (drm_WARN_ON(display->drm, !dpll_mgr))
>   		return -EINVAL;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index e25be56e678b..fe01b283f783 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -397,7 +397,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>   	int ret;
>   
>   	/* don't care about old stuff for now */
> -	if (!HAS_DDI(display))
> +	if (!HAS_DDI(display) || encoder->type == INTEL_OUTPUT_WRITEBACK)
>   		return 0;
>   
>   	/* Avoid port out of bounds checks if SWSCI isn't there. */
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index 244806a26da3..e7b6e6d1ba63 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -158,6 +158,9 @@ intel_pmdemand_update_phys_mask(struct intel_display *display,
>   	if (!encoder)
>   		return;
>   
> +	if (encoder->type == INTEL_OUTPUT_WRITEBACK)
> +		return;
> +
>   	if (intel_encoder_is_tc(encoder))
>   		return;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 6c09c6d99ffe..08594afdedd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -20,6 +20,7 @@
>   #include "intel_qp_tables.h"
>   #include "intel_vdsc.h"
>   #include "intel_vdsc_regs.h"
> +#include "intel_writeback.h"
>   
>   bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>   {
> @@ -1081,6 +1082,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
>   
> +	if (intel_writeback_transcoder_is_wd(cpu_transcoder))
> +		return;
> +
>   	power_domain = intel_dsc_power_domain(crtc, cpu_transcoder);
>   
>   	wakeref = intel_display_power_get_if_enabled(display, power_domain);
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 870fbfdddef5..52c2d8b91aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -53,6 +53,11 @@ static const u32 writeback_formats[] = {
>   	DRM_FORMAT_XBGR2101010,
>   };
>   
> +bool intel_writeback_transcoder_is_wd(enum transcoder transcoder)
> +{
> +	return transcoder == TRANSCODER_WD_0 || transcoder == TRANSCODER_WD_1;
> +}
> +
>   static struct intel_writeback_connector
>   *conn_to_intel_writeback_connector(struct intel_connector *connector)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> index 83a986753c4c..3a99a6526841 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -17,6 +17,7 @@ struct intel_writeback_connector;
>   int intel_writeback_init(struct intel_display *display);
>   void intel_writeback_atomic_commit(struct intel_atomic_state *state);
>   void intel_writeback_isr_handler(struct intel_display *display);
> +bool intel_writeback_transcoder_is_wd(enum transcoder transcoder);

I have not yet looked into the logical correctness of the patch but this 
function name could be better.
Right time to make an exception to the rule that function prefix and 
file name prefix must match. See intel_dsc_source_support().

>   
>   #endif /* __INTEL_WRITEBACK_H__ */
>   

