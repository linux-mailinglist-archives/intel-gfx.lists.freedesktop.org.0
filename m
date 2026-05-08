Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJeFM+nX/Wl2jgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:32:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CFC4F666D
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CD210F487;
	Fri,  8 May 2026 12:32:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="VXi59nTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012036.outbound.protection.outlook.com
 [40.107.200.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0B810F48C;
 Fri,  8 May 2026 12:32:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LuIiKArEZWmuHLtja/fElC9dj+I3+dNhc46AhPHL2wZ1HFcthcwm9WC2YB+rHA14QUz7gw+x+ak27NGXRHMb9TNCqiJEvHV4DlONm9cm7B6rQjmv6cppsVKRBdrwTir2/rpm6nykbN5tq3KSyYHGHz+eXFXyOa/Vb0sn1HJtKGEzxTf8S7JER8ECkFXFHaD5aHFCvW1i00XUhTsXLcNmumnBTy/W7ybo9fozlYD9jsglKPFu9AjEsU63wffwENYYxjF/7u6MJLS9L4mOvT0Tephi+e90a/sSB35z8suQKVU9r8C/AfG613oaQ5bfAcHzthjgjZgxqu5vs4nBHQL2xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9v5LpI1A8ZlDVBN8X1KwTAlmHbJPxwrmv4p7rYgMhLA=;
 b=XIfFA+3jPwAvu9dkUd+xnqY1YMLIm7PiHOggWJkWQLecRdYlg55CcDhnUPR/I/fOmdiKFEeHWjgyxL3OMFbRis/zOg+Dfel//RQdt12vrz027cTHGitqg88CLfpJP0X0GfRD90CXdKgS0u2x7wwd58TLIuiIVbqErk5pU4npgPC/JS8mWuPCewc2/dXnJQELc2vQZfz/ryk5ta+1FJZCvyrCdq0n3pF3jcZWQ70CzXo1Qa/j67QK20OGfIlZ7jPGNcfdyGqsSubIX94MuledNdL+nGLCSfUjlEBaIhgC/15Zm7b/VeBhvidz2WpSy9zJ5B2GvxgS6/gDLCUvSBIRGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9v5LpI1A8ZlDVBN8X1KwTAlmHbJPxwrmv4p7rYgMhLA=;
 b=VXi59nTCAwdSCzaHQNCsP5iMTWcsVF5FThI3rRDLWwiwuA8y9gb5p8w4qOPiQmRDcHi2cVhI5GnFxIFW3nWkTJ2RkUj4krMQLi0HxJ7Og+7/Ny048QVjVqu+tEozScA1yozvekNTQiKeh1WTgObjJZdHe2hA6QHM3EiX3qsl9aE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ5PPF6785369A4.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::997) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Fri, 8 May
 2026 12:32:28 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9870.023; Fri, 8 May 2026
 12:32:27 +0000
Message-ID: <d20ce04b-1c05-4367-a497-b48013336ccd@amd.com>
Date: Fri, 8 May 2026 14:32:21 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915: Fix potential UAF in TTM object purge
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260508122612.469227-2-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260508122612.469227-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ5PPF6785369A4:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e8826f6-4621-4f1b-a017-08deacfddd6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|18002099003|56012099003|22082099003|3023799003;
X-Microsoft-Antispam-Message-Info: 0NwjDh4TM/kS0yxmedpUKaWYtETDj8Vyen+a0lWOD+Aj87ta19bfGuqe4vSjS1cyUs0o0yOQmX9XP/j9j9vLQG9U1MC3lXcHjsG5Hx9df6fL1W29mlt+HcfnkSTeTPi9XU3pUR8CGkWYPNPrHqrCwHCeX+yrhSFi3O9PtERlaH0pTVFz7TZtv0b1RXO9BFekK3I5ZWcRn+VHYMPc+BzVxlRvK9AJPwTTt+HOdfKOc22XppKXMokY0HeAJrM8w9nIUiGEadDuvrp2pJf6SbuQo+wRKAdZ9csBS9zLzptHYnFxftjgNrFLC4SiXhOUVWTfLYKT0QxzJXH4tYFpmKU7QvNyvOEy2UxPTT0/CecdWFV4KnJkUAsDxhVmiNugeyoC/cIsakUiH6GBDtrRSEhu1mw6Dwn82y9shmwDapjdm/gfaofHcVZtz4j4I4KSATRMfry42EDBynQwW81jQhuQkoiCoGviF9pQEK3/e8RoLIW9E6U84EGv6LXAa0eyVRGtfC/ep9VE1vpPYcEJXxZIuBCpZFppURclWfB1RIocDUdIQZgSpN/ektaZJuZOLNLt7nJAXNvzY9RGMXkmCc4o8NtVL+7mjzqcxi3QH49tExOqOdzFl2DyYZLvsW22jab5cNxHFdaULivS69vY0O8jYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2JzS3RsV3RzOWpndDVtOUtxU3o1RFZtcEREWlpJWFdRNnNGeWFoblgxYW1a?=
 =?utf-8?B?Q0tHNE9nQXNEUEJFNVNZSUZONllqeHFBalQ3c1pZMGovSVBZSEZrKzc5b0Jp?=
 =?utf-8?B?R3ZJNUFVK1Bma2t4VFBpMWZjdmpnQ20vU2JqL2hiTDM0MzFWTWNtalNoelNW?=
 =?utf-8?B?UWhaMmtnZFdjMnFNcXEwZjlraG5JZGx0V1F6cFhXNE5pTzlFZnhQL2QyTXNp?=
 =?utf-8?B?WFlkK1RyOHFxSUdTZ3RIaTUxMHpzN1lNYlV0WkVEaVFpRWl6Y2gyV0pnSGZp?=
 =?utf-8?B?cW9JWngvMTRLc09aTys5SHIxV3phem8vdlNyQkdOcUljVjhoMm1MeDRiM2xu?=
 =?utf-8?B?MkJkbnJaUkYwbzg2MjRZQWxtK09kNThreTBPZWdaQUp3OGhma0RzazRXZkZj?=
 =?utf-8?B?ZFBFSXozSzFLZlA2ZzUwT0NsN1NBTVJtempYN3IxeVNSdXBTaWM2WHFlZ0Ry?=
 =?utf-8?B?bFg4OTRjWXBJcmhIN0JDS2pvcTFWS0V2SjIvWjVIYTBycC9tZzJtQXBVcWl0?=
 =?utf-8?B?bTI4R1BIWGJEZGx3bzJWaHZqU1dwS0VMbnVjOW1NMjNrSlJVbytna3hYWjNs?=
 =?utf-8?B?MTZwK3VqR0Z3K1NyYS9DY2lLbWhVN0dNbGxmVWR4MG5jMzlvbE5xaUlpYmdE?=
 =?utf-8?B?Yy95dmx0cTRDOTdwWEhvMzVVSXNPZ2VBdzJvVjJtMG5Ub01ERGZZdW1hL3JK?=
 =?utf-8?B?RkI2YnA2WWk0Q1llT1EyVnY3V1RDeGM4YWtZNkQ5K0t2OGVTM0ZOQVU1RHUx?=
 =?utf-8?B?UENXbWlhWTkwUlQ0N20zRys1djllQUljeDF2N2V4VWJEZDhSRno1cHhlSXN4?=
 =?utf-8?B?VGhHWXZsWVlZRHkwRi9SS0ZVYUFyTXJra1JXYnVMOGRYZEZlM0ZxWTQxNmQ2?=
 =?utf-8?B?NWtLWFB2LzIyWUYyTU1YZk9pM2xZTGNqMWNtQ0pTUHYrZWIxWHJNRlV5cWw0?=
 =?utf-8?B?dG1JbmxYT1ZNeDJqR2loY3IzWnpOdVcwTnhkb3k5M1o3OXZQTS8zbWRsck9w?=
 =?utf-8?B?R09mWDBiUjRNZGtZL0E2NWd0SXNlbzFwYkxHYUJTWmYveW1XT1hDY2Q3b1RJ?=
 =?utf-8?B?M3kzaTNIOFZTK1dBbEgyVlFLaEZwbTNqbmIyUC9MS01sRWNtSS9Nc0ROMUNV?=
 =?utf-8?B?cy9rajZiTGpKdDA4N3NLSVZJWkxDZzMwUURCaGQzeE43RHBHZStNRStYRlJu?=
 =?utf-8?B?ZkRFR2cvK1JGTldqc3EycGxhLzlTQW5GNzJTSEF1V0lwNm1HL2pYL0ZoOTFV?=
 =?utf-8?B?UGNoa1RHRlp3WVNGM2EvTkh5NHRHYXBhTWp1VWpwNENaSTFsOWxqVzU4MEdi?=
 =?utf-8?B?V1dIdmZ6NU1DWGZmYTBrSDZXVEVQRmgxZ1pNWU1MK3EwazRMNU5PZXZ6aDlx?=
 =?utf-8?B?WEc3L0RNTFIybWFlZ29qakVRc2J5WTFNY2VmU1BNaWZ2bzI0NWFodzNyY3NT?=
 =?utf-8?B?VGZJUHh5UUFyVXVlS1RyOEI4Tnd5L0kwaFFrWGltM2tNOUovbVUzMndMbloy?=
 =?utf-8?B?N09qOGZqVS9pblBxR3A1U0VQL0VGdUxUeUJDa0cxRVMyZEJFdjlha2ZtRDN4?=
 =?utf-8?B?VlI4dUgxRDNiWW5HM09tb20vSTJUNjhRUFRpcXpBWCtKbjE2TFNWV0VlTFdN?=
 =?utf-8?B?d3hBbUtua0pUVHZ5YUExQ0tzTnpQdmJ4REw0UEk5SElGU1ZjUU9nVG1PcmNr?=
 =?utf-8?B?TnNJOEd4U1pZYm5zbDUrenFmSHZLU2lSbzhzYXVnSnN3anc3d0ZkS3RyOEZQ?=
 =?utf-8?B?M1VIK3pMSndxK084V2M5dStHdEl2ZGJoL1craHdHWE9Xb0t4MWt6cEphRkFG?=
 =?utf-8?B?R2RUVU5Rd0xSN3JNd0JkWFdOemMzNVU1aGVnL1ljZGlzM3RzU2pyYXNOV0h6?=
 =?utf-8?B?M09wUTdNTkdFNEk5aEUrelR0Z085SUlXMldLam83NWh4M0NkS0RRRnVLMGdC?=
 =?utf-8?B?bjJMbW5FYzFhNXhPOUsvQzR5WTFlR09MWDBkQ080YTc1cTgxM3VVYUhuN1Vv?=
 =?utf-8?B?eTRUazBXMDZMUjdFOFBySVNlQW54Mlh5cTJWblRCZ2VoOG4rY3FpVktONEh5?=
 =?utf-8?B?SzludkFJRUppd3d5eVo0RFFXMEQ5N0tyeG12cU5xNkFtWUI4RlZSUlJkYTZ3?=
 =?utf-8?B?dUsxWE9PK2lXcHhoVy93V3NUMjJieFJCbW4wMWZKOGhHME9iMUt0Qy8veXVu?=
 =?utf-8?B?aE9kV2pBTXl6eTZzZnhZdW5Sb3BrbnA0T3JBU29XVE5TeHlIVmZ0NVIzOEV1?=
 =?utf-8?B?a01Fa1ZIbmhxOHF6YVBURVFBb2JVZnFOVUU3aXI0L0FtSE9KNUFRdlZCbkRE?=
 =?utf-8?Q?VHOMJ4xyzXypgIFEZe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e8826f6-4621-4f1b-a017-08deacfddd6c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 12:32:27.7967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9oHJ08fxi8WXk8MGruwj/RP/ZAeXxirGfGK+M4l3CoiOAg6cZCtwKxPntdO4r7/m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF6785369A4
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
X-Rspamd-Queue-Id: 77CFC4F666D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email,amd.com:mid,amd.com:dkim,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action



On 5/8/26 14:23, Janusz Krzysztofik wrote:
> TLDR: The bo->ttm object might be changed by calling ttm_bo_validate(),
>       move casting it to an i915_tt object later to actually get the right
>       pointer.
> 
> A user reported hitting the following bug under heavy use on DG2:
> 
> [26620.095550] Oops: general protection fault, probably for non-canonical address 0xa56b6b6b6b6b6b8b: 0000 1 SMP NOPTI
> [26620.095556] CPU: 2 UID: 0 PID: 631 Comm: Xorg Not tainted 6.18.8 #1 PREEMPT(lazy)
> [26620.095558] Hardware name: ASRock B850M Steel Legend WiFi/B850M Steel Legend WiFi, BIOS 3.50 09/18/2025
> [26620.095559] RIP: 0010:i915_ttm_purge+0x84/0x100 [i915]
> [26620.095604] Code: 00 00 00 48 8d 54 24 10 48 89 e6 48 89 fb e8 83 aa ae ff 85 c0 75 6f 48 83 bb a8 01 00 00 00 74 2c 48 8b 45 78 48 85 c0 74 23 <48> 8b 78 20 48 c7 c2 ff ff ff ff 31 f6 e8 7a 73 e3 e0 48 8b 7d 78
> [26620.095605] RSP: 0018:ffffc90005fd7430 EFLAGS: 00010282
> [26620.095607] RAX: a56b6b6b6b6b6b6b RBX: ffff8881f46c3dc0 RCX: 0000000000000000
> [26620.095608] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 00000000ffffffff
> [26620.095609] RBP: ffff888289610f00 R08: 0000000000000001 R09: ffff88823b022000
> [26620.095609] R10: ffff888103029b28 R11: ffff8881fc7f3800 R12: ffff88810b6150d0
> [26620.095609] R13: ffff888289610f00 R14: 0000000000000000 R15: ffff8881f46c3dc0
> [26620.095610] FS: 00007f1004d86900(0000) GS:ffff88901c858000(0000) knlGS:0000000000000000
> [26620.095611] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [26620.095611] CR2: 00007f0fdf489000 CR3: 000000035b0c1000 CR4: 0000000000750ef0
> [26620.095612] PKRU: 55555554
> [26620.095612] Call Trace:
> [26620.095615] <TASK>
> [26620.095615] i915_ttm_move+0x2b9/0x420 [i915]
> [26620.095642] ? ttm_tt_init+0x65/0x80 [ttm]
> [26620.095644] ? i915_ttm_tt_create+0xc6/0x150 [i915]
> [26620.095667] ttm_bo_handle_move_mem+0xb6/0x160 [ttm]
> [26620.095669] ttm_bo_evict+0x100/0x150 [ttm]
> [26620.095671] ? preempt_count_add+0x64/0xa0
> [26620.095673] ? _raw_spin_lock+0xe/0x30
> [26620.095675] ? _raw_spin_unlock+0xd/0x30
> [26620.095675] ? i915_gem_object_evictable+0xb7/0xd0 [i915]
> [26620.095704] ttm_bo_evict_cb+0x6e/0xd0 [ttm]
> [26620.095705] ttm_lru_walk_for_evict+0xa6/0x200 [ttm]
> [26620.095708] ttm_bo_alloc_resource+0x185/0x4f0 [ttm]
> [26620.095709] ? init_object+0x62/0xd0
> [26620.095712] ttm_bo_validate+0x7a/0x180 [ttm]
> [26620.095713] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095714] __i915_ttm_get_pages+0xb0/0x170 [i915]
> [26620.095737] i915_ttm_get_pages+0x9f/0x150 [i915]
> [26620.095759] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095786] ? alloc_debug_processing+0xd0/0x100
> [26620.095787] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095788] ? i915_vma_instance+0xa0/0x4e0 [i915]
> [26620.095822] __i915_gem_object_get_pages+0x2f/0x40 [i915]
> [26620.095848] i915_vma_pin_ww+0x706/0x980 [i915]
> [26620.095875] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095904] eb_validate_vmas+0x170/0xa00 [i915]
> [26620.095930] i915_gem_do_execbuffer+0x1201/0x2b40 [i915]
> [26620.095953] ? alloc_debug_processing+0xd0/0x100
> [26620.095954] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095955] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.095977] ? __wake_up_sync_key+0x32/0x50
> [26620.095979] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.096001] ? __slab_alloc.isra.0+0x67/0xc0
> [26620.096003] i915_gem_execbuffer2_ioctl+0x11a/0x240 [i915]
> 
> Results from decode_stacktrace.sh pointed to dereference of a file pointer
> field of a i915 TTM page vector container associated with an object being
> purged on eviction.  That path is taken when the object is marked as no
> longer needed.
> 
> Code analysis revealed a possibility of the i915 TTM page vector container
> being replaced with a new instance inside a function that purges content
> of the object, should it be still busy.  That function is called,
> indirectly via a more general function that changes the object's placement
> and caching policy, before the problematic dereference, but still after
> a pointer to the container is captured, rendering the pointer no longer
> valid.
> 
> Fix the issue by capturing the pointer to the container only after its
> potential replacement.
> 
> v2: Move the container_of() inside the if block (Sebastian),
>   - a simplified version of the commit description that explains briefly
>     why the change is necessary (Christian).
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/14882
> Fixes: 7ae034590ceae ("drm/i915/ttm: add tt shmem backend")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: stable@vger.kernel.org # v5.17+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Cc: "Christian König" <christian.koenig@amd.com>

Reviewed-by: Christian König <christian.koenig@amd.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 28 ++++++++++++++-----------
>  1 file changed, 16 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index de70517b4ef22..df3fcc2b1248e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -419,8 +419,6 @@ void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
>  int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  {
>  	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
> -	struct i915_ttm_tt *i915_tt =
> -		container_of(bo->ttm, typeof(*i915_tt), ttm);
>  	struct ttm_operation_ctx ctx = {
>  		.interruptible = true,
>  		.no_wait_gpu = false,
> @@ -435,16 +433,22 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  	if (ret)
>  		return ret;
>  
> -	if (bo->ttm && i915_tt->filp) {
> -		/*
> -		 * The below fput(which eventually calls shmem_truncate) might
> -		 * be delayed by worker, so when directly called to purge the
> -		 * pages(like by the shrinker) we should try to be more
> -		 * aggressive and release the pages immediately.
> -		 */
> -		shmem_truncate_range(file_inode(i915_tt->filp),
> -				     0, (loff_t)-1);
> -		fput(fetch_and_zero(&i915_tt->filp));
> +	if (bo->ttm) {
> +		struct i915_ttm_tt *i915_tt =
> +			container_of(bo->ttm, typeof(*i915_tt), ttm);
> +
> +		if (i915_tt->filp) {
> +			/*
> +			 * The below fput(which eventually calls shmem_truncate)
> +			 * might be delayed by worker, so when directly called
> +			 * to purge the pages(like by the shrinker) we should
> +			 * try to be more aggressive and release the pages
> +			 * immediately.
> +			 */
> +			shmem_truncate_range(file_inode(i915_tt->filp),
> +					     0, (loff_t)-1);
> +			fput(fetch_and_zero(&i915_tt->filp));
> +		}
>  	}
>  
>  	obj->write_domain = 0;

