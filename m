Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNJXHuAIqGnSnQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:26:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0707C1FE510
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E60810E9A5;
	Wed,  4 Mar 2026 10:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dPOqEEQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFF910E9A1;
 Wed,  4 Mar 2026 10:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772619996; x=1804155996;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rWWm1hkzEZLPhyFMk2ztXprMTbPeeukXZmZVOjlv28U=;
 b=dPOqEEQRMMJIu9HSnXerMmFxWFFSFm1wjAtxy6/H1Cj0C38cESMewCg9
 CyAyo25WOt4w6ObF9ooc9FxMbAg52VzGEeFVI65uHkq+ju8fNkTdmUx0U
 gbHe9CmX8KWtNrRHp34ialYiw/iJAnFAInthGhp0kd6miCj/JmxIzdrpl
 Q3OMnM+e3DHRGGtRci4sqbYGCQ3K8FK62DLISYtr7fDaIiawU8mQB1nMH
 qgqQcVMagaIZdXVEUbuAeFCK7h5He2I5+rZBoxjFTw15cncG6deUMUKn7
 aPx1beH12roiTjd+riSpJKJ1/VJeYPsFt3cyaZVa7NFpI+TKXdo+cTT8F g==;
X-CSE-ConnectionGUID: KWyj+jxmQm6ZCsi6h4JWRA==
X-CSE-MsgGUID: VvoRITeEQQOg7/KxTsMi3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73804292"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73804292"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:26:36 -0800
X-CSE-ConnectionGUID: vXNUXpgqR+udzx8kC08aUw==
X-CSE-MsgGUID: hSC/KLXEQy+7DmLzJIvDSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="241313286"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:26:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:26:35 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 02:26:35 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:26:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HyEuXyTUHeoGeINRVXx0iXaXO9d2cze7mqagPXLBNZf0qeUlqSQVmFUjnhlXYBc8nL0527puy7PQNcdlBQ7L7O2isEKku1UCpm3pmN7X9AXwcKEUuOVlbYOt1Ld9j4VDACwbbNFdPiB6veAhC6xBSAsyrRe+SwjH6z4qSStvVCpowDEs4uQJho+kCwOI17pjRGnPJ9ycspud4NDUh3BSegsrFF+TAheajU5PXHE8PxDMa+fgtZyJorffJawDqEOkCkDVdJCXFz7PhK6iR+f2eYJ+QjNN5nvIBuJl/enWLR/7+xykNpilz09zjVjFC8DW3TDPOIovta1NIf4JEXshYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyfANuZp854Chj7EemWnZxrMVx2dq3MdzbUomXcV54Y=;
 b=neMEIeciMoe6xFgfDoNZWj8ZMAvoU9vd+13d7nCOG83WyuVXPcHmtXVMXs+uOHclDsMNGmpD9V8npWKLBWvlwJfRg8mJ+gWcRlEiNkaxg+LNA3HG9+NdI2OQYwFQSzmdDc3VJqAaRFUAFYyxPxqcXOOIbKDVEXVCadmn9DoiEO479S9ohJ0C2DynyZVHxvGYRehvjG0VMnhkKZnGIhZQBp0Jakrofp0NcuU4wCRUgwH5A4y/v2dFjIem1qKGWGwUxD6KC02qYQ0Lm3CcWBK+Qi8YWamF2BS7MQTX/Lr7MPYhZYaKDVT6gzlxICYT38983KzKdJKdLHPYSG0kUrvhjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF37792A6D2.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::820) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 10:26:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 10:26:33 +0000
Message-ID: <507f582b-fbe5-4ab6-bf4d-78c23359b207@intel.com>
Date: Wed, 4 Mar 2026 15:56:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
 <20260303125409.503148-4-jouni.hogander@intel.com>
 <5bb046c8-b154-4fc3-a119-e7c2a41b4c6b@intel.com>
 <64747118136fee7be6a7924dfc9199e6a852de05.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <64747118136fee7be6a7924dfc9199e6a852de05.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0249.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF37792A6D2:EE_
X-MS-Office365-Filtering-Correlation-Id: 690c9569-5251-4d8c-3089-08de79d881e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: ENKlROL1v5sXPDAbjDrVHSuwfcPDxiGSGrXUAlMmKxLFSHB8UIq56B1a06Rmbz3+sQJ8ljPHeXP011CWYp0KjZOQ/K1SvbZhFS/FvRxtMl8hzysRtuo8lNFTopo2J0P9u4xlfJ2xPFIybYGF2cK/muVl7ZNRYsv6XFmniTC9Eue6y9P799c35BE1uHyS/ZidKBfI3VVFyzd2KE/+K15mFAGx7siSH0f649y/4MIkveXZG2FX/C9GR8w3tFY0oxdm4/JXRiIcYKw7eFBjZx1ucy8iExaJ0gqYehSqT8kB+XHOSRnR2k8awrClivMcNt98g/2GjkjOF4sTTYCXHIVcLyzCiP/koA9a/aVGNx05RdzmcsnL9DhOrifG+/DI4D2EHbUQOhFqe9QEi8zZ3bzu9FDDYywv/Hgol11N+5044My8hPhbIwsHSAGV9CN1z4JpnCLWd41P/6kM4lrvHTjkaXhR4hjqYt+PhMRBIuLQ+OYVo64hazBXG466fE5hN00/0Hp+brETFQuz4Y5SNk1N28LOWfbhEIqxcitqLNBeByfDWdfsIV16yadQxFgG6FxvfHGzsa+dnHt20IcPlo0XI1KLSPKuydwVbKl1cSyHtYXr3wZsYm81lu7Wc/plVIpdad8plRaIQWsy7PIjZ491MgaUTykm98udpFjn7JtuZP96C9/UIs4NNOiz5HRTqbI1IyK2M2BMAxVyv+FjO5qZggC9YIJfzB1DWVlNBEnbjx0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnZZS25BdkVaQUp4R0RNS1Zvak45ZGpEeDkrNndzS2pTNjJtelZKK1drNGsw?=
 =?utf-8?B?TEtXWDNsS1BNeDZmWVh6a25MOGhCSWdtcXZWdnpUY3FZSlI3NFBEUmhxV01w?=
 =?utf-8?B?VWdUSkVIUzFiS1RscjVlK2pRbHBRSng1VDFNY1J4bkJ1ZHVKTXNZVnljSzBJ?=
 =?utf-8?B?M1MzazVQVjFzTWRRbjlwelZvWXdtUnNaQ2syQ25KNnUvUC9lSEpMcVRGSUVV?=
 =?utf-8?B?T05QMlFhZzF5Uk1aVWx0Ri9WL3AyTm00ODBGVEkrdk9YS1doazI0M0JkVXY4?=
 =?utf-8?B?aEUvOVNYa3JoNUFSL2paNkNsK1orcVA1R2drcGgyV0M2Q2oxaWpSb0h1Tk8y?=
 =?utf-8?B?cjl1NUcvQ1N6dDAzeTRsZ3prRWlwamVMZ1FIWEhhNVU3SUkzbHJlTzBDS0hI?=
 =?utf-8?B?OU55N1N4WVJaMnZ3U2RmK0doQU16WnNtS3YzaTBnRi9rR1M1OTJJTzZUdndV?=
 =?utf-8?B?Um1iYlI4SmlBTHJqU0t4VGIyL3I0Q0FRWmRjMVUyc1VxZHpGMGQ5aDI0Sy85?=
 =?utf-8?B?MXhSU1JIaTJrVjg5NkhzTSszdXZOUWVLWmZPai95Nnpvc3poeEEwcnlxRHk1?=
 =?utf-8?B?Uk0wWjJrNDhMbTh0M29YNStuTWlkc1Njc1BzU2JiR1k3U3hOekVUaWYyWDhK?=
 =?utf-8?B?cFpnb3pGUytkaE9tL2UzVGdweUtqNnNUVWpDTm0zSUxiNmN0c01WenQvbEZq?=
 =?utf-8?B?bmRtUVNyUWdLNk9RMmVvR2hnMGxBbWVKVVEraXhHQytOcy9telI4MjgwUU1p?=
 =?utf-8?B?YVJYRndMa04xSnpkUmZ1RU9qVFoyelhXcjFmc3pIbGNmNEJUZkkrVm80N0Zt?=
 =?utf-8?B?QSs4blB4djFnV0dsTExEMUhWMUJOMWxvQit5TVVONWpQZWhvWGxFVGhpRGFS?=
 =?utf-8?B?aUxFRy9meWhnY3IzTkRhaFgwdzVnYnJWWDFVZ0lsem5hTXgzNm40aXlZZ09C?=
 =?utf-8?B?Unh4SUhxcTFFOU9JUEVkMXUvTFhyVmtCdjY0RFA5YmhaM1FuTGVXbVRrV0F0?=
 =?utf-8?B?eHYvU1pkM1c1ajhWdFhGeWx4bXhyR2FKVFpETVAraWs2KzcvZE50ZjJSeGVu?=
 =?utf-8?B?K1ZYTTNlMWI3TjdFQTd6WWMvYktIM3dydnhpMnV6VVZWSHNqeG9KQ21rMHkr?=
 =?utf-8?B?bzdDNjJXM1JvNHlJTmdiNzZVYXpyQmRhWTQ4YjJFUFFqekFRQUxZa0IyYUFo?=
 =?utf-8?B?cGsrMjNSMXVxYmZGZG51VWRmd0dPWGw0TndYWXBXNWhEenJ1QXVSdStmdmkx?=
 =?utf-8?B?emVOTjRGdjNPTEwrZmdIak1nbzlBRWJKZjkvNGpNWGFjQkwwNWFVdHdxeTg1?=
 =?utf-8?B?WXZzM3YrakJTb2pRS2lmWFlyZkluOHVaNkRpUS85eVB0aWRjWE14cVZvS2JQ?=
 =?utf-8?B?bGh4dU5tQzRPYWFLc2lmWlNSNUlZTTU2T3JCanBtTEM3WllkMStzdnFRUEg1?=
 =?utf-8?B?RmZwemVNNXVaWUowOHFiTHQ2VzlTeHV2QXllVFVJcVYzemc2SlNJWTZ0VWFE?=
 =?utf-8?B?K0FOM1JPY2tTRzg4YWpBN0huVmFpdDRreGgxTko0bWd6RVpHcnhYdTl4L0lN?=
 =?utf-8?B?ZzFqcDFyVGFDZDJqN2JubkZYcTM5NWJraTNXWTVpeVY0ZjRMSEpVNVBHT1hi?=
 =?utf-8?B?VC9nMEhRVVM1aTZzMk8xdjR2ZkxscDNjcXhPREh1K0Z4aFFRRlUrditZT201?=
 =?utf-8?B?NVl6dFgrMzJlS1ViR3ZIQ2NKcEEzcFAxMHgySTVFbFVpY2tMZEJXYkc5QXNm?=
 =?utf-8?B?MXlYaGJjK3JzS2J1MVE4TVM1OTI5ZnIwcmdLYUlXYXJGMjhvMDJmYWRML3o3?=
 =?utf-8?B?S0FpWGVOcEJMbHdpSmJKcjVEeDQ4L1FXM3ZlWmdsRHp1aG9FSzRDVDBKREt0?=
 =?utf-8?B?UTF3TWQwUkVEb2ExdEc0MWE2VnBKRnFlQ0hodlJTRE05K1UwT1VRSjIrZUYr?=
 =?utf-8?B?SVBmMHZZQThZUFZTbS85aUJrbnpjdjZST0UxcVM2ZHp4TSs4Z2tmQ3ZtTEsz?=
 =?utf-8?B?bXJxRFUxRlRKMkFYckVlYUk3UVAxZlplOS8zSGdxSWtFNWIrdzRUVUFhQVRs?=
 =?utf-8?B?SlpjalhSVUo5Y0RVbmxhZlRhWkt6MXJLVjBjK1RNMlM1WERvNjVzbktKRkhF?=
 =?utf-8?B?cUxHcmZwbVA2QjNQdklXUlJHaWNhWHZxTG9iU3NlaUYrMFhjVFVLZllIZUZD?=
 =?utf-8?B?SWExbXNSMEZ6Y3J4MGNWZnpuRkV3L3ByOXdiMi96WTRXc1hhUWtleVNxQ3Ri?=
 =?utf-8?B?M3ZKSG1OWXhpdllTV0pmSUpZckNQak5YNGkyV0V6S05GbXNxZEZLemRWNExt?=
 =?utf-8?B?cGs3Qmd6NU1JRVRUSitMcnEyRzF0dHZ3ZHZCOGVFekRHQzhxSkNmYjRCUEhM?=
 =?utf-8?Q?Xy0qoRrX+udMsQug=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 690c9569-5251-4d8c-3089-08de79d881e9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 10:26:33.5995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lRkiO40kPhfJKJaTmTX+M+oJABmDn/44gls9aFXyhB/PVkA/kIjhjinEhneUyvZy9NwJX6HjnHRusxrhoxgC/IC4VfWAInov1dbrlktWTZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF37792A6D2
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
X-Rspamd-Queue-Id: 0707C1FE510
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/4/2026 2:43 PM, Hogander, Jouni wrote:
> On Wed, 2026-03-04 at 14:06 +0530, Nautiyal, Ankit K wrote:
>> On 3/3/2026 6:24 PM, Jouni Högander wrote:
>>> There are slice row per frame and pic height configuration in DSC
>>> Selective
>>> Update Parameter Set 1 register. Add helper for configuring these.
>>>
>>> Bspec: 71709
>>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_vdsc.c | 22
>>> ++++++++++++++++++++++
>>>    drivers/gpu/drm/i915/display/intel_vdsc.h |  3 +++
>>>    2 files changed, 25 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index 7e53201b3cb1..ae3af3c2e41a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -820,6 +820,28 @@ void intel_dsc_dp_pps_write(struct
>>> intel_encoder *encoder,
>>>    				  sizeof(dp_dsc_pps_sdp));
>>>    }
>>>    
>>> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb,
>>> struct intel_encoder *encoder,
>>> +					  const struct
>>> intel_crtc_state *crtc_state, int su_lines)
>>> +{
>>> +	struct intel_display *display =
>>> to_intel_display(crtc_state);
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state-
>>>> uapi.crtc);
>>> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state-
>>>> dsc.config;
>>> +	enum pipe pipe = crtc->pipe;
>>> +	int vdsc_instances_per_pipe =
>>> intel_dsc_get_vdsc_per_pipe(crtc_state);
>>> +	int slice_row_per_frame = su_lines / vdsc_cfg-
>>>> slice_height;
>>> +	u32 val;
>>> +
>>> +	drm_WARN_ON_ONCE(display->drm, su_lines % vdsc_cfg-
>>>> slice_height);
>>> +
>>> +	val =
>>> DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame);
>>> +	val |= DSC_SUPS0_SU_PIC_HEIGHT(su_lines);
>>> +
>>> +	intel_de_write_dsb(display, dsb,
>>> LNL_DSC0_SU_PARAMETER_SET_0(pipe), val);
>>> +
>>> +	if (vdsc_instances_per_pipe > 1)
>>> +		intel_de_write_dsb(display, dsb,
>>> LNL_DSC1_SU_PARAMETER_SET_0(pipe), val);
>> Currently 3 DSC engines per pipe is only supported on BMG, which
>> doesn't
>> have eDP, so vdsc_instances_per_pipe would never be 3 for now.
> Yes, but it can be two. Thus > 1.
>> Furthermore we do not support these registers for BMG AFAICS.
>>
>> However later some platform may have 3 VDSC engines and who knows may
>> need the Selective Update ET configuration for DSC.
>>
>> Since we do not have those registers defined, lets make this
>> condition
>> specifically check for `vdsc_instances_per_pipe == 1`
> We can't do that because instances can be > 1. Actually when running
> kms_psr2_sf on setup where panel is supporting selective update and dsc
> this is the case.


Sorry I meant `vdsc_instances_per_pipe == 2`.


>
>> We can have perhaps have WARN_ON if vdsc_instances_per_pipe > 2, at
>> the
>> start, as we do not expect the SU ET configuration for 3rd VDSC
>> engine yet.
> I see everywhere else in intel_vdsc.c same convention is used. I don't
> understand why this helper for PSR code should be made different and be
> responsible for identifying possible DSC configuration issue?

For all the PPS registers we are using, intel_dsc_pps_write() and 
intel_dsc_get_pps_reg() which take care of this.

But yes, I can see there is a miss in 2 places:RC_BUF_THRESH registers 
and RC_RANGE_PARAMETER registers, for which 3rd DSC engine thing is 
missing. (I'll check if there are any more instances and rectify this soon).

So I recommend filling this register only for 2 vdsc slices per pipe.


Regards,

Ankit


>
> BR,
> Jouni Högander
>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>> +}
>>> +
>>>    static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum
>>> transcoder cpu_transcoder)
>>>    {
>>>    	return is_pipe_dsc(crtc, cpu_transcoder) ?
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> b/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> index f4d5b37293cf..3372f8694054 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> @@ -14,6 +14,7 @@ enum transcoder;
>>>    struct intel_crtc;
>>>    struct intel_crtc_state;
>>>    struct intel_display;
>>> +struct intel_dsb;
>>>    struct intel_dsc_slice_config;
>>>    struct intel_encoder;
>>>    
>>> @@ -37,6 +38,8 @@ void intel_dsc_dsi_pps_write(struct intel_encoder
>>> *encoder,
>>>    			     const struct intel_crtc_state
>>> *crtc_state);
>>>    void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>>>    			    const struct intel_crtc_state
>>> *crtc_state);
>>> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb,
>>> struct intel_encoder *encoder,
>>> +					  const struct
>>> intel_crtc_state *crtc_state, int su_lines);
>>>    void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>>>    			   const struct intel_crtc_state
>>> *crtc_state);
>>>    int intel_vdsc_min_cdclk(const struct intel_crtc_state
>>> *crtc_state);
