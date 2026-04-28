Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGvMD/+U8GnnVAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 13:07:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91234483510
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 13:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF98A10EAF0;
	Tue, 28 Apr 2026 11:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ra8FSqDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E55B10E321;
 Tue, 28 Apr 2026 11:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777374459; x=1808910459;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QzDPBJmaX67qa5y3YREqxnGvr6l+kd+looKzprdzakU=;
 b=Ra8FSqDCTVJuAKuWVNNHR8FVq7yAgbaWf0IhyHApOWahC/UcbR9XEiBv
 /HunbbeoO/HEUfina421JRgtwTV+iEP0tdvuKkNIgAMaAxDYL86wCDpqn
 ZrVhk83aNVKOOtpdmjCxGgbWova1ymgIa/bjY1C1qRWY8s2LsgN5eawwA
 57bUMYrmWxgHBLowvjRw0yZOKrl5AnVur0gSt3l1iGK+X340xU/R8w9XD
 pzF7QuNGL6ar15hgC5VydgaMWjmCV+exyeaPpAIy7Bgu8zKQDKZIRWagY
 e0Q9Rizh5diycP5GKmEliYJdoDL0Na0jzBzsAucRJlwZ2LvICNOyQasKm w==;
X-CSE-ConnectionGUID: 94j1E96eQyqDFsi/qVJuig==
X-CSE-MsgGUID: YzLodSpIQvqUcH59mQPaXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77444734"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77444734"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 04:07:39 -0700
X-CSE-ConnectionGUID: 7qkPwww6Se+iwBBNHd58jw==
X-CSE-MsgGUID: K3DRpKnXSmq3spxOQ42Slg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237886968"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 04:07:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 04:07:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 04:07:38 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 04:07:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bZJ+y+rZRvYptrxMMd2o+NkIQOqeqqIeOjRRpTK9QTewF67GedlDwYJpGKN/gH4LKc0vCjDqEr8nsQkhIu5jm/azoy8ibsj3MdeS2iwgsuMBilnbHxB2UWK6J5dI7oKGaIK8x1useNzrtonWEeioAk4WYFDqN4LasugkpbfQupA6uJppfvvx/rcEYvpStRKhv6YoVc4Gy/uf7rtbAbTV5ZmMTK1AL+ODM5bLjNGd5/Rtz+Y4YMhM6kC59wB5HJkW9TvU+aBXNpuw+oTEVg8gcrKTSGqcnvZEXgnkGQUZ4zusgyJxXAXrYDToOJxBMmY8xxDyOUzPyd+7bEm8NcwHQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfcmAAryy4ibjqTIj5ZZaMdWu07uC08XCPnkUBs0+iM=;
 b=kwgxB7CqcPYfxnz8UNsCSENzb4nygn6p1k6x1UppgD/0/kZn29RhA12Bn09e7KtzCpevZOMJz9jWG1BTCLwezKEgLZmTv0NJT8YOQ3UhR+zE4wYuDcGLgtUmgL1avqdnC8JmKQdJX6hXAdBWqAR0pgRt04aYObxJlIAKrZ51rWrtsYjr4szi9hhC/AAFT4TDuhxruUm0nJpLzOa6Hy9I2tUSJGWZBZJtTc10XgGHeBnzM9+9Cg4ZR1nZz1v2tRtofkckdRP92HV388v9Hvm/wjlcLAE+/W9LnqvLqRAys8QupGBv5s19MH9Dy5+ujshWVYtvKDRYoFoiAUaMY1M0fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7909.namprd11.prod.outlook.com (2603:10b6:208:407::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 11:07:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 11:07:31 +0000
Message-ID: <817ecc9f-575d-4c2f-a9dd-a82e39e08b6e@intel.com>
Date: Tue, 28 Apr 2026 16:37:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Fix AS SDP and VRR handling for DP branch devices
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20260424090942.3060291-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260424090942.3060291-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0058.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7909:EE_
X-MS-Office365-Filtering-Correlation-Id: 7315c670-cbad-4c6e-8463-08dea5165786
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: T/47gEfLBzVEX/J8nPY+X7KGZ68L4Psh61m0G7q8VZy2y5RJk1Uoaz2B/9x5Uq0PSvjm/6EdDwGQ/2YxpmZXoAzBJqUnjI+I/W10ZWGOWKJWtQnqum8aeBubIKPqcUAyb5JbEbH4HbBWHBV17lwPiygqJP5Df68FitxvxOt+Ed/g6RhzeetO2SF1Idp3oWtAyeh/jzs1bALedjgQJnt/sHdHVIsqHbl73EgzUWrJ1Yw5BVys96kRhk+TYYexx/3y9JC25YoRtDUnvrnUHCxRirJBjdoyidm0/O+GLe8FaZrZaOSXBIgo7ggk8NjIRzloP7BcmrugwsS3JpEb2D3phCq/AClG99RakJunHvWqXZ4xQM1hrM3WwkVerd5HK/SZck2atvvgfmI6p1teY6Gicjqz8h5Lnzf9HTrw0AYK7w/F/EkyALQvOoQuMjnAnhUVEQzQvimsXrmfLFrXoD4J5AB0U/ggLRUTPe5a6xde3TYSJv83nooo/1bgIZ0sRDzF5c7UfqzD81lmMZW8jpbpA/vuHhZeNJWIzQ1ZPKNQKxYLuFJlzMoVkpJvOKaPNLL4pjAEHZFylFIqeixW+H6EN/wMTVmKWM9B/zNfcXc6Iwmy0kCycYH4YH+rIfX/LTh6Z+zFLEBXXP0z1e8zyCb8Vi1SLfTIam2eU8GoAEzbaA7femxHSdGireqcCf66+FbN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elNEK01ZeHNXejExM0lHb2tmTkUzU09PUExhQ0FLeHZDSGNkTUdDWWdOT3Ey?=
 =?utf-8?B?ZUpWNnVrZjZLcXZIT1MyQ3FpK3ZobUxxaElpOHEvQ1NJa0ZpZnJRVFY0RGxL?=
 =?utf-8?B?SVNJUmNpMFBSRGdzVmIxSklvNHpTNnVvTERiWVVacUZjdEdvbGZVSHM4Tzll?=
 =?utf-8?B?M3Bkamx4Y09reDgrMkttVlQyUG4rdnhYcmp0elRuVVJUZ2lKWFlIRTZUSXkw?=
 =?utf-8?B?R1RsbE9YUnZBc0N3SVBmV0RPNjZHZkdDREx6T0pxSnhaYkdRd1NQWk1pSUR6?=
 =?utf-8?B?aFZRZUZnTmQwTTMvR001UG1yYXQ1Tk52U2lSQkZ0YlljdlB1UzdmaGFSa05l?=
 =?utf-8?B?Qk5vck9wQ3llWXl6endvL0VIQUJOZkp6UTNhNkxqcHd3VnU5b1NwTXJwQWdi?=
 =?utf-8?B?UVBUV2FueFpLSnlsV2ppUks1RC9YRmhZQVhJaHpudEZYK0dSL01pY2Z2cGx2?=
 =?utf-8?B?OWVBdy9CZGRKd2RubDh5QlNHcVFXTjJXWktuUWhhMHg3eWRJYU9WMzc1WGtX?=
 =?utf-8?B?U1RsMU5ROFEyRWhEQVQyZy82eTJLSThTQ2lRL1lWTndTbXNHSDNZVEdBYkRS?=
 =?utf-8?B?OWpVUXhWOU1GcUQ1aFVRTEZBMHFKMnhjaG1mT2NuMFN5NUFvWFVYMTNRSUda?=
 =?utf-8?B?SXZ3b0pZbFczZG90bDZOY09scWFkYkNLRjU1ZU1wNGlJS1V6QWk5dTVKYkkv?=
 =?utf-8?B?WHBDQ1hGUkdKanB1S2hDc2F6LzJOY256bzIwUmtvYzRNSnhNbGR5VjNUYjE5?=
 =?utf-8?B?cEI3YUFQaWZlUkRBVlBkWThENnU0OUR6UEt0ZGdiRDhRdkY1TTZkUTNESWFj?=
 =?utf-8?B?clNWUkY2eFlXL0I0UUU3QndMM0lWeGhaaGp4VTY4T09aUktROWtJUTBwVEFt?=
 =?utf-8?B?K1pJSlhrcmgwdjAwK3RLeGJFTnU1MXhDRjQ2WWRnMklEbERQUmpoN0NxREln?=
 =?utf-8?B?ajkzeGFjNHYxMkpqMkpOWFNBVjVpOVFHcy8zMlRXbHNtT2VmdGw3UGdSdXRV?=
 =?utf-8?B?RkpHczlYQms5RU1mZU54YzJQdTFKZk9KeXdUYklVbjhabThUTVdndFlJSFZu?=
 =?utf-8?B?U3NjMlNBQndGSlFERmlzbnVQSTJuVEVXWkZneTFrSldTZCtnelNvditwZnFH?=
 =?utf-8?B?UzFLZmM2WE9BdGdqSFZrVnRDTU9BMVVqQmVCVHRHTmtERWZweVNRc0xRRmFj?=
 =?utf-8?B?d0llT1AyNFZrakJYRk1URnVoRjF0Nk9ObElvWkJWWkNrbUlKZWJBRzN4blNk?=
 =?utf-8?B?WWloMUtzUm85VElBOEZDamw0SDRFSkV2d3k2R0t5eGN5SG1rVFhLQTJEdVlI?=
 =?utf-8?B?d2N5cytTWlpRMjFaTTVhTXVNWjc3OVVJek9yLzBlQzltK2ZFanN6LzNVU05p?=
 =?utf-8?B?OGhRSmhHeXlkS2sxaXQ0UmIxTDhsYUQ0bFNZcWhlS3JSOURyU1RyMWNaRG5m?=
 =?utf-8?B?MVcxQXFSWWx6T1ljeEExaHZDb3ZrR3Q5bjlzVGZpY3BYOU1hcHBqTFFWTjFp?=
 =?utf-8?B?bDZlYVlCQ0hBYUtOVzgrTkE4d0dHWEUxaTVnM0srYkVNcjIxZlZXQkRsTTdx?=
 =?utf-8?B?YlQwNmxDSGY5aFFqSlIzME9HRTJMK3kwdFBUNWFYbER3ZE9vYWxQMG1GeFVr?=
 =?utf-8?B?TVo5bUtPY2I3dFVNVHEzNzhCN2pTTkRPQ3IwM1ZseWZITnFnOWt1aDNIeGVj?=
 =?utf-8?B?VUM1QnczaHRHSlRaTEo4NFNpYW54MUJkbXUzRU1HTGVsMVNONE5OZjBmS1dp?=
 =?utf-8?B?NjVTMjg0clEyU3loMGF4SlRvUlo0Yy9zVGJKclU1SUxlNkhtdkVGRmNIMENP?=
 =?utf-8?B?MUQ4UEFIZVFnM0huY2lNbXBSZzRIYXZpWG1EZnlMOHhMS2tNamt0NU96Tm90?=
 =?utf-8?B?NmQ1dkNET1NXOFF2RFgxcGpEN2dBZDVmcC9Id0FScGQ5aUZaY2paNXJKYzBv?=
 =?utf-8?B?NHZOMmpMb3FEZUVZQ2ZhSjJsZXd3QTlzbXBrUnUxSndyTDJyUERNeVVNaElk?=
 =?utf-8?B?SmNMN1FtbWVCUU0yT3F6QktDUUVuRkYxd3N1S1dYRmw1T1ZvSDZWM0I3b2t6?=
 =?utf-8?B?UDZOK0ZPa0tFWjlUQno2YTZib3gzRlppMUZrUURxS0xVUW1ZUjQza1Y0V0ZT?=
 =?utf-8?B?SEROcWF1bmc2UVZaSHVkMGF0NmkvdlB5aDQ4WWtZUXdqSTdoWjJXaU5YQy93?=
 =?utf-8?B?T1lZTDliSGM0SEFRMzVkeEhjZUVZWklUYnFqem1yQkVsY2NpbzJ0amxjZThF?=
 =?utf-8?B?UnliNm1VMURPWHhONVpDd3FJNzFLTFJjZGFhT0hpWEFQKzNrejR5c1Fzendy?=
 =?utf-8?B?Y2pjYXdXVlZqNUorQlEzR3Bkd2ZUWFR1V1NXZjBQVG14T2xZbU84TkFhRkNn?=
 =?utf-8?Q?9st1BWghO5WKW5p4=3D?=
X-Exchange-RoutingPolicyChecked: rV/ctFapDgbyVO9ewH7kWcnfmMaU5t7Px1jnE+yVPPXUcNKCNXvd5jH2zL81Ty9Uab0HlRdkagZ5LG2dX6mQ7al1RmZgXNcpag6O/UyaZ1SKWOyNutF7mptTn5oX0ufOkzYMeBGeUttZv2XN+P+Q5JW88rcaFP1w++TYQmwjhTDpWHSHxq3r1I6siQb58OYJ6wIuOZbKnWmzslw93W7/Z1R0S9WhLRvj8CHwnCcQsoIHYA4YNA4ffX03hImX6edcgamtUKu7Qus+n3N3Z110p18xM9mqCxHQYQeEdT1vTGPteJ1jCcmeiCDDV+QP9Ckn0884+GrRLZSoaADkF/tUiA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7315c670-cbad-4c6e-8463-08dea5165786
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 11:07:31.8398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jPOO4Lg+GoiHmbJp3a6UeNQUWhQ0oxFwx+v3/XrzF+vejEp1e3hA2QScS1APJ+YbG5sahyz1vOcJwhk63KVMAaye3Z4jwLwtZ82zcTHwLxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7909
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
X-Rspamd-Queue-Id: 91234483510
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
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,patchwork.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 4/24/2026 2:39 PM, Ankit Nautiyal wrote:
> This is a subset of patches separated from the series at
> https://patchwork.freedesktop.org/series/164512/ for merging.
>
> Currently VRR is not supported for DP branch devices, but AS SDP
> handling don't fully reflect that. This small series fixes that.
>
> Ankit Nautiyal (3):
>    drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
>    drm/i915/dp: Add a helper to decide if AS SDP can be used
>    drm/i915/dp: Skip AS SDP for DP branch devices
>
>   drivers/gpu/drm/i915/display/intel_dp.c  | 22 +++++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++++
>   2 files changed, 31 insertions(+), 1 deletion(-)


Thanks for the reviews, pushed to drm-intel-next.

Regards,

Ankit


