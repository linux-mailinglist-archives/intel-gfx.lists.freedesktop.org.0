Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHWvOMJSpWkR9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:05:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B131D5366
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA4310E354;
	Mon,  2 Mar 2026 09:05:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hD0QHxTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5262310E354;
 Mon,  2 Mar 2026 09:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772442303; x=1803978303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CJILPxbxLXLxdDe+GsTFWZZdM+5e+NFSFm5qDUCA06s=;
 b=hD0QHxTLLYQDy+vpfe+DSFDroXvUOyC/Oo6qrYng2ggmtB6pPEWx6K5g
 M9XP1KeLtvw2ED+AgBRglKjMvbkoVLKHdFSINzektwWFxGs7A5jFW+/0q
 FEleQhgiHS6cyv2mMkyiQq5uPggQP5mJQdKiJHPZFtEEgur+v/pgRy67V
 h+aJlOHqfHvTTeMwCpEjSPkJnObttbwbX52S7Wdsb7WUZ7VHer9EFdDes
 iZW9qRr9PXdp26OD43ITeYBdmDA25jkq2lWw65i5uDLZEymc3BmQFc772
 NnrYt5ctiUNpqaL9BsP9H2ic9cyX7RBPcRuG5IYJhl+w6iWnd+D+vY0Wo g==;
X-CSE-ConnectionGUID: hl4C+n7IT9G9am6H1dYFfQ==
X-CSE-MsgGUID: HLvnxWACRnKiALyh6/tlLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73408854"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73408854"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:05:02 -0800
X-CSE-ConnectionGUID: FlBlsRmmQG6Hd86dicmJjA==
X-CSE-MsgGUID: NpTVdrgqSYadFSUQP2KrXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="214831817"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:05:02 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 01:05:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 01:05:01 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 01:05:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agqv16ysMii3HuCNnN6HNLfeWfqU2bG5XVfA4ojA2aAmVgTvKPROmbLSdgS0Xx8OwajntJRH1yFZSdKYDMYI8vqqR0Nx1D7uUvaM2qIJxQvQYVQ2e8jgEqIrTHAq1u/w5ItD5ILP9P5AewRH9f/gIWlME8JfhFER/G5x2+XqOaUhCnJThyudFseeHzXMUBtB9pMCdR/J35wf7YAmoSnTmsjRE1Ip09jinoDNnKxFeH4Xjsonzbys2kQ1CWDh2g/5B0l5Pqb9gN7d7ZAZhqLsIk6Dg5eq4r5cyQqmBXXPdJYOxpCbSM0yisTNBrAfYV/OlT7WcpJEC6d7rthWyJn7iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35e3kHZMDtUKoeQa2ZHFnj0RD700iBZ69mzWLXmlarc=;
 b=hO6FYKmz8koNAzAzCFW89QXvje5vWuIlR1e/tv8lWHcM3LJAwNxqzMb9T/dM3ycYzdPlD3mWyY8GmziBN9ctpas/fo24EvyQdM/ZLCEJYAXB7haztuuzB7OsEn2tHY9sy7ifKPqCuH5Mku9Csc2mProZ7ANVJaKat7mTSZl/UFqZiZ1v7QhPmmMYWjLhhddgaTuNXGqMNlR88rF9AZAlvKOdVUNypZEEwT7kGHsyW1/qs/gXsJY8001CLSWnb4M0MKF8ZUeelxQZuJDSa8WpgVbupaoCYaLMQhYESY9rmS3QDhEI70IZgvMsx+XY0mU0croMBRJ/59nNK5YP6IovJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN0PR11MB5964.namprd11.prod.outlook.com (2603:10b6:208:373::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Mon, 2 Mar
 2026 09:04:53 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 09:04:53 +0000
Message-ID: <cfaac7db-2920-467a-a980-a2225f028014@intel.com>
Date: Mon, 2 Mar 2026 14:34:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
 <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
 <aaVCFx0U1TZpJeuJ@ideak-desk.lan>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aaVCFx0U1TZpJeuJ@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0147.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::9) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN0PR11MB5964:EE_
X-MS-Office365-Filtering-Correlation-Id: 28d4a28f-eef0-4a58-a3e6-08de783ac437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: rMDovI30aCqGKzBMh2yRrLj2fY7tRK710V+ziLm2ldMEydGNVs8WpuSgIQoW0T7mCeCb+82Cs7y4Xr/fIB7TGXbyymNDFfNN2PIe/aH1GvAhZ0Ujrcd5x0smVsFL8tNaV/+BXn0QbJxR3+rLF0xzssj71IruttXZtm56Fw0Hz3vr3PXF5zVFaVccUVk1KMij4x47Lm+q+cPAoq8lXhOUJUMoR4owQfOU9CrFOmynHllAXb0BAAHOAQ8TQgZpX1dkh6oj57G0ZXmddXxZE4c3Xlc13jStNjWGejGjE3V4bCsZd5e9qq0rSlcv4S9MQqbpB+zCcpUX7nF/IWi+VLilju0gfl3vH/bVCM4Xk/+ZGqUoFjKlH9yDfk9OUywTk7iqEvNTQUgYS/MyNVplFyco+dOE26LK1JpaAHgga48wDe5ytvAiimvPy/Uu6YWAc8XFb0VkyXoeOXagMH16VhxEWmz/MNTxPxzpeI1vEm1u3ThLuKiO+oTL6FL1QUboAMwBn1waBpb6IOcZrzTSV5gq7CzX94IYZqagOJVl0wqRBwcdrhpPc7GhgkcbsYXSY0Px8VIQXsvlhl3NQ3XSvJOLvSkspYpnKq+mycBv/vV6CY3+pBVV1KJd9jHpuRAIK2Ja7Q7N9P8joXWvl9VdDEjVokqbHvSNfxsukqkrKYHNJo4b9koXMa1NRBZsmN2odhxs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDhHbXk2M2FodDZRSUpMUDNDd3o0TnN0OWV2Qk5oVnNRdUkyMXNUUnkrRlE2?=
 =?utf-8?B?RjBielozNzFUY3pYUi9sZVdPY3Z0MFlRcjNoU0FTck9naWczVGgyVXdQTm5W?=
 =?utf-8?B?SEJsWVo5SGkrdWpMc0d6bjJ6US91TzZWeTZlNng4clhwcUoxeTJQNUpCekQ3?=
 =?utf-8?B?TWdrc2NjZlhWRVBYK3lQZ0lvcDFPM3N2MDY1ZUZWMUVqcVE4cC80YUVqelZs?=
 =?utf-8?B?MlRjZlEyS1F3VTExK2Y0ZytEcEhFL29raGtUYVFIUzUwcFFNOTJ3Tm11Rmps?=
 =?utf-8?B?Ti85WXBTSUZQRHJBNEc4V1ZvM3JpZUl1MzYyN0tLOWV0c01JaDI5S2VFQXg5?=
 =?utf-8?B?RklDV2JQWnRmQzlXV243YTBEc3pSa1VrOUxZNGZEVUxWSTh6L0NSRC9Oakkr?=
 =?utf-8?B?SVRuWXFaMnNZWjRYaXYxZzVmcjlLUytkQ0wvZHVKWnFJWW9rb0Q2VmJyVHpp?=
 =?utf-8?B?dWY2b0xnYmwwd3RqUThxQ21WbUFEOFJ5VSthS0xPeC91VDBMN0JGSGo2OE0x?=
 =?utf-8?B?Mlg0VlYwanJETWZJbzUvVEYxUjk3a2pMbUhXdHA0V0RacnB4c084d3FSYmZp?=
 =?utf-8?B?NGhOcEJ3K0lYTGpKdVM5cTU2a3ZXY0hQeWtJWHU0dDlvKzNacGpScXNEeEJW?=
 =?utf-8?B?ZHFrNnFJU0JVV09POHgrek54NEs4YlBzOHFvd1NSdEVMVWdJSURTWExTS3JR?=
 =?utf-8?B?QmxHdnNOVlE1Mk80cEVBeXpHT0NJUTNSUDVFT0s3L01RRlZXcUNpdHNuZ3hj?=
 =?utf-8?B?eFVDdG1qRUdjK2R1UUJ0djFxOHVJeFIzN3MyWGNaZ1UxOWhKeU1nNXRGVGFE?=
 =?utf-8?B?bnpOVm9ETGV6dFNDdzlabFNnQ1hQZFVkT3loK29sR0dPWlNxOFdDUDhubUVL?=
 =?utf-8?B?aEkxSmpCT0NabnY3QkNmN2RHazl2aXJoL3llckNYMUlTVXM0b0xzaEpURG1v?=
 =?utf-8?B?bUlibkJmeFB0Y0d0Q3oxRjZIbFMvVFBwMEVSMlgyQkFycGhyTVNSMmxYaWxZ?=
 =?utf-8?B?bVloRVZMcndTdTBFTEwzV3N2c3pBVlhSS1Vyc3hUUE9ZS3hnc3NmelNpUGVj?=
 =?utf-8?B?UzY3ZVd3VHh0VWtDYTIvMStlMXFhL3hzMTlwdTVRdXlxVHVOYzBSem9LSkRS?=
 =?utf-8?B?dXhzSXZDRUZaNk5ZN2U5b3N6MzgyOGEwYXdvSXVKSGtQVDZ4ai83WHRBcDhQ?=
 =?utf-8?B?dXpRVmp0VitSQzllcGtTMGN1bmNERTJNdFNSOHBpZXE2Q0psbVRiYVZJZlpM?=
 =?utf-8?B?emdyTjlDVS9MRlh1QWFCRlFZRVFtKzFPU2RSVTFJaEVzbkJrdTZnZ0hNdGVr?=
 =?utf-8?B?dEpGTE9uNy9SbCsxd3FyZjVPTkhwS3hIMnVrYUQ5WnhucHdPbUN3RGRwaS9F?=
 =?utf-8?B?NEYrbnRYWmFXc3hiN29VWFplQUZHV2ZjSHRCVHRNRnBUWmhrbENEMkY4dGV1?=
 =?utf-8?B?UHozbTRyWDVFcE16Zjh3Q2svdXo4cDAvdjdhRXZ3czNXb3hkUGNKVWZnaFVy?=
 =?utf-8?B?M2tKbEh6aEphQXZpcXcra1lML3lTR1JQdER0SVVHU3EyalRYZVlZK1FSczN3?=
 =?utf-8?B?RFViTmNGWW56TVdKQ21kTVdlbGtjdW9Tc0FLVUpmSlNxa1MzRGpiZ3lLSGIv?=
 =?utf-8?B?MC9FT2tIc3A4NlJicnAxdDFNN3l1bkliL0pKcU9WeklBZGxvRnZFT1BFOUls?=
 =?utf-8?B?OHFyakVkVjhza1VKVkpsTjQ1Yk14dzNlZm5qNzZrdU1RV1BZTVE2dE8wM2t6?=
 =?utf-8?B?YnVRL0Y3c1ZhWUhtemtBU0RaVmluNXJIVTY0TUgxMzhOaFV4VjkzblY3U0ZT?=
 =?utf-8?B?R3hEdldyZlI2a3NLdU4yQzJkTFIvQzJQUXJmdVFkNjY5OWtST0JFanVwQW0w?=
 =?utf-8?B?TWtwQTNuWER4YlNtSDdGeE91N3NybFAwSFNQaEc3Qkoxb1pyZ1RxRU1sQ3dM?=
 =?utf-8?B?U0RGdVZjMy9ZRUp1aG9kZC8xRzJwZVZMYmlnd3RhNzc0bGQvQkFCZEpnNkJW?=
 =?utf-8?B?bXo2T1Nqa29VUmFaS3dxanJYMjNEamZld0xWN0tyZmR5SjQ0UjEzV05ZRmxi?=
 =?utf-8?B?TE9ZVkxUUVY5c2ZyeitRdmNuemJtOGp2Mm5vdkxuQWMvWTc3d2dJMlNoSmJN?=
 =?utf-8?B?dC8vTi9NS2U5ZGlrZXlhbndrVUh1TWZ0REgyY2lIS1h6bS9DWWFGQUxGQmFY?=
 =?utf-8?B?Vy9nS0FzUzAyNFJWVStqeUsxNVgxaTk1cEY2YnZqRnpwMXhmUHNUVy9pRERj?=
 =?utf-8?B?NVJsbmxpalRvdVoxdWdBanBmM3BiSHJicXFwMEhKRURVTmRMT0hvaXlMR2JW?=
 =?utf-8?B?YTRvdGMyeWVIRHFjdFZaNVBINTE3REZtYnJ1RHBWQWxzZWdqU3ByQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d4a28f-eef0-4a58-a3e6-08de783ac437
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 09:04:53.1766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tPl9EqOlJAZhuy8CQaSyNa+CF0XQoJ1kyvsITfXILbNvSPCocTbmruVVde65wFpo8rkFR3R5YDksas2+hDQ5sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5964
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 37B131D5366
X-Rspamd-Action: no action

On 02-03-2026 13:27, Imre Deak wrote:
> On Wed, Feb 25, 2026 at 09:03:06AM +0530, Murthy, Arun R wrote:
>> On 24-02-2026 20:20, Imre Deak wrote:
>>> On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
>>>> Its observed that on AUX_CH failure, even if the retry is increased to
>>>> 1000, it does not succeed. Either the command might be wrong or sink in
>>>> an unknown/sleep state can cause this. So try waking the sink device.
>>>> Before reading the DPCD caps wake the sink for eDP and for DP after
>>>> reading the lttpr caps if present and before reading the dpcd caps wake
>>>> up the sink device.
>>>>
>>>> v2: Use poll_timeout_us (Jani N)
>>>>       Add the reason, why this change is required (Ville)
>>>>
>>>> Closes: https://issues.redhat.com/browse/RHEL-120913
>>> I wonder what should be the rule with non-public links like the above.
>>> For instance, we do not put VLK-xxx links exactly because those are
>>> non-public. Should/could we demand that RedHat opens a public ticket?
>>> Jani?
>> There is a JIRA as well
>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
> The above ticket is about an
>
> "AUX x did not complete or timeout within 10ms"
>
> error, which means the DPTX didn't complete the transfer. A transfer is
> completed either (a) in response to a DPRX reply (AUX ACK,NAK,DEFER
> reply) or (b) in case the DPRX is not replying at all. The above error
> indicates that DPTX observed/signaled neither a or b. That's a problem
> in the DPTX not in the DPRX which this patch is trying to fix (by
> setting the DPRX power state to D0).
On a Native AUX_CH transaction DPRX can reply with AUX_ACK/NACK/DEFER as 
per Table2-177 in the Spec DP2.1.
In the error from the above ticker, we are getting a timeout for a 
AUX_CH initiated by DPTX.
Section 2.3.4 of Spec DP2.1 says timeout can be due to No Reply and the 
reason for No Reply is either sending invalid command or DPRX in sleep 
state or waking up from sleep state.

As part of this state, this patch is trying to wake the DPRX by setting 
to D0.

Thanks and Regards,
Arun R Murthy
--------------------

> Please open a separate public ticket for the actually reported
> RHEL-120913 issue - which based on the changes in this patch must have a
> separate root cause than issues/4391 - and attach a dmesg log having the
> AUX logging enabled (drm.debug=0x10e) and reporducing the problem. Also
> please ask the reporter to provide the details of the connected eDP
> panel model and wiring to the CPU (is there any retimer, mux etc. HW
> component between the CPU and the panel?).
>
>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
>>>>    drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>>>    .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>>>    3 files changed, 42 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 025e906b63a9..fa0730f7b92a 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>>    	intel_edp_set_data_override_rates(intel_dp);
>>>>    }
>>>> +/* Spec says to try for 3 times, its doubled to add the software overhead */
>>>> +#define AUX_CH_WAKE_RETRY	6
>>>> +
>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>>>> +{
>>>> +	u8 value = 0;
>>>> +	int ret = 0;
>>>> +
>>>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>>> Is there any particular reason to turn off/on the probing? I don't see
>>> any reason why the DP_SET_POWER polling would need that. In any case
>>> turning it off/on this way is not ok: reading the DPRX caps, which would
>>> call this function, could happen at any time after a sink gets
>>> connected, so turning probing back on at the end of this function would
>>> re-enable it incorrectly for sinks where it's been already established
>>> that the probing workaround is not needed and should stay disabled.
>> This function intel_dp_wake_sink() is called from edp_init_dpcd and
>> dp_init_lttpr_dprx_caps.
>> dpcd_set_probe is set to true in dp_aux_init which is called before calling
>> intel_edp_init_connector.
>>
>> Probe is set to true, hence in this function I am setting it to false and
>> then setting back to true.
>> But there can be a possibility of reading lttpr_dprx_caps being called later
>> as well.
>>
>> Will correct this to check if probe is already being set to true, will then
>> disable before waking the sink and restore the probe status at the end.
>>
>> Will get this corrected in the next revision.
>>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>>> +
>>>> +	/*
>>>> +	 * Wake the sink device
>>>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>>>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>>>> +	 */
>>>> +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
>>>> +			      ret > 0,
>>>> +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
>>>> +
>>>> +	/*
>>>> +	 * If sink is in D3 then it may not respond to the AUX tx so
>>>> +	 * wake it up to D3_AUX_ON state
>>>> +	 * If the above poll_timeout_us fails, try waking the sink.
>>>> +	 */
>>>> +	if (value == DP_SET_POWER_D3 || ret < 0) {
>>>> +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>>>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>> +				   DP_SET_POWER_D0);
>>>> +		fsleep(1000);
>>>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>> +				   DP_SET_POWER_D3_AUX_ON);
>>>> +	}
>>>> +
>>>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>>>> +}
>>>> +
>>>>    static bool
>>>>    intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>>>    {
>>>> @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>>>    	/* this function is meant to be called only once */
>>>>    	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>>> +	intel_dp_wake_sink(intel_dp);
>>>> +
>>>>    	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>>>    		return false;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index b0bbd5981f57..3f16077c0cc7 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>>>    bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>>    				     int hdisplay,
>>>>    				     int num_joined_pipes);
>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>>>    #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>>>    	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> index 54c585c59b90..cbb712ea9f60 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>>>    		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>>>    	}
>>>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>>>> +	intel_dp_wake_sink(intel_dp);
>>>> +
>>>>    	/*
>>>>    	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>>>    	 * it here.
>>>> -- 
>>>> 2.25.1
>>>>
