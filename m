Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACBCA6E067
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 18:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEEE10E35C;
	Mon, 24 Mar 2025 17:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H0eK64fN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F90710E35C;
 Mon, 24 Mar 2025 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742835654; x=1774371654;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mYoItou7MJUp9kvG5fVRfK7jWXjlVqx6iLB7//ggO4g=;
 b=H0eK64fNez78UGt5FssmynX6ocJZhQfWmkFa63QJgaCpYV4Z5V+lYIYm
 WFuKmE3ujWuZ+o3pH9XyeZLR0/XuJpf5AL2CynmSE9rPXqGFoC9oQd+wB
 enutPiOSXzQKBL0AwRa05OUTZF/qdXKbCvpw09O7rc0u81tPP4H8i15em
 FSYRBhrkfxLMwwdIAHKburNZzKRSCxZBMbVqq8vzrhelD+wwD92kLZaAz
 T4qVs6nqVNC8F9EjSQ6vIZwQ0eOsQX2+oge1sxfVK9Fy/MH0VnF+WSUm3
 PKKhm6Y1w1nMHiTV9qFlOrMXirWvaFkvaOZO52dgm2eKlBZxlaYPvBlZ2 A==;
X-CSE-ConnectionGUID: FIb4lYd4Rx6mi8V2jaOdZg==
X-CSE-MsgGUID: tC3WvBUfTiyzM77F0nVCeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43211203"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43211203"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:00:54 -0700
X-CSE-ConnectionGUID: PklxPF6cRxagKNLTMCqt4Q==
X-CSE-MsgGUID: DELB3qg1SOWowAD0IVyGOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129170984"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:00:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 10:00:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 10:00:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 10:00:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LQtmvJjpgURP76xaBXfXPspsODcP4PUP0yze4ByKUPLnQqeU635vx8zKd2ooOR5q6Tvh82+Z7V/2dk84l6O5ioZ6IU4vAR+MOZtivsS/MnUMvzy0wu8UHCN2gBgL1BHavB7dF1CW+b53SigQQpjqg+NBJQVXKxzJ29VZ3xMlluK2nMSk4w0bqgk+8LxEVHTe9gHTp2AAxbM7zqPR83+Plvsy1f9edz8huVqqTMesaYzUn+UGWiVrh9f7k83xLBfjukp7MnuYcmB+O9/Xnk26Csy+ahzgkxgbD5BakNGkC16fH2qgO6jT3Z+myxhHZu5bjKGM0QpaA+4xP0FruD0X5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ivv03MG9KYnUrih7dBZH6DlbhaR9US8rcWj2t4n/Kas=;
 b=MwP71N2yVVRtLPhgd7xQl5okTRvBZKvzh4VQlPebrFaQNT8UCGJE4Az1BpOG3H9TdworJ+1wlQBiPac/C09Wr6K2w89rkX9/Z4QShOumQi/p/NuRJ9PF5Ui1L0AMyemnTx2nR3FZiM51WmcQunQM046mSjVDvj8mcSoRUGZivptpIajXJWxqFHlYSYcveFNFTWXLjI7sVbO/E0h5ABhnIyJYc72eSZYoDJbj/JkAO9IQiWj2jd6WeovouMbJ7Z5iW9F1LeI0ytFHaU6PM9YWqdgKpY77reofT8R3IquYMMyLshCXabm9YhvXeUH13eVL9WD+EDG2j6HEv2sqAxtNuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5155.namprd11.prod.outlook.com (2603:10b6:303:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 17:00:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Mon, 24 Mar 2025
 17:00:48 +0000
Message-ID: <63e7bf01-0a34-4b71-bf79-cd73175e2653@intel.com>
Date: Mon, 24 Mar 2025 22:30:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] drm/i915/display: Move
 intel_psr_post_plane_update() at the later
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-5-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250324133248.4071909-5-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5155:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ea76564-d0ac-4acd-8139-08dd6af56c49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmhYZmhyK2s1dk9CczZkdzlNQmFWY1NSQmVQU0pDd0NCMktCdERCT1ZSMUZy?=
 =?utf-8?B?cEZWaktrTklqV3BYSmVaSkZrRmpKeFVRNjNXS0M3ZnlDeUJmcEpza0hnV001?=
 =?utf-8?B?Q0QzL0VyQzVWZ2pVUXdCRklPOTAwaHpSbXZQQThKY3lBRFlJWllMV2lWNUlF?=
 =?utf-8?B?cTNHTW9NcEtscHJ5WXBldUtHVkNOSTBkUEVrcEc4OGJIWFl3WmFxWWw2aVcr?=
 =?utf-8?B?Mk45ekJrelgwQW1RdHB3eGx3eVg1ZjBpbzQxOG1TUEh3WmI2NnZpWm8reDha?=
 =?utf-8?B?aXRjUXYyOXBEQlB1M0Q2QllMKzcrdGFrZVNhRVYraHZkSEZydHJ6UTNOM3lq?=
 =?utf-8?B?c2c3Z3I1cXcvaVlGRnhac0U2QTgyYisvajE4endNYUNxdEJjc1BEc1RMbDBM?=
 =?utf-8?B?WVVML3h5czl4d09EY1dCR1VRZ05HL2E0a1pqNHdwem0zTXB5TTVrOTMvWFVp?=
 =?utf-8?B?a2VJSEhsdytQWUJ3SmtIaFozeDE3akV6NzlKNy9YWTByL2o5VjFQeDI4eE5r?=
 =?utf-8?B?dE9odXFpQURkTzI2K0lMNkg1K0JiNERENDJXN1l4UDUxcUVhUWpxM2d1N3JC?=
 =?utf-8?B?OXNyMWlEbXM1aVNjNjVoTlBRS2RwVFJWTkVDbkQwNTN2R2h2QkZobXBNSGdQ?=
 =?utf-8?B?QXJvUkRldUtnMjd2Z0FrbEhmRUlpSHNrUjRXTVpTRk5DYVdzY0pZTElqVER4?=
 =?utf-8?B?cExBeTIxNVlJT3Rsc1hFbzcxbi92MW1qS3VuUXo3RHRIaVg3aUxIbk1BK01p?=
 =?utf-8?B?SWhIWWtqN25uSWordzVTT2NtcTZXTWR1ZG1OWUlQMnRjT3lPOFV4K2pXSDN4?=
 =?utf-8?B?bHZ2WWozazhBOEJEajdIRm9yQ3hlejhPY1QrTEh2bTVZTDZVenRpbitUbDRv?=
 =?utf-8?B?SUNxazVrejQ2Y2JpVGdldWkxcjdISGxDcHpOb1JlSkNDN1luWDAySHBhVHpP?=
 =?utf-8?B?QjhBaHlCYXl6VEx0ajdnOHo1TmxhTU5sVmNtQ2hIL2lTYzhsV0NQSDZ2c2ha?=
 =?utf-8?B?ZUNwN3VsMGtMaUJ1YjdrY3drU0tGZFdCc2VyV1JGRTJ2MTVvSGVDMXVLUXRC?=
 =?utf-8?B?RGhYMkdyZVFxS3NwSFFzTzdTazYyTXRya1dqbnUrVm9NL3VXbmtpSzBVbnJD?=
 =?utf-8?B?aVBCZXRrZEVFV0pSSkU5SVRGZkhtZDJSU2thSkg1TmNHRm9YV0RlY1NqSTJx?=
 =?utf-8?B?QzRJVjFYV2RPQnlEb1I0d0tzdUJBQ2Ryam9aL0MwUUFDVVIwYnZIbmIrcEJI?=
 =?utf-8?B?cHJQRWNUdHI0WXF4ZW45aVE2WEk0K1pmZDIvWDJxTFJDSDZWeHdOaDdCYUl1?=
 =?utf-8?B?MURVakRKc3JzSGNONzByckVQZHRxb0VMYWwyNnl2RklxZEdDT01UaC84ZGY5?=
 =?utf-8?B?a0pPeXg2MnBLQmUxeHRCUkxhM0pvN0V5Ym05UXVCZkozUkpJejhONlU0RFNr?=
 =?utf-8?B?Rmd4bXZsMHQ1bStXY0hyUzRzaVpkYXduRzNZMWFpcUpqbEFVNGFmZE50Tjhs?=
 =?utf-8?B?SGdLby9kRFE5Q2FjQ2Y0UHB1REJ2VWJIWXQwMHdBb1ZyUERZbmpHV2xFNm43?=
 =?utf-8?B?azlnVUVTN1hiRkVyK3N5YkxhYW1EK0U2bVgyWlhUQnZFalppUWcreVZibTNz?=
 =?utf-8?B?d21QVloxaGsyK2ZjTkRBS2tGc2MrZGxuWXBIWlNmMExQYkxRTkVjdkxpL29q?=
 =?utf-8?B?RHo3aGVqc24wcHJUWSs3NUJtVVVmWjg3QTNNQ2hVT1ZXbG8rdHN6V0tYd241?=
 =?utf-8?B?Nk5BeEUrMmUxOHBnZW9rRXRvcjU5b3g4RGlzWW00aWtDRHRiRXU4eE1mRXRk?=
 =?utf-8?B?UHlneTJJTDZjekkrUncrcnNkaHVWUlljS3RvK3FObXU5dzh1ZmU1c2ZCcmpv?=
 =?utf-8?Q?XxNeawRMFeV9O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2RGTzExMk5hV1h5bHdaN1R2NjcyRXBnWHJYU2dpTmlWakZ1UlIrM1JHcWxu?=
 =?utf-8?B?ZkRHRmMzVTdGeHBWU21raG5iYU5UdExuaTZGckgySVh6bkFHTWNiSEV4aEpC?=
 =?utf-8?B?VUZHUEhnY3JDRUJnOXVmOWkxY0lkQkhpUkNKUmMwWXZYWldVTktGRzc3Snlo?=
 =?utf-8?B?OWNCVmRPczMxTVJsc1BEZlJDOXdHVVU0QVRYNDFNN2VWSGtPQUNNdEg4TzJ1?=
 =?utf-8?B?b0EyOFlSLzVqK1ZZS1ZBR0JrWkpLK0E5QzVVRlY5Si92VnI4c0EyZzRKUHdX?=
 =?utf-8?B?SmRMUzQ1aFZPZTVsRHp4NWRvbVBNZ1lrYXBZY25mQlduT2kwSkxCUnljTzNK?=
 =?utf-8?B?SGxUSzBLR01uWEswUEkwbVFGZjdlUkFiSEQ3d2ZzM2pTV09ET2xwR1gwZ0JC?=
 =?utf-8?B?UjlLd0x4R205eTFralJJdzAxV0xoTGJzUEJ6V1IwS2hnbG1hMWh3ZnA3RVhG?=
 =?utf-8?B?UnB2YzM0TS9vZWxBN0RiSXJ6c2UrbEFyWGZKUGpETEZ6ZFphc3MrWmpZWlV5?=
 =?utf-8?B?NjB0SC9vWTF5ZkY4Zzg2ekdyVlNLUi80NU1VZ0N4VDJZYVV6cnlCSXcrT0dl?=
 =?utf-8?B?OW5HS3lGVlQ0NWRxcEtUampzR2ZxNTlKQWt0V3pxYlVrRml6VDJtdXpJZUFU?=
 =?utf-8?B?allnMUJVNitnU0Rhd1BxWXR4NjBXNlBmZERmWGd2WHBxN0Vla3pidEdJTXNG?=
 =?utf-8?B?M2p1cEFqazZ5NkZPRGJFN3NmVGZCbGJTOEtQTnluSTFFRUFzOFd4WVZHY2lw?=
 =?utf-8?B?S0NDdFNacldKM2NpSU1FWnY2NTNGU0FpbFhkZkRIbHFmeU1mOUxFMElic3Jh?=
 =?utf-8?B?d1hlRFRqclpTYTYyQkhzQ1NoZGRaak52TWI1SVZrRTQ2WUttRHJmRVhaUWdF?=
 =?utf-8?B?QXUyOTM0aWIrY0Y4MW5FRGpESXY4WjNVTDhsZ2ZIL1J1bGlQbEpjRitlQmlE?=
 =?utf-8?B?Nmozc0FKa2tHTitvVCsxM0lHTDVCTFpLU01FSHZRYVNhOU15amtrL2xqNSs4?=
 =?utf-8?B?RTVKTFAzNW00aXZjSm9VdGlEZWQ5cG52WjRoYi9hVFEwRERUVFd0TUFZZWdV?=
 =?utf-8?B?aHhMZlRjakorNW9wMkxURTZWYTAzUkNBa3Y5Y2VzaUh5STJ1dVNibkYycStp?=
 =?utf-8?B?NTRWRlQrMzdCVlB3eHNqOVFVMENYSmFCaXlGV0JoazJ4V1kyVk0vRG9WdTg4?=
 =?utf-8?B?NDVVSkJBd2N6T0ZBYlh4YkhtQkxYalVpUmNoVzZtTmV1NG9yeEhreUgxZFZr?=
 =?utf-8?B?LzRQVTgwU0VtYUdBMjFuaEZVS3RKeWgyQkV1WUI3aUFKL2JrdTFvYjhCRkps?=
 =?utf-8?B?Vm5oeG5GOXFLOUVoTzJYUjN0SDZ4Q3FrTnJYSmhJMGFoc2U3OUJvWTBjTWRQ?=
 =?utf-8?B?Vm41aFYwS2FYdEQxc0xoajVCaHB4aVVNVTg0YVI3c3RwdTdRNWxvck5NelND?=
 =?utf-8?B?K0FtQVo2UWhEM1o0ck9Pam1MZkRNelhZT3pnd0NaVllIRHlldm1RYWoyOFM2?=
 =?utf-8?B?aDc5MWdHK0lRaGF4ZjJjL1NsamNZeHorSTFzRHp4MmJuVldDRUdqUWJxeWll?=
 =?utf-8?B?a083c2NDWjhiOVBBc3R0SzRPSHhOU3dOWkNSVEJGZ0JtT25sNVRvcVVTMkJN?=
 =?utf-8?B?TDlRUWFpSnV0SnFSYkxkU3NucEVuSmtOeHBTTDVPdnlGQTNrSFFvNjRGRldH?=
 =?utf-8?B?djI5Mm8zZE5HVDYzbTBLRXlrRlk4UFZrMVRVRVdvVmpMS3lsOHJZM0h0VVkv?=
 =?utf-8?B?V2VlcnlMT09tVUtBcnZXRWhrWjZydTBwbGpVazU1S0NPeDlkVU5nemlqRDV4?=
 =?utf-8?B?WVZZRWdCT0pYcVBtRmxqQWxxKzlRVWhrRHZxS0lySGJRZFIrWmJJTnhiV1BI?=
 =?utf-8?B?Tnd2UWZ4RVplTmZRek1BRE85WGJCWkFVS3JUb01HMkhRUzZ6R1ZhTkxPTGNE?=
 =?utf-8?B?WkJjVExCSmFRZGhzenNhVS9LZHRIdmtkZyt4bUZxWVpyWnN2amJYak9md3I1?=
 =?utf-8?B?SnlOWUJwTWQwTGpQM0prVmMzVFFkWlBUN2k4QmUya1ZpQzR1RWwzTU5mS01B?=
 =?utf-8?B?bEF0VEZzY3kyeStUK1RiV3ByU1V3OVdPdFUra1krTGpJVEtUTkxJZkx5REJY?=
 =?utf-8?B?MTBNUFBld2E5QVJ2dWtPaWVIT05PUTJJTStrWVVUdXc2d2xmS2szUnp3d2xh?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea76564-d0ac-4acd-8139-08dd6af56c49
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 17:00:48.2440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiqVzN9GTSBddH+ydA+KG1sAE/WJM8+Sy7w9x2CKLheh90kTQeB85UxIxnuQVkDgsLPNYqnsBde4rS5vl1pFwEV3Tj/lj4t0Xl2AEHDG2KY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5155
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


On 3/24/2025 7:02 PM, Ankit Nautiyal wrote:
> In intel_post_plane_update() there are things which might need to do
> vblank waits, so enabling PSR as early as we do now is simply
> counter-productive. Therefore move intel_psr_post_plane_update() at the
> last of intel_post_plane_update().
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hi Jouni,

Missed to carry forward your Rb tag while sending the new version.

Thanks for looking into the patch and the review.

Regards,

Ankit

> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 53675a92bbf5..b68b86923dca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1049,8 +1049,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>   		intel_atomic_get_new_crtc_state(state, crtc);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_psr_post_plane_update(state, crtc);
> -
>   	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
>   
>   	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
> @@ -1079,6 +1077,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>   
>   	if (audio_enabling(old_crtc_state, new_crtc_state))
>   		intel_encoders_audio_enable(state, crtc);
> +
> +	intel_psr_post_plane_update(state, crtc);
>   }
>   
>   static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
