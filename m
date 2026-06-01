Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHraCIh5HWrEbAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:22:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A05461F318
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586ED1132AF;
	Mon,  1 Jun 2026 12:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8Gin4HB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA051132AF;
 Mon,  1 Jun 2026 12:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780316548; x=1811852548;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EvikBX27QcTX19eXIL6xJm7hWJ/I2mihWrCBYGpsFaE=;
 b=Y8Gin4HBR79vLMAMvtGZYcmoO47wiyPpZqa+9V9nFQhkp9LBoqMy4+//
 Mae16ysKKE9e+TxwIhPOLqnBRDjiSoLd/lnuQ1UcdgBqX7xLRdv7vpN3U
 GjV5AVfXhvxQgKZof4S41mse3+17YCRbVBMnJnLc84FF/WW49D5/L0lwi
 VQ4DAq6nslYimq5N1kXacSaEoGNhHkFdcXQoM07oQs5CX38SXrDP8Yon8
 vt4oEE7cSyxx+0tpHQ4QJtyrIR3viFXEvDz7xE6PrXradZbl5uJhtToHb
 4/qqFZYraWlzHlx2UfSf51FBVRLw3Kqfu3AyS/y4+Lcz7gM6a93oIfffc w==;
X-CSE-ConnectionGUID: REXF+SDcQrq0nKmyHcn0Fw==
X-CSE-MsgGUID: 06R1gZAUTRiXf21of1m3hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="103741906"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="103741906"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:22:27 -0700
X-CSE-ConnectionGUID: aJCmngMjQtSD5Keh1uTaSA==
X-CSE-MsgGUID: Bfu2YO7aSEK9IbporqZtxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="245388702"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:22:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:22:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 05:22:26 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.15)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:22:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DYRSDJlOvQU1RkNt6FrMQjmgYhWmU2Rjme+S5hYFYOOXosnLMm8mQ7kfiDcvZJBBg4UaU7o/a9gKrhnDu6DnEScGkm9L3IS1hWtEGCnHRETz+tQSz1sDW5jOQk/Iv3skHVSmyzS+wAv4wkLyytWa5I33SM0ULoDC2GUch239VhR5r5A+fDs/i5PBDTIZMnxDgIH2SGF4XMy4/fgz8utZZGHrQGqpMzgSneMTvrSOF0wCcxIstp58pfjhSvt+/45xyCv1m1ew8JwrFhYyijLTMLdwe1DfnwoEsX6EFWqyAbK02HCsUFHsz3ZCV1lOoFn4axFsvRC7+i1dMZxKHOvNiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Io1Ktv0gvo7PulXB2ei3/vjuVaTC/NiCevsleGa4eZk=;
 b=kyoFi8ZKV1vuOAMiB717C77xNPr+VQSc7NxIJZ1r5hNbLaRBOp/LUBfs8oZG9IwHJoLn34u890uuhpUDa+SAWN7kpIEZEp/Qr2kOokv7NJLpfvav6u8Rtoi1OBZFmmgiKGVp9ljgzGZoPYdjIipMKO5otGuHo3kKE3KSHHpK0WYYkiGT3Hp38yKgMgWJbxi6KgNY8fkchFTvJOr4BnXTjz5arDQXHP43XMgSzAKPwB9uKH81vhqQlxXo1xZUOSKXCKC9faDGkyngHPxk+dpB6v4SO9CparGEfAQcEiYSWSEEmJF/KxtbSa4+a/mGy3wdlWGal91rfYJcXQgyab0AJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Mon, 1 Jun 2026 12:22:23 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 12:22:23 +0000
Message-ID: <a924ff75-175d-47f7-9199-f59aea1022c6@intel.com>
Date: Mon, 1 Jun 2026 17:52:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/13] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-4-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB8049CFAA900C74BCCF64F89FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049CFAA900C74BCCF64F89FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:303:2b::19) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS7PR11MB7860:EE_
X-MS-Office365-Filtering-Correlation-Id: 217d4945-c911-42fc-08ba-08debfd86f1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099006|4143699003|18002099003|22082099003|11063799006;
X-Microsoft-Antispam-Message-Info: YOVgVMuDwx9KO3n8CvIJgNKgVI+UoAOV60HIBePb2aIpibBKu3kHc4Na6/hlwRlbyJSNxy25RfHA71CzG1f5EAatLh2GT4JvVqDc7ZBy+tok4/kCGvZRs0US/e0X/5COikJhWkME/c2Xywt9lXW43hOqf3MtiQqzyBucV/Ujdp11dgwsTtYVM9zPolJzt8KNC2h4O5VHRYaU85rwW6lCeDV+T1FJ2el8GS5t1OMEwC3MEf0AA/+CULtc7WZ6x6AwledtuXnsX3tH6HDtAc9jqKKyd7v2K8LkF+WEUIjOxqbx4FWL+K6JgKjbwT3DyCNCdh2pQb/T0YwQUitQBHODiOeU93vsyWwRVm8Va3OdquwpVwqLTb0sLNDIn12+6x/iNBJ9ssewEkWlxLpwH9yagR9DuMZhpa//SXLe9KQpFRon7GBCmLLYNg4Dfk9qSe+1VOtV3YRxcBYwvBDtEFTjCE819Tt8RhfdxLyATk/QjzHNZeBhyNY0pNXJbCWiOXK9AUARKeTK/CyfGxh6gd330uepd5il2yR97nrdxXyVbVytJEeNIGeFEBQsSLRAzRZTK5LI0j7XqJ4bpVEQwqqBttJruHXsoc3jXASFl7vdxxoxN9GJ4LbS7Lww7/wMeIgOGhZ1b2T1B3gotsK0d2PS9cWC8nkOFftNr8y3NxfKQFEtmi8ao0MtHbZc1hxvT72m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099006)(4143699003)(18002099003)(22082099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHlGbk1NUWJNVUJSaUJpbVMyS1pNd2duL1dINU5mbjNXUWpZUEtqcnlMeEFY?=
 =?utf-8?B?blFoL0VvOThJQmYrQlpMMy84Q0o4QlZJVFJPK3VpNTFWQUhWKzBVMk1ieEc5?=
 =?utf-8?B?V1lxcDhQam12c1Brd1B0UFg1bHI3ZFZURW9Canl5bU42UVdaSUpJUkRJR0dq?=
 =?utf-8?B?MGQyK09OTnI3MjdnTXA0aG1vekJZSzBuMHdvR252bXN3UzRHVkVQSTdCQ1oy?=
 =?utf-8?B?OE9rVnFWcFg2SHdlQ0k3Y2l3TkZacXBMUHpnUEY5dlZyZFoyVkVmMmFjYmRr?=
 =?utf-8?B?eldkakhHUnVlTjZvL2dwWjhPbG1YbGErWW5sTmFlQ3lwWjQxcGlMVngzUjFl?=
 =?utf-8?B?UktYVFpEdDZMdkt4MzIyNzlOa3hoUkxwMXZJdUg3cDVIWEJjbEJvQXMwZzFo?=
 =?utf-8?B?UGRYd2hPUmJIYmhxbEZmTEdMeXN2dHo5MVdQTmh0a2R6THhkSzRYT0VTZ0dk?=
 =?utf-8?B?KzU5S2RYRXh2V0dFRlJCNUhIYURyKy9mTmFiREF1M3UrNW5xUDZ3K2VyZ0lJ?=
 =?utf-8?B?dTNRUG5vYTRaeDloNHpiaEF0WkJOdnNaMWx3QVZscVN1NU1zdDRLYW44VUFT?=
 =?utf-8?B?cEthaHBiT3BZS3RiOFNSNU5oWnZUMDc2Wi96TTlyRXU3OFpicXFiMVo2NmxD?=
 =?utf-8?B?TmIzMFdvaTFaTHZqVUJ3T2RMV1NreHlYdjJYbGVXb014QUUwRVovNldGZ0Ri?=
 =?utf-8?B?NnU4Vng0aVdKMHh5a1JMeE43YXljN216Kzd3VmljdWdvekU5em91dDJlRzRl?=
 =?utf-8?B?dXhWL21YbWFqckNYUCthMFJDbUlDWW5RYVpITVVmRmpOZjg0UkE2ZUpSNFJ6?=
 =?utf-8?B?TjF4TXhOWVpjUFE4VGd0QUdOemU3WGZyNDZOdDc3cTI2cVI4TWtMTGFubUFy?=
 =?utf-8?B?SDBJdTNZUzd2eHZqMFJRaUhQcTA3c1BHSlVueGRDa05TVXBQZTg2L2pMMW0v?=
 =?utf-8?B?ejU1VTVvSmQ0V0ZTYnltN0JtUUlNMTg3VnlPR3VRUDZZV2UwbVFLVHpSemg3?=
 =?utf-8?B?U3FMQTJOcFQrVVRIUWVVdjkyeitFSmNGS2Y5SkZZZzhIMWE0UThEUTlNb2Z2?=
 =?utf-8?B?ZkFyMzFRNEU1NEs2L2poWDBvZldzR2ZGa09TMThjendGWXU4UGthZFgzR3Iv?=
 =?utf-8?B?c3RYeHNxdGxkN2srY3lxUXI2Qk9KdGgyNVltd2l2K1g1c3Zzelg5bkxZWHJO?=
 =?utf-8?B?Qm8vQVF3emtvc0psQkFCQU5ZRXgxMDh2ZXUwSy9XMzBZcGQ4OSs1V05PRXJv?=
 =?utf-8?B?c014M2Zpb0FRS1Z3bzQrelk0VGlQMDRFaVE3R1U1RnpaUk1CdWQvNjJFUmlJ?=
 =?utf-8?B?V3FTOGZuaHJkR2lMWGcvcXA5WCtZcDd4VGZCOWZvQ3RuVGpPNS9GVGxGRFFM?=
 =?utf-8?B?ZUdGc1FzOHpvSURRaTJQajNXRFE2RzZxTjN1YU9odnhLZlZmWXp3eXFobk1k?=
 =?utf-8?B?VDVVYysvS2E3Q284bWx1SEk0L2dEYzUzOE5TYXYvMGt3dmF1eWxzVU5sdjdh?=
 =?utf-8?B?a2xLaVUxNDZvUVV5bWFkWm5yazBQNUJ4dEdYRUloVHM4N240RXRCSURjN0VX?=
 =?utf-8?B?U0JIT3RBVnhSbk9Ua0N0UElzQ1lqWGpaQjBnN0U3em1CdElLaGtnbEZPY2NW?=
 =?utf-8?B?ZldLNXUvQWRjRGtjSzV2UmJ6TVJJcEZESUxDTFozWVNPOWtVY2ZWR3Fvakd2?=
 =?utf-8?B?T3c0UTR6N2NodzBYU0dMdE9lbVhtY2pTbU9OSXV2djlQZ2JGNCtsam9vd1NZ?=
 =?utf-8?B?ZXpjbytHbTRMM2xUZnFvYWlmZ1lKS3VWQWFJY2ErVXdtc1dqOGhDWUZuV1Vw?=
 =?utf-8?B?cFpObkRLc2FHa2tUMFgvdzRpak5hdi83Vyt3eXIyTVBLYlV6SVJrN05nMlBo?=
 =?utf-8?B?M1hpTnRoQzh1d0srNEZrTHk1VFpZK1ZIMUJRWFhSWTEzcm1HU1JWcVluZEFE?=
 =?utf-8?B?aFovTTR1aHc0UllRMk5MNlA2ZzNXd1duN0hsOWljdUc1Mkl3STRET2Y0Ynp4?=
 =?utf-8?B?TUVGNkkwQ25GOEJoUmNDNTh3dXYyYi85T1hZOHp3WVJWMk1kbnVxeVphUlVt?=
 =?utf-8?B?UmFxQ0N4amxRbnB0MnpXcXhoNEhtSHhjMFdwcXZKQ2xLbFBMeHFLT0JHd2JT?=
 =?utf-8?B?U25rQzFBV3V4S1ZiSUZpdUVCcjRHQlB6UlhUZW1kdUhXSi9JZWNFNCtZRGxw?=
 =?utf-8?B?L205VjQvNkF0MllsdlVhQmxxZ0h4NzdSQjhFWnh0OHpQQlNwaXB3SU9RYXo5?=
 =?utf-8?B?ZFVJWkgxOFk3bnpaU2RPanFjNkZNTEVZOGZ0Wk12aDUyTnNJMTFxeHY0VVhj?=
 =?utf-8?B?VDQ5YnFPSFVlS0haYVNxejNtTS9remFYMGhJRjY4Q2gyQ1lPbEtKWVprbjda?=
 =?utf-8?Q?vD/wrWuS3ON9pxjVSqELLHIQI078GxfP06BJOx81mvG5E?=
X-MS-Exchange-AntiSpam-MessageData-1: LIZMuLcuDue68Q==
X-Exchange-RoutingPolicyChecked: g2Y5LHFSWBvRaR0yoqxjGREkFpiMGgqYp+7MisctllylagfXLKXY/FDD8QIE2Prr1M3Cv9tUkK5K+LS9DleniDf2cEdiR+4te5L7dScdVLaAa79N37tTD80Ps7AnRlmZUefmEoMMQuerOTzrqHCB+7EmHvTeeeRmavKNOxTLfB+9nj8NC4KgwWUBS2vMumFs+zQJ5gHXF3Vgupkzn7U/RJRGOjydvV1cEAaNWXog3LqUJnG1l4I270rCnNN+YerWSn90hUN7qXCnsmrBXAaJWBKjeLMIn7hx5HtEa5/3oCAdUtaGozGdfWMc8s5pj5oydcnfpEbgsKOBmbWbG39URw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 217d4945-c911-42fc-08ba-08debfd86f1f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 12:22:23.3007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DcEzzp/xVXFrGLcWv/+vT8dhezYcGyehj9TARnIRa5wkVDgURhqUMfsuhzZ5R0sajw1vKPyuftoYoAsAwpKuOuosXZyI4l9bLS9N4MRz0x8DX5obyvbMEWbTnPq1kuFt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7A05461F318
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 01-06-2026 11:00, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, May 27, 2026 12:48 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH v4 03/13] drm/i915/display: Use FIELD_PREP() for DC state
>> enable bits
>>
>> Replace open-coded shifts with REG_GENMASK() and REG_FIELD_PREP() for
>> the DC state enable field.
>>
>> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_regs.h | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index 680e7dfdcf1b..efd1a3e56f76 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -3073,11 +3073,12 @@ enum skl_power_gate {
>>   #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>>   #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>>   #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>> -#define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>>   #define  DC_STATE_EN_DC9		(1 << 3)
>> -#define  DC_STATE_EN_UPTO_DC6		(2 << 0)
>> -#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
>> -#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>> +#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   REG_GENMASK(1, 0)
>> +#define  DC_STATE_EN_DISABLE
>> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 0)
>> +#define  DC_STATE_EN_UPTO_DC5
>> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 1)
>> +#define  DC_STATE_EN_UPTO_DC6
>> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 2)
>> +#define  DC_STATE_EN_UPTO_DC3CO
>> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 3)
> Misaligned, need extra tab.

Thanks, I'll fix the alignment in the next revision.

>
> Regards,
> Animesh
>>   #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>>   #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>> --
>> 2.43.0
