Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE48C92263
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10BE10E8FB;
	Fri, 28 Nov 2025 13:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7rnRd2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4B210E77A;
 Fri, 28 Nov 2025 13:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336987; x=1795872987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XPAOAId5SD0PxzL4EMusUWyMU/e7QZhpm2yJ2Irs5bU=;
 b=Z7rnRd2R38hpyxQHK8M3vT7oH714Hp28wbpiXIxmZDiktTFcMUVpIkA7
 RkizGZu889fYtn9eMaoumSsfudKH6xQFEXJvY009e4pgf2i4QFznILGop
 gAbiQvQ/0fHslSiPGxbMl21dusxgQh7IeQeHegMkwokVvIrPeM9Bzi1/m
 56v6Wmg09A4p/ueNAvTnQfpGrQzDG1StmTbotClSffatTsgrJ0ZoBRkUt
 4Ky+EVleGdQklGtP6jL9x6ZzydzRGPW1MF1Q5kwoLlLORwE3pw8mFBIlH
 oC8hJchcJLhByX2yna3qI8n9OKQrNgCWXdLCE5eGCbRqBJxC2ZmlfLZ/P Q==;
X-CSE-ConnectionGUID: XvBAQvBETwuJjZOzfO2ASg==
X-CSE-MsgGUID: zb1CjIkzRR+crrZFmVkBIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77729644"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="77729644"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:36:27 -0800
X-CSE-ConnectionGUID: Iz8mV0AMSOuCLRGyhVdiHg==
X-CSE-MsgGUID: Y5MyzslVRgOUs6+1gLrX5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193254127"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:36:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:36:26 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:36:26 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.60)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:36:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o/WOEI4rGUfFnValSyCGIb5YzO80L9sZ1y/lAHU7gb9irNSfn4097AoEQihzubRYQTkGGN+pqT5dq2x0OuI76AuFr/4TLV0j883zriSLjemecv+e+BBgMLHKL6VCnn0yNQrTQh9pzTaeNx48/TOcy9Jr1pun7evyi930hLN8vMRfonJBkvwTR44Ryu/CQSh9KJ47oy7pv72V5v82XuMyBBlSa7ERrqWUx+G10NDwRzdWNT3U9XZI+SDc002SSr56P0mhyY39n35MAjLQMU6Dw41OVFaNMX1FGn5T2jDp30UsUH9dTjoHAAa5JwDQs+IVMleJYT46c4hE0aSVp8Aukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=klOhH7srYeXxr8x8rm2rWae1HX6g7LrZiteLgP6A6s4=;
 b=vFLINldJBkZTezxPOwTatvMZ/bCCWj1QwaKrslbx7L+BsOVBTGkqkDoP66gXzsF1jRL7IblOkVvFWRKtkTRS42mRdbDI/N61lHKrJ1LNG9O0N6Y/qFDGPgmdo+qGrTxsY/ERZF8jAUrBgAuXoTvH3lgC/mg7F8T83BuEAV+PyyO9jQEgp1T0wIDgmK/XGGP6NwGVxK2PJRRGMbFZ0DJLTYrZvnICQdYSdcz8srkkn2xjgsSWDxU8lBrbj/DEaIdK45yGLHPuZiGK/15Hn0uOV8JQCvFq20UwYbMqH927SrZUvxGYXLdxuQ0NO3SjwQJYUtXjHd1dEtaNsXsNrVkOsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Fri, 28 Nov
 2025 13:35:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:35:24 +0000
Message-ID: <bec4b3be-fbc7-4b16-b2aa-f122eb1e5ab0@intel.com>
Date: Fri, 28 Nov 2025 19:05:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 10/17] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8384:EE_
X-MS-Office365-Filtering-Correlation-Id: 02d91639-d8f3-4b31-349c-08de2e82fbe2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUNTKzZLWWtSRlQxaVBxbTBsaFkyajZPdElBejEyUitmN3JURnNjb2xRMzVK?=
 =?utf-8?B?NXVzYk05T3lreUhXRkRzcmxCMjBoRCtnMU9ER0lwL1ZSSnhlaTg3Sk1NT0l0?=
 =?utf-8?B?Q2pFS1FxOXBnOEY2NWRvNEllZUk1emoyc0hFN01iVjRjSk5BMGtJOUNGMFpK?=
 =?utf-8?B?dTdVZWtEeWs1TWxkRTV0aDJoc2RMOGw3Q09KZWw0alJodWViZ1p2Sm1DSjFV?=
 =?utf-8?B?R1ZBRndEeSt5R1h3OVZhQ3MxeHpHdER6TDM0c0ErR3A4bXNYS0xKa1FReldS?=
 =?utf-8?B?SEhqMEYrRkgybG9IcnBoWHJHZjdqb1NvYXZQQklvSlR2blR1bFAvL0VDUk43?=
 =?utf-8?B?UlpUempGcEhpWVp4L1pHcTZSb01JVm0zRWJrUmxubFdidE5PWnU1RXJOUC9D?=
 =?utf-8?B?aWowejdmZE5oeFRjYWZRbVhsQUxZeFRZR2xhUzRhdkZGU1hzdEd6L292aElJ?=
 =?utf-8?B?eWYwV0YvQ0k0bFFzRVRXbkdmdzBEVnp4QTRhQkpubnNxN0R0NWp6V3dlR3B2?=
 =?utf-8?B?WXo3WE9uRVh0Q0NjV2xRa0g2WFlIYVErcmRiNy9aOUdkem8rMEV1anFVaHhL?=
 =?utf-8?B?cHllWVhBdHFqcGtUaE0zYkRONllLUlh5Vno0K0dQRkREYkVBckZZT2lzakJS?=
 =?utf-8?B?QVB4YzMyYll6VVY0SjVXa29hcEZwSkFLNmkxVEp5aG1pd21GVEpmSHF6VVph?=
 =?utf-8?B?YzV2R1BpUVBBSHVWQlozNUhXektndzlyeC92M0R5RDVsZ1FSUHZoQkQrL0gx?=
 =?utf-8?B?dVBhVzhIWS9BbC8rUTdvMVBNTHlNM3l1ZCtsVTlaZGFKSitkeEhwS3BPT3kr?=
 =?utf-8?B?L3lzOEl5KythazYvVWluRWNZeVRPMysxbWxUWWp5ODlrUlE0Y29KUmNLc1RW?=
 =?utf-8?B?dEVEZlh5bVZBbWhtWmFwZmlsWHNRK3BvTGU5WUZkRzFoUkQxUVZ1LzJTbDZL?=
 =?utf-8?B?V014ZlpiU2VueTU1VXR6eWZmbyt5TCtIenRrYVc5UEVSMndpQjZ2Vk9FbEF5?=
 =?utf-8?B?NTJkNzROcjVEZXNiTDY2cWdmZVBKS1RYOWdPQnlqQjRhN2RjS1NiS2J3WU8v?=
 =?utf-8?B?Z0dMdTUzMGI5L25YdFprSkl5ZnFQdFQxd0Q4d3AwZjk5TFBUaGtkWUg1Wm0w?=
 =?utf-8?B?cXdPQ0hudmxXaXE0c2ViRDh2REVqbUJnaHVCOWtQdE00NlVXQU04elBVV1FV?=
 =?utf-8?B?aEYva2RrY0xDM01lYWdnSmNGWkNubjdIVXBPWGNTZTYxMGRSQlp4MXplMm9v?=
 =?utf-8?B?bnVaeGhHd0dGd2VoTVdvWHRUR21PaWp2MjFpYjdwaElTTWc3Y25RcDJhSUVQ?=
 =?utf-8?B?NmRWNUVQdzk5Q2g2K3hWQkwrbXhHeUQ1Vmc1cWtnKzV6NXcxdHJnOXBGcHhh?=
 =?utf-8?B?ZFAxd0ZLWXBlWkNXT0hwZmtheXUvYXJ3Q0RGeVVIbnNhUlZ4RzlrUldKUXNr?=
 =?utf-8?B?bVJWb1lIQ3lFRXRNZndCZmR4UThZekUwYlU1aVptZXEyNXI2eWlpYkZIZVJK?=
 =?utf-8?B?ekFDY3lTcFFkMFhPRjRITmtCV05STTZ4MFpnVmVLVkFFSXVnRVRQUU5QcTVG?=
 =?utf-8?B?SXpkTnJsZjZxdkYxRThSRnRZUHdPU0gvd0RFQ3JiUUd2N1ROcVZvUGNkamJa?=
 =?utf-8?B?d2huaTdPSWZwNmhjSFBCNjBlTjBCbDd1SkdCcUlna3QwZklVTy9rbXZSUDVS?=
 =?utf-8?B?Z1lvU0kyaCs0Y1p2V3NlbVMxa1Z1WkNscGFmVlhFWU9JN0Z3b1JiQUt2M2Nw?=
 =?utf-8?B?V1YxdkJvd1RCcnBWUVpIU3NDUWhzbXBoTzYxQVJFcHFxVDREZkUva1B2ckdJ?=
 =?utf-8?B?ak90OUQ5NTM5SFJRcDhnSlZpbTAya1ZxdXZ5bENXWWU3VWIzQXJyZTFqOTZq?=
 =?utf-8?B?UWh4NnpLNG9oMVFWYldvajhyWjhRZkJaL09aQmpwd2JFSERxQXNXY3lyd2g4?=
 =?utf-8?Q?cUPDtLl67yYToh4tGZKOXkN082PTKa3a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFlLODZKVWpSREVRTHZmck9rbEdwVHYvQlM4NlpDTXZNZkRYLzhIWFMxTm1x?=
 =?utf-8?B?ek5QVE1NbGRmak1kSFpVdktHRGdpTjBKY3pobHBxZndydkxEd2E3ZGdNcnFY?=
 =?utf-8?B?WFhKbXd6NjExbWFoRmxmTE8xUlZLQjFQWFhmeERRRGhLYnN1SFpNcUJHVnZN?=
 =?utf-8?B?NzlJMGZrYmF4RlR3d3RMaEJrcSsxbnoweHE5dWFPYys3RkVlQ3lZbEJBYThG?=
 =?utf-8?B?YnhLOEI5OStERUtQUzY4dndYQVVCbWdTQ05aWDVwMUVISERNZHlGQTdHbVdi?=
 =?utf-8?B?UDk3SDR0VUw0QUYxbWZtNDR3ZlIzNkxtSVFWTlBhQkFNdmZIZ2I2MjhLSDh0?=
 =?utf-8?B?WXJqUzcvWVBCd2RIUHY5M1pqT0FKNUtFeEo5RERWell2WWg2Um84VmViTGQ2?=
 =?utf-8?B?c1pjbjE0ZXJub0NtN1U0eTVJRklIY1gzUVJwSy9WYlZTZ1VCdVpjK3ZzNVFy?=
 =?utf-8?B?UEZMR3hhWklkYU93Y2wwMkdxNXdScko2ZXlkeGJZOExJWndIVm9EZWx2TWxl?=
 =?utf-8?B?MHdCeGR6YmRFclFHclR3UWdCWldjdHF0ZWRKK2NPSEJZcHNPamxrd1ZtME5s?=
 =?utf-8?B?OTBBejBLbTZaR2JiYlhBVW9XcVIzcjNNUjFibldwZzN0d2lZMmxCRTQrM0k0?=
 =?utf-8?B?TFFBNWZVcy9UWi8zNHcxeHR0MTdFcHJjTXpJd3BybERvUDVqTE03Z1RLVHV6?=
 =?utf-8?B?ZTdQS3VDTzhtaU9naElzaU1XRnAvM2Y2VGRqYXhmNlc2WnM5RFN6Mkt1UTdv?=
 =?utf-8?B?dU1JRnBmMEMxRnV6aEp3MnV5VU5VMFoveXRXeGpmZ2lneTE0MFh4bFc5elhG?=
 =?utf-8?B?M3VHRVUwMXlXenI3ZGlFMGcwdWNkRmJTUEF6eC82Z1kzSksvR0FieStiYnp1?=
 =?utf-8?B?R2g4NWdwUmV4SkNJODJQUzRINFNLNS9hNWhUNmU2a0hJbDZpSlRzMGJIbWp3?=
 =?utf-8?B?Nm56OFVaY3h2MVY2N1NyNnNqTXRGanptZmdUR2ZtelRhRjlDR29ESVNqMU9J?=
 =?utf-8?B?ck52eEVPcjQ1Vi8wZ0FHZE5KS094cFhRQzJrMldPRmdXNnFjMlYwZkFHdnI0?=
 =?utf-8?B?MHVFc0FjdmI1dzZEam5TNXZHNnpHNnFmYzgyaGh5bjFtd1RFMHFybG5zTjNH?=
 =?utf-8?B?cDVvRi8rQWd1elhZRXRkZHQ4enBkd1BVUDdVK3VOcjY3QzVrT0swTG1YQUdu?=
 =?utf-8?B?aXY4MGdUeFFYMk1wcWU4d2k4bnpUY0ZiM0E5ejhXZnZWSkRoWHhiV3BTVzhr?=
 =?utf-8?B?TXIzWThyL1QwZnVIWUJkaTB6dytGWmtMVU9yMW1yZlZBaEpvMjZ5ZTkyckpH?=
 =?utf-8?B?dlpFMnh0bFAydFZVbnBscUVRdUwwZi9EVENZWnlLYUZ6VmdUam1nVStWejFH?=
 =?utf-8?B?QzFManVKcSt1eFRnVXFZdkJXUUhTZGp6SXk4bGdBdXZHdC9UaE5BbTc3RUk1?=
 =?utf-8?B?NkZVVG5uSlA3UUtnSzZrRGYrWFh6WFdxdXFQWS92WWtiUU5QRVhxdmJIeDFT?=
 =?utf-8?B?TkljOEdDdnpUM1k5dWU0R0FUd3J5cGM4RS9zNE83NUxyN3VlMDJhcEVxdVZj?=
 =?utf-8?B?dmF0K0tBMjhFSVR0SFpYK1R0K0xyZnJIZ252Z0tWWnpJTUducitzaCtIWkl6?=
 =?utf-8?B?ZGRKR2F5SHFYdEYxVWtNdDlFRSt0Mm1ObXNoekhOSHRhYnhiS3MxdlZTVlhR?=
 =?utf-8?B?a2F0Vks5RVpXTnJ4dEpSU2ZzRXp6bGJIekNIWjFDd0hZa0taZUJaYzlNcThH?=
 =?utf-8?B?d0YxUDBmQjVTSVY4enA2N2FTTHRuYVFHT050QUU1QndBK0J6em8rbld1WmU1?=
 =?utf-8?B?b0dXakdIUGRQMC9iNXhhQzh5Zkg3YWxoZ1UrZkJ4dnBNRnVjZlkwM2FnVHhi?=
 =?utf-8?B?REZydkNlNitKVmhjQm1NZ1hlRFJXVlA3amV0azdpdURTUFNJbWxsTXlrWUxH?=
 =?utf-8?B?d2JSODZXTmRxTXByNGlRbHVUQVV3RHpVMVVyUTFtLzVlYTJYNzRVOCtQaVpY?=
 =?utf-8?B?U1B0KzBVdGVYZ2VubUw2NFJNZUN1NFM4YXhDVUc0RFhLT0tPcTZxblhjNGJy?=
 =?utf-8?B?ajEwY3p3YStxQ2Zlb1lxVHk4VDlQK0VTcUt2LytrT3FJbWl0Qy90MXNWWC9h?=
 =?utf-8?B?SXowZ2ZuR09uMXlmTG44R2dRZVk5RzNXNEtQeVloNy95ekUzbVdCN3R5M1ZE?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02d91639-d8f3-4b31-349c-08de2e82fbe2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:35:24.2751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hK2odF2PEJ5HrNKCbJaVWR3qlLTbsxb/k9ghdRe45ScvXi3iL3MHxWimUSc4SbaaUtZ2YQ0rNbiy5dsBptKL2/6IYYns/BpFLHi9TQqc8II=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> --v3:
> - Write registers at compute config.
> - Update condition for write.
>
> --v4:
> - Address issue with state checker.
>
> --v5:
> - Initialise some more dc balance register while enabling VRR.
>
> --v6:
> - FLIPLINE_CFG need to be configure at last, as it is double buffer
> arming point.
>
> --v7:
> - Initialise and reset live value of vmax and vmin as well.
>
> --v8:
> - Add separate functions while writing hw registers. (Ankit)
>
> --v9:
> - Add DC Balance counter enable bit to this patch. (Ankit)
>
> --v10:
> - Add rigister writes to vrr_enable/disable. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 76 ++++++++++++++++++++++++
>   1 file changed, 76 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 411ae5da3824..11f06a5b854a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -767,6 +767,80 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void
> +intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
> +		       crtc_state->vrr.dc_balance.vmin - 1);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
> +		       crtc_state->vrr.dc_balance.vmax - 1);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_increase);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_decrease);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
> +		       crtc_state->vrr.dc_balance.guardband);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
> +		       crtc_state->vrr.dc_balance.slope);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> +		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> +		       ADAPTIVE_SYNC_COUNTER_EN);
> +}
> +
> +static void
> +intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!old_crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +}
> +
>   static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   				bool cmrr_enable)
>   {
> @@ -813,6 +887,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	intel_vrr_set_vrr_timings(crtc_state);
> +	intel_vrr_enable_dc_balancing(crtc_state);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
> @@ -828,6 +903,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_vrr_tg_disable(old_crtc_state);
>   
> +	intel_vrr_disable_dc_balancing(old_crtc_state);
>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>   }
>   
