Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2P9lMJka52nT3wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:35:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CABB437020
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C12C10E7E2;
	Tue, 21 Apr 2026 06:35:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VnmmNESp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1445C10E7D8;
 Tue, 21 Apr 2026 06:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776753302; x=1808289302;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y1O2QSx4K4qsruD1Pd/39OCWWaGN/qHbq+gYZBKFAe8=;
 b=VnmmNESpLmrQTNDzTI6VgZGmt0GOWuKZ2LOJwQEGPyBCxCuUm/sRkoys
 rsYQd4N8uGuEKY46IcyxYWt4XuAJu0YESl+0BdJLnO+kSJlt3opFo8CEZ
 h0Wa+j+n75T1YVNgxcnxsMXtG9v2h0vuuIIF/fqfoKj0HJwmS68NYC63o
 9IQ/3JBZX014xXUKg4SgSf1YE+Ppwu5mXPy4mL0OHLAQmGayPXoitK5z5
 a6P+m29vZQawI5WiuVTCA9dng066IhoW6wVbeHkVfyXpydhQhhK1s5Aj9
 lNTACwAv2RDwFybAFoZ438O9hrh/kxc7fjx0r3EVrSOqqvPZ227E9FblM A==;
X-CSE-ConnectionGUID: Q04BiJcNSVaqgS6Nn0Djuw==
X-CSE-MsgGUID: gXnsyDZtQ+Czt0LamMvlLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77749578"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="77749578"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:35:02 -0700
X-CSE-ConnectionGUID: 1AnTInyHTQqsU5+6U9WuRg==
X-CSE-MsgGUID: 6QRIrqr3Q9mMbbEMtxiJjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="231854644"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:35:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:35:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 23:35:01 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M//3XF7KPM8eIKWEOJUwbMPiEGd8NDcnz5Hwzgrc/qJj51S2fnrPcF0sFN4dpuJeqPlKUYOqmGuhUZTD5ZKS2KVK+BuegphGts2h2dEqasP7OOKVPIJcg56t9ceYiCdMvYziXabE5JVB6Wb8AbP5exRAn+Ex+gVDXBJCJaiiPla3yXEm4u83pqXgKFx6CFI8mxP8zj9tPFcdqMOYsM8IbQhxH2caxZKP1OBeFwlRxATNq14JzqMTX9XejNyGJl2adSpEQjX0i9SZf85PJpDzZHX3U8o26sodic6V930Yexap9/ILYpas5Tr4fkWXPiIdu82Vzvi/0Tm3bJABBYGK7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1uNayyk4L0dLX1BxGkxTD0lZANDGXGZdSOxA6gyYBo=;
 b=gzoejImMtnZplTc6ypq4fjposT8orQNaYukpb055I0LpFE+groo0dg31NKmqIxh/+3p1BNmry8bgReV6UEUHsFWlA/L0Voly9S7oTt0t1remedghQm7S0dr91BJk3XWwNTDuxbekA8TIKhhzkceQtpbffeK+WIjgxmqUz+Rr53z9s5h3ZG9LazBZ98bbt+axh+IxfsyWuCNovSC7omM+WzNxVaqCEW1R6IsIKlhFukrLpYKvJ4+PmDthcOaxsnC2GFQSMVw462qAFyIv6Lcp5cpZm14beBy+FwIxGY5sUb4W3hlfam7YuZRHOIhQjGYZG9HKVckHemhO2bfVVYs3pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5917.namprd11.prod.outlook.com (2603:10b6:a03:42b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 06:34:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 06:34:53 +0000
Message-ID: <67a2d30b-f33f-4316-b7a9-cdd297c269bd@intel.com>
Date: Tue, 21 Apr 2026 12:04:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/dp: Define DSC bpp delta DPCD fields
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260420112611.1481530-1-nemesa.garg@intel.com>
 <20260420112611.1481530-2-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260420112611.1481530-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5917:EE_
X-MS-Office365-Filtering-Correlation-Id: 73ece746-0f46-46c5-c144-08de9f70185e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: nIEQgZfPVXHfExfrRzlZEbyr0G/VGE3U/SvMyQZu7Wy+2jxbNKntd6ktOrAGLEYhDE7AV5P2YXufKL18rZIss+yC13zPSiraQtQfDrcujc00wHLfUOnwKHnp5mPBHtBF8mA7c8NWSz6Yq4s0wGu+yjATdxhryyZdRUDNHpD0wh5bgfJv8B0N//dqGznzKW6BawhvvLi1Rp1bFGCCocmtHLW32FlXt4WrP3b8HtLnwlcHq0/9FblD+JLwRFFm/rUJNwcr9Vh07NP61L14ThQlZPRiJKy+IRre0nUrtoqBzGfTwC+B/ChGLG2LOHCG3cNhBa9QfOm/IyQP43sCVtT3rG00oU8WSfS78JKYW0tVnxN0QOcDhQ0pIjPua11+SqMdXQOJRkGtuQVsUWaeu48xH4C8K1zZ3FdQKQ56PDQEVd20wAOoEaAa1ug9djrjU1DyPh+a9ly0yijYj+Z5KdmUXrY+jb+4kffyaCCogVtLdYyVez8GaJq5KyumbR5MwAIZMjVMocKziDcSXqLImd14UMMU32JP8inRPaRnaepEETbsh/Z0CzsvxS512HUaIR2bJ6+8ffIDfqnoLpSH9/9SAVCUA6m6vXLXQU5YyF8x0tvmVyEcPbLVuPSmba7Uku4nEN0X5Um9BREb3PBUIQEma8CtEtb2hY4eNFdVzWKGxr5WsSK14BPiJGwnjA8iysv2IieSkHmJubOuHvqNgb8nC7kYZtrE2Y56MPXSQusbdAA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGt6L3d2S280eXFFVk9VRDYxcnhGTGY1NjMrb0hGeGt5cXJRTXlhdHZlWlBz?=
 =?utf-8?B?RURHRExwYXFPNzJVV3A1UnNnRWFJSzZRbEZDN20vckZsdGNGeVN0R1RwOFFh?=
 =?utf-8?B?Z0l0R01UeFp6VXhCZ1dWL2F2dTBnd2dQMEVza3ZBNFRpbHB4QzNpbGsyd0p6?=
 =?utf-8?B?OXJYejY3eElOYTNkNFE0Q0QyU1JhMFk5bWthYkorU3ZwcUFlT3BXSGU2SUh4?=
 =?utf-8?B?UkRMTzBHWG5Kd3Zqcm84amE1MTBvTVdoeFZuTGl2bktGS0lvM0YvaEdMcEJM?=
 =?utf-8?B?UkdwY0doSTA5RDA5Y3BweFRsM01NWWF4eXZ0dkdBMnVCSUhNQjd4U0M2U3pp?=
 =?utf-8?B?dWxLeGtRdHlJUElVODFLYk81aU8zOGhxWnJnYmtXTHo2RlRidHp0ZzF3Ulc0?=
 =?utf-8?B?dXlzdUhKNm9FU3krdU0rY2pKVWZyRytUVXQwY004eDlqU1VsTmRhUTMzR0tz?=
 =?utf-8?B?S3Y0eE5HNWs3OGlPeExZMWxScEd5VFZpQ09NaC9iK0Q5U1phNVdxSTBkMnNr?=
 =?utf-8?B?YUptMitoa1J5WnpkZXRrdXZZdGxrcndWUkQ5NUZ1cmp4NEh2Z01abmU2VVNL?=
 =?utf-8?B?K3h4aUFGbEJaeWdYaFU2WVE3ZTIwbG91YW1uQ3RFRThZdkpQaVM2N05rUjdr?=
 =?utf-8?B?azd4cUowUXowUG9naWtNSkk4cXh2MzBHaGtVTG9zTHBWTnN2RitvckUxV2li?=
 =?utf-8?B?cmxLN2dnNE9VempDYjFPcndhdVlxbmxTZFlIeURQMzFDWDl6a3JvWDFVT1Qr?=
 =?utf-8?B?bG5zSk5ETTFYcGxLUnM2OEZyMHdaQmYvalJUdHpHTCsxVE56cHFHeWZud0o4?=
 =?utf-8?B?aXltSGk2cmZsSm9oZEkwbFlOVEhlS3ZWbVdCY2Zsekc1N0Y4eVNmUjRjK3pB?=
 =?utf-8?B?dmRpWUxGM1FuS2cwRm9NbHVWVGFUYkxoRFY3SE9mMDQzMnJ6aFhycTJaRFgy?=
 =?utf-8?B?UEdYWUxrMEQxWkcxTm1GQlpXZmtES2NERDQvVVRLZm1tMGR2S3N1UGFOTWhE?=
 =?utf-8?B?c1hQYUNDbi9xWTMxelJSa05BMFRBaGNiQVJOWGNKOTk3THAwVFN5dURxbjB0?=
 =?utf-8?B?WEZXRHN2WFFWUkNJZUh2MjF1TmpDNmlDR082OWU2MmNTWjJPUlFxRXQrd0R2?=
 =?utf-8?B?QS8xUDYzOHYzTGpQcWZ3bGlCcmFPMnhDTWRiWGNlZUhsZmFhVjRJUjFDRys1?=
 =?utf-8?B?UmY1TVpnZXcvYmloZ1Y4ekNvZ0dPSXJjd1E2MnVjemxUTEpmb3k0QThEMklN?=
 =?utf-8?B?TmtqTUFvZGtYOVc2WGVCN01mVzh1WjNhYkJtelpGNlRrWXNMV0tuUzZZZmRV?=
 =?utf-8?B?MGtkMVBuL2NyWWZBQnRMYm1INVMwVEM0V21CdjR5Q3pvSFRtRC9HMDFQM1ZB?=
 =?utf-8?B?TWtQNmRWSGRSb0RKc3UxZzZNNVkzdnRZSTBDVFVJc1E0cDM1dTd3WUtPdVNP?=
 =?utf-8?B?QUhxNDZKVHdMNDhYMmJVOEptSFRXN1pFRlNCd0JYWFBrRlZrMjljeVpRaHpI?=
 =?utf-8?B?Wm5WL2FZTGc0VEpjbDArMGkrNlVMN2JyMzZ3TW5kdG5taTBYRlpCK1JJN2I5?=
 =?utf-8?B?eUpaTm5ESHhOVE9kQ3dFNVFKUjVjRUZmQmRBUWRSdlNOQ3JFdjljZlM3TnBl?=
 =?utf-8?B?V0Nnc25KV2ErTVpHYUFqMGxPaFZ5eWZudHp6NXlRS0ZuclJqOGpYNDJmS1FD?=
 =?utf-8?B?enBVVU1obThjNThHYXJIUlJseG5tT2hua1dHTGFlUWhMT3Ewd3JuQXBLbHZD?=
 =?utf-8?B?RVg3RFFvbHhBVXlkTlAwTStPOGxpKzY2YnQrYlB5dDRJalYwQmdhd3RNUlo4?=
 =?utf-8?B?UzBEelpyRG4zbUFTeDJySW9FenNYSWhZZWxQYW5NdXBHUVF2ZUt3TVRwa2JH?=
 =?utf-8?B?VmE0Myt6ajNTY2xCU3ZPTHphTEpCV2RhNmF4Z0VYVkhvMFJTT2doN3A5M3Ju?=
 =?utf-8?B?OWFTWUtiTGxTY29rcXJXRFc3UG94ejVtRlFRamg0L0lKcWtZNTRHMk9ZU2VK?=
 =?utf-8?B?QndycmxvNUNaZmp0WXlWNnlMRkxXcm8zL1g5dDBZUzVQWWJWUjRCZHFMbEhT?=
 =?utf-8?B?bjI5QmtNbE9hV0dFNUFhd3grZTdJYWFpeWtxZlRBVFQ3SmFUWndaMzFLcWFy?=
 =?utf-8?B?YkFNMENTMklHdkhsWnBWMFl4bFBIOUZNZm44K1lsQTBnOGF2R09MTHlWWmtv?=
 =?utf-8?B?NFNQaUxqNDNpL2ZicStwMnlCa1pRRFNPM1N0N1UxWDBGTU5LWU9WajB4Njds?=
 =?utf-8?B?Y3Fza2ZyNHhjY3RRSlE3WTh0R2FySVpkNmZXVkZiWGtHVHk4QVRXR2prWGU3?=
 =?utf-8?B?V2FyNktqWldHRG9PWlg3YkN3amhlZHlCdm1xOXZtVW8veGRkVHU3d1FDNjQ1?=
 =?utf-8?Q?lxrDe4XUvIWI+hDA=3D?=
X-Exchange-RoutingPolicyChecked: RGUppZSJogIAghgC171nWOWG1uHYj0c9Mn83gLM18SDAf4n8iXZi8EvC0cts4BtPvg2xXVzgvD/eyl6yCb+3P6C2r8UkU2dOm/RXJPE9xcQgXUfXN1H3j+VBA4ciQxfCvYU5HurSSBG/VUdtH+145cWQvoh7CN4MZjCw+JM0FzIi6ljouhegGk7QtiP5rwzuliQ9PzWrOewWRvIcIAECziy2J7l1WpmdrsVfiCyCsW54V1hzoHmkPQExncEy7xNAolb8kFQCwMVgMCVdCT6YGRsImNStglEvzS2y09SZwE3oB4miOMPRE/UdYJdjs5OKLtYwKvmJyIx8ubjojyjxvg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 73ece746-0f46-46c5-c144-08de9f70185e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 06:34:53.3453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6K64GHFm214aoDbznzUsfOx73CKpjuQvBimXyiCk42RwC6w/D/+8lsar8iYLyU46NRMSdO+NwfnU9l7JGXxNgq6WY9qOV2sp4GqU45M1cNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5917
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2CABB437020
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/20/2026 4:56 PM, Nemesa Garg wrote:
> Add DP_DSC_MAX_BPP_DELTA and related field and mask helper
> macros for RGB/YCbCr444 delta and YCbCr420 delta encoding.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   include/drm/display/drm_dp.h | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 8b15d3eeb716..2afd33d90a0e 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -354,9 +354,15 @@
>   # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
>   # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
>   
> -#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
> +#define MIN_DSC_BPP_DELTA_444 16
> +#define MIN_DSC_BPP_DELTA_420 12

I understand, you are not using 422 format, but for the sake of 
completeness, lets add the values and mask for 422 formats also.


> +#define BPP_DELTA_SHIFT_420 5


These belong to the 0x06E group.


> +
> +#define DP_DSC_MAX_BPP_DELTA			0x06E


To match with the DP spec name add VERSION_1 suffix.

There might be support for Version 2 in future, (atleast the DPCD 0x68 
MAX_BPP_DELTA_VERSION points to that).


>   # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
>   # define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0


These bits were wrongly grouped with DPCD 0x06F. This correction should 
be a separate patch.


Regards,

Ankit

> +
> +#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
>   # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
>   # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
>   # define DP_DSC_BITS_PER_PIXEL_1_4          0x2
