Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOkLJ5HwDmqmDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 13:46:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B625A435F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 13:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5362B10E495;
	Thu, 21 May 2026 11:46:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQgs0n+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9657F10E495;
 Thu, 21 May 2026 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779363983; x=1810899983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FbFkrgO8ASMioQ83gJIK9ara6pmLxMnDvy4CfJTLFNc=;
 b=eQgs0n+oY+8XsaymTNDVHZmnFQFWiJAIzSmFqWBlrWnw+tlgOAC7MZjm
 tDost9z7zlmb8Ed7v0HsojzgdscBED4HpPF6v4fvIdVVz8aW6QeeMDxc9
 3viVbLxthXmZHuEBJOVVG5/lLt8M2Z7y4blCax2huK74WELjRvuQ2fTIK
 f6atfCAYs28tQwMNGIHtF88wJTG3Sb/JM0zs6FaQjc97pBjLqy3sPrIZl
 /hJO+S8K2oY7MsGTwNOUX5iTBQSsSY5Y3Jo2RcjbiHQYDZGs7hUZMjFRa
 ACuAQCzb4uLayHXpMvb4GGGqJ1HZkpK90GYAyJtL57dJykTwB+q7d/+zD w==;
X-CSE-ConnectionGUID: WUGa844sR/iq2fVplGfGxw==
X-CSE-MsgGUID: VI2lebFMTjKWhCmjSsibxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="91751368"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="91751368"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 04:46:22 -0700
X-CSE-ConnectionGUID: Yk1EGaHqQTmkA/LwbY2maQ==
X-CSE-MsgGUID: 9KIXK/ZbTA2/IqeOVVLqhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="240742152"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 04:46:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 04:46:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 04:46:21 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 04:46:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=frfWC4WoPq+D3zlDpzC1DsUQ+NdtzOEeCkq8u6YBcUJBs1WILg4ktrJIySSsYlOK/WplrCb3pDbLSwYCHbcyJl/J3B06Z/DcyIExllOBVXwkAmffQnQv3oWCLvGjjh3mOWG3U6RPFyXrLRYEtPCapmGp64rgQbpHlFdOGavjx2up5w67L8Sqf7DK6eVBU0JzYb5NGSJ/Sfhjxth2eR01Q0DM/d1YRUb0Yase1nDxRbjm2NKBmoA/4mg3qA7OqDadwY6LEGOnKsEuhBrp9NHFBs3h5qKbIZ8X1HZqXbAcPBqk1kkgyCJHVr2EvUsCmzNNJr/CkSIIMQoWdXL5DoPaVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EbSspp8GM0P+pqz32NSKq7IwqKxep60jDfeh/Pk9aA=;
 b=ewlBptyxr706jz3nou6rTUxnDtHNo4Al9NLMTNL93mChAY9fV37xPYmTeMBNduNTcvOAxL2328+Kgsqs3WIkpP0RhQcBeq9hS+ROwIZXxeML6DjhWxRWgCxpY0yYmIJ11FO3wCypOhlTd0MSMJiv/gyrn5nEFI2ymGPrCV8dLB4Ra5GzD32nu2I90EntQrnirQ9c51xeAAzMLJjjcdnjUvbWHSeSi5gLELbg8oWBsPSbPYihAgUnRAo4dTW6UOKKR+PB/8lMyC25cVssbY76iWwtOPPj+F72/+stsnA2zJpTsIBfwkPatp3jjHcviWIdUaASTrXjj5KDmzhqAQQ2BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH2PR11MB8834.namprd11.prod.outlook.com (2603:10b6:610:284::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 11:46:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0048.013; Thu, 21 May 2026
 11:46:12 +0000
Message-ID: <da36b86a-067c-4d1d-91a7-8b6cc64dc95b@intel.com>
Date: Thu, 21 May 2026 17:16:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: use set_context_latency for DSB W2-line
 waits
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260518060522.2945720-1-ankit.k.nautiyal@intel.com>
 <agsnuYVMWNSJwf4F@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <agsnuYVMWNSJwf4F@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0225.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH2PR11MB8834:EE_
X-MS-Office365-Filtering-Correlation-Id: d86f8166-9143-45a4-b553-08deb72e8e86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|6133799003|18002099003|22082099003|56012099003|3023799007|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: JxjdN8trgAQgGZ8R3A6xhio0eLKAZ3+9ViaY2TsJxE7bieZsEISVhDx3j9wpkYGxBurZJh/69IVHpsS3UsD80d16/XO6wZioHd4qDgY/JfijKtPReHesWgaZQIXTAHNJWlEunh2G/sSwYUuyqDr7XnTmxAyQWVewgP1+37CV2q1/B+oudD+njVIYdDCKcfX98qdzMX3z935OundIwTWllUVEnmZ9CJLmsHJXfTwKhJDypdr4mE7OxpKpbjGYUfeBsqCniWnXAYMjEn/wkcCiAxsbHKZhHromujm+JnaVRJGLeRmBs66QrIBb3xU931LtGU1BVxwhebc7NiETDjeBNQGXVnb4vSXMU0xlGoHltQeKWn32RAw+aZO86gyi3pIZ5a9pckf80J67R4xkZonzCt7La1bNqhV8ZvITUotKoPM9K1DzZECpGX9uWjg/TrHzt16DX4g2PS5XQpX9EJU2uSmQNxPtVwRRrNZAcV68QMttc3HzNDBXhc2ft9ZqYv9wvY07orWP5z1fwRhU7BfpSSFvDtgKtiQdIenamRQWWUq1dQi0tim90L/xeuS04a3y9fMCoYKnrKhvf6PW7y3/VZ4WKZN1Qc8frfJrHRsgiHqndoJ5lP5I7wjMwPxfxKXjcGKcDab2gAoPRY+41293FFvKgLNGr0ztIv4tAfE0HST48z2S0VKONzOAvGQxWNgx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(6133799003)(18002099003)(22082099003)(56012099003)(3023799007)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cE1LSG82NnZ6bFVTM3NucUhLM2xYVEJBNjRET2JFd3NId3dsN1c0cUV5RXpu?=
 =?utf-8?B?UXpFbGhqQnh1dHNNMzFCSjk1Mld6MVhnNmZlTmpVd0JKYnpmQlRTT3c3bDhk?=
 =?utf-8?B?YmNKN253NCt5WURhRjUyaEx5aE5wM2JXYzV4MzdFcmpId2VkMmxPZ2lZWk9X?=
 =?utf-8?B?UStZNTg0Mk1saEdxcDJtY3Zka1EvRkNGblNzWWpPMjZCcTBoWllFdldQR2xL?=
 =?utf-8?B?WGRYaGFzOFN1NTBLb2d3ODh5L2NRSVZjZjI0UVJNZUpNM3MvYXlxdk1DVEd4?=
 =?utf-8?B?ZWxEbXR3c2txNE5kc29aTWRmNzJGaWJtSjhkd3pwRTEwcFVoekFMSGNuSEdo?=
 =?utf-8?B?cjFsZ1FucGJLeitlcUkreWkvblI1bmpZSEFkQnBhZnlmKzNlOE9mK3Y0Z0FC?=
 =?utf-8?B?dEZjbFdqU2grZW5CMlM1bURRaXQ0ajhEWWpVWVIvTTBhc1c4RHpyYmM1ejd5?=
 =?utf-8?B?ZjlSZWlyc29TU0lXQ2p1Y1ZrTnhHTGhTTEhOVlh3bE5Ec0Q2WmpsZ3A5S1kx?=
 =?utf-8?B?LzlKRXQwYzNvSWg4bityZGVjSjN1TGpOQkE1Tk02dUdyWTl1Tmw5TzRPWDl3?=
 =?utf-8?B?MU1pU3JIaDZ6SVI4ekJTVXBjdDdUZXNRalU3b21hQ3JLMmdVVE5Sbm9pcFFv?=
 =?utf-8?B?M2RlVEc3ZDFCRGNYZDRFRmdLZU9lRUNuV2RtREdmaFBIRkM1ald4YmdrRjdz?=
 =?utf-8?B?elJ4b2lZMElUK2FPcUtVL0xHU0RUUVpLS0JCdTh6dFB3cWdTVDRrVWJzTGJO?=
 =?utf-8?B?YlFlQ0RaUThnRWZweFNyVkRYVlhQN3FGUnNJeXN4cUNnNmNaUVVlM0lSOXhQ?=
 =?utf-8?B?endsbC8wU1g2V21tQjFxckx6NFAzdVg0ajdBTy9LZHdnK0t5dVdNSGhSTGdI?=
 =?utf-8?B?blBvYXpmbmcxOU9iUXh3bkVtZE5yTy9oaFFCZzZDeUx1NUtlZlR3U3JRWkFm?=
 =?utf-8?B?Z21yTkQ4WHJoU2twTXlkWVRVUW1rUmlpNDExTkRtTkVVMmZQZUNCem9yZnV6?=
 =?utf-8?B?ZHUwOEVIM0JGa29RQTJCYTdER0RqR3NONlNWaHUzeDF5S2hhSXE1SFdFSFpy?=
 =?utf-8?B?aTA1R1ZNcWtpQlVjeUhYMGRvUTNUOElkYk5ENXNodFNIalNvTk5QSFI1VGdy?=
 =?utf-8?B?QmNUQklzVWkxZEluWUxCL3JnWTBRTWdySG5VZ0gzUjZHTE1wSWRqeWU4aVZQ?=
 =?utf-8?B?a01RM3hVRWlJL1NZQ0dJV2srd2xmYWE5TmVGeWNBRXlwMDh2ejluc2ZoQ0lZ?=
 =?utf-8?B?ZkVaK2I4Vzg3c3ZNa2Y0clRCdzRZNFFtay9BNlF5OFQ5ZW9rd3dnRCtGVGpx?=
 =?utf-8?B?ckFySmxUZ09SbTc0UDFuZXpIMi9rUlJiS3hRdmdVcmVhcWxhT0xNdDdiV3g3?=
 =?utf-8?B?WTJ0Q0UwWG9jRWszRFYvd2drbCt6MzRJL3hYUSsyczNRRlJUYUtSNXBuVGlY?=
 =?utf-8?B?aWl0UlEwVEU5cHlEcS80VmtLQWJ3bkJ1RzlWenhIRE5tNmJvZmlvVGxxVGdJ?=
 =?utf-8?B?Q24wUzY5R3NzVHV5TVZ0N0FZZitHdEY0aERYL3F0eTNla0ViN2NZSkl3RDZ4?=
 =?utf-8?B?R2E3VG96T1JnbDc5QW9CWms5TW1lbHdvdTc3L2dXTkhjZmliMWI2RTZ6Z25Z?=
 =?utf-8?B?NklUVUxwRHBmeVhmQWEwemNSODRFMXdvOFJmTTBxMDJDMlBpUHlXZzYrWkEz?=
 =?utf-8?B?b1NuRUVXVWtpSmpBcGk3V2x6WnkvRmJFcTQvMS9GL0w4clFUNHR6V2lzTDlh?=
 =?utf-8?B?Ylp2UVFiTXk2VUdKNmxkU2xzK0N5RjNMMVJMUnhWZVpxb0lKN05kNU5RT0lV?=
 =?utf-8?B?SXZOMU04SW5XUmhlbXRVejVwRUw3Y3lhR0M3MUJwS3VRTWV4ejF1U1RPcWhC?=
 =?utf-8?B?bks4YnFUYjY4aVh2QmVMViszUUVIdExzSFI5K1NZaWJrTUIrQVJLL01jTXZu?=
 =?utf-8?B?N3pnL3JSaWhIcU9NR094a0kydEF0cFFENkJ4UjFmditnaGJyd1g4RjJRZDhk?=
 =?utf-8?B?VWlHSmZtVDF2Vjg5SnpKMzRoeS9VeHNDbzJieUM3Um41RHFoUUs3YjI5dlB0?=
 =?utf-8?B?QmRkWjR2a0pIdWFpUzVFNzFtdHBjZHF6YXp0WHFTWGdmZzljWlJBeUZNa0dI?=
 =?utf-8?B?SHhGak5wdkhNcEhLN3pQSWJHZTQ1M0ZhZkprRXY1Tk5tcDA4QWgwK1hUejM2?=
 =?utf-8?B?UUkzK2RLTTdxNHNaUFozV1lRcWZqVjVEcjJweVN0V1BRV2QrN1A5ckZBSjk5?=
 =?utf-8?B?WVV5eEVnbmc1VHJjdHE0Nng3bkhmQTJkNTNhSlc1SE05THhUQmlwMUU2SmlM?=
 =?utf-8?B?UXlNMXVpMjBiQmZDZDlNTDhHNTgxeVFMRWtsN0FmOGI0bXAzUDFtOVFaa2lY?=
 =?utf-8?Q?9i1ixEY7MNRIFfcA=3D?=
X-Exchange-RoutingPolicyChecked: Zb0pMi96mFF97MJeLUMd8NKXwt6NHFqvnTojKQiVbL9FEhhKYyvY0s9FGV8R9rpB2JbP/Wkb3Twk4+5KpbVSOQrQYLpPseBsTHdEqE9+BqeZsRRlsXUvVLqdoCiVCHPEYr4d3EcXDYGT3SX9Lf6zZrmhAI3Q5U3EqjZGM8TVoE6BGtciE+V0u2jKWJnkWQoZlGGzyCCXh6Yh9Y/hevps2gbqLEUJ0EyLuDG1LxDBoxfUW30iwcpRI/KlWGfDpvgCK49uWWD/CyKYPJMzMrGjGHXcp6G7TFWrOGhIStbclCKG4/RYcWxG8TaUV3gsZXMs0njWpz38WTYiBjeRCuEwwg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d86f8166-9143-45a4-b553-08deb72e8e86
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 11:46:12.6402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KfJJeJfMbolWybro5uCvr2aduVPS3kD07pYkdbtYTyZkf5GlcQrJKfPpej1reigFL45OaB3+Yk7s59y4k0AcSSV1HRE0tgPtxvVRtn27IBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8834
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F2B625A435F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/18/2026 8:22 PM, Ville Syrjälä wrote:
> On Mon, May 18, 2026 at 11:35:22AM +0530, Ankit Nautiyal wrote:
>> set_context_latency represents W2 window/latency lines.
>> Earlier, delayed and undelayed vblank coincided, so this matched the
>> distance from vactive end to undelayed vblank start.
>>
>> After guardband optimization changes, delayed vblank start can move
>> away from undelayed vblank. In DSB non-VRR paths, the older
>> intel_mode_vblank_delay() is still used in some code paths.
>>
>> Fix this by using set_context_latency directly for W2-line waits.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 11 ++---------
>>   1 file changed, 2 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index fec8a56e21ea..8521f5969aca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -745,6 +745,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		intel_pre_commit_crtc_state(state, crtc);
>>   	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
>>   					       intel_dsb_arm_exec_time_us());
>> +	int vblank_delay = crtc_state->set_context_latency;
>>   	int start, end;
>>   
>>   	/*
>> @@ -760,7 +761,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>>   
>>   	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
>> -		int vblank_delay = crtc_state->set_context_latency;
>>   		int vmin_vblank_start, vmax_vblank_start;
>>   
>>   		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
>> @@ -789,8 +789,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		start = end - vblank_delay - latency;
>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>>   	} else if (pre_commit_is_vrr_active(state, crtc)) {
>> -		int vblank_delay = crtc_state->set_context_latency;
>> -
>>   		end = intel_vrr_vmin_vblank_start(crtc_state);
>>   		start = end - vblank_delay - latency;
>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>> @@ -799,8 +797,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		start = end - vblank_delay - latency;
>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>>   	} else {
>> -		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>> -
>>   		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
>>   		start = end - vblank_delay - latency;
>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>> @@ -889,7 +885,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>>   		intel_pre_commit_crtc_state(state, crtc);
>>   	const struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>> -	int wait_scanlines;
>> +	int wait_scanlines = crtc_state->set_context_latency + 1;
>>   
>>   	if (pre_commit_is_vrr_active(state, crtc)) {
>>   		/*
>> @@ -912,9 +908,6 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>>   		 * scanline until the delayed vblank occurs after
>>   		 * TRANS_PUSH has been written.
>>   		 */
>> -		wait_scanlines = crtc_state->set_context_latency + 1;
>> -	} else {
>> -		wait_scanlines = intel_mode_vblank_delay(adjusted_mode);
> After further consideration I think the current code is in fact correct.
> intel_dsb_wait_vblanks()/DSB_WAIT_FOR_VBLANK will wait for the undelayed
> vblank when VRR is disabled, so this does need the full wait.
>
> So I think the actual issue is more of a userspace bug in that they
> assume the event fires at vblank_start and guesstimate the deadline
> based on the time when the event was received. What they need to do
> is calculate the deadline based on the event timestamp.
>
> Another option might be to switch to using the safe window even for
> the '!vrr && always_use_vrr_tg()' case. But that probably needs some
> actual thought...

Using the safe window for the above case with changing the 
pre_commit_is_vrr_active() to return true for have always_use_vrr_tg() 
works in general.

However there seem to be an issue with non-VRR case:

It looks like WAIT_VBLANKS / DSB_WAIT_FOR_VBLANK is releasing right at 
the vblank edge,

or perhaps sometimes one scanline early (its not SCL though).

So by the time DSB reaches the WAIT_DSL_OUT(safe_window_start, 
vmin_safe_window_end),

PIPEDSL is sitting exactly at safe_window_start (or just below perhaps).

When DSB instruction checks perhaps is sees that this as "not in window" 
and the wait gets skipped.

The following WAIT_USEC(SCL + 1) then starts from too early, and results 
in DSB interrupt getting fired earlier that expected.

Adding a 1 scanline delay (actually even a smaller usec delay is 
sufficient) is helping here.

I am wondering why this is not observed with VRR case, though.


Regards,

Ankit



>
>>   	}
>>   
>>   	intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, wait_scanlines));
>> -- 
>> 2.45.2
