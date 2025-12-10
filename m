Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8AECB2ABD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 11:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E10110E6C0;
	Wed, 10 Dec 2025 10:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QQhYKTYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F06C10E6C0;
 Wed, 10 Dec 2025 10:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765362152; x=1796898152;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oSHqCTd2BhPqbKAkFref12+le9KBsueZypiarUsAYI8=;
 b=QQhYKTYEnE0mV3mslUyHeUkGBc5O9mr944an7t3DACjpuJ3THYb4p012
 9htlaAFr9BSG4uJlfxB8BERlOL2kUrOFzIonbgDyLVfqlOpvc8GaUW7NW
 60pPSa3EOkTJ7W9DUib9zHDPK6z952PYrRWNoA03ihWSXLiabiLtN/v9B
 hy5eTHtTca0tn+FrOS6NO8rvfIk0e5mc82oc8Zy2AbBs+IkcNYoQuj7Y4
 DJeKRRFvqNGP7UPoputrCJ70LHzambTndrgtks/7x2viTkgnM0hfHmTbJ
 gv2R/98MU/mwNGqO70M1o3AGhcvoI4qjmVdLqi5C0b14mToDoar72T8bM A==;
X-CSE-ConnectionGUID: hE2rLX89Tvuo+0n5Xj+GRw==
X-CSE-MsgGUID: UuGyKPC2TJSHHtItJGf/MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="77650822"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="77650822"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 02:22:32 -0800
X-CSE-ConnectionGUID: PnfeT007TNOC2kLk3IggAA==
X-CSE-MsgGUID: g80rvwYHTf2Iv9Vs/JlNBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="197264201"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 02:22:31 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 02:22:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 02:22:31 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 02:22:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O7J+0LDLPC4w/0nlxcSY4VHj34p8wiepL3DoROJCdVfhlTooLB8E5XHPugWDTW0kWk1YXlHrfAtMoe0QDO53UdiQ2EoYoHxLUOW6HWU/qLVhvDLusxRzE8GdQbNQjXvLizdNCKYI+TNbhDOo1NstzbeHG4a2eamaYcbxU8Oeu788tDuN01n5Jw/ohuLysOUgBPxRCm9fWh14MsPcklDpjb8bHRMJd07/LSAO/CaF4OfBYcWf/ZcCT7v653eWQDpcxOQRi5x9J8/jiNx/mB9ZG8qHcmdNeyZzQ2fTHUeoNK2ywttybaFVfxwHj6gckcBLVjR1mNHWTQNqTeCJbsX1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4zhn+G81iwrhD75LtS4CUce5zpoNAi7ifUYQo0LIFU4=;
 b=jl8xhSlsyhNhJDrt/Va7/ZA2R4jsEfVewUuXxoYj01dZ5QaiiGNJ9CP4MqV/N0TMbqc3VmwCS+tzOo0h5m54UK3kr9lgKkJDk00+xpjEnPesGOoMkv97oCXo/n37PjN71yIIsLiSAqFf7nsoX0QHFy7cXmKlxHImFLZDT19jTYX211ZRy6JXynB2hjUBjJZLpA4qeXcEnTNH45MmClDUVotLpMf4RUdBCB6xz/gBbT02QeWApNYn24+mHK7lJHYBL7rOHu4g/tO2ysfdoL0/wC1NDQbtUvwrF+xobsKDprGH0tGjM8uFqwWwS5DxTRLYkINMcpMLxhrgn6/AAoTvRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB7871.namprd11.prod.outlook.com (2603:10b6:208:3f5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 10:22:28 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 10:22:28 +0000
Date: Wed, 10 Dec 2025 10:22:19 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXI=?= =?utf-8?Q?e?= for
 drm: unwind drm device registration upon error (rev2)
Message-ID: <3dunrgfbevgo54q3rl2nuaf3feqo3x3v5boujmboxtnojjgbmh@tjzit7gcd4kq>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <oi563j5djez5facxbrmkkyy7hvtb6lijurrebxffqqjfxhjjnu@7f7mrbufdcbv>
 <176528588436.68390.5165823590222837750@a3b018990fe9>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <176528588436.68390.5165823590222837750@a3b018990fe9>
X-ClientProxiedBy: WA1P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB7871:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d200d5d-b714-480c-4430-08de37d60529
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dk9uODFFZm1xazQ3cDdPaXR0R2dOZkV5blVIVmRvNVdmUThHbGRRR3RpY1pD?=
 =?utf-8?B?a0lGTWpPTEdWSnNuT0FzYzM1SmppMDNqVklZbzFQK3Y4azlFalZPZk9CdTMx?=
 =?utf-8?B?eHNwU0JXWm9NYzk0Unlrb1NuQXBXWVNob1IzLzZIVnYrZUZDTStxQ0x3NXV6?=
 =?utf-8?B?UUFWRkl1WFh2c2RQbWJxN2dGcGhnZXpXQmE1UU1TeTNLKy96cmgva2ExcWhM?=
 =?utf-8?B?SVkyQ2huOVZycnlRVmZMMERFNnkvZDVBRFNON3RETlRoeEszM0l6cmFpOXFq?=
 =?utf-8?B?cUU4QlcwZUtXbnZHbXFybTdpa1Fvbk9WMm1oYUpWamNDZGxMV3ozNmUwa3ZV?=
 =?utf-8?B?VFNZQldaczhLT1plcXhQMGRSbS9SMEIwR2tLRjk1Wk5MTzQyUEh4RSthY0tE?=
 =?utf-8?B?Q1laVVBrcGJ3amxlREw0RkhIcisxd1ZPai9SL0k2NmtHSlJhQTlId2JFcXRJ?=
 =?utf-8?B?T3o1OG9WbXRsbFhzdEcxS3FlZTg4YjIzd1NYUVMyVlJlMTVlWmJXQXRVTzMx?=
 =?utf-8?B?QlRiTFdRR0NnU1VEZElHdTJ1VDVaWHFsSUhWamJTVFJtQUZqZHc5MEFEMkVk?=
 =?utf-8?B?VEJZZVIyc1RTT0xVUGxhV2ZoU2pXc2ZxQ1MraGFwSFVLVGFMakVNZ1RBZjl6?=
 =?utf-8?B?MXFrZmZqNzZGNThUVjc4UHZ5Y1hJc0M5OWdkclJlRjEraTYzTXlxRURRblpT?=
 =?utf-8?B?ZmRHRzREUENHMDNib3BPM0JQSDI5bmN4NjYwcXJIVkJFWThsTUp3c2dsTjdG?=
 =?utf-8?B?MFdTVmN1bVFkVEtDMHpkRk8xTFl4TGU5T2xadWpGaGkxWWtyNkliTEJTa0gw?=
 =?utf-8?B?Z2tUSFNlSHk5L2JLYUY3NjFiRUt3UHRMVEhZS2l2TkNRRkh3TVE4RUJmVXJY?=
 =?utf-8?B?dGhrNTFxSStWNkgxRzhnY01EYmw2NnNFVUpYUWQ3ZnQvVVdvNXZUcGE0bWFs?=
 =?utf-8?B?ajdhVmdwZURIRzRFNHJPQXhqUXJyeXIyc2RSeWtuZXd5L243bmd1NG1xR1JB?=
 =?utf-8?B?Nm14Zmo4NnFtVlNybk91VEJ0czVNbmhtVTN4NmhreVJuTWZqZDF4d2IxM05r?=
 =?utf-8?B?bmJxeFI0cnZQcXJlci9VdGh2Y2VrYUlBRnZLcHJveEpxSlVEOW95OGJRRjk3?=
 =?utf-8?B?VC8wVDc0V0xFVXNsb3AweTVlaysrcFdZMlFFa0twNGI4aG1qMHRCZDJqMWlz?=
 =?utf-8?B?cXAxaWZCM293cVJBRDNZd05seHBxczNtYnZHcVBFUno0a3RzdThscUFNU1pm?=
 =?utf-8?B?ZU9yYkNiaTZTRUFzYzFWRlMwR1BKY0kydGNlZ0RpNXdWUlplTFZ0WVhtREtn?=
 =?utf-8?B?QXhoNlE4N2Fxek5oeUpLQWZBMWVyWC93WnUyNHVDS0UrdWNwQVpJd2ZOOUhL?=
 =?utf-8?B?aXQyUFJLR3FTTUY0L1VMK2NVaFJVbW83dWhmdXNmdnB3eUp6RzNDK1drQzVO?=
 =?utf-8?B?WXBWMkYyQTlsNktoM3ptdXMxMWlpOVNHa2NlQ0J2cjdDV1BLRldEU3FmMk9J?=
 =?utf-8?B?ZzNNZFV1YXZ3OXBIekFkbjVFQ3FOYUw3K0szRzVuY09ZSFNvTFE0OFYyNDB5?=
 =?utf-8?B?WFpQazByV1BnUXJMQUdtK3cvQVZLYXAydHM3eVZJRVFDM2gvZmdNR2NQTkQ5?=
 =?utf-8?B?WGR4VVF5ZFVYMlVqRUlKY1haZFhmajJGSXJhWkZ3RHB5N0FmbnFEbS9ITHp2?=
 =?utf-8?B?U0dxQnJ5RHdrL3FHSkdhRVpjamV3VnJNczZQN0F5ZHlpQ3duZ1lCZjhIdVV5?=
 =?utf-8?B?VlNDbEJMdGEvY09VSkdsWEY0c2ljU2JBMzdKY0VOOXdwWldxeHo3U2hOU0pQ?=
 =?utf-8?B?YjRIaHRGc214VnpUbG51N0grVkdZSHBJY21GT25IMERXQUg1OFJiSm5neTcy?=
 =?utf-8?B?ZitzcE5jSHpFdjY5VkxKNytBZkdmb0JTR0ptdnJZTFFHUlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mk5vVTJtUkJ6RmE1NCtVU0xBMTY4a3JNUUhrOStmZGIrSDRnQkd1V0VCQ0JE?=
 =?utf-8?B?eGgyUFZMdUM2MG5BTXA1YTcvK0l2dTlYbXdLdHdzdnIxRWpUck5MemtnTlBN?=
 =?utf-8?B?RTlYNnA2YTZyODZQaUNaRFZYZ290djkzMUZtYUh2clI5R0x2bUJEN2cydGla?=
 =?utf-8?B?OExicnNGMWFmOWVETzJ3TjJRVUc4UDZuc2xPT2RNZTUvQmpkdmN2VFY0YjVO?=
 =?utf-8?B?ZmJ6OVpscWs1RHlwcm9OUC94bSs1TFVQM2dFUTFKeXVYaTZ2YzNXbEFQQVhp?=
 =?utf-8?B?TU5qRTkreTAzVEtJclpMbFV6Z3BWa0h5RWFVVEJpTTFrcTJiMHgwbWpwMmhi?=
 =?utf-8?B?dWlSbXYxMGk3QVRDeTdCWVVSNmprR1o0aDg2MDRpWFpUd0pSZi9DTExwVG95?=
 =?utf-8?B?WEFMZDZNdHJVbmNtS2hRZ3VDTDI4S2M5V0k1dVpxWXRRaWx3b1laclJ1TXNa?=
 =?utf-8?B?SHI4VUlBS084QUlHQnBzMVNicDVWNnowd3NrT1g0akRyMy9BUU1vUi9DajEx?=
 =?utf-8?B?ZWM4aHdGcStzS3AvVEZzRjVSalFMRUJ1bFNycXlDRk5uaHpSL3VEVWpsUytm?=
 =?utf-8?B?YWVQdCt4UXZ3ZFh0QVNRdGV1Wm4xMThhcEpzeDU5WHpRTkpSNFplZUk0cU1q?=
 =?utf-8?B?a1NrYjJ1Sm9laUx1dDluUHhWWFBtSHBJZVNDZjlPN3NxSXgwU3NtUC9tM2Nt?=
 =?utf-8?B?UUF6VGJDbStkSlVlOFhqaUtQWnNQSHVrOHNFZzZ6V3RsVWNWT00xQVZ2dlRU?=
 =?utf-8?B?a1RuOEpVRGJiem96Q3pYcXFtMm4wTWpIOWg5ckhqNWtoUnA2K2J5MjVlL0dw?=
 =?utf-8?B?N3B2OEM3akRXVG9TYk9iWmFlWEtCSmlTMnVZZDY3UFBmRnF5YXN1MG5UTVB3?=
 =?utf-8?B?aHFnaTRnMVpZbXRlNkJ4MVlDNlFpbVAzRGxScmlzTU5CS3d2SG4vZ0lreWRW?=
 =?utf-8?B?N2dKdDhlMnRnZHBORFBkMHJVNTdPeXpZdVdVV2FKWDhKNXJ4QTZCc3E0dUl6?=
 =?utf-8?B?bDNib2lXV1VlTitkS2FlV3p5V0xENUVRdmMzOEFwTjhpZzd0ci83SEphUHBa?=
 =?utf-8?B?WFlyUGdrcm8vUTc1ZGJ0MXduK21ZVmNHL1pRVFJYVWFCdHowa1NnWUhIVnRk?=
 =?utf-8?B?SEdSNnFwQzNRVTNSNW9vOWpEcG5jUlEwN21wN0xWRm9pWHhMdUN6eC9hZlUx?=
 =?utf-8?B?VG03cnU0OGg1a2Z4ek5NWmRYQkFDUUNxZHhvN1hUSS9Ra2F4eVUzd0ZSRVMv?=
 =?utf-8?B?aUl4anVUelpTUUtNV0NScXljUlhKWE5iVmFZYm9nTndxNE1FSzlmTmxTQnJ2?=
 =?utf-8?B?bDl0MXBzaUo0eWN3c1RTZjN2ZVgwZnVzTnZPdUJrWTF1SnRZamhVZ21qendX?=
 =?utf-8?B?cm1vWjRNQmtIaklPQUdOTWtJMGVWMFF0M0JZY05lcGZrYjVCLzhFNWtRMVBo?=
 =?utf-8?B?Q0tycitBMmlqVXB4SzVNSEZRclNVbHBEN1pyVEJUMXJ6ZldIRDJrREdKV0Ns?=
 =?utf-8?B?UnJEWkJaOGVmZE1qUWsyUEpKZkpwWSt4T2gwdkJVeUhMRlV6NzlDdmYvNHQr?=
 =?utf-8?B?R3UxdXVic2NkOVd0MmFwQ2c0NmcyZ2szV1RrdzVBQVZ2aWNZVDhiQzJIYVlx?=
 =?utf-8?B?LzUzNmQzSnBWYU9sMGtKb1FWVzUwbHZiSkEyNTZmYW9OV3ZxRE02RDhDTGxW?=
 =?utf-8?B?bXBldW5OMnZuMWVhQjZ4K0E2T3FMelp2aHNlbE9JVnhSS04rRTlUWHEwZG5x?=
 =?utf-8?B?Q1U4aWZJZThxdnJwczJqU1psaUJ5dTZ2UElCTXJJRTNET2g3SmpXQXVoOFVp?=
 =?utf-8?B?T0RFTWxJQzFITERnRGt0MjZFYkt3a0Y4UHI5VWk1aVZoVHVzbWhIU3RkbjNx?=
 =?utf-8?B?NG5kS2hrQnNJT3Nxd00zYW53dmFBd09xMENYOGUxL3YxaEJVemYxN2VQci9U?=
 =?utf-8?B?QkcvOHFRdUxCNEYyTXc3SG13TnpENkMxZThDc1lxM04rTUs3UVFEQ0tvVWVJ?=
 =?utf-8?B?MHNCRkdOL1cyRnpLU094NTdXV0hzRUU2T21KYXNkblBoVzY2Zkl2cUx4aGZs?=
 =?utf-8?B?eGZWQWk4UE8yZDBKZG1ZSTJ0aHFQT29NYjVUaDBHTXdyUUkweUJMbzFGbUdo?=
 =?utf-8?B?VXJlVERBcW1VVTdDUHpHTldvbE9pRE1GNDZoczVyNFZvK2JPQkdmSmNlbVlw?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d200d5d-b714-480c-4430-08de37d60529
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 10:22:28.5731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xrzR9+N8+iciT8SH6lIy17fjk08T7l+v7wJburucIXnHFZjj8a//JB2Ibd+7+9MGmZ21429JShZjupXt1Iicu+1m+GV7DNuaZwc05LWy9Uo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7871
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

Hi CI Infra Team,

On 2025-12-09 at 13:11:24 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm: unwind drm device registration upon error (rev2)
> URL   : https://patchwork.freedesktop.org/series/158641/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17647 -> Patchwork_158641v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_158641v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158641v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v2/index.html
> 
> Participating hosts (8 -> 36)
> ------------------------------
> 
>   Additional (30): fi-rkl-11600 bat-adlp-6 fi-skl-6600u bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rplp-1 bat-apl-1 bat-dg2-11 bat-arls-5 fi-bsw-nick bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-kbl-2 bat-arlh-3 bat-adlp-9 fi-cfl-8700k bat-dg1-6 bat-arls-6 bat-jsl-1 bat-adlp-11 fi-cfl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 
>   Missing    (2): bat-dg2-13 bat-adls-6 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_158641v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - fi-hsw-4770:        NOTRUN -> [ABORT][1] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v2/fi-hsw-4770/igt@i915_selftest@live.html
This is a recently detected issue: #15399 on GitLab, which
happens on multiple platforms during hugepages tests.
Not related to my patch.

Best Regards
Krzysztof
