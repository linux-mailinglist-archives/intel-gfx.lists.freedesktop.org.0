Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD1nDhq53Gn2VgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:36:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A49CE3E9E91
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C6F10E3A4;
	Mon, 13 Apr 2026 09:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YlqSEEnt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CE410E3A4;
 Mon, 13 Apr 2026 09:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776072983; x=1807608983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f7VebaksuWgkB7xXC+9CUsg0NgT9ve/zQLTjiC6Qdh0=;
 b=YlqSEEntIBXbxitpElUPSS/VpX1RsozO4src/GNQHjrn424HdziL/Y1S
 9OWwjGrV6ge5k5rEQy5VNYpubQQUcfRQNui6hwKfV3kZvIN4Z0LhxY+4D
 ODG7pa2u2VcNAT4FtXaffhNLG+JxOIMhalEOJpVpCNsv2hLfgPIpRMirL
 OWibI8IM66itflGtUoGnyTLgjrOZOyguRbids7lAUoo0401yDTlLLLBUk
 ELFCFH7aaHUJHIfV/IFPoNk7AlZSOf/Fv5Y9vIGaL3H4lE3BAa6r1Xh34
 d/llqRu/otElt52I+CrNG25ZXRkp6E81I8LBjSjrg5UO0oaeuJPHvLCp/ g==;
X-CSE-ConnectionGUID: EXcz5ly9St6on9OsmteAYQ==
X-CSE-MsgGUID: bn8Iql6yTg6XNyAxDrpF4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76037078"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="76037078"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:36:22 -0700
X-CSE-ConnectionGUID: Tl4irBdtRLCPE5lceSn3UQ==
X-CSE-MsgGUID: vS5kc4q0RPWAWubciAJO+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="223252350"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:36:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:36:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 02:36:21 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cU542Ha8eAMGWUSm+P8AF0K8JcRZzXElT7wUee0Y64BeUKl6SyX/cuhdaEdMi3q8sTEC0FVDti4xsXWvEx2jGId67KCdh97lYReKn/HVGRtCGldVYgXSLMIM8iZMhY+8/N7f3yLd048TdJtuklu7w61FFs74m/mrKVUgc7bJoIMiKo0uGdVlEmV6TqmfElfWQzJTLjOBgfd+Vf/wkQLjtlkhAWaBUH6ddJ5qw0G9Bwu1ugE450Zov31ZV8AHE0BD2zxv/50PvF20ci+eptDCfyDqhDtoi/7kWERhBABzzd760W5qqgi3x9RVXVd8qW/+YtxXMDxIXSXJH8qP6C+EFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uK4+nRLM5hilyDgnru+CUTeUuAP6ATTnROjcO+Ax3j8=;
 b=Gp0R3CjU4X/1yooZ4AKrstIQ8KingMRFFlV9C0pMlJJOd4rQjiB08UPRzyKte+ATxdwWosMADIm5Y1ExMbcO/dGhFpc169mEVL2Wz9bG4E4/fzdEe2ZzJDSpABg2jgab/ibgYYtRijB77UYVYoClE6bVKwMvC6IJGnugvB3RVQfsS4xrOAS1kaRyU3r0zulknzPci1z8Bw3jScQHR80NyrAFJLz6wXNXLhmDW74MVLAw0UmFPyXSzU7ARdcdZ0iNwMUdFyuPqeBk+g76q9x6z8NweKXirKQZwpAETRYYfTsHChfS6yU+itiJB+AdUPQTdVNhMq6GOkBnibtGb4Beyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SAWPR11MB9733.namprd11.prod.outlook.com (2603:10b6:806:4ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 09:36:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 09:36:13 +0000
Message-ID: <9510f654-05a2-47ba-ac91-943aa9b0edee@intel.com>
Date: Mon, 13 Apr 2026 15:06:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] drm/i915/dp: Add crtc state for AS SDP transmission
 line
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <arun.r.murthy@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-6-ankit.k.nautiyal@intel.com>
 <720b7ddc96cd4fe4c6af0f8e6e96c3e602634803@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <720b7ddc96cd4fe4c6af0f8e6e96c3e602634803@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0065.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SAWPR11MB9733:EE_
X-MS-Office365-Filtering-Correlation-Id: bfcdebaa-20f0-4bfe-9472-08de99401a3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: RmEqPvz0wYG8B9vDPlSkCxi7uMkQBUkyv9cjrrqW8GnHNHZ1InPuubaSHrqQCF7vQLcGSXw2H5BfAhuQLaa+H1+8+KKt4p09QEh7UVDX8D8FCO92Suvp/OJ5DzYlXzO+YmH0ribCNwflHonSRHjYzVce/nPuLx3Zd5SWzZ49pdyWhFk6PmMUovPB/U7klIxkrCgnVyQGf3SJncCwJdMLbuKyAoavTBsd+aI19U/cnPMJbvdBEAdv+OVXWSsA9aWXFqt0iT+sSWyBEAWurqThTDZZyyITA/2QTc8cYEHt0m6/gk8YBSrCt/FWRjKHimtSaI4UzgDxFX2pRokBLZTI9ki1+aXTzmAm8eqek74pZPW9v6Xz/HBrZMNHCK6rLVg59odg9ETLM4QOeyDkE20G9eJ/6n/nMYRjBVXLFQT0oxSv6jdPwdoqodgUCsivHXMAMsbE8seEUtaKwDKZAOPYLJZH1edy8WpBoSk985zpa/B1XRVOwx9HyBhAUqVjfrLNUU38DlQYJFmofBMk94jKeG9DS8nCnByusO/9o3pt62Px/YemXyu6s8iU9Vft37YFOMEr+ae/GW0iv380HLtTZIGuUud4fUXs4gzzBhjU/ISBgzbqBMiOm+0WqGYeZoZyWtCT0FY8mfHoT21cqNM2fIlfOb+ybVouVY19Ad+XXyPx7T0QX2Lsj8rlI+odFBHUpOwoJLxKLqoqWlksvfbNi7sE3Gwza/kxjIFXhwTkgSE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlFETmFvaHNFQVJSZUFQemJEOHJBVVpsd2pNa08yVllDYUtFTzFMaEdmMHZz?=
 =?utf-8?B?T1B0WStLVm1oQkZBeFJhQUVhSXJYZ05Wek91NWMxSG0yNEpNNm1uanJUSVpO?=
 =?utf-8?B?UGZYbVM1N1hDL1RRdmVncUxxQVRYU2JYVnZBRThBTDE2b0x5VHd1RnJmNG9T?=
 =?utf-8?B?NDJ6dnVpQ0x5QVhYMko5R1JWSDdVOVdmNDBnTmxSQkd2KzlqVnZROWQ2d3do?=
 =?utf-8?B?S2FFNDQzTEw0Q3JUSFFyVytpTEhhZHhZeC9jV2w3aU1CazJXOXBXK2pVUGJL?=
 =?utf-8?B?V3RMTVNFZG01MTN6TGY5VHVBYnlLUE9aNjVRcW1Da09XcFVPd2JvSlUydHZC?=
 =?utf-8?B?ZjFWeUtEbk9hMHJGTXpLOG1sWHBzY0dlQjUvN2NzMmFMcDdMZ1pPaXowVzBS?=
 =?utf-8?B?bG5LVjhoN0dHeWVLeVM4SkdKbVdWeS9IeWc4VUlnelJoaTBGV2VVQlhvNDFU?=
 =?utf-8?B?OTBPd1hTcEdUTkcwZ0VxYWdGRE1ZbUlhRmxxZXBaTkM5bXp3UU1kc0UrVU1Y?=
 =?utf-8?B?TUVRaldMUWE2TC9aLzJiUWF3U3gyRGdoeUZqQ3Fmdjc3VlhXczNuWDlKY3Fj?=
 =?utf-8?B?TkNNYVlZR0lWTFV3aFlGV3owUFU0SEJlWTFkTjdldlR2VWNJTXNGOUUzTHVr?=
 =?utf-8?B?VUtSTnJPK3BIaWVXQ1lidGJzTlRoUWMra05BV2oxNnNDTkZmN0h4NTYzRXpr?=
 =?utf-8?B?MjQ3QkFaQmFoSm1QRGxwcnFyZWhuS1dqZkszQ0IzTFVNVzBjREVFODZXNUUr?=
 =?utf-8?B?Q1dZZ2taMWM1OWJoOHNLTU1tODNpak9PRTgwSlV3STJNU0YrR0xuYnByakVs?=
 =?utf-8?B?clNUWUpLMTUrTXlsTFVkZE5kU1hvRW5DM3Bwbis4WXBIS0k1RlJ2MUtuSXZB?=
 =?utf-8?B?STNWRFpGazc3bTdWalhReVhZdEZPS09YR1owdWR0TTNQUjcwbkh4bGJ5c2N4?=
 =?utf-8?B?MEY2dlVvcURqK0Y5QXBzNVY2WndCN3lad0MrcDR3Y1grS1dYYVFBRFZDWEpY?=
 =?utf-8?B?YU0yQXJ1cUZvcVJEcitLNkprV0hSMHlNY3pmVWNGQkhzeTZCbGNXQ2IwZWxR?=
 =?utf-8?B?bzdMM3JlZkdwVGduVmxWck1YS2RrRHd5bXJFMDFaZXJ0enFLRElOUGtuQVFJ?=
 =?utf-8?B?b1I4V0xVd3hSVktKRjdLS1piVDlzUENUVm93SGFmQ0FmejB0eVk4emErWnNQ?=
 =?utf-8?B?UE5KeG11eDRxSW5VN2pVenN6am8xTVZZVFBpMkJTYmk1UTMxQndVTHlCYlJh?=
 =?utf-8?B?QUxHcDNYUzdYMk5FZjVPMDRKaUJWUFo2UDZyR0hjVHdPNloydzlYQm9wejJY?=
 =?utf-8?B?UDlxTHRCYXNCVmtaOGdHdTh5anFQUmlzKzdrK1NLMnFTUzBxeW5uSW0rYURl?=
 =?utf-8?B?elQzZ3UrMWJ0eW96L3pDRGw4L2IxL2hQTVdIYmVLTkRSME1BYko0SCtNZlF1?=
 =?utf-8?B?M2JLN2F5UzB1VFQvSmg0NmlUMURDR2xOVFpaeEZlMHA2RTlPanNqbldsYTEr?=
 =?utf-8?B?YkR4d1RrV21uUllBekFYZXZabnJuYndVa0F4bzQwU3FqbE9TbmpOL1NjaFpz?=
 =?utf-8?B?V1FzdkFVMWF0NktLSlUwcDFPeUQwN0VPYkhHbzMwOHVFcnRpSVo4WlZvZ0l4?=
 =?utf-8?B?RGltVkdnUnA2NEl1TUhJaDBzT1dKZ3J1dkRmZjg5VVNSMjEyMFZRbnFXbnVl?=
 =?utf-8?B?SU96MmNWYmpwaStmdmpKb1c2T2dhN0RyRGc2cXN6NWJCeFdma0h6dG9tc0Rs?=
 =?utf-8?B?blNHVEcyMlh4WW13SUNsclJ1VnAwSDZ4VEhkQmJFeXJyVU0zdlREU1NSSVdL?=
 =?utf-8?B?eDRqWUhsVmY1ZFlIdzhuY056L2drdXo4bVl1dzhGa1BJY2k4STRRYXI3Y0tP?=
 =?utf-8?B?c2RmVXViOUNsNzNrbXJ6MFM0WjVaOHdOZit4Q2tSZHY0ZzlFZy9mSEd3Vkt5?=
 =?utf-8?B?Q2dteXh6WTJLMXhwc25QaXZ0M0RVMmR6dlJKLzliK2ZFYkNaMnoydlkyMzB4?=
 =?utf-8?B?alJ0SC8zMVJMUWlwS001TzQrNUVGR0xqN2hyUDZyemZnY1NxMHc2M2NOTlpB?=
 =?utf-8?B?Q2tIZGJJYURtK1hBYWREZFoyNmZINTRCYWVuWmVRNGpYSldaTDRQTHVOSTRU?=
 =?utf-8?B?Qml3blpDcUhkaU1Qb3hkeWRlcFJlOU5qbExoZUZaSGtZK0RPSnZ5OGNCaVNX?=
 =?utf-8?B?Y1ZWS0JvSVhsMGJPYUFBdFRvV1lTVmtjWGsraFB0WkxmNC9tODh4c3hJRElv?=
 =?utf-8?B?SnV4OVBVbHEzK0dCWVN4VUhXZ0tmVUN6OTdhTVRTYUx0aUJHaUdyb1dUckxJ?=
 =?utf-8?B?eHk1K1habDJwdlkveGR0Mi8vTGttcjJDcVFiOFRNN2NqVXNFUUVQTFRnd1Rn?=
 =?utf-8?Q?P88IW9y6oI2hhL94=3D?=
X-Exchange-RoutingPolicyChecked: bgXDvxlaHmI1Ebh2GEi8+zelk1wcoiCV2+zyhUUNWqTGlGEUjeRrWLr31/CDc+CCFYRaszKgMrrpuLESUPfMz4qjd6Rs+kxGSbO02Apio2r7p98CWg1r0OAAHQWMiHHajanbOpmJyxCLCALYXvRpbFsG4TMtqgYwYm/7d9eMUwl8m/vgleSDxdc16q8wdaWqDXHQuzKOZ3In60xlKSLWppM29fAkpdvGuCFMyQwr8joOwT6czK7AYd3IdlMBrzebJ/WwuEffCRSKlpVYXq0ExAI7KC2tMGFfhmpIzYzm1oNETPtVPbgaORMBpTHkI9YIPM+8pofbZ+8XQFTcQQLcZw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bfcdebaa-20f0-4bfe-9472-08de99401a3f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 09:36:13.3753 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MoULHPGgFuv/OG91THzahgoQUgc97+FcXRt0f/n1iy187y1O/7pP4qE50M6nTRXA4HU9kg7dkxI70Lv6m1ubuevH+eWnttHSxBUR0c6XhfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9733
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A49CE3E9E91
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/13/2026 2:06 PM, Jani Nikula wrote:
> On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The Adaptive Sync SDP is currently the only DisplayPort SDP with a
>> programmable transmission line. Store the AS SDP transmission line
>> in the crtc state and include it in the pipe configuration comparison.
>>
>> This provides a common place for SDP transmission lines and paves the way
>> for supporting additional SDP TL programming, including the common base
>> SDP transmission line introduced with Xe3p_lpd.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c       | 2 ++
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
>>   2 files changed, 10 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 10b6c6fcb03f..c66541f26a09 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5434,6 +5434,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	}
>>   	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>>   
>> +	PIPE_CONF_CHECK_I(dp_sdp_tl.as);
>> +
> Too short, too many acronyms.

Hmm I can make it `dp_sdp_transmission_line` or just 
`sdp_transmission_line` instead of `dp_sdp_tl`.

Instead of `as` I can use `adaptive_sync`, but then it will become an 
odd one out, unless we want to expand pps, vsc, gmp and all too.

I was thinking of as_sdp too, but then that is trading one acronym with 
other and also duplicate `sdp` in the naming.


>
>>   	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>>   	PIPE_CONF_CHECK_I(master_transcoder);
>>   	PIPE_CONF_CHECK_X(joiner_pipes);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e2496db1642a..f58454c23859 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1298,6 +1298,14 @@ struct intel_crtc_state {
>>   		struct drm_dp_as_sdp as_sdp;
>>   	} infoframes;
>>   
>> +	struct {
>> +		/*
>> +		 * SDP Transmission line, relative to the Vtotal.
>> +		 * The programmed transmit line is (Vtotal - value)
>> +		 */
>> +		u16 as;
>> +	} dp_sdp_tl;
> Why would this deserve to be a top level sub-struct in the crtc state?


Hmm.. the struct is designed to collect all SDP transmission lines (not 
just AS, as mentioned in the commit message). It made sense to me to add 
a separate struct for storing all SDP transmission lines.

I am open to suggestion for a new place to store this though.


Regards,

Ankit


>
>> +
>>   	u8 eld[MAX_ELD_BYTES];
>>   
>>   	/* HDMI scrambling status */
