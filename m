Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o74dHXWHV2p1WQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:13:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFF975E87A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:13:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=d8JvlKX5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B3010F049;
	Wed, 15 Jul 2026 13:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D56810F049;
 Wed, 15 Jul 2026 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121202; x=1815657202;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lNEZfZxDBbJ9tzb3thhctewCoP719pXr+cnymXls6k4=;
 b=d8JvlKX5vUL+WmcZ0rnj6D/EsspalVOE66ApB3/W+ZuhZQWnRtI9SDgk
 e3a7bzDymwMZEOFN9I8I1g9IxWhMgYLG+4bNNh4BpZgEAjEoZJpIqt1qz
 5Hjs2jxjdmLgTqUBAgcswHU8SpdZhu13uwQ8y/88iNa9sI2ohJm62znqN
 MrwMyd3BFTyl9IFbD2L281uu35iPJo+33vqWYw74Vt8Zz/3LBn+jj6rzk
 ZtU68+Yh1AGjUvorKDKmHaStkpT0Y/B6UJdr+nzktlbkSZCdfMh5cOVGE
 GtVv7PwqfEk1SUieVBtYGtgoNP8R4ouV5iHwTTJd6LvuNjFD5/+AZTltr w==;
X-CSE-ConnectionGUID: 2HWJ8L4FTFy7FUoDUY99VA==
X-CSE-MsgGUID: 5ZftjniqQaeVA5ejNpUgbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="110304050"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="110304050"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:13:14 -0700
X-CSE-ConnectionGUID: oCcjrA+IQTiZxCWFM98lLw==
X-CSE-MsgGUID: gKUfYzscT06nC11dGIUANA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="259996337"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:13:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:13:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:13:13 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:13:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kxXR4YJkMtQuMvJTWv9JWeEsZBnEuI4UyyWHkhJtdq8AapFIoacSgPhS9hv/Niyyf58ZMH57TsyYWgQ3wGtOaQ1/7jyKX5FbksRtI6yidqYfZPvo2GndVXMN/mpUELnVtV7/KTuXiumCE8rBq42RE/x4zi45rv3cdluJOa1k9jpNjmIcUWWyDyY0Yb5iGJr5M3IJcwXusvARaC51TtoM5c/nPwXB3bVE1uhjAGN6SVVHRgXE5VWVEkOFDnAHB4LIbG3WGuhUV3geyiDHrrzkhRxN5TlqJLcztK4G4x+rinyW6ZGUZgB7H6kZNn+9gWNDNPuiC+DiF+LmKYUZp7d0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j70dZXThkBHTWvH/xpwWtbqxJ5rj56C9pX7PXXrLCBo=;
 b=O2Um0eEcsViSm5Mr8A7Ykb11j5p7b29hpQIBVBiZjiiGjNdGejFflCm+QLumjzK8+hyf/NaVmOPLjncrin2YtjfXZxJddmLPSHvW2HSS0ophUX0mS0OcwOOU1A36sfzyAYdHYPWTLC2hHVAxSnFd2Ke/HTPD6dHlYD2MR8T29f03T/tjY2ozBXqe+UOd7grUIVRfix1/V06Q8HIbSeVy2b9VO72ALTeSUC45fPjuxNeTUS7QpiYIEqYF0fTzXX9+dZ7/l1Fi90ziML8rG/IRyFAe4g837mjGiHEkXgw/bidw50+TNmR5qPwkPV5lYVQk1Vy28IbGlXyXSmYk6eDJ4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Wed, 15 Jul
 2026 13:13:10 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:13:10 +0000
Message-ID: <a5dfc99d-f74e-4551-b101-3a664e2858b8@intel.com>
Date: Wed, 15 Jul 2026 18:42:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/8] drm/i915/vrr: Add per-CRTC vrr/cmrr debugfs control
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::6) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d8b2be1-e175-4e99-6d42-08dee272d15f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|4143699003|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007|10067099003;
X-Microsoft-Antispam-Message-Info: bYPBcDVBNvfP3By321XVl8jZmAsP8oyrH8ts0wZlHAndmbci/p8AuAvn2AEdU3LO+XrlnmgeuJHWnQAaOuVkAMWmqWhf4kdOMxUWZQ5qHQ5zxpuHoZ9eXUUj1hrvvN01DtCGXHq2n5pEwc2Xykr5nbde3Frj20bXxhH9+B0qIBvcp721rYE59MCT9SGhliZI4BMCk5SeV7qtnS2SC2dHm/vexvA6WYNF7XkIyglo52ctF29qCBbguFFQW3eQFYNnkvxsB3Xbr3ROSs5ZmNM3I5kUSHtFouJNq852W+9DkKwGb+RANfbGs2zn8t+It/qUHLFQ6WZq2xAL8VyktCZQExxTpuju5ilqq8BbcjKxlsHv3dF+p3v2OrklFUFHkW8LAkPX/WuuKRk7OI+TcnEmDHgId58Ou8vSXGeDGybsIyUx1F4h6CaTORe39+J90pWidQ5unBIUhAcWPR8m1zakZdECraxKgnO0wyGVQ18kNUgDzIWxjeA4Jw0uFaRp2+yqYSBEoIMkIWbL08GMsggYl0mrEKwo4drZN9JTKGEqeQKFrnkJ8sv2DI8dJ3qsB7ld/Vl3tspwqfE12qIIqtJkaz5if25jDj5bhEx+IQfu4HbNJ6ObiaRPY2H3qb52cBJUyD9FPnMXaUZlQXUb7KqwpAp1uR1U0MgF3zT034C/Omo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(4143699003)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007)(10067099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWFWS0lkZGk4dmFwOEZaZW52K1M0UkU0Zjl6ZUN3RlJ4NFdiaGszK0RoTGcz?=
 =?utf-8?B?MEpXZXY2OTZzM2FCN0R3T3ZhY21jRSt6MHRaUzBPN3MwVk5DbEtjM0JLS1NS?=
 =?utf-8?B?ZXY3M0ZvMWxDK0pkRWNDYU5MY2R6R29vbXRTME9CbnlmMTIvaDQ3cDRyZXpR?=
 =?utf-8?B?SVlpYkNUK0x4Nlg5SHNLak95djFROHpHenppOWh5Zk9hcWRjU09zS1cvN2cr?=
 =?utf-8?B?SmxHOWd4MkdyMStKODlTN1JUbkc4Mk9xd1gydlRZbGN1L1Mvano2TzlCRUhM?=
 =?utf-8?B?dnNCYlplZWQxNWFsdTIrcVZ6bkZVYmY1ejFmaXZ2TDNxb3czTkNKczlqYXl3?=
 =?utf-8?B?Q3pmRm5MZXlhWUV6d003cmZQa3RGVXorcERQUUdLYUxYWFFOd2NvN1V0UFdh?=
 =?utf-8?B?bWVqNytHSnVEL3RlZnpqSEhDV1ZQTndNL0g4RmZxbFhGY0hiOUR2aEdEL3Iw?=
 =?utf-8?B?YVRXdlBpZVJmeXZJN1hYbFg0N3pJWUFFU0NJWUQ3ZGpsc1JScUl4Z09YU0Zs?=
 =?utf-8?B?YVN6ZUJLQzFtalNYMEkwUHlhWFFwbEFxNXQ2aUJkM3lsVG9PRVFvZ2RvRk1T?=
 =?utf-8?B?VE5rMllNTndrNW1PdTcxWVlJNFBNSFIrdXlsWklrc2o1QldVcTl4S2VlR2FP?=
 =?utf-8?B?Y1hEYVpCbUtJcDBuR0lhdmVCTTJBcG9FYjhjdUpudTJrd2tXQVVEbW80VStC?=
 =?utf-8?B?V1Z1ZENWNllkWkdJU1JkTk5ONlZEb3c3SkIzZkQ3aGtuWEhxQ2FrK3RaZTYw?=
 =?utf-8?B?Yzk5K3VrTUJoRUhsTUNGZE54Mzh2R0lVUkJwSVNWb3FsUEZhb2c0WHFGTDNM?=
 =?utf-8?B?bnA1bVphVVRINXUyYnVVUWNKZ25XSlE2TmUzbVNiaFFidWZKbm8xNGV1b2hi?=
 =?utf-8?B?bHcyMHpPK1AyN2JHKzFwVnIvbk1kaXJoRUhkeENWR0NkSEdxN0pzK3lyUyti?=
 =?utf-8?B?T1RleFdERkhtQmphcFBJcmlQSXowazdRMGphMFUrZFd2NmtSQ09OQzJNbTdN?=
 =?utf-8?B?SHJKeWM5dnZCYWRsZlczZi9ET2F5RXI4M1BRbE04elhYQWtQNGZuTVRpNng0?=
 =?utf-8?B?U3Z1OFRYNFFaMmdyN0JUaVhRbjZja0lUcVZwWURLaGJaM042UENwSzFvV0ls?=
 =?utf-8?B?dzlqSEhmeXJFM3hDcE9MaWJBWU9rMzNraDZoUldTY2Q3cVppYnowVFpwbXFB?=
 =?utf-8?B?YXhPV1B4TkcwaHplZUpBMHBxSDhRV3lWa2pVdGU4c1pMaS91WGM5ZnVSbE9S?=
 =?utf-8?B?am1Yb0dwOTZnYU9jdjh2RFV5cVBuOTdWemNUWHNxZUpiV2dRS0M4L3grOUlS?=
 =?utf-8?B?VXlDZG95cXZjWnlPOFZjL0tMQzU2NTN0bUUzaDUvd1c5ZC9yZ1lIZ09Nb2Uw?=
 =?utf-8?B?SzRHeFY3MmNIcTdXemtwN0podWRSNFdqd3NrUjNrMktteW96N2VYSXVpdFJS?=
 =?utf-8?B?dEp2VU1OSWlkVFJFUHBoWml5REdVRExGdGs5UGVpNlN6ZTE1cktwK3VPRDBu?=
 =?utf-8?B?R2JtRldsb3pZcmVWbGk5aHBtakVhMndiVkkvaTZRSVZIMmM5cHVGcGtDblk4?=
 =?utf-8?B?REJHaDR6QklKMlo0WWVGWmpWRm9mOVF6WVVzMDkwQW1SSS96LzZhWDB3TTh2?=
 =?utf-8?B?MGdFTHJ3UExlK2tUUjlSNjlGMjVDNkhXM285OFZ4VzVHVG83ZDBQT0RoZTVk?=
 =?utf-8?B?bWVNUGdBVTJtKzFOdU5ZckdjdjVrY2pHZUNiWExHeC9ubytUdlhJQkJaYWZw?=
 =?utf-8?B?aVNXajdobEZkOEFFR0Yya0tVd3RUbXlpbTVJMk1FN3NPWVBYaVFuT0gxaFR0?=
 =?utf-8?B?bE9Yc1A4clBxR2FNQ0RMZHRMb0RyV0wyb3FIRjRJYXVqMHZDTmlERVVFRVJK?=
 =?utf-8?B?Z25PMWJZNHR3TTAwQ0tYQmxJN3AvN1ZORXhmY216VlJqckRub0ZoWXlLQzRy?=
 =?utf-8?B?Q2JtTFZyNy8rellyWjB2RDZqakpqbXhRS0t6aTkrNUpRYXhuZ1dkN3NrYUFH?=
 =?utf-8?B?dGk1UVgvQXRsVGdLckdEcENGNmFQTmw0UGFTYUlSUVJicnlFUFh6dEJuK0My?=
 =?utf-8?B?ekFFVHpnemlOSnBnYStheXhIclRDL1czMDVQckREajdkUHVqNTJDUDEzeUxY?=
 =?utf-8?B?UWFWUmQyMG5WdUovKzZxMlE2MzA2Z0wyUVJDQmpKQnBFWUF1cU9MNTNaRmpL?=
 =?utf-8?B?c1Z2OWVZTnFhNHdIaTBxUHJkVjNQVGN1WUF6dU5yZFZYa0E5RTRkTi9YcTVr?=
 =?utf-8?B?clNHYWFNNTNXeEtWOTA2ZWZMY2FWVGFpOUlFYTdHNzRQRVRaM2oxaHE5REgx?=
 =?utf-8?B?K3ZtMGZhNUhxR2dSMEtXSkI1RS85bThpYzZhbzlYakhRZWk3MS93NkRROGFz?=
 =?utf-8?Q?1mzdT/eDFOnoeCmq50hBt2z2KUsetiQ6MSD/8?=
X-Exchange-RoutingPolicyChecked: KdYmeKGQozxSx4XhqV1Qw1deUiv4cw4zHYj2Gme8MfleVPhko5824guuy/JzV+qdkWvcPFm3QpKnGpTRCam1KxAtjH4EUffShOdYlrEKA7qRIk89tac5BZktmXZRwdyCiBOQdrrDEG/yyCOHitZio2gzPMoR18rmBiEzL8KL1pARlE7NV/6et2EckwLyWb42aWhLbozcRauRBDNrK0VuzmeCPo7E6yndqwTWIl6fo3Ara9gcCIxCmCeqRqApIvkJ6IuI7t4l6RbwrMWaXJ0OAmDdq8rMRVUYcwe99yThMsaA6NXJOSLLnxHAGRlCvEOsAyW2nhByImAGTV6LpEugzg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8b2be1-e175-4e99-6d42-08dee272d15f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:13:10.2400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Au+Xatkg42p7tUyW5DBH1w4YWVyLKQE9tWhbVjVK8f75uT8l5d/WYq+tMOAJbRCRKrDVsxOrsw2stkZJ1ETNVLoeQwdDU37fzzFuj4z7eY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCFF975E87A
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Add a per-CRTC debugfs file 'intel_vrr_cmrr' that lets the user force a
> CMRR target refresh rate and video-mode requirement.
> 
> The file uses a "numerator/denominator" format:
>    - numerator:   requested refresh rate in milli-Hz
>                   (refresh rate in Hz * 1000, e.g. 60000 for 60 Hz)
>    - denominator: 1000 for a 1:1 ratio (no video timing) or
>                   1001 for the 1000/1001 video timing
> 
> Reading the file reports the currently stored values; writing updates
> them. The file is created only on platforms with VRR and CMRR support.
> 
> --v2:
> - Drop the "vrr" debugfs subdirectory and expose a single flat,
>    intel_-prefixed "intel_vrr_cmrr" file (Jani, Nikula)
> - Rename struct intel_crtc.cmrr to force_cmrr to make its purpose
>    explicit (Chaitanya)
> - Fix parse comment: numerator unit is milli-Hz, not KHz (Chaitanya)
> - Add debugfs/intel_ prefixes to the debugfs handler functions (Chaitanya)
> - Expand commit message with debugfs entry semantics (Chaitanya)
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |   2 +
>   .../drm/i915/display/intel_display_types.h    |   5 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 103 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |   2 +
>   4 files changed, 112 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 3f02868ef105..2bbf4760dc30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -49,6 +49,7 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   #include "intel_vdsc.h"
> +#include "intel_vrr.h"
>   #include "intel_wm.h"
>   #include "intel_tc.h"
>   
> @@ -1395,6 +1396,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>   	intel_drrs_crtc_debugfs_add(crtc);
>   	intel_fbc_crtc_debugfs_add(crtc);
>   	hsw_ips_crtc_debugfs_add(crtc);
> +	intel_vrr_crtc_debugfs_add(crtc);
>   
>   	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>   			    &i915_current_bpc_fops);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c048da7d6fea..84a6d016e226 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1546,6 +1546,11 @@ struct intel_crtc {
>   		u64 flip_count;
>   	} dc_balance;
>   
> +	struct {
> +		u32 numerator;
> +		u32 denominator;
> +	} force_cmrr;
> +
>   	int scanline_offset;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 51e4f3309b8b..8b6e36ee9f55 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -4,6 +4,10 @@
>    *
>    */
>   
> +#include <linux/debugfs.h>
> +#include <linux/seq_file.h>
> +#include <linux/string.h>
> +
>   #include <drm/drm_print.h>
>   #include <drm/intel/step.h>
>   
> @@ -1231,3 +1235,102 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
>   
>   	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
>   }
> +
> +static
> +int intel_vrr_cmrr_parse_ratio(char *str, u32 *numerator, u32 *denominator)
> +{
> +	char *sep;
> +	int ret;
> +
> +	/*
> +	 * Parse a "numerator/denominator" CMRR ratio string. The numerator
> +	 * is the requested refresh rate in milli-Hz (refresh rate in Hz * 1000)
> +	 * and the denominator selects the timing: 1000 for a 1:1 ratio
> +	 * (no video timing) or 1001 for the 1000/1001 video timing.
> +	 */
> +
> +	sep = strchr(str, '/');
> +	if (!sep)
> +		return -EINVAL;
> +
> +	*sep = '\0';
> +
> +	ret = kstrtou32(strim(str), 10, numerator);
> +	if (ret)
> +		return ret;
> +
> +	ret = kstrtou32(strim(sep + 1), 10, denominator);
> +	if (ret)
> +		return ret;
> +
> +	if (*numerator == 0)
> +		return -EINVAL;
> +
> +	if (*denominator != 1000 && *denominator != 1001)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int intel_vrr_debugfs_cmrr_show(struct seq_file *m, void *data)
> +{
> +	struct intel_crtc *crtc = m->private;
> +
> +	seq_printf(m, "%u/%u\n", crtc->force_cmrr.numerator, crtc->force_cmrr.denominator);
> +
> +	return 0;
> +}
> +
> +static int intel_vrr_debugfs_cmrr_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, intel_vrr_debugfs_cmrr_show, inode->i_private);
> +}
> +
> +static ssize_t intel_vrr_debugfs_cmrr_write(struct file *file, const char __user *ubuf,
> +					    size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_crtc *crtc = m->private;
> +	u32 numerator, denominator;
> +	char kbuf[32];
> +	int ret;
> +
> +	if (len >= sizeof(kbuf))
> +		return -EINVAL;
> +
> +	if (copy_from_user(kbuf, ubuf, len))
> +		return -EFAULT;
> +
> +	kbuf[len] = '\0';
> +
> +	ret = intel_vrr_cmrr_parse_ratio(kbuf, &numerator, &denominator);
> +	if (ret)
> +		return ret;
> +
> +	crtc->force_cmrr.numerator = numerator;
> +	crtc->force_cmrr.denominator = denominator;
> +
> +	return len;
> +}
> +
> +static const struct file_operations intel_vrr_debugfs_cmrr_fops = {
> +	.owner = THIS_MODULE,
> +	.open = intel_vrr_debugfs_cmrr_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = intel_vrr_debugfs_cmrr_write,
> +};
> +
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	if (!HAS_VRR(display))
> +		return;
> +
> +	if (HAS_CMRR(display))
> +		debugfs_create_file("intel_vrr_cmrr", 0600, crtc->base.debugfs_entry,

As discussed, please rename it to target_refresh_rate to cater to future 
use of the debugfs for other features.

Ideally rest of the function names should be changed accordingly but 
that can be handled later.

> +				    crtc, &intel_vrr_debugfs_cmrr_fops);
> +}
> +

trailing new line in EOF

With these fixed.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 55e9c429f579..19c7990be1b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -56,4 +56,6 @@ int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_sta
>   int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc);
> +
>   #endif /* __INTEL_VRR_H__ */

