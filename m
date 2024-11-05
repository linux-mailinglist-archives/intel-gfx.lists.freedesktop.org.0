Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409749BD631
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 20:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE6510E17C;
	Tue,  5 Nov 2024 19:54:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I3y+NO29";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F47010E173;
 Tue,  5 Nov 2024 19:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730836481; x=1762372481;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7lcTBijaUdj7JCV/XLx+I1atouDoC1+UU+LobtrD3Yw=;
 b=I3y+NO29znZTAILcApm3LpeewRboQVn8QliR0iWt88yaah8YKopCmFbH
 2QDiLUeKDRAto5GKDVX6FUI9OTwqbAAKIVjBYuPSq7ekNTmq3f+ovWipN
 pli/UwFffGO00DNJ3BANMxvxXZENA1JcWXJdmaWiONaW+eav9f12z2EiL
 RMc7iuOaZsnCMljNzt1TSimalwEHfaaIVBXCywGTXsWIz/92NJzSeUweY
 DdCYSeN9/0KR75qpiWppq3Ylosq8xAvbTVvUxfM9msSIkhDIdlKqHLLSf
 njNuIact91SzCd/wyVWAM0QkxBDwqwwWaZU9NzKllztSXhf5X9DEjCom1 w==;
X-CSE-ConnectionGUID: 9hS/HJ/XTG+IEpibVQPTqA==
X-CSE-MsgGUID: JiXapTV9SWu9vztw/Q6lJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34535634"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="34535634"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 11:54:40 -0800
X-CSE-ConnectionGUID: nH6PHQdiS361T0+rHVtIkQ==
X-CSE-MsgGUID: dz870QOORsapwdo2fhBafA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="88101402"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 11:54:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 11:54:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 11:54:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 11:54:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XrP3CRFAToGcTz3dtjtFcIhG1pAY6kPCU2Dt8bW8jdob9AifSnWei1eyytE3Ct2cnX7Z5r9zQq/ijNqvziNguMf0CgRJau0XWp9nlzrUHw/qT6dItZRbX6vAgKYLhf8XYTCES3frEZBjdp12vm41VV6KtdJo+Hp1etR5Zgd+pIQ8s2Gk3GN2xiBr6mTtqQHXSq1O+9ee2q6BIPoERSeSoIr6CpXAs/LfRZRplesNwcznfzfqAxA02r1YSdclLhMnRJfWm6REvXD6PcDzlF1APLAPMz7QUAPXTNxgCRGCVdfMeCGn7dnBRVJc4qGV5EQf2LG/daiFVNQKU8H1sei2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kO+nOd2Grt9cRXYKV/Z0+ojb3rf6fJQWUI6qQE6CTcE=;
 b=m8vhYo181kPsq/g3vPobruQif6weZm6j7M8bePDCrX7a1SKVC1Ng0G7Edkcj5wP2mWY9wpYI94MNHltMu66CDTgxQ7yHMKMIzk5qavZRTPjJQ7NqpYzave0I3ioadwBxT7t1cJ2N8UYExbv12i91WuN6rk5JmziBNlIAkiEHVjeN8rjxuBTxJAtb/ZN0eLT8cy3J3dm0VT8sj7mvcf6CDkNrTNYRu7G3oUdw45Dr3tmy3T550YXVKsHa/3hG3lImlcSkmMKdxWIj5YKJMb1ZfZ+FABVdlGo+EJifZpJeJ6FET6eXKa3+IxHK2Qh4cRGpMWYlBDHUuwRvJgLoPWaseA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Tue, 5 Nov
 2024 19:54:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 19:54:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87y12gwomu.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com> <87y12gwomu.fsf@intel.com>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 16:54:30 -0300
Message-ID: <173083647049.12577.10180177488392703269@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0234.namprd04.prod.outlook.com
 (2603:10b6:303:87::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB4833:EE_
X-MS-Office365-Filtering-Correlation-Id: 03381ec3-ad07-48ca-e23c-08dcfdd3ad37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUk0K2VTaDdscStTTzhoYlRCNDlWT0grRmM3aVQrbUpKaDdDVTJGZXdxT3N1?=
 =?utf-8?B?alRiaTlVck44ejJzUFo4MmM5aEMrcCt3UmlMbjh4Z2hSZzREK3laY2w2ZDBH?=
 =?utf-8?B?QzQwSFg1RHRrRXdOMUJpSWd3Y0lPUDhoZHhYY0xHdlpQbjhNeUZKenVoT29y?=
 =?utf-8?B?bmNhbFVMek1MTXNJSWgxN0RrZWpsZFdhb0FhNS82ZFBabFZkSStBNzhlaUpZ?=
 =?utf-8?B?S3YvRFM5ak9rQ2Uyd2d3U2hWblVpaVhvRFgzWTFkeGJQNmJjSEVUNXJXdXlK?=
 =?utf-8?B?TTI4VmlkVUFmclI1TnlURWkzOGhxVFM3ZCtqZjdPOXpuaTFSM3g0UFdEL0wx?=
 =?utf-8?B?eWFhZ3E4TTZBVXpoRUlmNTVwZi83cExBcjJudi9XZTBRWDNrQmx1TE9ycWYz?=
 =?utf-8?B?VDYzemtoL0JhSzhvVVpQT0QzbXAvVDdBMlc2THpCMFVMM2NpdmtYc3dKbEdm?=
 =?utf-8?B?TXdOSlJiMU10cHdmcFUvUlE4Yk5hOUNQYTZDNjRkdlNrbEUyYUNYc1JSUUlY?=
 =?utf-8?B?STNBYlphYzBGYlYzbnlzSVpEWGRKMVUrbC81TUg2TXpmbnhNZkgvSHJFUU9Z?=
 =?utf-8?B?Z21PL0t6Z2phT0pzY2EvUjI0N2w3RytBNmM2elhpS0lvSFV5SXBYWHlrZk1y?=
 =?utf-8?B?Q2M5eVUwdWhQWTloM0ZrOUZZNkEyM2hYczd5cDZZcTFtTUxZK2dseEoyTXFK?=
 =?utf-8?B?Tkw3c2pvVHRvejFlOFNncGN4SWFsNmZYb3V1a0JXbndLbUp2Z2Y3b2M2TUZt?=
 =?utf-8?B?UUlTOUllcjRUVkxyZEhxVi9DVkZRUWVleEdUZnBxUC9SSGpFL0sxRTNHdWtJ?=
 =?utf-8?B?b2JkV3g1S0pwbXN3TTZ4U2VqeEpuaHJ5R3dvTzg4M1ppQ1VBbnVGK3E5SUFp?=
 =?utf-8?B?SjlGdkJaSUNVamgxMWo1d2hWZ29lZnliUXE3VjhvdmdHbkpiR0xyVmJna2JU?=
 =?utf-8?B?V3RVcVg4VDhuNkF6aUV6TnJnQjZEMU1GalBTNkpDOUV6RDcyUTZxQnd3b2Vw?=
 =?utf-8?B?OUhFWUNMajREOEN0UnRIR2E4MXYvcHdNVUJHMUtYbFhpcGxNM2pselpnRFk5?=
 =?utf-8?B?MWRJUEVUZzdmZTZPM255SVArVkZSakpGSmVieFNyL0NLOEdTRFRrS0FHcytV?=
 =?utf-8?B?N08yRTMzVk1ydjlMbldyRE1MTG0yWGwzdy9lMTF2VS9JaGxGQWdsZ0hlWW1t?=
 =?utf-8?B?ejBXMXlYTjAzUzlyOTNKRlVqeWxVTFBQZVkxY05qUEltOXpwM2IzT1dvZHA5?=
 =?utf-8?B?TENmWFpXWFlJZ0xRSExROEQyTWFYVWJ2YkVBVThVWi8rWmtuOUlOMXZraEVO?=
 =?utf-8?B?YktMcDd6MmlXOUxhb042eFBwS3hQaVcxVGZKWFdSRDlvc2tPYXQwYWdsWUc5?=
 =?utf-8?B?WFZERjFFZFZRY0pBS2pDWk1hSWx1V0U4OGdjYTRmeW9haDBBOVJBZ0dIRkNo?=
 =?utf-8?B?dm5QSm80SktORlpOdGhndmhtb0htRjRwNkpRT0w0VU9oKy9YYk1Ga0ppSDZx?=
 =?utf-8?B?Y2t4VlRKRHo0YmtNNXVyQ0xlMndsNHNTaUJPOG5uYXlRbm5xL3NlTzMvbitV?=
 =?utf-8?B?MkI5UjdWZC9ncVBxOXlYdmpGRnJtRkNTNnVXWVRFSkZmWE9RL2RSbDlMWTlo?=
 =?utf-8?B?VFZHN29LOVpkbWQ2Z04wbitMcHlTRWpSaHVlNHF6ZS8zeHpzUFVWc2xXOFNa?=
 =?utf-8?B?K0JkTE5VTUJBQ2w5dHAvQW9Lek16UFNXVTFNYVY4bGE0RmdZK1p3RldJNmY2?=
 =?utf-8?Q?Kh1ai3WBuTFywwTd1/xYJ5YvX9dl3XRcDT0k3Dc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnZxcmlHNURDSjdkWmRkTUZTMnZZakx5dVJFdkJoZWI1aFUralV4S25GbDN3?=
 =?utf-8?B?eDR2ZCtxaGprQzBiSXZjdGxpQ3Azb0NMZUxlRFpRUFg4a3J3WlhuclhXTFps?=
 =?utf-8?B?WFZZc2hkRkdHTjhPT2dwK0xuNHNUbzk2NEhXWllhQTdrbnp6REx6eXc4YThW?=
 =?utf-8?B?d0tmQWdHRk85RUJyM0lKeGNFWmdrTy84WUdFUjk2RUxWT3BLekdiVlR6SVNi?=
 =?utf-8?B?elJLWlR2ZWl2SWpFVjhRSGNCSWhLcTUranR4ZC9uanZVZ3Q0bVFmRE1vV0pZ?=
 =?utf-8?B?bjdzMGU4KzlZQURjRUFUWFNrbnZHM1o2Si9FNlpTaEp5YnErYUhLeTF3TzdS?=
 =?utf-8?B?TERZUjE5cEJJdGI2UGV2eGdBWWNXMXZqOExvd0R2ekVOUUxCbWFmNHljY3lu?=
 =?utf-8?B?ODZHNlZGWlZ0c3RWeVQzT3I1WGRFVWk2M3R0eWNPeisxcHUrWmtuSTdWVmJX?=
 =?utf-8?B?Z3lpQzlBaUJnWjJxWFR1cS8rMWhyNGN6eW1GNWdRSXN3Kzh0YU0vUllOQW4r?=
 =?utf-8?B?TUluUkV2N3NHeXNNeUZjLzFBWmJLR0J2NllmVzNuQXRvcUx4RytrZnFnSURy?=
 =?utf-8?B?RnJDb0s5ekY5TVA1UXBzRnlNMThVVU80ZWhRWnlnTFpqZ3VUVEY5dzhmMm1q?=
 =?utf-8?B?OXBoTG9QYWNUSDVXZTBDZ2l6TWlPTWF0THFoa1pqdnRYUm96SDZ5NEduTitr?=
 =?utf-8?B?SzVnYjRzcTQ4SXdUcSt5d2hXQXI3NWRWTmxmdmNobEJrT0JoRzRCOEVXN096?=
 =?utf-8?B?MzFoSVl0MDZpdmtYWnA2OFFZbU9vclB4dVVkakdQOGdQNVlwNEs3V2RJSGtS?=
 =?utf-8?B?dTdKenZ2ZEd2NzM3TDZYNng4cXFlSHJVdGFvUTdLZzRtMWIwQVFxOW9yMktt?=
 =?utf-8?B?c3Z6dTlyVUpxbjdaLzVvWUFoVS9KaUhaWHNoTTFoVjdycDBycys3NVdaSWxW?=
 =?utf-8?B?Um1wYkRURFA1M2lwTGR0K05TMkFnaFNLcVN6Z21DVzl4by9Rdzc2aEFvNWYw?=
 =?utf-8?B?ZU0yeGVsRVlvRTEvcTNrM2hDSDIzVjNYU0x4VHpEV3QyRGdLZkxTWncxMGdV?=
 =?utf-8?B?dVN3MmVqN3g1M1RPamUrTkszSGJOVC8xdXFmcG52ZHFVRk41Z3orSXVUMTlC?=
 =?utf-8?B?UW5UUmd4ZVRpcmVMb1poeG9tSG9KTjRKM2hlTURlRHdoUDlzZWZjWGMzeUc3?=
 =?utf-8?B?b3R3WU4yUjNPVGFwYnkyRkV4YjVFOHFzVmVicTY1S1h3eTRsZkt2b1dYUUVw?=
 =?utf-8?B?UXNGVkJubHgzWWF6Y2VxNm53cFBXMjViOVl6UzEzNVBxT0hwTUlManBJemhQ?=
 =?utf-8?B?b1lqaXVVNmdvUCtCWDk3SmpHQ05QNTBMdmtkUTV6RjZqQmJTYjN4UC9sbzBp?=
 =?utf-8?B?bVFueGR0ZkhxaGVGQ2xQQ1dhVW9KQnYzeHFTWDBBSUdYYU1RdHB2NDhNeU1D?=
 =?utf-8?B?TGcvOHozK1NtVnp5eGdxbGVGS1hKbSt0RkREU2pmaVZQUmFiUVBhWml6ZDlC?=
 =?utf-8?B?eXAySTJ3RmROQUJaQUhpMkJqTWk1OVYxR3BhTjl0VTdnd1Q5QjFQQnhMWmI3?=
 =?utf-8?B?WDVLY2ZvSm9Idnlhcy9yVUhJQ1JIZlUwTzFKRWdDTWFEZ2lDSlpmY1MvdGlT?=
 =?utf-8?B?TitqaEF3eldzWjE0aXI4TmRNV1lMc2Y0b0lQUndJazhMNXZFNTE4QUlQNnV2?=
 =?utf-8?B?UDNZOFNKejRmRzh5Q1FzajR6VUNZNHc5LzdWYkVRM1oxOEdwQzhvQS8rbGxo?=
 =?utf-8?B?RXZmVSt2VXJ2MjFzb0k5bGNuS2hJSGt5bjBZc0R2Y01QdlhsczhPa2xtR1JH?=
 =?utf-8?B?aDF2b1dyUlFhbEJMQTJjNnBWcmUwcmw3ZFdPdmkyK1phem90TFBNZmVyanNE?=
 =?utf-8?B?WHZza1Q5QmcxVzJSZlZnTk5Lc0FqV1UxVUZVbDQzbldFVTR4Y3FlR0RoWjBY?=
 =?utf-8?B?blNLQ1ZSYUEzY1lCRWUzdVVRTWVnYXlGZ2c3NlgrbnVLU2VIZGU5cmlSSk1l?=
 =?utf-8?B?KzVXVW5EMjZsYitNMk90L3lKWVMyZDVhQlByT1A4R0JMMG1RdUtwb1RER1pw?=
 =?utf-8?B?NFlDbnl2UWhjdndUMm1pSk9CMzBWMU9KM2lLbmxNdXhuUVNTTFZ1SVZ6em9s?=
 =?utf-8?B?Wk1GUTNSQlcxRFRvdEN4VGFWTFZ2NWJzY29XTlUwQTErU1ZzTTZxYTlVZUs4?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03381ec3-ad07-48ca-e23c-08dcfdd3ad37
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 19:54:36.7725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JExRvs1icux4K0uJr0+6xRLxjvNoeAMzg1x1OFewstM5QuQc3z6GBKKhLCXZhWhGW6uiPrwABj+5N5rmzU+Fpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4833
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

Quoting Jani Nikula (2024-10-22 05:03:21-03:00)
>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> There are extra registers that require the DMC wakelock when specific
>> dynamic DC states are in place. Add the table ranges for them and use
>> the correct table depending on the allowed DC states.
>>
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>>  1 file changed, 108 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index d597cc825f64..8bf2f32be859 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -5,6 +5,7 @@
>> =20
>>  #include <linux/kernel.h>
>> =20
>> +#include "i915_reg.h"
>>  #include "intel_de.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dmc_regs.h"
>> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>>          {},
>>  };
>> =20
>> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>> +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUN=
TER */
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>> +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +
>> +        /* TRANS_CMTG_CTL_* */
>> +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>> +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>> +
>> +        { .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
>> +        { .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +        { .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
>> +        { .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
>> +        { .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        {},
>> +};
>> +
>> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        /* Scanline registers */
>> +        { .start =3D 0x70000, .end =3D 0x70000 },
>> +        { .start =3D 0x70004, .end =3D 0x70004 },
>> +        { .start =3D 0x70014, .end =3D 0x70014 },
>> +        { .start =3D 0x70018, .end =3D 0x70018 },
>> +        { .start =3D 0x71000, .end =3D 0x71000 },
>> +        { .start =3D 0x71004, .end =3D 0x71004 },
>> +        { .start =3D 0x71014, .end =3D 0x71014 },
>> +        { .start =3D 0x71018, .end =3D 0x71018 },
>> +        { .start =3D 0x72000, .end =3D 0x72000 },
>> +        { .start =3D 0x72004, .end =3D 0x72004 },
>> +        { .start =3D 0x72014, .end =3D 0x72014 },
>> +        { .start =3D 0x72018, .end =3D 0x72018 },
>> +        { .start =3D 0x73000, .end =3D 0x73000 },
>> +        { .start =3D 0x73004, .end =3D 0x73004 },
>> +        { .start =3D 0x73014, .end =3D 0x73014 },
>> +        { .start =3D 0x73018, .end =3D 0x73018 },
>> +        { .start =3D 0x7b000, .end =3D 0x7b000 },
>> +        { .start =3D 0x7b004, .end =3D 0x7b004 },
>> +        { .start =3D 0x7b014, .end =3D 0x7b014 },
>> +        { .start =3D 0x7b018, .end =3D 0x7b018 },
>> +        { .start =3D 0x7c000, .end =3D 0x7c000 },
>> +        { .start =3D 0x7c004, .end =3D 0x7c004 },
>> +        { .start =3D 0x7c014, .end =3D 0x7c014 },
>> +        { .start =3D 0x7c018, .end =3D 0x7c018 },
>> +
>> +        {},
>> +};
>> +
>>  static void __intel_dmc_wl_release(struct intel_display *display)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(display->drm);
>> @@ -106,9 +188,31 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
>>          return false;
>>  }
>> =20
>> -static bool intel_dmc_wl_check_range(u32 address)
>> +static bool intel_dmc_wl_check_range(struct intel_display *display, u32=
 address)
>>  {
>> -        return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
>> +        const struct intel_dmc_wl_range *ranges;
>> +
>> +        ranges =3D lnl_wl_range;
>> +
>> +        if (intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        switch (display->power.domains.dc_state) {
>
>This file has no business looking at power domain guts. Use or add
>interfaces instead of poking at data directly.

I started adding a function intel_display_power_get_current_dc_state()
here, but then realized that display->power.domains is protected by a
mutex and we do not want to use it in an atomic context.

So, in v2, to avoid rewriting the whole power domains code to use
spinlocks, I decided to go with having a copy of dc_state struct
intel_dmc_wl, which is set by intel_dmc_wl_enable().

--
Gustavo Sousa

>
>> +        case DC_STATE_EN_DC3CO:
>> +                ranges =3D xe3lpd_dc3co_wl_ranges;
>> +                break;
>> +        case DC_STATE_EN_UPTO_DC5:
>> +        case DC_STATE_EN_UPTO_DC6:
>> +                ranges =3D xe3lpd_dc5_dc6_wl_ranges;
>> +                break;
>> +        default:
>> +                ranges =3D NULL;
>> +        }
>> +
>> +        if (ranges && intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        return false;
>>  }
>> =20
>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>> @@ -195,7 +299,7 @@ void intel_dmc_wl_get(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>
>Side note, unrelated to this patch, i915_reg_t is supposed to be opaque,
>nobody should look at reg.reg directly, there's i915_mmio_reg_offset()
>for it.
>
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>> @@ -247,7 +351,7 @@ void intel_dmc_wl_put(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>
>--=20
>Jani Nikula, Intel
