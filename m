Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B86A155EC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC4A10EB5C;
	Fri, 17 Jan 2025 17:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9+Qbnp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6CE410EB5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737136034; x=1768672034;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xCvOCX8GNDdLVDqT48rpTc32Xfkpd2/rQ73hsVnOVak=;
 b=W9+Qbnp0jmzjjvmYi6y7tczn+xP3/nLCJDMy+Uf78DpjGgANyqNA3Qti
 jH0n7TUJJWZGjdSw8S2XvC6VEnkIkCPYxDai8xwVVVr8SZvQlMckkZB4m
 nUQzcCkk+4vCf7zWp+elf1p0TEn8st4ewx0sG7rvAqPCOdscgYkZ1iMSG
 1p5oz3EdbwzPqU1/2u96cGITQkLZh6jtdqD6OC0XSueLaBEqEjAUTw3Ud
 KJoHt16/bLBsLw/D3T9vFnODBLDqz4fNN3USGk1agCbjvD8lqEcb3t1zf
 WqBE7aBRpDn4QpFT1HlaJsFOKLXB+0HFheZhL1xnX3NkK1TvxrYyvfvHS w==;
X-CSE-ConnectionGUID: R2sgATvgRI+uVCWVNCoM3Q==
X-CSE-MsgGUID: QEqbjCTOR02mQeHfG4kvUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="41248635"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="41248635"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:47:14 -0800
X-CSE-ConnectionGUID: ksT1CHr/SPyU5fAO1Ebh7Q==
X-CSE-MsgGUID: RPYDxNgyR12TyPfu3v50ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129122151"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:47:13 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:47:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:47:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:47:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=azPd1DCI7TSWZbPqNHIrrZJWZ255jYYwVzMcxqTT/LCJP/NeBlFA0dGuDNbJW5HFdnIQRWqVq/JL5NbCQOaU53Mrsx5dzN1t78qRxR7eQ5B7k4rGK8MTc0CAEiJXxrYzjrku/PkIhs+85hRyh41PPDxz4Gi5yjRi/gYQuhH6pHkEZDRJp7/p+9eZuIEp92KpjzabqaBFSnbFksrtw8iLnfIZhOJK3Bmnw0sv+WUp/Q/w2ocN2/L+QHopG8iRwjRPTnvYYbbPqdj3XXhCZXCi3zLRwitUM/S+bAKDXNzPOjJrrPynKIi6b6LSsczoC+dgAVVv2DbuNSgUX3/+SNiVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DTGBKOwVbs+NAtshQV2wqmd3aD1iNCRMBfdZ6fFoF4M=;
 b=HXgSKBoVrIbSv61+LgWRY6xxhdthSesm3Lgyp1FlVX+06zla+OQ65xt7w9f2krpC3LoDuJw9ZqBjsDoJQqdZ/YCDVtvwxbmOt2gzCYLmdv6zty9FMtL6y4mbTMwXMPtzArDh7fIktMJzg0Qv/lKSP5b8ynxcXkGTN/96mlgC6Kwsm6tw4xGabZapsR4F8ovTSzIdeHhNNtP200wvEZmbRDQ8zKDbBn5ZYP9AIRo3rv+9+4a3LXwvxfCTMTsw5q6ZMb4RAEnwQT/fmLamoY3l+0s2ribKxIIscTXZYC9Ujx+LZbuVDp7dkjPJ1ZGwHQFV1nD3e+xCYts1psDtZwayvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.17; Fri, 17 Jan
 2025 17:47:05 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:47:05 +0000
Date: Fri, 17 Jan 2025 18:46:59 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 8/8] drm/i915: fix typos in drm/i915 files
Message-ID: <skmwvtwcoxenqmftwutphltp5opq42qph5ka7eqxvb5skwnlgo@nrmawrnggagg>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-9-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-9-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aed0547-ef5d-4951-ae24-08dd371ef509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OSs1SENVVUZ4UlVwQnF4ZmVCb0FMbUtkeWRsNW5VeHh1cVczUno4ZUJsNjh5?=
 =?utf-8?B?QlV2cm5Jb1lWTGtqejlKOFcvcEZrR3dQQlFsZmN2R05YZmhJOVpRMWlnbWtv?=
 =?utf-8?B?SVpPWnVtMC9iU0s3UDVCRExDMGFWQm0rZmdROWk1SlAwSEd3NGVnZENEL0Rh?=
 =?utf-8?B?TXR4Yk5TZlc5QXFEemtuSXRHeVB6SkpjOVJ5MDVrUlpLOEJ3UHhRM05oSHpz?=
 =?utf-8?B?bHFtYWNXbzNqNnVWamdHczVNQTFHVVdCUVFXRC8wTXUzV1VpcW9SS2NQQ2RD?=
 =?utf-8?B?d1Z6cWpVeUpUWTUzWUtmUnNHeXYyNVl5eEIyMjBiQllWQ3A4RnU4bG9ObHBa?=
 =?utf-8?B?US81cUJaaXZHV0FhQnQ0QTk2MlhndWNINXBBSWc5R1YwOHUxcUFUYUNBc3Rk?=
 =?utf-8?B?R0hudHJ5SC9VME1xcTlrSll2bUZWV0JsYkpKaGFlSTQrTmxmcWtndzliTVJv?=
 =?utf-8?B?cUNENUtHSy9IaytuL2FqZkZNTVdYVW1ybXAzYmU4OWN4NFZ2dGV1UUlaUWRH?=
 =?utf-8?B?U09rT2tQVVZaS1RnY3d3ektpQTRiNHZwQ084aVpSRC9ETU5jckxLZkltandu?=
 =?utf-8?B?RWtPeWpic2ZsTmczNjRyU1BENXMycTJVYnNsNHBSdGt3OXM5bzlyS2NWMGNO?=
 =?utf-8?B?Q2FOSFRvZkdDNjB0dVY4SDk3RnFldDN5b3MrNzMrU0FDRExkMlFsTjNiYnJr?=
 =?utf-8?B?Q3dUTENUd2hoUWRwUnJhM0dwODRnMDdLSEVxc0l4UFRsWjdYZDVtQU1MZkZC?=
 =?utf-8?B?cXpSRHd0dXFBWVIzWGRhS1BBQklvRk85V2lqUFNOVXRwWWdEc1NZd3NCcVc1?=
 =?utf-8?B?ekxZcnVzamFxUm5XWEtwa2tBLzNxSThyRCtGb1dVay95cngvWlI5bnZiVk94?=
 =?utf-8?B?R2RyMTN6alNyeGtGS09VMmJjMEpUOURJTXBIV2ErRzZoSWU3d2syOU9tTGcv?=
 =?utf-8?B?Wm5hUVBYanQ0RnFLN2hpc25MUVVPUDhDYUhpcmVyTG1NcWQrWHUyQmFwRXZl?=
 =?utf-8?B?bXBSbW5QYnZhUlVSZHRST0hJbG5EV2NscVRkZ2lveTZ1NTJCRFhCUC9KQnly?=
 =?utf-8?B?bTd4UHd2cW94Q3NBcmNWdVlkcmhkMHpWRXpWcWg4WE43bWphalhiQXlpcnll?=
 =?utf-8?B?UTBPbm9IcDdFeXZPVFFLR0cvQ2VQNzhNU3h4dmVndzlvbVlUeXlsMVpnVm1p?=
 =?utf-8?B?Y045TUhpWnBsbVhJbjhWM1lxRm5FT0NZY0tGUWwzT3RBTXZNTU1nWTNtWHY2?=
 =?utf-8?B?OHM3U2xla055R3ZObVBuUitlT2Y5YlA0OVhuVkMwZVNNdm9yZ000UUxEYW1S?=
 =?utf-8?B?ZjlvWXprN1ZRTHJKQXZadkNWaWFONThaTzdtOWljSGhRbWVuZWp5WkxIVVYy?=
 =?utf-8?B?NTF6ZGxza3hwVTlXS2NnMnRpWHNPR21oT29ld1BhNmhYaTJWZGgvZFN5WHY4?=
 =?utf-8?B?RUVidTZPNVo2OTNnL3BoVmdNVlZyL1p2Y3Q4ZlA4NlR1cmVQU2tacWtxSnR3?=
 =?utf-8?B?blZhS1pmY2xqTWx3NzRTczZkbVlnaG0rSXVZNzNkazRXd0FJdGtuSjhrYkVW?=
 =?utf-8?B?RjkzWWdLQllIQVRzeHhpSlN5N2VTc2o0Q3dadkZ2N01ISkZNWTE2dm9ydjVr?=
 =?utf-8?B?MEVBd0UvT0t3N1BGWEtUd1ZsWlBYWFVLdjVWdkZEVUtVL2lxelIxUHI5RUs1?=
 =?utf-8?B?ZU5sS2FES25WZzlvWG5sajZFLzVqenArRVA3eU4zM3puKy9NR3ZwdjNMVEZu?=
 =?utf-8?B?aEpZb0pKNzkyTnJZYXVERko1Z2ttbk1pbjRpd2tmMmZPUS9hdTBLNnMwTm81?=
 =?utf-8?B?ZVlyMGE0R2hXWW9Td3lTQ0V2UmNYZk84VkE1TG4wazZDbnMySnpxazM0RDZy?=
 =?utf-8?B?SUxnRkRzc3VqSElGR3l1eWdCUkNtTmJ2bytLVVlld25iWDlEUURRNFJQQUlr?=
 =?utf-8?Q?+2fJ6VKSlnU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1B2Z1QzOS9vM0hOMndlY2xlSndzUEpVQU5hS1g5T0xRUjFwdEpXdHN1OUVW?=
 =?utf-8?B?ZWM4eUlvTXNVYlFiOHVZOTJKRkRaL2wxdEQ2dENnYXU3Ym1UZDVsUkxwN2py?=
 =?utf-8?B?VGV5bmRiT3VES0xDT1FOWEVHMTJEb2dERllkbU0zL25QOUdIU0NWeUtxTDJy?=
 =?utf-8?B?MUhYL1pFK2tiUXV1RHl1ejVQSnVtbDZ4LzkrdUl6aUlCaXFRYyt3VWoySFU3?=
 =?utf-8?B?cE5nY2h1akRaOWFFaENvT2Zyd3lQczVvdUszVjZKbFpaQjhSdHhiS0kvYkRv?=
 =?utf-8?B?K1U1NDRJSk9SdjlxMERaaU92Q21COXp5ZDYzdHUxTXJEbUVXMDlSaWphUVNE?=
 =?utf-8?B?Q25Yamk2VGNvWnozM2xCNVFhZE1wQlZoWTc1RmRXRnRSZUFGUm44NWNHUGQ5?=
 =?utf-8?B?ZnpUcjVETS84UGgvbjdWWWtmaHRQeW00TzRHVkw5ZlNsRXNhL3JnVzVGb2Np?=
 =?utf-8?B?VGc0Wi9UdDcwQlhCUzJMNVpIMjg0RVhWdnh1ZUNyTkdGc1RWaWY5SlFodk80?=
 =?utf-8?B?VFphSThzWFpPZ0NmbFA2bTBrRklqOWZSQ214ZFdDdFRXelZQcEpCR2VNRUNZ?=
 =?utf-8?B?QU03Wlc2ZzJkcGgvV09BZU5OK1pESlJpZzBJa1Buakc2Mi9FYkRjL0QvSXlO?=
 =?utf-8?B?MnlhY0hiSVArM1k0QWdOZ09ZbWJJZTFQT1luMHdVYTJQSXBjOHJXNGFEbzFt?=
 =?utf-8?B?QkdMOEFLdUhyZGtkbjd1VHMyOEIxczllK05FWFlWOXEzRUlibHRZbXFaSlVk?=
 =?utf-8?B?YWlBYXltejhyNHo3SDBveDJyVzhybHJmaFJDL0RWY3g4VGVMMjJ1U3RhN2lp?=
 =?utf-8?B?RHlHbElJQ0R1UVhwOGN4clQxSTBBS1N4OWprcEhrUVZRL1ZhNWVwbDIzWXhx?=
 =?utf-8?B?RGt6YmE3OUxpUmp5K0svSWF4ZUVaSmxZNHB4emxOVkNlZmRSYUE2dXMxdlhx?=
 =?utf-8?B?UlVyWlRSV3gxdFBnTXdpUDVBL3ZxV3ZlTnU0K241SEZlSGs1NXROUDdXOXBy?=
 =?utf-8?B?TURQWTk5VHoydUk1bDB3K29WaDNtVmdiMEJLVWZiSERIRmE0djNzMmMzTHEx?=
 =?utf-8?B?R1dIbUsybVIzbFZ1MjVDcExWTEVPb09FbmkrOFdiWnVGZGhPZGVGWWVVT2ZI?=
 =?utf-8?B?VTVKSnN1VmFJRDdOdXgxUk1CTEdFWGR0ZGE0dmVxUjFPSDlKcWdVQnIvQmIz?=
 =?utf-8?B?Ui9uQU1TRjBSN1FON2dla1FCQ2RGbEpGUC91QVRnNFFYc0V5WUpaTGM2eFpm?=
 =?utf-8?B?OWVGSWU4cG1nVXVxU250U1lUcUxOZkNzK1hudmZNdzBheHFWNnMzaVpLMmhL?=
 =?utf-8?B?cVRJZVA4TGF0amtCU1lMcjA1VG05QnFhUGZGTzJ0eGt5YzltVUI0TVhHMVFa?=
 =?utf-8?B?ajNiSFphWmxZU2orakx6eUtJYi90NTRhSkNiZHpBejlEWmFMYVFBREtMZVZ1?=
 =?utf-8?B?dHVreUpyT3ZiYjIrK1gvS1RKcitYamVBQW9ia3ErN1dzaVpBNi9QR2hGZEJr?=
 =?utf-8?B?bnNQaXVNNllwTXhhNDREOFNQS2JDT0t2aGVFZnA5dndCMUtjdjRmUHpEN085?=
 =?utf-8?B?WldkWERRbGpqTXNoamROK3duKzI5UnYrRXZsUzhBcllraHZnLzk1bng1dGNI?=
 =?utf-8?B?UmpBUEJzL3d3MEY2SmVGVmtUYmlMTmFoSTBmVU5jcEw1cGNjUERvUlNxUFMx?=
 =?utf-8?B?RG1DK3I4eVA3L0tvVHE2dzZ1dk9ObTB2a3pzRHlZY3RNMUxxMnErMnBSdmFV?=
 =?utf-8?B?c0Jhcktkb2oxNFZQNWRYZWVqdTBFVWJpNVZPeXhEd3VzNkduL1pNTDFzeXVv?=
 =?utf-8?B?K0JFNjFUNU1vSlFIUStqOUE1ZXZxYjhxNi9KeEtDa1V5bUUwcFZPYUQxaHov?=
 =?utf-8?B?SVdJTU9CTUlkYnBScjFQa3FUM1NIYytWekQ2QVc2bjdPYXc1Z1JoZzkvOWF5?=
 =?utf-8?B?bHhtS2hoUlI2cHc5bDQ1aTg2VDlWUFFnUm9ySXVGVTNMdEhWODd4TEY1WVBC?=
 =?utf-8?B?NjZSdzFwS3ZKeVkrUUdndEsyTE1GVkc5RnVqU3RqN3RxU1NXMWhUMWRMQzdS?=
 =?utf-8?B?K0RDWE85M3A2STZja29vWjlwYVRLb0UrRk5NdVlhOW1ReTJBdjVWVlhEcVB0?=
 =?utf-8?B?VjRTYzUvWDNJckNjRWJDWGdWZmoyUVkxNitkNTNBSUFzTGZGajBFMEtIUTNX?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aed0547-ef5d-4951-ae24-08dd371ef509
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:47:05.7268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XKcMryf6m73bHr1mR9lBU5SidufZQPLxvIO3Vu7u6eZU3PduwgvTDilcv+zAvqF1qH4/ucmGVpvhkS6zQBG8YAmolimi4mMmU13/6apVdOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
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

Hi Nitin,

...

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 070ab6546987..686ed33c1a8b 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1146,7 +1146,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>  	int ret;
>  
>  	/*
> -	 * In the proccess of replacing cache_level with pat_index a tricky
> +	 * In the process of replacing cache_level with pat_index a tricky
>  	 * dependency is created on the definition of the enum i915_cache_level.
>  	 * in case this enum is changed, PTE encode would be broken.

"in case" should be capitalized here.

>  	 * Add a WARNING here. And remove when we completely quit using this

...

> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 2406cda75b7b..cea24ad657d7 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -570,7 +570,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>  	tail = hw_tail;
>  
>  	/* Walk the stream backward until we find a report with report

Comment style can be fixed here...

> -	 * id and timestmap not at 0. Since the circular buffer pointers
> +	 * id and timestamp not at 0. Since the circular buffer pointers
>  	 * progress by increments of 64 bytes and that reports can be up
>  	 * to 256 bytes long, we can't tell whether a report has fully
>  	 * landed in memory before the report id and timestamp of the

...


> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 765e6c0528fb..902d7ad61021 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -84,7 +84,7 @@
>   * Try to name registers according to the specs. If the register name changes in
>   * the specs from platform to another, stick to the original name.
>   *
> - * Try to re-use existing register macro definitions. Only add new macros for
> + * Try to reuse existing register macro definitions. Only add new macros for
>   * new register offsets, or when the register contents have changed enough to
>   * warrant a full redefinition.
>   *
> @@ -492,7 +492,7 @@
>  #define MBUS_ABOX_BT_CREDIT_POOL1_MASK	(0x1F << 0)
>  #define MBUS_ABOX_BT_CREDIT_POOL1(x)	((x) << 0)
>  
> -/* Make render/texture TLB fetches lower priorty than associated data
> +/* Make render/texture TLB fetches lower priority than associated data

...and here.

>   *   fetches. This is not turned on by default
>   */
>  #define   MI_ARB_RENDER_TLB_LOW_PRIORITY	(1 << 15)

Thanks
Krzysztof
