Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD999AD4D0D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 09:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A8B10E2D9;
	Wed, 11 Jun 2025 07:37:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvoO3wfy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31AB210E2D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jun 2025 07:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749627472; x=1781163472;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q1/cAqsYP5uj0F5/d5ecm0fTjuV4GTBdPc57T2mDSa4=;
 b=IvoO3wfyjtuLKHhQGwkcjeCt3rokXCzE69lYaaY1jHoqKtMIX/PY/BPp
 NaWr6AG1RDkNJodpcZiRqbWRCFxzzmnwA5EGUuQG3R/dnn5K/Qr3S6NtH
 A1usujQxKJFThuBs1GRn1187I/sONeSTlKBSa7D+n97xi09IIU2Yb6RUV
 CfV3krimtQ+LLpZ7VvgJLFCskYqEw66nt2fo0SAV4/hZETFowl3pP5J90
 8+TtNHS+xHxcrMMXVSpHKdZTmWGRa5aMufTfrgugEHI97qzs5fms4dPPA
 S39I4QJYlE/i1NCqhGQELwDc2jR9aN7lAnr//XabWheG0CRc9qLuid8HV A==;
X-CSE-ConnectionGUID: eE3bb5wAQqmW1ci8wWCipQ==
X-CSE-MsgGUID: Z+3aoRJQRECCYuuzDwDqNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="54388196"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="54388196"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 00:37:51 -0700
X-CSE-ConnectionGUID: GL92KSbFSSKgv6PnszoXMw==
X-CSE-MsgGUID: 6CzEepPlT06Cz3PjLikPww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="150932641"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 00:37:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 00:37:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 00:37:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 00:37:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NZAB+5wVDgTDxPTuKik9WhuHCP5w670SNkEp8xyHfd7GmkM9bQpArld2Hb82LC7Nz/jx2YZqV5Xs7kTU2to35uXGw23FMFgaKNONigGm4Swuj06/TEe5uemgVvUrlwRmWQbQAhO08ttx1j760VzuXm3/6BVXlwC7CDg8hD7l2VgC11P/Rc3SlbA5oP0zIpoK4il9+Tr0v9kwZWwBjksZOJnMjIQE6eatcLXMcb3tU5r7QEr3ULva6sk9/7R9wmexppHpxWPe09cVsY0jeLUJfComq7ANfhdDuODBykRXfVGOdk52IPdHVaSAoI9xXggRlCfAwIhD/PbLKnHSxE/TCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kLfeTFg8sFYvpzD5MMhegCa+BeWKS6GEiunLEu4Y2XA=;
 b=OmGTcVx/jpzMgkxVa82fY60aV1WH42EyKbNIH5ABKTwF7OS9KWg8Gqnm6CsebP7peus1/EirJzmv4/ntfA7ihkRyoHGa2rrf4CR0D86Ttu9VGHJiKmdXoOlmgUtYqNguba3rB3/LjR0y7oodpL2MCmqtlmQD1r3/tBoOZq0qx7fIL1rj+lMZUCkLQfEEgwS5cTE+vQHiYvUx8rVuiHnF+mNdz7rr/VyPFAO9Ea3jRzI6PDjxwhxOf062ezvo6KAq4h7sXnkPQmsKl70gDhe13LyqTAzrva8ngpECgY8ktZ1LKHRFxqHmY2TGDmnVBaThjIV6ANsplJjtDklua5NKGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5200.namprd11.prod.outlook.com (2603:10b6:a03:2df::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Wed, 11 Jun
 2025 07:37:46 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%6]) with mapi id 15.20.8835.018; Wed, 11 Jun 2025
 07:37:46 +0000
Date: Wed, 11 Jun 2025 07:37:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <ubkojvjfhohfuhcsflvewyhudopk4ejkhn6dvhso5tuamudvow@j65h76edocll>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
 <zxfcptlxxtii6smmberh4jz7dx5bml4c5wrnrn7t6irgenni6d@7u2r4ylsvupk>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <zxfcptlxxtii6smmberh4jz7dx5bml4c5wrnrn7t6irgenni6d@7u2r4ylsvupk>
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5200:EE_
X-MS-Office365-Filtering-Correlation-Id: 8835fef3-93f8-4e49-7622-08dda8badb9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHRkVFZGYUNZTzdYTHBtL242eEdkS2NxSVh5ekszY0ZuQ0l1U1hZOWh2b3lj?=
 =?utf-8?B?MTdab1FKSUNQWGpjc3gwR2NSUTEweFZ3dDYyZkFrRkl5SHVDUVpJU0ZzbFlT?=
 =?utf-8?B?bitqR0pLMGF1aS9PNVJHTUlLcENBTW04b1M0TkJWZm41QVIvblBGR2F4SjM1?=
 =?utf-8?B?LzhpUjBZdWVLOW82SExnZ1BtOUQyODY5WTlzbFNoM0xrQjE2VThJc2ZPUE5k?=
 =?utf-8?B?aGpuUlRXMUVGVnZKVUkyN01HZzNYZFB0MExqTzVQSEZpa3dKWDhpSkRCWU5Q?=
 =?utf-8?B?SGNGbmdqRS9ETW1scktYZ0pKejdtelZENlFCMlZCYnFlb0E2UDRTRUgyeFJ3?=
 =?utf-8?B?a3dNZTcyRkR3TmlzN3Z5UWtIUEhqc1Y5eXNOR3lSL2VlUitpT05yQk5pVnVY?=
 =?utf-8?B?Y3NzMU5XeVY5K1BCaXR2MVJHTmFKeE92VGRuN0hVUFQrWkJrQjBraDFLVlV2?=
 =?utf-8?B?emV6YndjTi85eWRaMkg4VHp0SDZORG1RWitYcU0rbkd3RGxnL0dadzVjQWJR?=
 =?utf-8?B?R1FRQVltMWdKNm82S09RamxmRWdVWGpXU2VFL0ZaRFFXVmRGLzRaMGhONGVE?=
 =?utf-8?B?UVhoU1o0aWxHT0JxNjJkeGRKMzlNTUxzaitqUFAxZ01JeGpNdEU0dCt3c2xn?=
 =?utf-8?B?bTNCSnZFWng1ZlJMQjNLZzB0enRjSlNJMUw0azFvZmVMMW1mM0tBQWlJYU1i?=
 =?utf-8?B?cDlkSmZuVE9UeHEwYWxiQ2d3d1hEeHFoWGN6enpOYjZEcHI3MnBjUmMxemdo?=
 =?utf-8?B?b1Q3SUphOExlWjNlaFVKRXhoanYwdW9WMUo2cjN4VTJqYXVma0MzVzJyNURn?=
 =?utf-8?B?bW04Zjg4UXJlRVlzWERGc1k5TDZXWEEzeW9BZTNBN0lOU0dvdEY2b0pGeEJG?=
 =?utf-8?B?aDdrRVRqcGlOa1ZqVXJrYlBNWkhEcFJFNVdLYmhjUG45aFlhaVByY1A2b2Jy?=
 =?utf-8?B?OEM2dW0zTHBkSHJTL1Z5cEs3UnpENzNEbDA5NFpjNVQ4SUpqK3hFNWtsbjJB?=
 =?utf-8?B?Tks3N3lLODR6VjhLV1J6cFp5ZWRIVS9HOG1QbXF3L2oxRURka0I0VlpmejB4?=
 =?utf-8?B?WkxlVTBUUHpWRExMcGIvWEc4SWp6Y0JkUmRqZlptaTRDd1JtSjlIZFN2azR0?=
 =?utf-8?B?WWlTZE9DT1VPNTVmcENweWVTK0RQQzl6UFd3aWF2ZmNLSkhBZlNIQm1Gb2ZW?=
 =?utf-8?B?S2tLRU5YeDY1eVlqWXNYZUFjZnZxellEeWF4L3JieUN6a0RnQzZMQ3Vybm9r?=
 =?utf-8?B?REtyZUxBRzlSbXNtL2kwN3RVSGtkM1ZJMjR0U01LbFdtNDd4MCtXNU5iWWts?=
 =?utf-8?B?OHRrMkNGUERSRTNYUE8vaFRZNVRBdmdidGxST2dzajBjMmtjbWNQaXlkQjVY?=
 =?utf-8?B?WlpvZmRuMW1QQUZIOFZacWZKNXp1ZlZUUjlZOW9pMG84UXFMWVNua3A0OVR4?=
 =?utf-8?B?K2t1OUxORnFkY1lkTVhzbUM1cTFFUjBpMmxXLy82UEU0aHZvbTVKbU4yeHRU?=
 =?utf-8?B?UU4zNmtjNldpS2xPVFUrZlBMb09vejg2ZzRRU0FSMG9kRlRvY0JJOHg5Yjcw?=
 =?utf-8?B?NjUwZU9sQndsK1UvRFlHRElGYVd6a1ZZczRTVWRRL3YwV25ZNXVaUkJ0NXlP?=
 =?utf-8?B?RU0yYjBYT3hsZFFmNDZGL21kNTJhTm42WU1QVmFtNUN3dUVzZFJyVlcrM0Nj?=
 =?utf-8?B?YlZUa0pRVzQwSHJETTFVZWRqK3lYL2ZWVmhoQk5tK0NRYnU0S3lJUW96cldS?=
 =?utf-8?B?WFVNa0tlWW95djFqR1pQWiswdy96K1FuK3p0QUhHS0lBeWxvWldKQW5XZlpo?=
 =?utf-8?B?THJyYVpnemlpVDRGbUtPMkdldW9mRkpxckdtcEY5cWFtbHVwcmRNMDBDYlVm?=
 =?utf-8?B?bVMyWWJCWlprcEJpU3BQSzcyZDRiZ2hEQWIrWDRKWGJnZ1VrdWZORWNLV1hB?=
 =?utf-8?Q?OpIJibS9BwA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk80aUNaSDliKzlUMTJ2NHErbGxzMThBMEtOOVBjNGZETHpqTE9na3NiMFBD?=
 =?utf-8?B?c3dZZU1LejlSNWVhd2VDUHAyUzIrTDVWcFRrTXIxRk14eUNWaGdoeERQWWJZ?=
 =?utf-8?B?TGFKaVg0N29mMUd0clcxVU5hQWZxNmFyMFV2Q2FmQzlqWGhoZGJsY1RXMmdI?=
 =?utf-8?B?Sm1LYnZGSFlxVExIMDNxMThyNHgvb0hudVNJd3d0TUMwVk1QLzBDZS93TzBk?=
 =?utf-8?B?Q0trVStVYisyZjVnYWFQWVFpcnhuR1F0WXZaZ3VIWG9sT21rMDZEeVRPdDgy?=
 =?utf-8?B?andpcFltZmV5aURTWkNkT2VKSk9zRzZuc0pyOFVDaFNCcm9TTDJKUHFmQ01Q?=
 =?utf-8?B?Y0NTZm85K3E1Q1R5ZWhyTGFKaDVsVVppZGVjOHk0RFlFNUxxdE9ock0wOW1k?=
 =?utf-8?B?QmNKVWJFVlliQkczRWlwbmlIV1puT1pGOVpCOWpkcWd1UzV2LysrY1d4ZXpK?=
 =?utf-8?B?Yk9VdEcwMkVRczhZbTJRQUN1T01XRzMvdjZYd2tKZ2R3UEdVdnE1N09qMEJw?=
 =?utf-8?B?QlhDUGVBK1hPN2RlZHRzOEhLV3g5c01EUGt3Y1hreEcxVmduNDVBM0ltSnBX?=
 =?utf-8?B?d0JRYUg2cFcvTmppNUVaME1TQXl4M2xZUkNXQ01WeWNPaDNBY2pVUmtSMkFM?=
 =?utf-8?B?OHJmbi8yRnljVCtvU1dzdUZpT3Y0UU9vUmJNcTdyQnJjZVdaancrQWRPVVNi?=
 =?utf-8?B?SzVOUHZvL094N2JKV0RwR3FlckVqNXdYNzlVYk9OczFCS0pjdEYrc0RuYnRi?=
 =?utf-8?B?Y1VYczQwU3dRUjBKUGtnUkg5RHlNQk9ZSHR4VXJDK3d1cE82cXh3SmMyVnpJ?=
 =?utf-8?B?VXp5bDRLU0JyUGJoMGJHUWVIN3kvd1l0TlBETTVDMUhOdVdaWnZ4YkhJQk5L?=
 =?utf-8?B?Snl5YWU1U3hNZkVEQ3RFMFR0TFZwZitLQnltZmozUU43M1RXR09VQlIxb0kx?=
 =?utf-8?B?cmRCRm5mb3JvcHJiZExKakd5aWlXQWJuYllaWnhPMDd2c04xem85LzRLNVJJ?=
 =?utf-8?B?d2VoMUR2aWQ1KytQUmZHU0N6aDliNnVVWGJqQ1UrQTRGOEh4YnlhN3ZYbzFz?=
 =?utf-8?B?TFI0N2hXRmplV0ZNZGN3aHRqMG9ZQVdzVHlIZ1hBdWREN1gyQWY0VU1mL0Nl?=
 =?utf-8?B?UEZYdkcrUXN0dDd1dHhYMU9CUHUwdkhpaVBIcWNpdDV1My9iNFQvY2h3cndu?=
 =?utf-8?B?MlVDM2lxOTF0RFpyZ2xoRkd2bUdPenJYTFVzMnkwMERWOUJXc3N5Rk9GRlcy?=
 =?utf-8?B?SjhqTDNKZS92eXNsYytYKzdaMncyK1d0a05mOGJyd1dGVVNOVm9RTmd1VXhi?=
 =?utf-8?B?bVBCUFJFcjdOS0ZNalZGbHhMT3VMZXJLYUl2Uzd2Z2RHcmpLTk5vUEZRclB5?=
 =?utf-8?B?eEFyVnFrVFZjWEhKalZwL3lNb0VCN1dGN1gvZWNhU09QUnppUjYwQjBCbU02?=
 =?utf-8?B?K2F4WFl5Smt3QUJ2cWNHNjVta0pveEI5am12b1JmMFF1UE0rVGZBalpmSHNV?=
 =?utf-8?B?OUtuakhOMUJNa3dkZXovQUdnUGdxU0ZldzhuaVdDQmYzNzA3VFRWWHJWZ1h5?=
 =?utf-8?B?KzN1cTZXOEZ3THBhVnFEQkF1czUxbjd3QjZwWWx5Q0hoc3U4Tkc2UUFxM1Aw?=
 =?utf-8?B?a0FCcWVPd1AycjczL0x4VVFkaHE0K2VRN0JQUjhUNjRVMTJtT1RLZndOTzA5?=
 =?utf-8?B?d2NwVGc0d0g2MzVFaFllcmFPK3dlVTJSNEZ2Z05UVm94cklpS2VXOWRVYWxO?=
 =?utf-8?B?Z1F0ZmRIaDJlMkFZUGFQaTZWa0hJMHNkQzhaek84QlBhMndna3RnUmNaZTNr?=
 =?utf-8?B?bk9BQUtLWlZpaEZERWN0cUxLVWNZeFpFNlBoWjRuWnA1Q2FndUxXSUhYb3Bj?=
 =?utf-8?B?c1dmRUp1NEVYTy9EVENmNUZ3b05wQzM1TVpId0lidlkrTFprMlpkYmxNVzZo?=
 =?utf-8?B?VzNWY1RMemNxS1dlWHQ2clk4cW5DM21HaVRieFdLbU5jckxOazBnZkVmU3Jk?=
 =?utf-8?B?SGY4ZWRQckF6VWtmbm4yQ2licGhiZGJxWDdkSnJwdThQN1dCdS9TY2Q4bDNX?=
 =?utf-8?B?Zmo2V3NBZXByS1hkdjBlU082VlY1dXpFVkNkajBIcWZRLzlCU2dVdkZPUDNp?=
 =?utf-8?B?RFRML3kvdWZBNVE0bSsyVFJpeXRISi9PdzBSRUtXN09NSTAwcm9IUDZ0SGdG?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8835fef3-93f8-4e49-7622-08dda8badb9c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2025 07:37:46.1255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bODwMeCHlpwPwS4WJmhlnYNIv7qTYjhQEa6aIaKlTRp7N4SdbdoKW51fRf+ePjXCXmGRK+I6+4JaFc4ylAeHbk34Rw4m7TbJCYJ+oumfwgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5200
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

Hi Krzysztof,

thanks for reviewing!

[...]
> To me, this has a bit of code smell. The double pointer needs to be passed
> to the helper function if we want to acquire the file inside it. However
> we can also just let the caller handle that acquisition, especially since
> we have it call fput() anyway. That way it's clear that it's the caller
> who actually has to manage the resource during its lifetime. This will
> also allow the helper function to take just a copy of the file pointer,
> getting rid of all the redundant dereferencing inside.
> 
> So IMO the usage should be more like:
> 
> <in caller function>
> 
> unsigned long addr;
> struct file *file;
> 
> file = acquire_in_some_manner();
> addr = __igt_mmap_offset(i915, offset, size, prot, flags, file);
> 
> /* do some operations */
> 
> fput(file);
> 
> </in caller function>
> 
> > +unsigned long igt_mmap_offset_get_file(struct drm_i915_private *i915,
> > +				       u64 offset,
> > +				       unsigned long size,
> > +				       unsigned long prot,
> > +				       unsigned long flags,
> > +				       struct file **file)
> > +{
> > +	return __igt_mmap_offset(i915, offset, size, prot, flags, file);
> > +}
> 
> Also given the above I'd reconsider this function. Since we're now
> expecting the caller to acquire the file anyway, we could probably just
> put the body of __igt_mmap_offset() into igt_mmap_offset_get_file() and
> call _get_file() from igt_mmap_offset().
> 
Great suggestions, haven't thought about it that way. I like the
last part especially - putting the get_file call inside
igt_mmap_offset().

Best Regards,
Krzysztof
