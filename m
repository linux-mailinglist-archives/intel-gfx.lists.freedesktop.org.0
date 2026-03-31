Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AvNOO12y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:25:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523623651F0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A325910E8A3;
	Tue, 31 Mar 2026 07:25:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAWWvGQS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA5910E8A3;
 Tue, 31 Mar 2026 07:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941930; x=1806477930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TXWtVEePhPsroaqkDHBn5QK/fPl+k81W031rL/l7pH8=;
 b=aAWWvGQSvHawt+r8ZUMjMNYPfgextBMGhegntz03+PCs18bRhRJn2eNx
 wqGtzgjfNKxiHAo+g5mALKecsH3I/z0n3C9N5XpvQLhsqRC75AdGwGyzS
 p2LtH5VUCb/dMiV9cHG5dRXeH7Se8aDno7fpS0scEe2CkYGBJ60Rm2qxq
 cXnWVRoWB6rN4HdZuEK7TSf5ytVNcZaQtCM3NunUyz3hG8eVtLi5BMzA7
 TSq2kH8vAckkVzItrKZtG4rFLQppUkogV+5oyq5N8oUdmx7GwEhGxs2+X
 M0N9s+ocJk70p4xkrufieMttdixWzNGTCW2UCojMeT1CvU8FCKVrt3r48 w==;
X-CSE-ConnectionGUID: /Ml+ITgWTi2mjIoGFJoUJQ==
X-CSE-MsgGUID: qa1t3VPnTtqLZbzBqWwL8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75911712"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75911712"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:25:29 -0700
X-CSE-ConnectionGUID: yS66pljbQcCfQofkHsxTDA==
X-CSE-MsgGUID: v0LZyY+URye02YQv63Xcdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="249329528"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:25:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:25:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:25:28 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCvp1pYUCVeQ1NoSPaLgT91vmPgW5BryCPZvmKukDGHti37NlVOEwPxLL0PAjEOvuKh87pIsFxwgUZ6ntijiNKCWsuD0sh3BBvpDmzeAjjQvjD78atktSbRWiK9Cws5KFOQJgZjITU26+H0rmk0EYc191nD+Od25asfaNR2x1CP/mFWYdQqNir5/ilIOOgDWH+zUQQ2pOqWTtdjm9e99DAIgh3iLgR4QUzZMqpvtiiV0nn3fIw97BAH2SPMsPWabn76njysQ1zJW9kLGhQsD8dpR5BXzWxOMVANlJaDNxm8tyw8BQdZxLp4a2ZYyMCFkw7qe/nxBrJfPbhSJt872Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lJP7x3bwnob8fTIR39oEUzVbiZ18gHJEPrQNO1vpV/c=;
 b=egLzwMCQqo/huUtQLOJ8vrqnJPwJZCZhutw4VelBtpjWUpnjdHk1aHUKOKaAgDiwcCgVz/wKHXGvliuYdRk08ENNyD06HlYJ80JJYSswpD08PmBebRlJlq3h9FoweDxgNNEkyb0Qo1If+iNlit9VATK45etJGkoc7Cp+D2TZjW/CWzVawk07wbbuUg+uTC0lolNNIZo2WPECQmYnQt3AUtfF0aGVDDBLyHsJE67AIuLE6UFGNhQWwbqNWh4t9dTz7c2afj3WAA/OGOziPNCZHm/A8cu3jWOjBcRdeGonNW50xdhmncuDrHY8Xj3qciFMyVN1fGkpwApFQZOdqfQ2NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7813.namprd11.prod.outlook.com (2603:10b6:208:402::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:25:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:25:25 +0000
Message-ID: <676ee65d-bab1-45fb-a4ae-a309cca636a4@intel.com>
Date: Tue, 31 Mar 2026 12:55:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper
 to get ggtt address
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-20-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-20-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0203.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::13) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7813:EE_
X-MS-Office365-Filtering-Correlation-Id: eb96314a-b391-4ee7-b37e-08de8ef6acae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 5DtQztR51hzH3y2Jpd5TjhEmEKrzZoSUhQmU+OuE6rU3a/xGbir1C2I0+eyyg/FJEdNsbxAr/9d2idoTdozsV0K6e/GqDBZPW6dFKE0eynFSox/f2GNcA9eZe+OrByQCxPESdJx5l1nRjuj41eP9YVp0/js718qrqrk95Q4kAJe5Jl/flR/RKFkloXg5JKRlC/+0OTuNXJYttcxQHixPOsfCI38YyMmuAs8MGL3BEC5Thv5WjBMNZFfMRNfD73eoYXM/Il6WFPADcQZgh1pj6bAt02tD+OSRVPIJPuRMyawvtee7/sAVH8lUphAlfwrhwrjwMtn9273bQJUl183cEUDaYow91IpoxcfiU1FQnun80G6lDkYKsMud7DWD49189z3PQmN8yBwnG4R0B2QiCCDleOuClGIuih9rlGyUYgFZGinTLx4ge9zinmM7xNlERwC1lKc1UellRPhk445gk2TGTNp7+pvdkqekJfJeHGjczAOdUrSxDXBqx1PVRwbfv8Qc2Wse7hHfv4nxIyZvhLGKWQnknXCcVTVABLewBfOUAODjUp0WsFtTqLvOAtGCsb0JXCP1B5avuUB+90EIjNfBhT1tEau2wyDzZCRd81T6Dxay7YcgyJ0a6iFFXGisNKetI7cVGJPOOSIwV+z+jUhMUud+5xnbOmB6L/D8p3DLnNxDFXJ2sBbjYo0bvtgB/TjsOV+sVZaV7PARaMYPRAkTtnKe070Gh+ZNdDKQO6U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk16ZzFpRno1NlZBOFBxS2FrbGNPcDFoUHFEK0phaXBuYlFldkgxMWxlRk5q?=
 =?utf-8?B?dFMwODNJYVRtSm9SQmZPQUV4NnlWdm1NMHAxWnYreTYzaW5LZmFYNWdrcjEr?=
 =?utf-8?B?OStRRXg0ZTVpK1dnb3RnN1hHYzhXUmNsZVNzbURQaWVRRkpEMStEdkZzOFk4?=
 =?utf-8?B?NENUWm5TQ2YvQ3MyTGFsMHVRK1UzS0ZGbi9EdXVLTjR4MWszKzhSbUt1cUVN?=
 =?utf-8?B?dTdNayt2Z1diR0E0VGdEVkJ2T1RuRVp1N1czZnZkZS9jdFYyWkNMMnY0MUVt?=
 =?utf-8?B?a1Y3T1UxZTA1My9md0FYeWsxWnJLQjBvMVRYdS8wbGgzMHV5UXBBME5HWEZT?=
 =?utf-8?B?SnZUdDA5YWdpNTh2NmlyS2E0NTcwQXJJOTFQV21jQkRJTk9QejdJdlZCWGpv?=
 =?utf-8?B?OHdsSVlWM3p3ankxRDBsTWpNUHhydkxhSVZHN1A2S2RnQkxUcDNWTkFJdWJo?=
 =?utf-8?B?RURYbHZpT095WGhwQnpHK21sTWo1dUh1Q1I0c1ZjSVg1RXcwajFZTUUwMWMz?=
 =?utf-8?B?T3IvSGk1ckF6WFdqSGR3blZ4QTJheXJyTnVaRUFsUFppMHRsWUpLNXJZOW1y?=
 =?utf-8?B?MjgyeGZLUkF1SWhJcVpORitEWXFld1M3SnV5eEltcVdvY1FmcW1uTk5NQ1pP?=
 =?utf-8?B?TUVVZ1B2eDZwZ3U0TUFaSGZ5WFdiSCs3RjJyL05MQmVaU2RhVEU4bVBNZGwr?=
 =?utf-8?B?R1dDYUFYd3FOSU5MSXlxQysxbXMyR1kxL2J6N21FMC9VOE0zR0tOSjc5azRB?=
 =?utf-8?B?RWNGTkkrNk0ya3FFT2J0bmZLUDdkbTdrUGVEb0xXWVNjSlVsTWNxdDBZS25z?=
 =?utf-8?B?czFUR1RLOERJVmZ6TGJuYmxjbDdYeTdxWEh0WFNoN3M0V05hdTRvRkpic29G?=
 =?utf-8?B?V2gyeng0QUtMTXpIZXpWaDJncVhvb1V5c0lUQ2graU9Bd21LYXBUUEVDeVh6?=
 =?utf-8?B?YkNkU0RVSWp1MzRwVVBkS09mK1VNTGRYUDluN3lESmxWR1h4R3BPZVBKSWUr?=
 =?utf-8?B?eStodWMvT0dSNG5BZy9NUlpXY1FXcXJ6OXFhSitTVkNoR0h6eG42TFF2VWpV?=
 =?utf-8?B?VkRNMWRZRG9NZVJSSWEza3Vsc0QwR25ERmQrNmw4d1RWVEZlUUZyWU9na2hQ?=
 =?utf-8?B?NmtpcG9yZUlYaytteCtRNnpOY01aS0lwTkVEclZaNXRsUWg5a0hpa0wzRytv?=
 =?utf-8?B?Nk80ZjBwN3RjQVgxT3dxODFrcGNoMXZvUlZ1MWdVS2x4Zm9JL2tBaXJuRTZj?=
 =?utf-8?B?TzM1aUZmU21UblFzMk9VR3FkNDBZTW8wY2RFK2hvM1dnd010UzBqdDc1b0U5?=
 =?utf-8?B?RnQ3OTNMU3YzaVFuOVM4QUIvTXhYTlAvb3NUNjFIZENnbjgxbmJZL2V3ZXZU?=
 =?utf-8?B?eWZ0SDgyM2llejllVi9DYkF6cVBmRjVOcDdLR1N1akFsTWYxbjlVZWpuSFdF?=
 =?utf-8?B?S1lXcjRGUndKVkZIa2F1YldxMFdOVjFMcmVzNThWbWgzWkM3SUw2Q3pBVUhB?=
 =?utf-8?B?UjRaaTREaW04VVRZWjVxVXlBRm5KWjRTUkZjRWgrbnFKeGpia3VNZkVtZDA5?=
 =?utf-8?B?Z0VhVkhOTnVEa3kvQnpQLzIzcHB2UHhZb01DdlNrTXNtaitWRHdWb2NKUGRS?=
 =?utf-8?B?V3FvVmZWdktjMThNV0RmNjBZaWFyUmFTRG8zWHhPN2RPcEhSYTF5NDJmVzdT?=
 =?utf-8?B?dDd5djhyeUVZVVBJSWd6ZktpVno5R0ZjUS8yS0ZrUFlPVkVlRG01UWxmWGpL?=
 =?utf-8?B?TGUzVXYyWFZxSko2dkEwZHFzaERuNGo4K0l0YU5FekYzWXp5WHh6OFp1V1dv?=
 =?utf-8?B?U2s5akFFZUtIUDlFdmRVTFZUVk8wbmxBM0txSlJJbDllR2VKUUVmc0tnWVM0?=
 =?utf-8?B?QVB6eWtRQUM1M2Y1bDlzSU14eHZqVVdYbG5SS2d2SlBRY29SQ3B2NWhlRWw3?=
 =?utf-8?B?WEErUkJ1VktVVjhwb1J3cGpXSW16QzNoTWtpVDBmamJocml5NVB3QlU4eHln?=
 =?utf-8?B?UUptUnBqeXA4ZXg2clhJMCtNYWt0TGJsTDZ1SmFuSGVoNllxVlR1cjNBTnAy?=
 =?utf-8?B?aFJBSFJ6cmJwbUdxVTQya3lFWjl3MEh4OWJKZlVtK1h2OXdxWGp3MWhrc0dM?=
 =?utf-8?B?STZvNllseW0yMHpKMGpiMjFiWTF1S2NvWTVSb1F0OWhpTFVCNUhDQ0ZWVHox?=
 =?utf-8?B?V0ZsZXZ4WUIxZkMxaENCNkU2N0xXaGFLR2owdmdvdCsxSnZ6YmF6cWtucjMz?=
 =?utf-8?B?QzlTMklZNFBhWG9jclViNXZ6ZGR3dHRFZ0J5dWd5RkNNU09aZEZENVdCSmxZ?=
 =?utf-8?B?UW9RWFRJOThYSGs0bloxZ2NyN1RpREFjNkJ4Z1hKUmZTWnNNZlZuN2lORCt4?=
 =?utf-8?Q?2KoMcwzmrJT8+Qw2j/GLgvKOQNALfB2h4IcbL?=
X-Exchange-RoutingPolicyChecked: a7y2yHuh0ywHq/rnXVM3VPLAcQ3NTzsNbFIyRbVfMe64oDNMqnVApdAX3RuHoszZb7IXmIFUjaLUrIA39zz+ShtY6LXZ1c3jwksSnzUQY3iC/rpR9cIz/HDQZpDF8WhxK7HhOUyOjhk5OZmolPLXrNUrSVRmfLs6EAftxRboEPj8rHDVC9TUmQWyPX8dMcgFOj5gdjXLHls8ctzlp51HWXfGTo5iOesmxdX3woAaOJ5CcpZk8Cd0Ctc3DXkMYpXx0mkXpeuTTxTwcoeQ/esSo1n6RT7p2bK3HKqvcUd82ZzxVxNP2oMkiq93/0s72Yghe7/FCcu6HZuLU58I9/a3jw==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb96314a-b391-4ee7-b37e-08de8ef6acae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:25:25.2679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lnVK2DXPOQLSE+E2dzUNZvRZNt91hp4QiO/dKZfsfwrW39ZPIaq22ac0IHhzRG1oG1p5xa+3p+XeGEWh+v4uK2OqvgnLw6rsCBqwYOxWlmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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
X-Rspamd-Queue-Id: 523623651F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> We need the ggtt address offset to write in the WD_SURF register.
> With i915_vma being defined in xe and i915 and both having different
> ways to extract the address this poses an issue.
> Add a helper so that correct function is called to extract address
> depending on xe/i915 driver.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                       |  1 +
>   drivers/gpu/drm/i915/display/intel_writeback.c      |  3 ++-
>   .../gpu/drm/i915/display/intel_writeback_helper.c   | 12 ++++++++++++
>   .../gpu/drm/i915/display/intel_writeback_helper.h   |  8 ++++++++
>   drivers/gpu/drm/xe/Makefile                         |  3 ++-
>   drivers/gpu/drm/xe/display/xe_writeback_helper.c    | 13 +++++++++++++
>   6 files changed, 38 insertions(+), 2 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.h
>   create mode 100644 drivers/gpu/drm/xe/display/xe_writeback_helper.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 1e9140e7713c..a1023de728e5 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -316,6 +316,7 @@ i915-y += \
>   	display/intel_vga.o \
>   	display/intel_wm.o \
>   	display/intel_writeback.o \
> +	display/intel_writeback_helper.o \
>   	display/skl_prefill.o \
>   	display/skl_scaler.o \
>   	display/skl_universal_plane.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index c79e7330b81c..d3c3716a28a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: MIT
>   /*
> - * Copyright © 2025 Intel Corporation
> + * Copyright © 2026 Intel Corporation
>    */
>   
>   #include <linux/slab.h>
> @@ -25,6 +25,7 @@
>   #include "intel_display_utils.h"
>   #include "intel_fb_pin.h"
>   #include "intel_writeback.h"
> +#include "intel_writeback_helper.h"
>   #include "intel_writeback_reg.h"
>   
>   struct intel_writeback_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.c b/drivers/gpu/drm/i915/display/intel_writeback_helper.c
> new file mode 100644
> index 000000000000..f483ed6ffc6b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.c
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2026 Intel Corporation
> + */
> +
> +#include "i915_vma.h"
> +#include "intel_writeback_helper.h"

needs #include <linux/types.h> to build.

> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma)
> +{
> +	return i915_ggtt_offset(vma);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.h b/drivers/gpu/drm/i915/display/intel_writeback_helper.h
> new file mode 100644
> index 000000000000..b46f437c3875
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2026 Intel Corporation
> + */
> +
> +struct i915_vma;
> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma);
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 2e456070895a..4483e97153ba 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -224,7 +224,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	display/xe_initial_plane.o \
>   	display/xe_panic.o \
>   	display/xe_stolen.o \
> -	display/xe_tdf.o
> +	display/xe_tdf.o \
> +	display/xe_writeback_helper.o
>   
>   # Display code shared with i915
>   xe-$(CONFIG_DRM_XE_DISPLAY) += \
> diff --git a/drivers/gpu/drm/xe/display/xe_writeback_helper.c b/drivers/gpu/drm/xe/display/xe_writeback_helper.c
> new file mode 100644
> index 000000000000..5898984b129c
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_writeback_helper.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2026 Intel Corporation
> + */
> +
> +#include "xe_ggtt.h"
> +#include "xe_display_vma.h"
> +#include "intel_writeback_helper.h"
> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma)
> +{
> +	return lower_32_bits(xe_ggtt_node_addr(vma->node));
> +}

