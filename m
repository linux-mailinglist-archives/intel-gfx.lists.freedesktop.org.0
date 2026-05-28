Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN6dJZm9GGqnmwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:11:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB655FAD0E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3032610F67B;
	Thu, 28 May 2026 22:11:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRCl8ehu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D2B10F67A;
 Thu, 28 May 2026 22:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780006292; x=1811542292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n/zPPAuFnEVzseivKRsa6ibB/LWMvdfEC/zUd8jzx9M=;
 b=nRCl8ehud+lNMtFiQf+rJfOAIMMlaHMejne6QFsyFZYVl/bIyEuSYDL8
 E+RN5nzvbrBEH9fQ6QTkXk9e806vsSTx2mwlf+rML8JP67xmnMJibbAWm
 3LOZ5QJqioukH0pzMhMimSHVPJy3HWyzBltsDW987RZ4WCgp2psz4oT9M
 vyNA1kVAHuKISFFKXJXlk8O8ZjE9iwzvzsazXsMXvPSXT4QnOKMRpUK7B
 mNqyJ6uOckHBT24ilqgDVItJ4C0hdtPSwOVH4SJn8exYoDlBhKpsNEG5j
 ZmhHP6wwwCIZ1NMYLFk45zKtra5/LUlUWKC6EjUK4JR10VhfItkbehO76 w==;
X-CSE-ConnectionGUID: O+xeT+omTWiG9wcy7INqpg==
X-CSE-MsgGUID: zGJaJAxuTJqoR9RaXkz4vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80711920"
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="80711920"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 15:11:32 -0700
X-CSE-ConnectionGUID: 9VngkPvQR0Wan0djJB3+BQ==
X-CSE-MsgGUID: byW2fnRGRhS7+WZNFmt6Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="241844496"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 15:11:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 15:11:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 15:11:30 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 15:11:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NsQeREHeO88/J4yWzpB6y8JJJOiGlo/R2tkm5Nmh/+ZQHkJY+rUSe5yDintVmLU/NwcDynv4svi+noTrs4FNNk1QZz1am5tzBxahcFw8fapwaXyxr7LnS/ReAlf6J6EIJdGBNlS6MqJpLRYKULEXWtfensuvFU30HA2PRHPLB2/r8qKzQr+XApJhI4TuzcbzpEXRukURt7CvxEdCa2mdWMLt3REBHb41FU+yilq6Ekaw62e+QPAvnNGm+vjvKvS0zBf9jOXM1R6Ie2gTeTMh91l0ZV7/hQfdjau1bmCkYRfMTO9iS7T4Q52fOfXwTcDT7uFmNOzJjqnHnI/mYFuUgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L63LMkNMFsSQDv7dhhg68yb+P35hulm3DyvqYz9bw4M=;
 b=LVrx3ni4V+CTfmsAVMlvNZ27C67rkIxGMPfNsEJTHMKKq9zh/DDt1kVOXMMfqme/bF1VwxzHkP3c9ZFHP+/4E4wDPjNPk1Pue5r1XqpmMxg6NbCp3l4IfVXSR1MycSgDb3fY6AveCs+X92RXZ1awm4XM24P2kVi88UCszm2JMoktGLyUl4rXdAK7+cV0tuOkrO+wHm51kwM0zoHfRq/64noxCg5ZjHNbx8d011y9l4pqr1vDr8Pa7KqKhA3TV7XMgNtcEM0mKT2/VavLRYF9gxTHWVtfFsHvw2Dm3mIiuesyT3CVRuZOquJb8ZCLn2cN6XF9+Ic07YNCtOmJnrRz9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 22:11:27 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 22:11:27 +0000
Message-ID: <c5b06289-f353-47eb-a918-102288fac7e9@intel.com>
Date: Fri, 29 May 2026 00:11:22 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes on
 PF
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1P194CA0057.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::46) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|SA0PR11MB4589:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b01b1db-57c5-4fdb-de5b-08debd061053
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: KkGjRGGJOKsC+h2quQ1NWjEzShWGLDkRhTxekasg+YuR4dG4Bb4WHsW7pikLXFby3YyJNvQu09eh0wma9iKVNQtrpGncofNXqZhBMCfbru7/bght23Qixri+7OMqONbq4f+8R75uwbDXC9z+zHEOjLu/zodlM37ReaKJnQ9pCpu1Vc3YFdnBpbKnBYUM+Ru8sWATb/oErICO0UZiF+tRyfVXOrrX0NuSsEWu4tVi0BebJ2z0GICwYlpJ+efJYiPTncmNGGJMPvCTb/gnp7azXeIt8rZouRvqi832O6Vc15tA6llow/P/VKkgvIlej3O5sGqVVK98BDbpkRWNQb5dZcOclOdQe8l3EwfwIYseqenCZQzjQGXZM+M2V1wTj7baAEokCsyGHkIvbAzLHcxpfANWzvuWqqlc1OX9EHfbIikDQr4zaPEQeNFjG5gy+VzHNeassxLTghRlmmg8PZxcMnSSle0ns/AQ+bIgKwVhm5qbY6gKdBlPYiwYBpD+FgdC1LKjl4n3q4s7YaSOOgFLRX7NyaeobBsEgbYmLsdMlzw6/kfuHNMrhnONaFpGutp/o53NfE/5v2FwgLIpKvH/uXMkCJmLw7tZ0uhY2YnpUv5V9eb/jbpMTt1FSwApXEVGmmVkIfmY7NHVtKJdGbSWBW7NqcxBePwoHEI7MesBWITx0a/oMsWR2/3fWYodPzd6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2tZdytzcFRoZTFBREtiOTlYL1ZvZ1drdzVvQnYyN0xZWHVYQ2hwZ1hXS2R5?=
 =?utf-8?B?bUlEQVBvSnhrb3FnbU1zS3RUTnNlMFRqa0JaTVZHbEppYi90cGxIL1ZTUGE4?=
 =?utf-8?B?ZkRhMWpQOHFuNXdwcFNuTnhWWm44M1Jhd3JueHZRTVRHdzZjOFVGTjJmUXdC?=
 =?utf-8?B?WUZXR2txNTNVUGdKSjZ0aTAvUDRzR0VpU3kyQjhVMkVlaURiRldxem9BVnBs?=
 =?utf-8?B?bDY1cW4zeWNQMVJBL2F0K0VjRy8rcUN6L3AwZGRON1A2TUdLOXZHQlZTQzZK?=
 =?utf-8?B?NHpLdmdiZVFqN1oyclJzV2RBRnNaWm5oVGRJS09NbjZ1TnJBaTYrTk9PVVNj?=
 =?utf-8?B?OFJJTG56VFFzeTJQOHJFdUN4bjAxODNiZ0EyTHNZQ1h6MERiNmh5bmlFRlhJ?=
 =?utf-8?B?RDhrb2tuTzFCUzFXbjZGQjZHdkhnU2w5TlJBRXpiNFY2R3c5dWFQaTdrb21K?=
 =?utf-8?B?WnlJdDR0bFE4em1TUk5KU3RxWkR6Ti9yR1JOS0VtZVN1UDFMTW9kNVJ5enVq?=
 =?utf-8?B?VDBuajRDM04yV0wzRFZLQjBzbkUvVzBkL1k0TC95eUdtQWZKc2h3SVVTMWNM?=
 =?utf-8?B?eTNxSUJIQlBtaFZ1UWVHZGxEMkZKa0dXSDZva25qQmJqcGVhTGN2VkwxUGxN?=
 =?utf-8?B?MklsUFhvSmxlQ2h5NXJHTzlvMy9iNysybXo2eGcxWXJQd3lSWmI0eHBZVXV3?=
 =?utf-8?B?NHkyTU9lRWhDL3hlcktKaTRCYWFsOGJsMFBTRFNBUTBQemhQTXE2TDFKV2pH?=
 =?utf-8?B?aG9pZ0RaeElSUTZrakMxdHB4a0NXNFFiT1ZlNlVJNjlKc0p4YU1RRVFLL092?=
 =?utf-8?B?Q0gzUkdwa1RMUTVvc0JKbnVjUGtFbEd3MWVUWVFSRnlZeURTbHhBZC9BUjAz?=
 =?utf-8?B?Z1E5N0VvMGFQMUpmTlV0MGl6THh5R0M5UEoxZFgwVDA5ME5sbWQ1bnV6TlNa?=
 =?utf-8?B?SUViVUIzYW1QS20xTGtHS3BOQ1F4ZnpGbnU2dHNGeXRaZGNlNWpISkh4WXBo?=
 =?utf-8?B?VEpyS2xqQm8xanZzWDgzZHhIaTNKemI3V3JsSlV1Z0RnVkp5RmFxZnhFb2d6?=
 =?utf-8?B?SGNPM2pCUmRvcmVDK0lnZDVHSklsb3dzZ3E3QlFoR01xeUEyR1NGSk15QTlR?=
 =?utf-8?B?aVFZTVdUdU4rdm5nOG1uTDhIMDg4aUo5S3krYkg2Z05rZDBRcSt3aGFyWThw?=
 =?utf-8?B?KzBrbjh6WmN4SkRTV0R4ODlWSjFJVGxrOVJhc2cxby9wM20rRko0NkxvRytx?=
 =?utf-8?B?T3UxZGpEYkZwUjZCT1Z1dHk0TENwNHNRWkQ3ZkdaRDB3OWQxTk01T0VmOUJn?=
 =?utf-8?B?bU9oNnZUMGtlbU5MbkFZNlo2VzZEeE50R0xHZkkvWm0xTnBqakh6YTlhK1Ey?=
 =?utf-8?B?bDNnN2VpVmVNNUUwdW43clVXUTE1YXo3b2NSYlRBNDNDNjhxdkZkMjMvTnRW?=
 =?utf-8?B?ZzV6dVpPZUluSi95UDlVL3dReHZrYS84UEp5d0dPNGZzcW1uZ1h1S1BqNTJN?=
 =?utf-8?B?a3hCQ2dpNG5NcmZqSGRZSkpqUGhrd3FiNzJML1prSzI3TFVZcTBpT2RRN3FN?=
 =?utf-8?B?T3h6bUtXN2NsR1F5U0UxMjgrYkNmeStUbUdIU3JWdk5XZUtvQzFPbWdFclJG?=
 =?utf-8?B?OW9wRnVuY29nd2xLSG1VNWsrQXBGaHdhNC9sNVFJZ0tOLzZXd3A4bm5nTEZv?=
 =?utf-8?B?S1I2VDJCS0dIajVMQ1FMeFd2VEZCc3E3UXpIUWcyUy9rUVVhT2xiVmViNXB6?=
 =?utf-8?B?M28rSG14ZUUzU0NRVTJMRkNkZjdTeVFrWi9scmZXaGt1a3NhL3NXRTdWMU9I?=
 =?utf-8?B?NTc0MzUzbnJ4WGlGcGNjY1d5amdCT1lQYUhKYzhhZlRKL1Z3SWpYemp2UXdX?=
 =?utf-8?B?M0xWTk11dGxRT0lhcnlmd2FDWEFGc1E5R1ltMExqMkdTemVzYm1GZDZxKy85?=
 =?utf-8?B?cW1TT2dMTWhnSUpUYnpxTVJ5dm93RVgvMDNuTWcyaklDSy9mTDBQUU00cmxu?=
 =?utf-8?B?NnczRndTdVA3dUpwcFl5WmFWRTRSb1dVVjBqTzdSblZNME05R0gxcFIwZHFY?=
 =?utf-8?B?S0xzOUxSSFZua0NpUHRsZ3RXSVpRc2FYZW1rUjcxVTVhMWpEZ29NbVNiK0ha?=
 =?utf-8?B?UzVQKzkxNE0vTzRyMFVNOEdPeU5GWStIMU9jNnRuMXAwNVo0TTdtM1JheStY?=
 =?utf-8?B?b3R5Sk03bVpaUmZLR1QwQjlUOXdpR2ovTmx5MEFiYnFFZGx0SkYrSjVWd3dj?=
 =?utf-8?B?djBxbE5RdjduOTBkMVEwZ1JyZ3ErTUdaU3Erek5WTE0wQzBrdWU2ZmYzaFc4?=
 =?utf-8?B?bEp2YlBYUXRWMnZSQXBFSUZHZkZHRTdKNHJXQUNDUEMzazRxWnN0OUZWOTdB?=
 =?utf-8?Q?5NeaeLl/UC7zE7pc=3D?=
X-Exchange-RoutingPolicyChecked: Ww6IIH5/PXOa0nbvnpHtBqcArIJOT5faesr8grWBWMKpGFYzPv5a1rNxas1DchW2R9KVRIHtH45M6Ki7XLZTSv2eeGnfZYZvLFQIewjA8UPt6DsoYNVrSKOezNAMUs8qvFOzil4rj/SdgN+IohYit0YNkjrmemj4V2hr124sQESgQFTEac6/JN2QEXSmfPrkNOTbKoICFItnjeRbmTCfd5GSlDGTtXJtFTiwXDS1YfIQAtExqieocqrypjV1mhrSEfEO8KCLERXt3RYvNJu+gSSkAZeH//L9yPK3CC5nLW28uJnqrCsdcAffqMzcjQTHnFD/q6Iubu1j3llmAcn1GQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b01b1db-57c5-4fdb-de5b-08debd061053
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 22:11:27.6160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjsFvrFhJrWieuhMJA2+res9/mOYn8RgIlU6ZSzkK+1kjA8deu1keY0v4pW+pgBNMTvl7F63a5UPncLQ9dcEL8hviI3rm+JV/yfVnsWJfsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EAB655FAD0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/27/2026 4:45 PM, Rodrigo Vivi wrote:
> The PF GGTT allocator was initialised over a relative [0, usable_size)
> range, with ggtt->start added on every address conversion to get the
> actual hardware address.  Two consequences of that model were considered
> "horrible hacks":
> 
>   - ggtt->start (the WOPCM offset) had to be carried around and added
>     to every drm_mm result.

hmm, but this an internal detail of the xe_ggtt implementation, so why
would someone else complain about it?

>   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead

hmm, for the record, this GGTT cap on the top was added back in 2023

commit ab10e976fbda8349163ceee2ce99b2bfc97031b8
Author: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Date:   Wed Jun 14 10:47:54 2023 -0700

    drm/xe: limit GGTT size to GUC_GGTT_TOP

+        * The GuC address space is limited on both ends of the GGTT, because
+        * the GuC shim HW redirects accesses to those addresses to other HW
+        * areas instead of going through the GGTT. On the bottom end, the GuC
+        * can't access offsets below the WOPCM size, while on the top side the
+        * limit is fixed at GUC_GGTT_TOP. To keep things simple, instead of
+        * checking each object to see if they are accessed by GuC or not, we
+        * just exclude those areas from the allocator. Additionally, to
+        * simplify the driver load, we use the maximum WOPCM size in this logic

>     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
>     untouched during the initial clear.

and that likely will not be changed by this patch as after allocating 'two
permanent zones', the drm_mm_for_each_hole will not iterate over them

> 
> Fix this for the PF case by initialising drm_mm over the full hardware
> GGTT range [0, total_size) and permanently reserving the two forbidden
> zones:
> 
>   - [0, wopcm)           — inaccessible below WOPCM
>   - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP

that looks odds: why pretend to claim manageability of full [0, 4GB)
of the GGTT and then immediately permanently reserve two end zones to
end up with real [wopcm, GUC_TOP) which is what we already have?

> 
> A new mm_offset field (zero for PF) carries the base offset used in
> address conversions, unifying the existing VF relative model (where
> mm_offset == vf_base) with the new PF absolute model.

but public xe_ggtt API already uses absolute addressing in PF and VF

>  The public
> xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
> [wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
> config code are unaffected.
> 
> xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
> so the VF recovery path remains a single O(1) WRITE_ONCE pair.

maybe it's just me - but I can't figure out the real rationale for this
patch - what did I miss?

> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Assisted-by: GitHub-Copilot:claude-sonnet-4.6
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
>  1 file changed, 101 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index a351c578b170..00a6cd2b8a51 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -137,6 +137,17 @@ struct xe_ggtt {
>  	const struct xe_ggtt_pt_ops *pt_ops;
>  	/** @mm: The memory manager used to manage individual GGTT allocations */
>  	struct drm_mm mm;
> +	/**
> +	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
> +	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
> +	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
> +	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
> +	 */
> +	u64 mm_offset;
> +	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
> +	struct drm_mm_node reserved_bottom;
> +	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
> +	struct drm_mm_node reserved_top;

maybe all we need is to separate concepts of:

* raw GGTT - fixed range [0, 4GB)

from

* allocable GGTT - configurable sub-range [start, end)
  * [wopcm, GUC_TOP) on PF
  * [base, base+size) on VF

and then we can continue to use drm_mm.init(0, end-start) to manage
that [start, end) range in a common way on both PF and VF?


>  	/** @access_count: counts GGTT writes */
>  	unsigned int access_count;
>  	/** @wq: Dedicated unordered work queue to process node removals */
> @@ -318,6 +329,10 @@ static void ggtt_fini_early(struct drm_device *drm, void *arg)
>  {
>  	struct xe_ggtt *ggtt = arg;
>  
> +	if (drm_mm_node_allocated(&ggtt->reserved_top))
> +		drm_mm_remove_node(&ggtt->reserved_top);
> +	if (drm_mm_node_allocated(&ggtt->reserved_bottom))
> +		drm_mm_remove_node(&ggtt->reserved_bottom);
>  	destroy_workqueue(ggtt->wq);
>  	drm_mm_takedown(&ggtt->mm);
>  }
> @@ -354,16 +369,66 @@ static const struct xe_ggtt_pt_ops xelpg_pt_wa_ops = {
>  	.ggtt_get_pte = xe_ggtt_get_pte,
>  };
>  
> -static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size)
> +/*
> + * __xe_ggtt_init_early - Generic drm_mm initialisation for both PF and VF.
> + *
> + * @start and @size define the usable GGTT range exposed through the public API.
> + * @mm_offset is added to every drm_mm node address to obtain the hardware
> + * address (0 for PF where the drm_mm spans real addresses; @start for VF).
> + * @mm_size is the total span passed to drm_mm_init() (equals @size for VF;
> + * equals the full hardware GGTT size for PF).
> + */
> +static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size,
> +				 u64 mm_offset, u64 mm_size)
>  {
>  	ggtt->start = start;
>  	ggtt->size = size;
> -	drm_mm_init(&ggtt->mm, 0, size);
> +	ggtt->mm_offset = mm_offset;
> +	drm_mm_init(&ggtt->mm, 0, mm_size);
> +}
> +
> +/*
> + * __xe_ggtt_reserve_pf_nodes - Permanently reserve the forbidden GGTT zones.
> + *
> + * Must be called after __xe_ggtt_init_early() for the PF case.  Reserves
> + * [0, @wopcm) and [@guc_top, @total_size) so the allocator never hands them
> + * out.  On failure the drm_mm is torn down and the error is returned.
> + */
> +static int __xe_ggtt_reserve_pf_nodes(struct xe_ggtt *ggtt, u64 wopcm,
> +				      u64 guc_top, u64 total_size)
> +{
> +	int err;
> +
> +	/* Reserve [0, wopcm) — GuC cannot access below WOPCM */
> +	if (wopcm > 0) {
> +		ggtt->reserved_bottom.start = 0;
> +		ggtt->reserved_bottom.size = wopcm;
> +		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_bottom);
> +		if (WARN_ON(err))
> +			goto err_takedown;
> +	}
> +
> +	/* Reserve [guc_top, total_size) — GuC cannot access above GUC_GGTT_TOP */
> +	if (guc_top < total_size) {
> +		ggtt->reserved_top.start = guc_top;
> +		ggtt->reserved_top.size = total_size - guc_top;
> +		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_top);
> +		if (WARN_ON(err))
> +			goto err_remove_bottom;
> +	}
> +
> +	return 0;
> +
> +err_remove_bottom:
> +	drm_mm_remove_node(&ggtt->reserved_bottom);
> +err_takedown:
> +	drm_mm_takedown(&ggtt->mm);
> +	return err;
>  }
>  
>  int xe_ggtt_init_kunit(struct xe_ggtt *ggtt, u32 start, u32 size)
>  {
> -	__xe_ggtt_init_early(ggtt, start, size);
> +	__xe_ggtt_init_early(ggtt, start, size, start, size);
>  	return 0;
>  }
>  EXPORT_SYMBOL_IF_KUNIT(xe_ggtt_init_kunit);
> @@ -405,8 +470,13 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  			xe_tile_err(ggtt->tile, "Hardware reported no preallocated GSM\n");
>  			return -ENOMEM;
>  		}
> +		/*
> +		 * For PF, ggtt_size holds the full hardware GGTT size. The
> +		 * WOPCM and GUC_GGTT_TOP limits are enforced via permanently
> +		 * reserved drm_mm nodes rather than by capping the range.
> +		 */
>  		ggtt_start = wopcm;
> -		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
> +		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE;
>  	} else {
>  		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
>  		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
> @@ -423,9 +493,6 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  	if (IS_DGFX(xe) && xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)
>  		ggtt->flags |= XE_GGTT_FLAGS_64K;
>  
> -	if (ggtt_size + ggtt_start > GUC_GGTT_TOP)
> -		ggtt_size = GUC_GGTT_TOP - ggtt_start;
> -
>  	if (GRAPHICS_VERx100(xe) >= 1270)
>  		ggtt->pt_ops =
>  			(ggtt->tile->media_gt && XE_GT_WA(ggtt->tile->media_gt, 22019338487)) ||
> @@ -438,7 +505,19 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  	if (!ggtt->wq)
>  		return -ENOMEM;
>  
> -	__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size);
> +	if (!IS_SRIOV_VF(xe)) {
> +		__xe_ggtt_init_early(ggtt, ggtt_start, GUC_GGTT_TOP - ggtt_start,
> +				     0, ggtt_size);
> +		err = __xe_ggtt_reserve_pf_nodes(ggtt, ggtt_start, GUC_GGTT_TOP,
> +						 ggtt_size);
> +		if (err) {
> +			destroy_workqueue(ggtt->wq);
> +			return err;
> +		}
> +	} else {
> +		__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size,
> +				     ggtt_start, ggtt_size);
> +	}
>  
>  	err = drmm_add_action_or_reset(&xe->drm, ggtt_fini_early, ggtt);
>  	if (err)
> @@ -459,7 +538,7 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
>  	/* Display may have allocated inside ggtt, so be careful with clearing here */
>  	mutex_lock(&ggtt->lock);
>  	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
> -		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
> +		xe_ggtt_clear(ggtt, ggtt->mm_offset + start, end - start);
>  
>  	xe_ggtt_invalidate(ggtt);
>  	mutex_unlock(&ggtt->lock);
> @@ -613,6 +692,7 @@ void xe_ggtt_shift_nodes(struct xe_ggtt *ggtt, u64 new_start)
>  
>  	/* pairs with READ_ONCE in xe_ggtt_node_addr() */
>  	WRITE_ONCE(ggtt->start, new_start);
> +	WRITE_ONCE(ggtt->mm_offset, new_start);
>  }
>  
>  static int xe_ggtt_insert_node_locked(struct xe_ggtt_node *node,
> @@ -815,20 +895,19 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
>  
>  	mutex_lock(&ggtt->lock);
>  	/*
> -	 * When inheriting the initial framebuffer, the framebuffer is
> -	 * physically located at VRAM address 0, and usually at GGTT address 0 too.
> -	 *
> -	 * The display code will ask for a GGTT allocation between end of BO and
> -	 * remainder of GGTT, unaware that the start is reserved by WOPCM.
> +	 * Convert caller-supplied hardware GGTT addresses to drm_mm-relative
> +	 * coordinates. For PF mm_offset is 0 so this is a no-op; callers pass
> +	 * real addresses and the reserved_bottom/top nodes prevent allocations
> +	 * in the forbidden regions. For VF, mm_offset equals the VF base so
> +	 * we convert to relative drm_mm space.
>  	 */
> -	if (start >= ggtt->start)
> -		start -= ggtt->start;
> +	if (start >= ggtt->mm_offset)
> +		start -= ggtt->mm_offset;
>  	else
>  		start = 0;
>  
> -	/* Should never happen, but since we handle start, fail graciously for end */
> -	if (end >= ggtt->start)
> -		end -= ggtt->start;
> +	if (end >= ggtt->mm_offset)
> +		end -= ggtt->mm_offset;
>  	else
>  		end = 0;
>  
> @@ -923,7 +1002,7 @@ u64 xe_ggtt_largest_hole(struct xe_ggtt *ggtt, u64 alignment, u64 *spare)
>  
>  	mutex_lock(&ggtt->lock);
>  	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
> -		hole_start = max(hole_start, ggtt->start);
> +		hole_start = max(hole_start, ggtt->mm_offset);
>  		hole_start = ALIGN(hole_start, alignment);
>  		hole_end = ALIGN_DOWN(hole_end, alignment);
>  		if (hole_start >= hole_end)
> @@ -1098,7 +1177,7 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
>  
>  	mutex_lock(&ggtt->lock);
>  	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
> -		hole_start = max(hole_start, ggtt->start);
> +		hole_start = max(hole_start, ggtt->mm_offset);
>  		hole_start = ALIGN(hole_start, alignment);
>  		hole_end = ALIGN_DOWN(hole_end, alignment);
>  		if (hole_start >= hole_end)
> @@ -1152,7 +1231,7 @@ u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
>  u64 xe_ggtt_node_addr(const struct xe_ggtt_node *node)
>  {
>  	/* pairs with WRITE_ONCE in xe_ggtt_shift_nodes() */
> -	return node->base.start + READ_ONCE(node->ggtt->start);
> +	return node->base.start + READ_ONCE(node->ggtt->mm_offset);
>  }
>  
>  /**

