Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F108BA3BEC6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B025710E7E3;
	Wed, 19 Feb 2025 12:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hljeJLuo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F18F10E7DE;
 Wed, 19 Feb 2025 12:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739969606; x=1771505606;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MrA80ISiUbddatqVmYnSuYI8aMW8NjnQFizUG/+hLtA=;
 b=hljeJLuodm9RPHuCrIABV7quo/GYs4qeszrYgA2gltN6CSgIZI0hcZjz
 OmDFRz/DxIIzHzwJgs47T99kO2FW9Nbm8izbRP2IdsC32uwg5lK17/eFA
 h4kc65N/pTPGObOiIdja/tSWTY++e1Q6rsZC4h/ZVy8v+4a1Oo7mnEd3y
 m0JLoR6jHDxguyiXqg8qr+st2okqJOGEJ1lPJOPK9CpVzV3WMwdUVk36j
 WTGaniemORIGdLlCkrD7g4dGkjCP/arbKtAU49OuzrbVSXArv8s02fwXo
 idMGQtT0W/irOAi5hu8G/U4ZaoE3e2NhrQERLPnPHsdePHkVZJkI1T/vp A==;
X-CSE-ConnectionGUID: gX9yl2fWSiW/zzilHB/Q+g==
X-CSE-MsgGUID: PwZ8TDsPTfSp0Z+GI6Ex2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40568326"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="40568326"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:53:25 -0800
X-CSE-ConnectionGUID: uKF2grMER7St2wV2YB/w7A==
X-CSE-MsgGUID: kl1kQgA0SNalilewnsSr2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114572056"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 04:53:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 04:53:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 04:53:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:53:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O5L6rUWi6XH1zPK7G9EMk5sOpw2D/QHckEbcM6jq10OHvB5ocgDSJJimUes48MsdiZs4kgtKXtKlOCAVxUdgiSoP/5nqehtxdNgERX5rkvvFHoqWK92PX+GL/i1xMAi7YHKEFMQlPBOpFRZ+CrAoCed9VK70JBNGrP3nMGOT7plJcVFVP/663oVH8HFbSz26J75zVMudr3xrGNSzr57Jdvsi2hM3Lt9FgH+kn7BTtF24a2mCEPwsrBewHqz+zr7/vVIosCBayrXmWlVbpjWaFJ6AXB759DQ2UxJf6a6C7eEaCDdrtVFnRm3v4KOES8CgzIe8Cr5MOMlRvre0F3zLIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6fPRYJT7pvAcZ2jOrln3pH0Mrz0XxAVcizNnnUYUxM=;
 b=rElg+lHXVSFwsHnQotWEtuW3piqWeUJsGuga4x8IKmj4W0qZHBjNVRz0IimZUhgliOyKfBucgLgJzOjsnanziyayEnlfedrneE/e87hEU8TB7xcAbJj3q2is+P16qRy153VbOjDNiiKEV4PtJwO00b1lHPslikHulBC9tPGSbKnGw2wE76Eflj4U8cjw0PGkx1eQyjqNNkKvlRxkIgi5+nNdvL2zf6psH3PBNVY0qxkAOKmerrPp+89Gk/8Q6+aMW3seehfAvpdUx2SQq0tkRiwAZDR3Gu3TvioSsdAl09opvLoEnC7IuNG12CRkyOq2sYwB9hRhNpvVSkiFFEyUIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6833.namprd11.prod.outlook.com (2603:10b6:510:1ec::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Wed, 19 Feb
 2025 12:53:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 12:53:08 +0000
Message-ID: <6c2768bf-e4d4-4da8-bbf0-2d21ff241050@intel.com>
Date: Wed, 19 Feb 2025 18:23:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/19] drm/i915/dp: Avoid vrr compute config for HDMI sink
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-9-ankit.k.nautiyal@intel.com>
 <Z7N8h_4fKfiGZPIc@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7N8h_4fKfiGZPIc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6833:EE_
X-MS-Office365-Filtering-Correlation-Id: 865fa083-4df5-4036-4e1e-08dd50e45bca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUFVN0I2eHdPQ1E3c0YyU0N3WlYvT3d6dWV6WlhMTmhEVTBLd0lubHI0Tnc2?=
 =?utf-8?B?MHRtMUJ3N2liTHhGcTRHajJyUTJVMGlsN0ppam4vNTFoRTZ3L2xjRzRHRXZs?=
 =?utf-8?B?b0tQUE1YY3IzYk1qbGtZTmpKWnpERVYzS0xMNG1xaGhkUVJiS1d5VG1nNnd6?=
 =?utf-8?B?QUpWMU1uNGNEb1RjWEp2TG9KRlNYUzE1dWp3cmIrV0toNFhhTjhpSWRnajhF?=
 =?utf-8?B?dE9yWVBYOHk5WHJxbmFRNENvSEwvSnFSanZ0WE9WSUlHV1lJa2J5TERVZ3dn?=
 =?utf-8?B?bjNuelVTMzB4VEhEcDFMRk5VRjdReXA1T0V5UVhYbDgvanAxVVY1NlpDN2Zy?=
 =?utf-8?B?UGM2S3FYOTlNWmZpdmg1N2R0bHc3RnBraDNxczBzNUhEUVlJYk9uMFpLQU1L?=
 =?utf-8?B?czZDd2JRUHU4ak1kejhKOTArbmJUYXZ2SHN0WWVzSW5QZ3pvbWFzNFhGK2NM?=
 =?utf-8?B?MG1VajVZOFQ0T0hRdWdrTjlHemJ0VHFOajdWcjNYeVFzT0poUWoxZHRjVWVQ?=
 =?utf-8?B?alpBeU1EYlRwL0s2NE94ckN2TDE2SFJldnVVRWcvQTBWenZOL3EzNVdRbHJ0?=
 =?utf-8?B?ZlIrNi94aHJDSkdHcEt2cXJVZmtUWXZJbEkvdEdZVHRyZm5BSCthQW9pNGtG?=
 =?utf-8?B?U0lnTzZyRHE3TVY0a21ES1RtNjEwRGxGdUJrWUtLQmUrNFFDeE9yMGFvcExW?=
 =?utf-8?B?cVdWUnRUdEtxNGZEWUF3WXhvbnhZRVA2bWtlOFZTM0lGRFN6bEhYR3BCb0NL?=
 =?utf-8?B?NXZXV3R0b0xUVCtFUm83TXdMWXRFYjFBTm1ZSW9CK0JYNHpBOFEyVmRWUllV?=
 =?utf-8?B?b1hKVVc4dmJod1dHb2pmbEc3aTdCaGNpWkxrSkpURnZ3a0pVaGVuVmpNc05y?=
 =?utf-8?B?dmVBM2M2OFp0VzBlMW5iWi9Ndzh4SlA4ZVEwMTB5L3FIcTZuU1RLM21tT2pm?=
 =?utf-8?B?VmNZYndqM25HUFc5QWpmeEg0T3RXUHpyOHJybzNaUTNqMHI2YjQvZlYvRUtZ?=
 =?utf-8?B?ai9pOEh4bUVKK0lOTGR1aUVyTWxaK2ZFT2pkNGdPRW9vQnF2dWFWNFZ6bmtI?=
 =?utf-8?B?VDcrODJwdzZKNHNJSGhRUWN4UytHMXlPK3VDaWFrcFI5R3ZySVpBZ3RIbFp1?=
 =?utf-8?B?OWl1QkZLYlViWDZKcGlHa3B3MEVsWXlCU1FiVXBwWmxEWVdXNk56L1ExYjFW?=
 =?utf-8?B?enJUaXBsR25qRWQ3UVVOc3Bwc1RJcEc5OTVIRWxuWnhSVWY4bVdqejYrZ3Rq?=
 =?utf-8?B?cW5KcE5LaDdOYmVjY3ZBS0lRTnhQMEtTRnJicThPb3R5ZHJ2c0NzQVpDeW84?=
 =?utf-8?B?YVlmZUs4ekNyYkc5NjZ3VksrN0I2MFBDRDQwZlRXbldpMG9rZ00wWTBvc3NN?=
 =?utf-8?B?RGRVcUtrOUtmOUZYSW5JdElwUm00dkwrNEZtOGxoM3VLU2lyOTZBdFZ2cThh?=
 =?utf-8?B?aWNlcTROU05ZTWw5bjcvQTZrVzlPRTM4SEdRN1RtZm80L1FWNEJ2T3JqUkUv?=
 =?utf-8?B?R1ZzcExnSzNHNHhzYStES1ZVU0dEdXJGUCtkcTRxbUhUTTVNYk5CTk9tWXZp?=
 =?utf-8?B?eE9tTGpUUWNhWUtFSzZIS2c4aCtEZWRJemIycW5lL1gySkNtanVwbDRRS0tW?=
 =?utf-8?B?M002TjJ0QTFwZDVwall6dHU5dmpsa1JZSzIvblhEckxheVNLU1RpeEp3RENM?=
 =?utf-8?B?UmNkOWNQRE1EMExUaVZobVUrM2NQcGpmYWhaRUhYUDZyaVV1UXVrL1pwRWtP?=
 =?utf-8?B?dmlhNXFSSlFuYnVrWGtwUEtUVXBlbTkxSTNyNS9JeEtNYXI0R1A1Z1ExZzE4?=
 =?utf-8?B?eGMvRVE3SkY4QnQxQmpNVFNnYTNpcVVJN2F5YW1jcUlBMFlldHRGUU9lZklY?=
 =?utf-8?Q?0xtqkZhcANBKr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eklkQzk5MlVhUWI5NlFDWklzNWI4azNIKzhFeGk0eXJBU1dSNllTL0Rwb0Ns?=
 =?utf-8?B?cElDeC9JRDNCTkc4clV2MUluT1Y1NW56MnRaK2t4RlpZOW1jbEE2akV5dCtn?=
 =?utf-8?B?NkNZZnVoL1VCa3Fta2gvQ1BiQjA5cFpsUk1hUythU1FLaDRnSUk4ZkVJaldP?=
 =?utf-8?B?Z1BiZkN1eFdjZkcxYmxFNDZlQkhzTXhHemd6WUtjTEQ2bFBPUStwS0dQOExO?=
 =?utf-8?B?UzRXQVNiai9pdGNURURSV05IYWZIaUs3Y1RKRFlxNlhqdjdoWHZxNXd2V1Iz?=
 =?utf-8?B?UWN2cG1HSk5SOWV5b09BejlVQzN0cStxUjNmcm5hMFBuV2hqaDFkOTU3OXVZ?=
 =?utf-8?B?TkxIZ1psOEsrZ1ZxRHozWjEwOEthclNTM3FpOUVYUzB5Z0NTUmZ5SmQ0V3JL?=
 =?utf-8?B?OEloRWpGRnNpZEs4QU9jREV5OGlWem1QeGpJZ1dLNERnRjFIYWp6OS9pTTNh?=
 =?utf-8?B?bm9hM1hTQ3R3VFk4ZXBjK042RCt1UzRGU2hZUEhPeWFkUS9WQnhnOEM0S3lp?=
 =?utf-8?B?ZzVUaXBmZ2E3bXl4K2hOTFRKQTA0d0JHR3lOOE1NbFVFaldlU005aXhtSUhP?=
 =?utf-8?B?SWkwVDZoSjhydVRjTjRwVjF5QlFjdmlYaStsVnV0V3k5VGlGNkNLa1ljc1dH?=
 =?utf-8?B?Z2Ewb3RmY1ZXSHorOERQNWdKdDZWOG5kVW9lUnpOTmZzWWM0RUdrMmlnb0o5?=
 =?utf-8?B?TnZuNitSRUdYdUZ4WGlNais5a0pyQVlOWUxDQlloZWtKa1pPNnZYRlA2aklE?=
 =?utf-8?B?KzlXakVKemdDNVNVMkZKdVE5eHB5bit2aE9jOGNDTlRib0x5TVhhUkhlczFl?=
 =?utf-8?B?NElzNUVhOW1nd3hITUd6aEFtRmppb2JhUDRTbE5PZVFkU0JTWnBlbGtzODBl?=
 =?utf-8?B?UFVudzZmSTBINkpjWklBdWtLRVJZRlRkN3JKZ1VKWTV2N1RHZ1pXRWRFRFdT?=
 =?utf-8?B?dW1FY0ppK3RBd3BIOFQwaStuM3VHUlR2bnhvSFZMZEFRK3daNFdSYnBUWmRw?=
 =?utf-8?B?ajdLU0ZDUndEZndjamZDOXY2aDVNaU90c2NuZDRId0RKbERvenNUcklHaTNy?=
 =?utf-8?B?clA4cVcxeElrWTMzamYzLzV2QWZpZnRvRTdCdnI2QVNkUGQrWGp5NWl6cEZy?=
 =?utf-8?B?VjZtNDVjYitOUy9UQlI4ekVuOVV5ejBNOG4wNDFjOFpFTFZXalIybWk2WmFa?=
 =?utf-8?B?ZFMxbU9MMU00VzVJc2ZvNVZHb0VzaHBoSm53Ym5ybVhzdUdxSE04dlVBN0Q4?=
 =?utf-8?B?TFdCWUM3M2NtQmZ0ZkNBcFFUVkFWWXFpemg1dUJVa0poSzRld1RITSsycjRF?=
 =?utf-8?B?TFJBWnlZdFFvbGMvVHdIY0FhM0ZqOFBNcWJMdDlveGUrSjFabSszSWJMbnU4?=
 =?utf-8?B?dnFQWGY3Y3g0YVlrZm51VERENXE3UlhtUVBxVXFrb2trajBNdUxwZW84VEpw?=
 =?utf-8?B?eW43dnorSkhjU3dQRDd6a0lIM1ZzV25nb2ZpS002TVpWdlBWbzFXY0loeFdR?=
 =?utf-8?B?dzFBMzkzdEUySisvbWdsQnhmcmMzUTViU2d4MzVGWGU2Sm5nRk4rcDkxeC9w?=
 =?utf-8?B?OStQVndvQlhHbndOUUhyRmlzRFJlSFFYUmFzaWludUZQWHVPQUQxNVdXcVR3?=
 =?utf-8?B?amREVkJjZGRCVmVoZWI3eXF3ai8rbkk1a1ZzcVdVeFc0SitvRVpMY0h1TDM3?=
 =?utf-8?B?b1Zrb0R3cDYxd0NHN2Uyd1A3eG5WRmZ0cVdFUld5bVFZZlNhcHJoL3dyU21m?=
 =?utf-8?B?TEYwRk4zWkNxNXlMRlVHcFBoVWZYWUFYc0gvK2Z6OTVaNUZjSFVVeXdCTDM3?=
 =?utf-8?B?MVVkcUNJR3BpUWpmNlpmbldsOHR4aFpsc1R0UEYvNDBpTGtrd2hvQzJsd2tp?=
 =?utf-8?B?Tzc5bEdqZXpSSGdWTlhGNzhDYU1BSGI4QmN0bjBPUnE1cWRDYUhLSzlZdGN0?=
 =?utf-8?B?ZXlmTEQ0dC9jVy8zVjdpMWFiSWdrdzRMdHV2YnVCNHdTMmQyc3kvOEJjV1pH?=
 =?utf-8?B?OElrT0tzYzEyRHhTU3UyQlRwRDRlYk1SMkZIcThROElTMHEzUDdCdWZaVUc4?=
 =?utf-8?B?eXNrakJXWjdXUURHZU1ETHRIbjVaTm0wQ3JoVXhXcWhzMEtVZVZaWWFJVzg1?=
 =?utf-8?B?RGc5WHdVc01ZSTdDWGdoNmVVc1ZUQUlESmNyREl6SkRjblh5a1lQTTJ4RTNE?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 865fa083-4df5-4036-4e1e-08dd50e45bca
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 12:53:08.3077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ao/TovMg7ylzNrCfIzOEARzM+GwUxjWPyzRiW2PepyWlvQVWamzR/wTVDqLCT0wrckvABRNe3Ux/ivOAsB8k2RZB08IFXjnMVPpMu+JG5Yw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6833
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


On 2/17/2025 11:44 PM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:18PM +0530, Ankit Nautiyal wrote:
>> Currently we do not support VRR with HDMI so skip vrr compute
>> config step for DP with HDMI sink.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 9ed7d46143e9..bdf53d255d91 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3199,7 +3199,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   	if (pipe_config->splitter.enable)
>>   		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
>>   
>> -	intel_vrr_compute_config(pipe_config, conn_state);
>> +	/*
>> +	 * VRR via PCON is currently unsupported.
>> +	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
>> +	 */
>> +	if (!intel_dp_has_hdmi_sink(intel_dp))
>> +		intel_vrr_compute_config(pipe_config, conn_state);
> I thought the AS SDP was pretty much for this, but I guess
> we're missing somehting else still?

For PCON AS_SDP with the required fields is fine, but still some work 
remains like parsing HFVSDB fields for VRR capabilities for HDMI2.1.

However this doesnt seem to be the correct place to handle this, as we 
still need to use fixed timings when PCON with HDMI2.1 panel.

I will drop this patch for now.


Regards,

Ankit


>
>> +
>>   	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>>   	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
>> -- 
>> 2.45.2
